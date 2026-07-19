---
title: "8085 Arithmetic Programming: Multibyte, BCD and Delay Loops"
summary: "Unsigned and signed flag interpretation, multibyte carry propagation, packed-BCD correction, multiplication and cycle-counted software delays."
date: 2025-05-29 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - electronics
  - microprocessors
  - "8085"
  - arithmetic-programming
  - bcd
  - delay-loop
permalink: /msc/sem-iv/electronics/8085-arithmetic-bcd-and-delay-programming/
hidden: true
---

The 8085 arithmetic unit operates primarily on eight-bit operands through the accumulator. Larger integers, decimal quantities and time intervals must therefore be constructed by software. Correct programs depend on three separate layers: the bit-level representation, the condition flags produced by each instruction, and a loop or carry invariant that remains true throughout the calculation.

## Eight-bit addition and flag interpretation

For unsigned bytes $a,b$ and input carry $c\in\{0,1\}$, define

$$
s=a+b+c,\qquad r=s\bmod 2^8,\qquad C_{out}=\left\lfloor\frac{s}{2^8}\right\rfloor.
$$

`ADD` uses $c=0$; `ADC` includes the current carry flag. The accumulator receives $r$. The carry flag represents unsigned overflow, while auxiliary carry records a carry from bit 3 into bit 4:

$$
AC=\left\lfloor
\frac{(a\bmod16)+(b\bmod16)+c}{16}
\right\rfloor.
$$

Zero, sign and parity are properties of the eight-bit result. The sign flag is simply result bit 7 and does not by itself report signed overflow. For two's-complement addition, overflow occurs precisely when the operands have the same sign and the result has the opposite sign:

$$
V=\neg(a_7\oplus b_7)\,(a_7\oplus r_7).
$$

The 8085 has no overflow flag, so signed code must test this relation explicitly when overflow matters. Carry and signed overflow answer different questions: $F0\_H+20\_H$ produces carry without signed overflow, whereas $70\_H+20\_H$ produces signed overflow without carry.

Subtraction uses the carry flag as a **borrow** indication on the 8085. After `CMP source`, $CY=1$ means the unsigned accumulator value was smaller than the source, even though the accumulator itself is unchanged.

## Multibyte unsigned addition

Let two $n$-byte integers be stored low byte first:

$$
X=\sum_{i=0}^{n-1}x_i2^{8i},\qquad
Y=\sum_{i=0}^{n-1}y_i2^{8i}.
$$

Starting with $c\_0=0$, bytewise addition obeys

$$
t_i=x_i+y_i+c_i,\qquad
z_i=t_i\bmod256,\qquad
c_{i+1}=\left\lfloor\frac{t_i}{256}\right\rfloor.
$$

After byte $i$, the loop invariant is

$$
\sum_{j=0}^{i}z_j2^{8j}+c_{i+1}2^{8(i+1)}
=\sum_{j=0}^{i}(x_j+y_j)2^{8j}.
$$

This proves that the final result bytes and $c\_n$ represent the exact $(n+1)$-byte sum.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-multibyte-carry-chain.png' | relative_url }}" alt="Three-byte addition on the 8085 showing low-to-high processing and carry propagation between byte positions">
  <figcaption>Little-endian storage makes the first memory byte the least-significant arithmetic stage. Every stage after the first must use `ADC`, not `ADD`.</figcaption>
</figure>

The following complete routine adds two 24-bit unsigned integers and stores a fourth byte containing the final carry. `LDA`, `MOV`, `STA` and `INX` do not alter carry, so the carry from one `ADC` survives until the next.

```asm
        ORG 2000H
        LXI H,NUM1      ; HL -> least-significant byte of X
        LXI D,NUM2      ; DE -> least-significant byte of Y
        STC
        CMC             ; CY = 0 without depending on old accumulator

        LDAX D
        ADC M
        STA SUM
        INX H
        INX D

        LDAX D
        ADC M
        STA SUM+1
        INX H
        INX D

        LDAX D
        ADC M
        STA SUM+2
        MVI A,00H       ; MVI preserves the final CY
        ACI 00H
        STA SUM+3
        HLT

NUM1:   DB 56H,34H,F2H
NUM2:   DB EFH,45H,23H
SUM:    DS 4
        END
```

For a 16-bit sum, `DAD rp` is shorter: it adds a register pair to `HL` and affects only carry. Thus `LHLD X`, `XCHG`, `LHLD Y`, `DAD D`, `SHLD Z` computes $Z=(X+Y)\bmod65536$, with $CY$ holding the seventeenth bit. Because only carry is defined by `DAD`, zero or sign must be established separately if required.

Multibyte subtraction propagates borrow in the same low-to-high order. With incoming borrow $b\_i$,

$$
d_i=x_i-y_i-b_i,\qquad
z_i=d_i\bmod256,\qquad
b_{i+1}=\begin{cases}1,&d_i<0,\\0,&d_i\geq0.\end{cases}
$$

`SUB` establishes the first borrow and `SBB` includes it at every higher byte. The 8085 convention is $CY=b\_{i+1}$ after subtraction. This complete fixed-address example computes a 16-bit difference and records the unsigned underflow in a separate byte:

```asm
        LDA X
        MOV B,A
        LDA Y
        MOV C,A
        MOV A,B
        SUB C
        STA DIFF

        LDA X+1         ; transfers leave the low-byte borrow unchanged
        MOV B,A
        LDA Y+1
        MOV C,A
        MOV A,B
        SBB C
        STA DIFF+1

        MVI A,00H       ; preserve CY, then convert borrow to 00 or 01
        ACI 00H
        STA BORROW
        HLT

X:      DW 1234H
Y:      DW 09F8H
DIFF:   DS 2
BORROW: DS 1
```

For the displayed data, `DIFF` becomes $083C\_H$ and `BORROW` becomes zero. If $X<Y$, the two result bytes contain $(X-Y)\bmod2^{16}$ and `BORROW` is one. Transfer instructions placed between byte stages are safe only because they do not modify carry.

## Repeated-addition multiplication

An eight-by-eight-bit unsigned product fits in sixteen bits. If the multiplicand is placed in `DE` with $D=0$, repeated `DAD D` accumulates the exact product in `HL`:

```asm
; Input: E = multiplicand, C = multiplier
; Output: HL = unsigned 16-bit product; destroys A, B, D and flags
MUL8:   MVI D,00H
        LXI H,0000H
        MOV A,C
        ORA A
        RZ              ; essential zero-multiplier case
        MOV B,C
MLOOP:  DAD D
        DCR B
        JNZ MLOOP
        RET
```

At the start of an iteration with $B=k$, the invariant is

$$
HL=(C_{initial}-k)E,\qquad 0<k\leq C_{initial}.
$$

`DAD D` advances the product and `DCR B` advances the count, so termination at $B=0$ gives $HL=C\_{initial}E$. The initial zero test prevents an eight-bit counter value of zero from wrapping and executing 256 iterations.

## Packed-BCD addition and `DAA`

In packed BCD, each nibble represents one decimal digit; only $0$ through $9$ are valid nibble values. Ordinary binary addition can produce invalid digits. After an accumulator addition, `DAA` performs decimal correction using the accumulator nibbles together with auxiliary carry and carry.

Conceptually, the correction is

1. add $06\_H$ if the low nibble exceeds 9 or $AC=1$;
2. add $60\_H$ if the corrected high digit requires it or $CY=1$.

The adjusted accumulator contains two valid BCD digits, and carry represents a decimal carry beyond the two-digit byte. For example,

$$
59_{BCD}+73_{BCD}=CC_H
\xrightarrow{+06_H}D2_H
\xrightarrow{+60_H}32_H,\quad CY=1,
$$

which represents $132\_{10}$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-daa-decimal-correction.png' | relative_url }}" alt="8085 DAA correction path showing low-nibble plus six and high-nibble plus sixty hexadecimal adjustments">
  <figcaption>`DAA` is meaningful after addition of valid packed-BCD operands. The decimal carry is then propagated to the next BCD byte with `ADC` followed by another `DAA`.</figcaption>
</figure>

The following program adds two four-digit packed-BCD numbers. The low-order two digits are stored first.

```asm
        LDA BCD1
        MOV B,A
        LDA BCD2
        ADD B
        DAA
        STA BCDSUM

        LDA BCD1+1      ; these transfer instructions preserve CY
        MOV B,A
        LDA BCD2+1
        ADC B
        DAA
        STA BCDSUM+1

        MVI A,00H       ; convert decimal carry to byte 00 or 01
        ACI 00H
        STA BCDSUM+2
        HLT

BCD1:   DB 99H,99H     ; 9999
BCD2:   DB 01H,00H     ; 0001
BCDSUM: DS 3           ; becomes 00H,00H,01H = 10000
```

The operands must be valid BCD before the operation. `DAA` is not a general conversion from arbitrary binary to decimal, and it should not be inserted after logical instructions or treated as a substitute for division by ten.

## Cycle-counted delay loops

A software delay consumes a known number of processor clock states. For a processor T-state frequency $f\_T$, a path of $N\_T$ states delays

$$
t_d=\frac{N_T}{f_T}.
$$

Timing must distinguish taken and not-taken conditional branches. Consider the sixteen-bit countdown routine

```asm
; Input: BC = N, where 1 <= N <= FFFFH
; Output: BC = 0000H; destroys A and flags
DELAY:  ; caller executes CALL DELAY separately
DLOOP:  DCX B          ; 6 T
        MOV A,C        ; 4 T
        ORA B          ; 4 T
        JNZ DLOOP      ; 10 T taken, 7 T not taken
        RET            ; 10 T
```

For $N-1$ taken iterations and one final not-taken iteration,

$$
N_T=(N-1)(6+4+4+10)+(6+4+4+7)+10=24N+7.
$$

If the calling sequence includes `LXI B,N` and `CALL DELAY`, add 10 and 18 T-states respectively, giving

$$
N_T^{(call)}=24N+35.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-delay-loop-tstates.png' | relative_url }}" alt="Cycle decomposition of an 8085 sixteen-bit countdown delay loop with taken and final not-taken branch paths">
  <figcaption>The terminal iteration is three T-states shorter because `JNZ` is not taken. Calibration must count that path exactly and state whether setup and `CALL` are included.</figcaption>
</figure>

For a requested delay $t\_d$, the nearest legal count is

$$
N=\operatorname{round}\!\left(\frac{f_Tt_d-35}{24}\right)
$$

when setup and call are included. At $f\_T=3.072$ MHz and $t\_d=5.000$ ms, $N=639$ gives

$$
t_{actual}=\frac{24(639)+35}{3.072\times10^6}
=5.00358\ \text{ms}.
$$

This is a nominal delay, not a precision timebase. Clock tolerance, wait states and interrupt service add error. If an interrupt of duration $t\_I$ occurs during the loop, the elapsed wall time increases by approximately $t\_I$. `DI` can remove that source of jitter for a critical interval, but it increases interrupt latency and cannot block `TRAP`. A hardware timer is preferable for long delays or stringent accuracy.

## Preparation questions

1. Derive carry, auxiliary carry and signed overflow for $8F\_H+92\_H$ and interpret the same bit patterns as signed integers.
2. Prove the multibyte-addition loop invariant and extend the 24-bit program to four bytes.
3. Write a 32-bit subtraction routine and state precisely how borrow propagates through `SBB`.
4. Trace `MUL8` for $E=0D\_H$, $C=05\_H$ and prove that no 16-bit overflow is possible for byte operands.
5. Apply `DAA` step by step to $48\_{BCD}+76\_{BCD}$, including $AC$ and $CY$.
6. Modify the packed-BCD program to add two six-digit operands.
7. Derive the delay formula when `PUSH PSW` and `POP PSW` are added to preserve accumulator and flags.
8. Calculate the count and percentage timing error for a $10$ ms delay at $2.5$ MHz, including setup, `CALL` and `RET`.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-arithmetic-bcd-and-delay-programming.mac' | relative_url }})

---
title: "8085 Subroutines: CALL, RET, RST and Program Linkage"
summary: "Return-address formation, CALL and RET stack transfers, conditional linkage, nested routines, restart vectors, register preservation and parameter-passing conventions."
date: 2025-05-23 09:00:00 +0530
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
  - subroutines
  - call-ret
  - program-linkage
permalink: /msc/sem-iv/electronics/8085-subroutines-call-ret-rst/
hidden: true
---

A **subroutine** is a separately located instruction sequence that performs a defined operation and then returns control to its caller. It eliminates repeated copies of the same code, provides a natural interface between program modules and permits hierarchical program design. In the 8085, linkage is implemented through the program counter and the descending RAM stack.

A correct subroutine convention must specify four matters: how control enters and leaves the routine, where arguments are supplied, where results are returned, and which registers the routine is permitted to destroy. The processor implements only the control-transfer mechanism; the register and parameter convention is a programmer agreement.

## Unconditional CALL operation

`CALL target` is a three-byte instruction. Its machine-code form is

$$
\boxed{CD_H\quad \operatorname{LOW}(target)\quad
\operatorname{HIGH}(target)}.
$$

The 8085 stores a 16-bit immediate address low byte first. If `CALL 3400H` begins at $2050\_H$, the instruction occupies addresses $2050\_H$, $2051\_H$ and $2052\_H$. After these bytes have been read, the program counter contains the next sequential address,

$$
PC_{\rm return}=2053_H.
$$

The processor pushes this return address and then loads the target:

$$
\begin{aligned}
SP&\leftarrow SP-1, & [SP]&\leftarrow PCH_{\rm return},\\
SP&\leftarrow SP-1, & [SP]&\leftarrow PCL_{\rm return},\\
PC&\leftarrow target.
\end{aligned}
$$

Thus, if $SP=4000\_H$ before the call, after it $SP=3FFE\_H$, $[3FFF\_H]=20\_H$, $[3FFE\_H]=53\_H$ and $PC=3400\_H$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-call-ret-state-transfer.png' | relative_url }}" alt="8085 CALL from address 2050 hexadecimal to 3400 hexadecimal and RET restoring return address 2053 from the stack">
  <figcaption>`CALL 3400H` saves the address following its three instruction bytes. `RET` later reads the low byte from $[SP]$ and the high byte from $[SP+1]$, restores $PC=2053_H$, and releases the two stack bytes.</figcaption>
</figure>

The bus work consists of three instruction-byte reads and two stack writes. The condition flags are not altered by `CALL`.

## RET operation and the linkage invariant

An unconditional `RET` is a one-byte instruction with opcode $C9\_H$. It performs

$$
\begin{aligned}
PCL&\leftarrow[SP], & SP&\leftarrow SP+1,\\
PCH&\leftarrow[SP], & SP&\leftarrow SP+1.
\end{aligned}
$$

No return address is encoded in `RET`; the address comes entirely from the current top of stack. A fundamental linkage invariant is therefore

$$
SP_{\rm immediately\ before\ RET}
=SP_{\rm immediately\ after\ CALL}.
$$

If a subroutine pushes register pairs, it must pop the same pairs in reverse order before returning. Otherwise `RET` consumes saved register data as an address. Similarly, changing $SP$ with `SPHL`, `INX SP` or `DCX SP` inside a routine requires an exact restoration before `RET`.

The customary callee-save pattern is

```asm
ROUTINE: PUSH PSW
         PUSH B
         PUSH D
         PUSH H
         ; routine body
         POP  H
         POP  D
         POP  B
         POP  PSW
         RET
```

Saving every register is safe but not always efficient. A documented interface may instead declare selected registers as volatile. For example, a routine returning an eight-bit result in $A$ cannot restore the old accumulator with `POP PSW`; it should preserve only the registers not used for its result.

## Nested subroutines and stack depth

A subroutine may call another subroutine. Each active call contributes a distinct two-byte return address. If the main program calls `SUB1`, and `SUB1` calls `SUB2`, the address returning from `SUB2` to `SUB1` becomes the newer top-of-stack entry at lower memory addresses than the older address returning from `SUB1` to the main program. LIFO removal therefore produces the correct control sequence.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-nested-subroutine-stack.png' | relative_url }}" alt="Nested 8085 subroutine calls showing two return addresses on the descending stack and reverse RET order">
  <figcaption>Nested calls are naturally matched by the stack: `RET` in `SUB2` removes $RA_2$, and the later `RET` in `SUB1` removes $RA_1$. Register saves made by either routine occupy additional lower addresses.</figcaption>
</figure>

If the maximum call nesting is $d$, and active routines collectively have at most $p$ unmatched pair pushes, then the required stack allocation for ordinary linkage is at least

$$
D_{\max}=2(d+p)\ \text{bytes},
$$

before allowing for interrupt entry. Recursion is possible because each call has its own return address, but the 8085 has no frame pointer, automatic local-variable allocation or stack-limit protection. A recursive routine must define its own parameter and local-data representation and must prove that recursion terminates before RAM is exhausted.

## Conditional CALL and conditional RET

The eight flag conditions are zero/nonzero, carry/no carry, minus/positive and parity even/odd. They produce conditional calls

```text
CZ  CNZ   CC  CNC   CM  CP   CPE  CPO
```

and corresponding conditional returns

```text
RZ  RNZ   RC  RNC   RM  RP   RPE  RPO
```

A conditional call is still a three-byte instruction. If its condition is true, it pushes the return address and transfers to the target exactly like `CALL`. If false, execution continues after the instruction and the stack remains unchanged. A conditional return pops $PC$ only when its condition is true; otherwise it proceeds to the following byte in the current routine.

This permits compact multi-exit routines. For example,

```asm
CHECK:  CMP  M
        RZ           ; return immediately if A = [HL]
        ; process unequal case
        RET
```

The flags tested must have been established intentionally. Data-transfer instructions such as `MOV` do not update the arithmetic flags, so a conditional return after `MOV` would test an older condition.

## RST as a one-byte call

`RST n`, where $0\le n\le7$, is a one-byte special call. Its opcode and destination are

$$
\boxed{\operatorname{opcode}(RST\ n)=C7_H+8n},
\qquad
\boxed{PC\leftarrow8n}.
$$

The opcode format is $11nnn111\_2$. The eight software destinations are

| Instruction | Opcode | Vector address |
|---|---:|---:|
| `RST 0` | $C7\_H$ | $0000\_H$ |
| `RST 1` | $CF\_H$ | $0008\_H$ |
| `RST 2` | $D7\_H$ | $0010\_H$ |
| `RST 3` | $DF\_H$ | $0018\_H$ |
| `RST 4` | $E7\_H$ | $0020\_H$ |
| `RST 5` | $EF\_H$ | $0028\_H$ |
| `RST 6` | $F7\_H$ | $0030\_H$ |
| `RST 7` | $FF\_H$ | $0038\_H$ |

Like `CALL`, `RST` pushes the next-instruction $PC$—the address following its one-byte opcode—before loading the vector, so a `RET` can resume the interrupted sequence. Only eight bytes separate adjacent software vectors. A vector commonly contains `JMP service` to reach a longer routine elsewhere.

The hardware inputs TRAP and RST 5.5, 6.5 and 7.5 generate related internal restart actions but use the intermediate vectors $0024\_H$, $002C\_H$, $0034\_H$ and $003C\_H$. Their priority, trigger modes and masking are treated with the complete interrupt system.

## Parameter passing and return values

The simplest interfaces pass arguments in registers:

```asm
        LXI  H,2400H       ; array address
        MVI  B,10          ; number of bytes, B > 0
        CALL SUM8
        ; A contains sum modulo 256; CY is not a total-overflow count

SUM8:  XRA  A
NEXT:  ADD  M
        INX  H
        DCR  B
        JNZ  NEXT
        RET
```

The interface declares $HL$ and $B$ as inputs, $A$ as output, and $HL$, $B$ and arithmetic flags as destroyed. If the caller needs their old values, it must save them or the routine must adopt a callee-save convention.

Arguments can also occupy fixed RAM locations, be addressed through a pointer in $HL$, or be placed after the `CALL` instruction. The last technique makes the saved return address point to inline data; the routine must read that address, advance it over the parameters and replace or emulate the corrected return. It is compact but more fragile than register or pointer passing.

The stack can carry parameters, but the 8085 has no instruction of the form $[SP+k]$. Access normally requires controlled `POP`/`PUSH` sequences, `XTHL`, or copying $SP$ to $HL$ through a designed sequence. Interrupts must not observe a temporarily malformed stack layout.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-subroutine-interfaces.png' | relative_url }}" alt="8085 subroutine parameter interfaces using registers, a memory pointer and stack or inline data">
  <figcaption>Registers are fastest, a pointer supports arrays and structures, and stack or inline parameters support general interfaces at the cost of more linkage code. Every interface must state preserved and destroyed registers.</figcaption>
</figure>

## Code-size criterion

Suppose an operation requires $L$ bytes when written inline and is used $k$ times. Repetition costs $kL$ bytes. A single subroutine with $k$ three-byte calls and a one-byte `RET` costs approximately

$$
L+3k+1.
$$

The code-space saving is

$$
\boxed{\Delta=(k-1)L-3k-1}.
$$

For $L=40$ and $k=4$, inline code requires $160$ bytes, whereas the subroutine organization requires $40+12+1=53$ bytes, saving $107$ bytes. The tradeoff is execution time for linkage, two stack bytes per active call, and a requirement for writable memory.

## Preparation questions

1. Derive the stack and program-counter micro-operations performed by an unconditional `CALL`.
2. Encode `CALL 4A30H` into three machine-code bytes and determine the return address if it begins at $2100\_H$.
3. Explain the stack-pointer invariant that must hold immediately before `RET`.
4. Trace two nested calls and returns, including the byte order of both saved addresses.
5. Compare conditional calls and conditional returns for true and false flag conditions.
6. Derive the opcode and vector address of every `RST n` instruction.
7. Design a register-preservation and parameter-passing convention for an array-processing subroutine.
8. Obtain the break-even condition for replacing $k$ inline copies of an $L$-byte operation by a subroutine.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-subroutines-call-ret-rst.mac' | relative_url }})

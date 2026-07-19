---
title: "8085 Array Programming: Block Transfer, Search, Sort and Tables"
summary: "Memory-block traversal, overlap-safe copying, linear search contracts, adjacent-exchange sorting, table lookup, checksums and complexity analysis."
date: 2025-05-31 09:00:00 +0530
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
  - array-programming
  - block-transfer
  - search-and-sort
permalink: /msc/sem-iv/electronics/8085-block-search-sort-table-programming/
hidden: true
---

An array algorithm maps an abstract index $i$ to a physical address. For a byte array of length $n$ beginning at address $B$,

$$
A[i]=M[B+i],\qquad 0\leq i<n.
$$

On the 8085, `HL` is the natural source pointer because `M` denotes the byte addressed by `HL`; `DE` is a natural second pointer because `LDAX D` and `STAX D` access memory through `DE`. A byte counter supplies termination. Every routine must define the zero-length case explicitly, because decrementing an eight-bit zero counter wraps to $FF\_H$ and can produce 256 unintended iterations.

## Forward block transfer

The following subroutine copies $C$ bytes from the source beginning at `HL` to the destination beginning at `DE`.

```asm
; Input: HL = source, DE = destination, C = length (0...255)
; Output: HL and DE advanced by the original length, C = 0
; Preserves B; destroys A and flags
COPYF:  MOV A,C
        ORA A
        RZ
CFLOOP: MOV A,M
        STAX D
        INX H
        INX D
        DCR C
        JNZ CFLOOP
        RET
```

At the start of the iteration for index $i$, the invariant is

$$
HL=S+i,\quad DE=D+i,\quad C=n-i,\quad
M[D+j]=M_0[S+j]\quad(0\leq j<i),
$$

where $M\_0$ denotes memory before copying. The load occurs before the store, so the current source byte is protected within that iteration. The invariant proves correct copying when the source and destination do not overlap, or when forward traversal cannot overwrite a source byte that will be needed later.

Let the half-open source and destination intervals be

$$
I_S=[S,S+n),\qquad I_D=[D,D+n).
$$

Forward copying is safe if $D\leq S$ or $D\geq S+n$. If $S<D<S+n$, a forward store can corrupt an unread higher source byte; copying must proceed from the last byte toward the first.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-overlap-safe-block-transfer.png' | relative_url }}" alt="8085 block transfer showing safe forward copying and backward copying required for overlapping destination above source">
  <figcaption>The traversal direction is selected from interval geometry. When the destination starts inside the source at a higher address, the highest-index byte must be copied first.</figcaption>
</figure>

An overlap-safe backward routine can use $BC=n-1$ temporarily to place both pointers at the last elements:

```asm
; Input: HL = source, DE = destination, C = length (0...255)
; Use when source < destination < source+length
; Output: C = 0; for nonzero length, HL = source-1 and DE = destination-1
; Destroys A, B and flags
COPYB:  MOV A,C
        ORA A
        RZ
        MVI B,00H
        DCX B           ; BC = n-1
        DAD B           ; HL = source+n-1
        XCHG            ; HL = destination, DE = source+n-1
        DAD B           ; HL = destination+n-1
        XCHG            ; HL = source end, DE = destination end
        INX B           ; BC = n, hence C = n
CBLOOP: MOV A,M
        STAX D
        DCX H
        DCX D
        DCR C
        JNZ CBLOOP
        RET
```

Since the input length is at most 255, forming $BC=00(n-1)\_H$ and then incrementing it recovers $BC=00n\_H$. The routine is valid only under its stated direction condition; a general `memmove` dispatcher must compare the sixteen-bit interval bounds before choosing `COPYF` or `COPYB` and must account for address wraparound if buffers can cross $FFFF\_H$.

## Linear search with a flag contract

A linear search compares the key with successive bytes until equality or exhaustion. The routine below returns $CY=0$ with `HL` at the first matching byte. It returns $CY=1$ with `HL` one address beyond the searched block when no match exists.

```asm
; Input: HL = first byte, B = length, C = key
; Output: CY=0 and HL->first match, or CY=1 and HL=first byte+length
; Preserves C; destroys A and B; flags other than returned CY are unspecified
FIND8:  MOV A,B
        ORA A
        JZ NOTFND
FLOOP:  MOV A,M
        CMP C
        JZ FOUND        ; equality also leaves CY=0
        INX H
        DCR B
        JNZ FLOOP
NOTFND: STC
        RET
FOUND:  RET
```

At loop entry for index $i$, the invariant is

$$
HL=B_0+i,\quad B=n-i,\quad
A[j]\ne key\quad(0\leq j<i).
$$

If equality occurs, the invariant proves that no earlier element matches, so the routine returns the first occurrence. If the counter reaches zero, every valid index has been excluded.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-linear-search-state.png' | relative_url }}" alt="Linear search control states for an 8085 array including zero length, comparison, found and exhausted exits">
  <figcaption>The carry flag is an explicit return channel. The zero-count path reaches `NOTFND` before any memory access, preventing counter wraparound and an invalid read.</figcaption>
</figure>

Worst-case unsuccessful search makes $n$ comparisons; a match at zero-based index $i$ makes $i+1$. If a match is equally likely to occur at any position and is guaranteed to exist, the mean is

$$
E[C]=\frac1n\sum_{i=0}^{n-1}(i+1)=\frac{n+1}{2}.
$$

The program therefore has time complexity $\Theta(n)$ and constant auxiliary storage. The exact execution time depends on the match position because the conditional jump path changes.

## Adjacent-exchange sorting

Bubble sort compares adjacent elements and exchanges a pair when it is out of ascending order. After one complete left-to-right pass, the maximum element of the active prefix is at its right boundary. The next pass can therefore omit that final element.

```asm
N       EQU 05H
        LXI H,ARRAY
        MVI B,N
        CALL SORT8
        HLT

; Input: B = length, array begins at fixed label ARRAY
; Output: ARRAY ascending; destroys A, B, C, D, HL and flags
SORT8:  MOV A,B
        CPI 02H
        RC              ; length 0 or 1 is already sorted
        DCR B           ; number of remaining passes
OUTER:  LXI H,ARRAY
        MOV C,B         ; comparisons shrink by one each pass
INNER:  MOV A,M         ; A = left element
        INX H           ; M = right element
        CMP M
        JC ORDERED
        JZ ORDERED
        MOV D,M         ; exchange; HL currently points right
        MOV M,A
        DCX H
        MOV M,D
        INX H
ORDERED:DCR C
        JNZ INNER
        DCR B
        JNZ OUTER
        RET

ARRAY:  DB 42H,17H,63H,08H,31H
```

At the end of pass $p$ ($p=1$ for the first pass), the $p$ largest values occupy their final positions at the right end. The total number of comparisons is

$$
(n-1)+(n-2)+\cdots+1=\frac{n(n-1)}2.
$$

Define an inversion as a pair $(i,j)$ with $i<j$ but $A[i]>A[j]$. Exchanging an adjacent inverted pair removes exactly one inversion and introduces none. The number of executed swaps is therefore exactly the initial inversion count. This supplies a termination measure and a correctness argument: when no inversion remains, the array is nondecreasing.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/electronics/unit-3/8085-bubble-sort-passes.png' | relative_url }}" alt="Pass-by-pass bubble sort trace for bytes 42, 17, 63, 08 and 31 hexadecimal">
  <figcaption>Each pass fixes the largest value in the active prefix. Equal byte values are not exchanged; when the same comparison rule is extended to whole records, equal-key records retain their order.</figcaption>
</figure>

For the sample, the passes produce

```text
initial : 42 17 63 08 31
pass 1  : 17 42 08 31 63
pass 2  : 17 08 31 42 63
pass 3  : 08 17 31 42 63
pass 4  : 08 17 31 42 63
```

Bubble sort is suitable for demonstrating pointer and flag discipline, but its $\Theta(n^2)$ comparison count makes it unsuitable for large tables.

## Table lookup and checksums

The 8085 has no base-plus-index addressing mode, but an unsigned byte index can be promoted to a word and added to a table base:

```asm
; Input: A = index 0...15
; Output: A = SQUARES[index]; destroys DE, HL and CY
LOOKUP: MOV L,A
        MVI H,00H
        LXI D,SQUARES
        DAD D
        MOV A,M
        RET

SQUARES:DB 00H,01H,04H,09H,10H,19H,24H,31H
        DB 40H,51H,64H,79H,90H,A9H,C4H,E1H
```

The table stores $i^2$ for $0\leq i\leq15$. The caller must enforce the index range; otherwise a legal memory read occurs outside the table. For fixed-size records of $r$ bytes, compute $B+ri$ rather than $B+i$, using shifts or repeated addition appropriate to $r$.

A simple modulo-256 additive checksum is

$$
S=\left(\sum_{i=0}^{n-1}A[i]\right)\bmod256.
$$

```asm
; Input: HL = block, B = length
; Output: A = modulo-256 sum, HL advanced by original length, B = 0
; Destroys flags
SUM8:   MOV A,B
        ORA A
        JZ SUMZERO
        XRA A
SLOOP:  ADD M
        INX H
        DCR B
        JNZ SLOOP
        RET
SUMZERO:XRA A
        RET
```

At iteration $i$, $A$ equals the sum of the first $i$ bytes modulo 256. The final carry flag reports only the carry from the last byte addition; it is not an accumulated count of all carries. This checksum detects many errors but not all permutations or compensating byte changes, so it is an instructional integrity check rather than a cryptographic one.

## Preparation questions

1. Prove `COPYF` from its loop invariant and give an explicit overlapping memory example for which it fails.
2. Trace `COPYB` for $S=3000\_H$, $D=3002\_H$, $n=5$, including both pointer values at every iteration.
3. Extend `FIND8` to return the zero-based index in `A`, with $FF\_H$ representing failure.
4. Derive the expected number of comparisons when the key is absent with probability $q$ and otherwise uniformly located.
5. Trace every comparison and swap of `SORT8` for `05 02 05 01`, and verify stability of equal keys.
6. Prove that the number of adjacent swaps performed by bubble sort equals the initial inversion count.
7. Write a table-lookup routine for 16-bit entries stored low byte first and return the result in `HL`.
8. Modify `SUM8` to form a 16-bit sum and derive its maximum value for 255 input bytes.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/electronics/unit-3/8085-block-search-sort-table-programming.mac' | relative_url }})

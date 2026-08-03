---
title: "Number Systems and Boolean Algebra"
summary: "Positional notation, binary arithmetic and codes, switching logic, Boolean laws, canonical forms, SOP/POS reduction, and Karnaugh maps with don't-cares."
date: 2025-05-29 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, digital-electronics, number-systems, boolean-algebra, karnaugh-map]
permalink: /bsc/sem-vi/digital-electronics/number-systems-boolean-algebra/
hidden: true
---

A digital word is a finite sequence of symbols. Its numerical value depends on the base; its logical meaning depends on the code or Boolean function assigned to it. Keeping those roles separate prevents, for example, confusing the BCD word `0101 1001` with one binary integer.

## Positional number systems

In radix $r$, each digit satisfies $0\le d_i<r$, and

$$
(d_nd_{n-1}\cdots d_0.d_{-1}\cdots d_{-m})_r
=\sum_{i=-m}^{n}d_i r^i.
$$

Repeated division by $r$ produces integer digits from least to most significant. For $45_{10}$,

$$
\begin{aligned}
45&=2(22)+1,&22&=2(11)+0,&11&=2(5)+1,\\
5&=2(2)+1,&2&=2(1)+0,&1&=2(0)+1,
\end{aligned}
$$

so the remainders read upward give $45_{10}=101101_2$. Repeated multiplication produces fractional digits:

$$
0.625(2)=1.25\to1,\qquad
0.25(2)=0.50\to0,\qquad
0.50(2)=1.00\to1.
$$

Therefore

$$
45.625_{10}=101101.101_2,
$$

and direct reconstruction checks the conversion:

$$
2^5+2^3+2^2+2^0+2^{-1}+2^{-3}=45.625.
$$

Binary digits group exactly into octal and hexadecimal digits because $8=2^3$ and $16=2^4$:

$$
1101011110_2=001\,101\,011\,110_2=1536_8,
$$

$$
1101011110_2=0011\,0101\,1110_2=35E_{16}.
$$

The hexadecimal digit set is $0,1,\ldots,9,A,B,C,D,E,F$, with $$A_{16}=10_{10}$$ through $$F_{16}=15_{10}$$.

## Binary addition, two's complement, and subtraction

The one-column addition rules are

| $A$ | $B$ | carry in $C$ | sum bit | carry out |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

Thus

$$
\begin{array}{r}
00101101_2\\[-2pt]
{}+00010111_2\\ \hline
01000100_2
\end{array}
\qquad(45+23=68).
$$

An $n$-bit register stores integers modulo $2^n$. The two's-complement representation of $-x$ is therefore

$$[-x]_{2^n}=2^n-x,$$

because $x+(2^n-x)\equiv0\pmod{2^n}$. Operationally, invert all $n$ bits and add one. For eight bits,

$$
37=00100101_2,\quad
\overline{00100101}=11011010,\quad
-37=11011011_2.
$$

Subtraction is addition of this modular inverse. For example,

$$
\begin{array}{r}
01011011_2\;(91)\\[-2pt]
{}+11011011_2\;(-37)\\ \hline
1\,00110110_2
\end{array}
$$

The ninth-bit carry is discarded, leaving $$00110110_2=54_{10}$$. The signed range is

$$-2^{n-1}\le N\le 2^{n-1}-1.$$

Adding equal-sign operands has overflow if the stored result has the opposite sign. Carry and signed overflow are different: carry describes unsigned arithmetic beyond $2^n-1$, whereas overflow describes failure of the signed range.

## BCD and ASCII binary codes

A code assigns bit patterns to symbols; the pattern need not be interpreted as one positional binary number.

- In 8421 BCD, each decimal digit receives its own four-bit binary code. Hence $59_{10}$ is `0101 1001` in BCD, not `0011 1011`, which is the binary representation of the integer 59. The six patterns `1010` through `1111` are not decimal digits.
- ASCII assigns a seven-bit code to a character. The character `A` has decimal code 65, so its seven-bit pattern is `1000001`. The digit characters `0` through `9` have codes `0110000` through `0111001`; their low four bits equal the corresponding BCD digit.

## Switching circuits and elementary operations

Assign 1 to a closed switch and 0 to an open switch. Two series contacts conduct only if both are closed, so their switching function is $Y=AB$. Parallel contacts conduct if either branch is closed, so $Y=A+B$. A complemented contact implements $\overline A$.

| $A$ | $B$ | AND $AB$ | OR $A+B$ | NOT $\overline A$ |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 |

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/digital/unit-1/switching-boolean-venn.png' | relative_url }}" alt="Series and parallel switching circuits alongside Venn diagrams for intersection union and complement">
  </div>
  <figcaption>Series and parallel paths realize AND and OR. With 1 interpreted as set membership, the same truth tables become intersection, union, and complement in the universal set $U$.</figcaption>
</figure>

The Venn interpretation is exact: a point in $A\cap B$ has membership bits $(1,1)$ and hence $AB=1$; a point in $A\cup B$ has at least one membership bit equal to 1; a point in $U\setminus A$ has membership $\overline A=1$.

## Boolean functions, postulates, and theorems

A Boolean function $F:\{0,1\}^n\to\{0,1\}$ assigns one output to every input word. Its truth table is therefore a complete definition with $2^n$ rows.

Boolean algebra uses closure and the following postulates, together with every equation obtained by interchanging $+$ with multiplication and $0$ with $1$:

$$
\begin{aligned}
A+0&=A, & A1&=A &&\text{(identities)},\\
A+B&=B+A, & AB&=BA &&\text{(commutativity)},\\
A(B+C)&=AB+AC, &(A+B)(A+C)&=A+BC &&\text{(distributivity)},\\
A+\overline A&=1, &A\overline A&=0 &&\text{(complements)}.
\end{aligned}
$$

Interchanging the paired operations and constants is the **duality principle**. For example, the dual of $A+0=A$ is $A1=A$; complementation is unchanged.

Useful theorems follow from the postulates:

$$
\begin{aligned}
A+A&=A,&AA&=A &&\text{(idempotence)},\\
A+1&=1,&A0&=0 &&\text{(dominance)},\\
\overline{\overline A}&=A,&&&\text{(involution)},\\
A+AB&=A,&A(A+B)&=A &&\text{(absorption)},\\
\overline{A+B}&=\overline A\,\overline B,
&\overline{AB}&=\overline A+\overline B &&\text{(De Morgan)}.
\end{aligned}
$$

For absorption, no truth-table guess is needed:

$$A+AB=A(1+B)=A(1)=A.$$

A second recurrent reduction is

$$
(A+B)(A+\overline B)
=A+A(B+\overline B)+B\overline B
=A+A+0=A.
$$

De Morgan's first law can also be checked row by row:

| $A$ | $B$ | $\overline{A+B}$ | $\overline A\,\overline B$ |
|---:|---:|---:|---:|
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 |

## Canonical forms, SOP, and POS

For variables $A,B,C$, a **minterm** contains every variable once and is 1 for exactly one row. For example, $m_5=A\overline BC$ because $5=101_2$. A **maxterm** contains every variable once and is 0 for exactly one row; $M_5=\overline A+B+\overline C$.

If $F=1$ at rows $1,3,6,7$, its canonical sum of products is

$$
\begin{aligned}
F&=\Sigma m(1,3,6,7)\\
&=\overline A\,\overline B C+\overline ABC+AB\overline C+ABC.
\end{aligned}
$$

The zero rows are $0,2,4,5$, so the same function has canonical product of sums

$$
\begin{aligned}
F&=\Pi M(0,2,4,5)\\
&=(A+B+C)(A+\overline B+C)(\overline A+B+C)(\overline A+B+\overline C).
\end{aligned}
$$

Canonical terms contain all variables. A general SOP is an OR of product terms, and a general POS is an AND of sum terms. Algebra reduces the canonical SOP above without changing its truth table:

$$
\begin{aligned}
F&=\overline AC(\overline B+B)+AB(\overline C+C)\\
&=\overline AC+AB.
\end{aligned}
$$

## Karnaugh maps and incompletely specified functions

A Karnaugh map places truth-table rows in Gray order, so horizontally or vertically adjacent cells differ in one variable. The first and last rows are adjacent, as are the first and last columns. A group must contain $1,2,4,8,\ldots$ cells; every variable that changes inside the group disappears from its product term.

For

$$F=\Sigma m(1,3,7,11,15),\qquad d=\Sigma d(0,2,5),$$

the set $d$ lists **don't-care** inputs of an incompletely specified function. Those inputs are outside the required operating set, so each may be assigned 0 or 1 to reduce the implementation; a don't-care need not be used.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/digital/unit-1/karnaugh-dont-cares.png' | relative_url }}" alt="Four variable Karnaugh map showing a horizontal group using two don't cares and a vertical group">
  </div>
  <figcaption>The horizontal group fixes $A=B=0$, giving $\overline A\,\overline B$; the vertical group fixes $C=D=1$, giving $CD$. Every specified 1 is covered and no specified 0 is covered.</figcaption>
</figure>

Consequently,

$$\boxed{F=\overline A\,\overline B+CD}.$$

The unused don't-care $m_5$ may take either output value without altering the specification.

## Solved Problems

### 1. Distinguish unsigned carry from signed overflow

Add `01101101` and `00110110` in an eight-bit register, and interpret the result as both unsigned and two's-complement data.

The operands are $109$ and $54$. Column addition gives

$$
\begin{array}{r}
01101101_2\\[-2pt]
{}+00110110_2\\ \hline
10100011_2
\end{array}
$$

because $109+54=163$. Since $163<2^8$, there is no ninth-bit carry and the unsigned result is valid. Under the two's-complement sign convention both inputs are positive, but the stored result has leading bit 1 and represents

$$
10100011_2=163-256=-93.
$$

Two positive signed operands cannot have a negative mathematical sum, so the signed-overflow flag must be set. The register has still performed the correct dimensionless modular operation, $163\bmod256=163$; only the signed interpretation is outside the allowed interval $[-128,127]$.

### 2. Minimize a four-variable switching function

Minimize

$$
F(A,B,C,D)=\Sigma m(0,2,5,7,8,10,13,15).
$$

The cells $0,2,8,10$ form a four-cell group. Within it $A$ and $C$ change, while $B=0$ and $D=0$, so its implicant is $\overline B\,\overline D$. The cells $5,7,13,15$ form another four-cell group with $B=D=1$, giving $BD$. Hence

$$
\boxed{F=\overline B\,\overline D+BD=\overline{B\oplus D}}.
$$

The result is independent of $A$ and $C$: it is 1 exactly when $B=D$. Exhaustive substitution in the 16 dimensionless input states gives zero mismatch with the stated minterm set.

## Descriptive Questions

1. How is the range of an $n$-bit two's-complement word derived, and why do carry-out and signed overflow test different conditions?
2. What are the Boolean-algebra postulates, and how does duality generate the dual of each distributive law?
3. How are canonical SOP and POS expressions constructed directly from a truth table?
4. What adjacency, wraparound, grouping, and don't-care rules govern a four-variable Karnaugh map?

## Numerical Problems

1. Convert $214.6875_{10}$ directly to binary, and then obtain its octal and hexadecimal forms by grouping bits.

   **Answer:** {::nomarkdown}\(11010110.1011_2=326.54_8=D6.B_{16}\){:/nomarkdown}.
2. Evaluate $73-121$ in an eight-bit two's-complement register and state whether signed overflow occurs.

   **Answer:** {::nomarkdown}\(01001001_2+10000111_2=11010000_2=-48_{10}\){:/nomarkdown}; no signed overflow.
3. Add decimal $58$ and $67$ using 8421 BCD, applying the $0110_2$ correction wherever a digit sum is invalid.

   **Answer:** {::nomarkdown}\(125_{10}=0001\ 0010\ 0101_{\rm BCD}\){:/nomarkdown}.
4. For a three-variable function that is 1 on rows $0,2,5,7$, write both canonical forms without minimizing.

   **Answer:** $F=\Sigma m(0,2,5,7)=\Pi M(1,3,4,6)$.
5. Express the seven-bit ASCII code of the uppercase character `Z` in decimal, hexadecimal, and binary.

   **Answer:** {::nomarkdown}\(90_{10}=5A_{16}=1011010_2\){:/nomarkdown}.

[Editable switching/Venn TikZ]({{ '/assets/tikz/bsc/sem-vi/digital/unit-1/switching-boolean-venn.tex' | relative_url }}) · [Editable Karnaugh-map TikZ]({{ '/assets/tikz/bsc/sem-vi/digital/unit-1/karnaugh-dont-cares.tex' | relative_url }}) · [Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/digital/unit-1/number-systems-boolean-algebra.mac' | relative_url }})

## References

1. [Boolean algebra](https://en.wikipedia.org/wiki/Boolean_algebra).
2. M. Morris Mano and Michael D. Ciletti, *Digital Design: With an Introduction to the Verilog HDL, VHDL, and SystemVerilog*, 6th ed., Chapters 1–3, Pearson, 2018.
3. Thomas L. Floyd, *Digital Fundamentals*, 11th ed., Chapters 2–4, Pearson, 2015.

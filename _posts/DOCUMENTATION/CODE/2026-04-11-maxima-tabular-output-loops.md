---
title: "Maxima Tables and Loops"
summary: "Structured tabular output, 2-D display, and matrix construction using lists and loops in Maxima."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - io
permalink: /maxima-tabular-output-loops/
hidden: true
---
Maxima supports disciplined, readable computational workflows by combining list generation, matrix constructors, and loop-based iteration with formatted printing. In practice, tabular output is produced with **print(a, b, c)** or **printf(true, "format", args)**, while symbolic objects can be displayed in Maxima’s two-dimensional mathematical form via the **~m** format directive.

## Tabular-style Output and 2-D Pretty Display

For line-by-line tabular output, **print** is sufficient for quick inspection, whereas **printf** provides precise control over alignment, numeric formatting, and line breaks. When the goal is to display an expression in Maxima’s 2-D mathematical form, use **printf(true, "~m~%", expr)**.

- **print(a, b, c);** prints items in sequence.
- **printf(true, "format", args);** prints formatted output.
- **printf(true, "~m~%", expr);** prints an expression in Maxima’s 2-D mathematical display form.

```python
for n:0 thru 5 do
    printf(true, "n = ~d   value = ~d~%", n, n^2);
```

## Matrices and Programmatic Construction

Matrices can be created explicitly from row lists, or built from generated rows. The constructors **matrix([row1], [row2], ...)**, **ident(n)**, and **zeromatrix(m, n)** provide a direct entry point for linear-algebra workflows, while list generators and loops allow formula-driven construction.

- **matrix([row1], [row2], ...);** creates a matrix from row lists.
- **ident(n);** creates the identity matrix of order $n$.
- **zeromatrix(m, n);** creates an $m \times n$ zero matrix.

```python
A : matrix([1, 2], [3, 4]);
B : ident(2);
C : zeromatrix(2, 3);
```

A standard pattern is to generate each row as a list, then assemble the rows into a matrix:

```python
M : matrix(
        makelist(i, i, 1, 3),
        makelist(i^2, i, 1, 3),
        makelist(i^3, i, 1, 3)
     );
```

$$
\begin{pmatrix}
1 & 2 & 3 \\
1 & 4 & 9 \\
1 & 8 & 27
\end{pmatrix}
$$

## Lists with makelist and Iteration with for ... do

List generation is central for building structured data prior to matrix conversion. The constructor **makelist(expr, i, a, b)** generates a list by evaluating **expr** as the index **i** ranges from **a** to **b**. Iteration is typically expressed using **for i:1 thru n do expr;**, and nested loops are natural for producing indexed output such as matrix-entry reports.

- **makelist(expr, i, a, b);** generates a list over an index range.
- **for i:1 thru n do expr;** iterates with integer stepping.
- **for i from a thru b do expr;** equivalent explicit-range loop form.

```python
L1 : makelist(i^2, i, 1, 5);
L2 : makelist(sin(k), k, 0, 4);

for i:1 thru 5 do print(i, i^2);

for i:1 thru 3 do
  for j:1 thru 3 do
    printf(true, "a[~d,~d] = ~d~%", i, j, i+j);
```

## Minimal Working Session

```python
kill(all)$

/* tabular-style output */
for n:1 thru 5 do
    printf(true, "n = ~d   n^2 = ~d~%", n, n^2)$

/* list generation */
L : makelist(k^2, k, 1, 4)$
print(L)$

/* matrix construction */
M : matrix(
      makelist(i, i, 1, 4),
      makelist(i^2, i, 1, 4)
    )$
print(M)$
printf(true, "~m~%", M)$
```
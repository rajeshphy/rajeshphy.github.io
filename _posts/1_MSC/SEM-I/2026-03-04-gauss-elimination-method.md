---
title: "Gauss Elimination Method"
summary: "Solving linear simultaneous equations by forward elimination and back substitution."
date: 2026-03-04 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - linear-equations
permalink: /msc/sem-i/gauss-elimination-method/
hidden: true
---

Gauss elimination is a direct method for solving a system of linear equations:

$$
A\mathbf{x}=\mathbf{b}.
$$

The method converts the coefficient matrix into upper triangular form and then solves the unknowns by back substitution.

## Augmented matrix

For three equations, write

$$
\left[
\begin{array}{ccc|c}
a_{11} & a_{12} & a_{13} & b_1\\
a_{21} & a_{22} & a_{23} & b_2\\
a_{31} & a_{32} & a_{33} & b_3
\end{array}
\right].
$$

Row operations are then used to remove the coefficients below the diagonal.

## Forward elimination

The goal is to obtain

$$
\left[
\begin{array}{ccc|c}
u_{11} & u_{12} & u_{13} & c_1\\
0 & u_{22} & u_{23} & c_2\\
0 & 0 & u_{33} & c_3
\end{array}
\right].
$$

This corresponds to the triangular system

$$
\begin{aligned}
u_{11}x+u_{12}y+u_{13}z&=c_1,\\
u_{22}y+u_{23}z&=c_2,\\
u_{33}z&=c_3.
\end{aligned}
$$

## Back substitution

First find

$$
z=\frac{c_3}{u_{33}}.
$$

Then substitute $z$ into the second equation to find $y$, and finally substitute $y$ and $z$ into the first equation to find $x$.

## Pivoting

If a pivot element is zero or very small, rows should be interchanged. This improves numerical stability.

## Key points

- Gauss elimination is efficient for small and medium linear systems.
- It is sensitive to round-off error when pivots are small.
- Partial pivoting is usually safer than plain elimination.


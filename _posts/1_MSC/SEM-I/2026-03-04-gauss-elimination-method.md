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

Many physical problems lead to simultaneous linear equations. Examples include balance of forces, electrical networks, normal-mode equations after approximation, and fitting constants from data. In such problems several unknowns must be found together.

Gauss elimination is a direct method for solving a system of linear equations:

$$
A\mathbf{x}=\mathbf{b}.
$$

The method converts the coefficient matrix into upper triangular form and then solves the unknowns by back substitution.

The idea is the same as ordinary elimination in algebra: remove one unknown from lower equations, then remove the next unknown, until the last equation contains only one unknown.

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

The allowed row operations are interchange of two rows, multiplication of a row by a non-zero number, and addition of a multiple of one row to another row. These operations do not change the solution of the system.

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

## Three-equation example

Solve

$$
\begin{aligned}
x+y+z&=6,\\
2x+3y+z&=11,\\
x-y+2z&=5.
\end{aligned}
$$

The augmented matrix is

$$
\left[
\begin{array}{ccc|c}
1&1&1&6\\
2&3&1&11\\
1&-1&2&5
\end{array}
\right].
$$

Use $R_2\to R_2-2R_1$ and $R_3\to R_3-R_1$:

$$
\left[
\begin{array}{ccc|c}
1&1&1&6\\
0&1&-1&-1\\
0&-2&1&-1
\end{array}
\right].
$$

Then use $R_3\to R_3+2R_2$:

$$
\left[
\begin{array}{ccc|c}
1&1&1&6\\
0&1&-1&-1\\
0&0&-1&-3
\end{array}
\right].
$$

Back substitution gives

$$
z=3,\qquad y-z=-1\Rightarrow y=2,
\qquad x+y+z=6\Rightarrow x=1.
$$

Hence

$$
\boxed{x=1,\quad y=2,\quad z=3.}
$$

## Key points

- Gauss elimination is efficient for small and medium linear systems.
- It is sensitive to round-off error when pivots are small.
- Partial pivoting is usually safer than plain elimination.

## Practice questions

1. What is an augmented matrix?
2. Distinguish forward elimination and back substitution.
3. Solve two simultaneous linear equations by Gauss elimination.
4. Why is pivoting needed when a pivot element is very small?
5. Verify a solution of linear equations by substitution.

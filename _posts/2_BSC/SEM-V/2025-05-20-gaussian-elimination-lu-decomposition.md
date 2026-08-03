---
title: "Gaussian Elimination and LU Decomposition"
date: 2025-05-20 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, linear-systems, gaussian-elimination, lu-decomposition]
permalink: /bsc/sem-v/mj-9/gaussian-elimination-lu-decomposition/
---

A system of $n$ simultaneous linear equations is written as

$$A\mathbf{x}=\mathbf{b}.$$

Gaussian elimination transforms it into an upper-triangular system. LU decomposition records the same elimination as a factorization and is especially useful when several right-hand sides share one coefficient matrix.

## Gaussian elimination

At the first elimination stage, assume the pivot $a_{11}\ne0$. To remove $a_{i1}$ below it, define

$$m_{i1}=\frac{a_{i1}}{a_{11}}$$

and apply

$$R_i\longleftarrow R_i-m_{i1}R_1,\qquad i=2,\ldots,n.$$

The new entry in column one is

$$a_{i1}-m_{i1}a_{11}=0.$$

Repeating this construction in columns $2,3,\ldots,n-1$ gives

$$U\mathbf{x}=\mathbf{c},$$

where $U$ is upper triangular. Back substitution begins with

$$x_n=\frac{c_n}{u_{nn}}$$

and, for $i=n-1,n-2,\ldots,1$, uses

$$\boxed{x_i=\frac{1}{u_{ii}}
\left(c_i-\sum_{j=i+1}^{n}u_{ij}x_j\right)}.$$

If a pivot is zero, rows must be interchanged. Choosing the available entry of largest magnitude in the pivot column, called partial pivoting, also limits amplification of round-off error.

## From elimination to $LU$

Every row subtraction is multiplication by an elimination matrix. If

$$E_{n-1}\cdots E_2E_1A=U,$$

then

$$A=E_1^{-1}E_2^{-1}\cdots E_{n-1}^{-1}U\equiv LU.$$

For Doolittle factorization the diagonal entries of $L$ are one. The multipliers used during elimination become the entries below that diagonal. Once $A=LU$, solve the two triangular systems

$$L\mathbf{y}=\mathbf{b},\qquad U\mathbf{x}=\mathbf{y}.$$

Forward substitution in the first system and back substitution in the second complete the solution.

## Exact three-equation example

Consider

$$A=
\begin{pmatrix}
4&1&1\\
2&5&2\\
1&2&4
\end{pmatrix},\qquad
\mathbf b=
\begin{pmatrix}6\\3\\7\end{pmatrix}.$$

The first-column multipliers are $m_{21}=1/2$ and $m_{31}=1/4$. After those eliminations the second-column multiplier is

$$m_{32}=\frac{7/4}{9/2}=\frac7{18}.$$

Therefore

$$L=
\begin{pmatrix}
1&0&0\\
\frac12&1&0\\
\frac14&\frac7{18}&1
\end{pmatrix},\qquad
U=
\begin{pmatrix}
4&1&1\\
0&\frac92&\frac32\\
0&0&\frac{19}{6}
\end{pmatrix}.$$

Forward substitution in $L\mathbf y=\mathbf b$ gives

$$\mathbf y=
\begin{pmatrix}6\\0\\11/2\end{pmatrix}.$$

Back substitution in $U\mathbf x=\mathbf y$ then gives

$$\boxed{\mathbf x=
\begin{pmatrix}23/19\\-11/19\\33/19\end{pmatrix}}.$$

Substitution into the original equations, rather than the triangular ones alone, is the final numerical check.

The exact algebra is recorded in the [editable Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/linear-eigen-checks.mac' | relative_url }}). Its displayed residuals are

~~~text
lu_residual       = matrix([0,0,0],[0,0,0],[0,0,0])
solution_residual = matrix([0],[0],[0])
~~~

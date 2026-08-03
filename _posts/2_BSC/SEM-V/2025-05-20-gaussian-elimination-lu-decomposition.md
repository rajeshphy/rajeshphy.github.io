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

## Solved Problems

### 1. Elimination when the first pivot vanishes

Solve

$$
\begin{aligned}
0x+2y&=4,\\
x+3y&=5.
\end{aligned}
$$

The first pivot is zero, so division by $a_{11}$ is impossible. Interchange the two rows:

$$
\left(
\begin{array}{cc|c}
1&3&5\\
0&2&4
\end{array}
\right).
$$

The system is already upper triangular. Back substitution gives

$$y=\frac42=2,$$

and then

$$x=5-3y=5-6=-1.$$

Thus

$$\boxed{(x,y)=(-1,2)}.$$

Substitution in the original order gives $2y=4$ and $x+3y=5$, so both residuals vanish. The row interchange changes the order of equations, not their solution set.

### 2. Doolittle factorization and triangular solves

Let

$$A=\begin{pmatrix}2&1\\4&3\end{pmatrix},\qquad
\mathbf b=\begin{pmatrix}1\\2\end{pmatrix}.$$

The multiplier is $m_{21}=4/2=2$. Therefore

$$L=\begin{pmatrix}1&0\\2&1\end{pmatrix},\qquad
U=\begin{pmatrix}2&1\\0&1\end{pmatrix},$$

and direct multiplication confirms $LU=A$. Forward substitution in $L\mathbf y=\mathbf b$ gives

$$y_1=1,\qquad2y_1+y_2=2\Longrightarrow y_2=0.$$

Back substitution in $U\mathbf x=\mathbf y$ gives

$$x_2=0,\qquad2x_1+x_2=1\Longrightarrow x_1=\frac12.$$

Hence

$$\boxed{\mathbf x=(1/2,0)^T}.$$

The exact residual $A\mathbf x-\mathbf b$ is the zero vector.

## Descriptive Questions

1. Derive the elimination multiplier and the back-substitution formula for a general linear system.
2. Explain why partial pivoting is required for a zero pivot and useful for a small pivot.
3. Show how Gaussian-elimination multipliers form the lower-triangular factor in Doolittle decomposition.
4. Compare the work required to solve several right-hand sides by repeated elimination and by one $LU$ factorization.

## Numerical Problems

1. Solve $2x+y=5$, $x+3y=6$ by elimination.
   **Answer:** $x=9/5=1.8$, $y=7/5=1.4$.

2. Find the Doolittle factors of $A=\begin{pmatrix}3&1\\6&5\end{pmatrix}$.
   **Answer:** $L=\begin{pmatrix}1&0\\2&1\end{pmatrix}$, $U=\begin{pmatrix}3&1\\0&3\end{pmatrix}$.

3. In a partial-pivoting step, the available pivot-column entries are $-0.01$, $2$, and $-3$. Which row is selected?
   **Answer:** the row containing $-3$, because its pivot magnitude $3$ is largest.

4. Gaussian elimination of $A=\begin{pmatrix}0&2\\3&4\end{pmatrix}$ uses one row interchange and produces $U=\begin{pmatrix}3&4\\0&2\end{pmatrix}$. Find $\det A$ from the pivots, including the interchange sign.
   **Answer:** $\det A=(-1)(3)(2)=-6$.

The factorizations, solutions, and original-system residuals are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-i-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Gaussian elimination — Wikipedia](https://en.wikipedia.org/wiki/Gaussian_elimination).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 6, “Direct Methods for Solving Linear Systems.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapters 9–10, “Gauss Elimination” and “LU Decomposition and Matrix Inversion.”

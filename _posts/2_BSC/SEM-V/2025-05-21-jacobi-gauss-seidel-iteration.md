---
title: "Jacobi and Gauss-Seidel Iteration"
date: 2025-05-21 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, linear-systems, jacobi-iteration, gauss-seidel]
permalink: /bsc/sem-v/mj-9/jacobi-gauss-seidel-iteration/
---

Direct elimination seeks the solution after a finite sequence of row operations. An iterative method instead starts from a trial vector $\mathbf x^{(0)}$ and repeatedly updates it until both the change and the equation residual are small.

Write

$$A=D+L+U,$$

where $D$ is diagonal and $L,U$ are the strictly lower- and upper-triangular parts of $A$.

## Jacobi iteration

From

$$D\mathbf x=\mathbf b-(L+U)\mathbf x,$$

Jacobi iteration evaluates every component on the right from the old iterate:

$$\boxed{\mathbf x^{(k+1)}
=D^{-1}\left[\mathbf b-(L+U)\mathbf x^{(k)}\right]}.$$

In components,

$$\boxed{x_i^{(k+1)}=\frac1{a_{ii}}
\left(b_i-\sum_{j\ne i}a_{ij}x_j^{(k)}\right)}.$$

All new components can therefore be computed independently before the vector is replaced.

## Gauss-Seidel iteration

Gauss-Seidel immediately uses each newly computed component. Moving $D+L$ to the left gives

$$(D+L)\mathbf x^{(k+1)}=\mathbf b-U\mathbf x^{(k)},$$

or

$$\boxed{x_i^{(k+1)}=\frac1{a_{ii}}
\left(b_i-\sum_{j<i}a_{ij}x_j^{(k+1)}
-\sum_{j>i}a_{ij}x_j^{(k)}\right)}.$$

This is a forward substitution sweep and often converges faster than Jacobi iteration.

## A diagonally dominant example

Solve

$$
\begin{aligned}
4x-y&=15,\\
-x+4y-z&=10,\\
-y+3z&=10.
\end{aligned}
$$

The update equations are

$$x=\frac{15+y}{4},\qquad
y=\frac{10+x+z}{4},\qquad
z=\frac{10+y}{3}.$$

Starting from $(0,0,0)$, the first iterations are

| method | $k$ | $x^{(k)}$ | $y^{(k)}$ | $z^{(k)}$ |
|---|---:|---:|---:|---:|
| Jacobi | 1 | 3.7500 | 2.5000 | 3.3333 |
| Jacobi | 2 | 4.3750 | 4.2708 | 4.1667 |
| Gauss-Seidel | 1 | 3.7500 | 3.4375 | 4.4792 |
| Gauss-Seidel | 2 | 4.6094 | 4.7721 | 4.9240 |

Both sequences approach the exact solution

$$\boxed{(x,y,z)=(5,5,5)}.$$

## Convergence and stopping

Both methods have the form

$$\mathbf x^{(k+1)}=T\mathbf x^{(k)}+\mathbf c.$$

If $\mathbf x^{\ast}$ is the exact fixed point, the error satisfies

$$\mathbf e^{(k+1)}=T\mathbf e^{(k)}.$$

Hence the iteration converges for every starting vector precisely when the spectral radius obeys

$$\rho(T)<1.$$

A convenient sufficient condition for both Jacobi and Gauss-Seidel methods is strict row diagonal dominance:

$$\lvert a_{ii}\rvert>\sum_{j\ne i}\lvert a_{ij}\rvert\qquad\text{for every }i.$$

In computation, require both a small update and a small original-system residual:

$$\|\mathbf x^{(k+1)}-\mathbf x^{(k)}\|_\infty<\varepsilon,\qquad
\|\mathbf b-A\mathbf x^{(k+1)}\|_\infty<\varepsilon.$$

The residual condition prevents a small but incorrect change from being mistaken for a solution.

For a strictly row-diagonally dominant matrix, the Jacobi error bound follows directly from the component update. If $i$ is chosen so that $\lvert e_i^{(k+1)}\rvert=\lVert\mathbf e^{(k+1)}\rVert_\infty$, then

$$
\begin{aligned}
\lvert e_i^{(k+1)}\rvert
&\le\frac{1}{\lvert a_{ii}\rvert}
\sum_{j\ne i}\lvert a_{ij}\rvert\lvert e_j^{(k)}\rvert\\
&\le q\lVert\mathbf e^{(k)}\rVert_\infty,
\end{aligned}
$$

where

$$q=\max_i\frac{\sum_{j\ne i}\lvert a_{ij}\rvert}
{\lvert a_{ii}\rvert}<1.$$

Thus the iteration is a contraction in the infinity norm.

## Solved Problems

### 1. One Jacobi sweep and one Gauss-Seidel sweep

For

$$5x+y=6,\qquad x+4y=5,$$

the rearranged equations are

$$x=\frac{6-y}{5},\qquad y=\frac{5-x}{4}.$$

Starting from $(x^{(0)},y^{(0)})=(0,0)$, Jacobi uses only old components:

$$x^{(1)}=\frac{6-0}{5}=1.2,\qquad
y^{(1)}=\frac{5-0}{4}=1.25.$$

Gauss-Seidel immediately uses the new $x^{(1)}$:

$$x^{(1)}=1.2,\qquad
y^{(1)}=\frac{5-1.2}{4}=0.95.$$

The exact solution is $(1,1)$, so after one sweep Gauss-Seidel is already closer in the infinity norm: its error is $0.20$, compared with $0.25$ for Jacobi.

### 2. Spectral radii of the two iterations

For the same system, the Jacobi iteration matrix is

$$T_J=\begin{pmatrix}0&-1/5\\-1/4&0\end{pmatrix}.$$

Its characteristic equation is

$$\det(T_J-\lambda I)=\lambda^2-\frac1{20}=0,$$

so

$$\rho(T_J)=\frac1{\sqrt{20}}\approx0.22361<1.$$

The Gauss-Seidel matrix is

$$T_{GS}=\begin{pmatrix}0&-1/5\\0&1/20\end{pmatrix},$$

whose eigenvalues are $0$ and $1/20$. Hence

$$\rho(T_{GS})=\frac1{20}=0.05<\rho(T_J).$$

Both methods converge from every starting vector, and the smaller Gauss-Seidel spectral radius predicts the faster asymptotic reduction of error.

## Descriptive Questions

1. Derive the matrix and component forms of Jacobi iteration from $A=D+L+U$.
2. Explain precisely how a Gauss-Seidel sweep differs from a Jacobi sweep.
3. Prove that strict row diagonal dominance makes Jacobi iteration a contraction in the infinity norm.
4. Distinguish an update-size stopping test from an original-system residual test.

## Numerical Problems

1. Test whether $3x-y=2$, $-x+2y=1$ is strictly row diagonally dominant.
   **Answer:** yes; $3>1$ and $2>1$.

2. For $5x+y=6$, $x+4y=5$, use the first Jacobi iterate $(1.2,1.25)$ to calculate the second.
   **Answer:** $(x^{(2)},y^{(2)})=(0.95,0.95)$.

3. Starting from zero, perform two Gauss-Seidel sweeps for the same system.
   **Answer:** $(1.2,0.95)$, then $(1.01,0.9975)$.

4. For $\widehat{\mathbf x}=(1.001,0.999)^T$ in the same system, find $\mathbf r=\mathbf b-A\widehat{\mathbf x}$.
   **Answer:** $\mathbf r=(-0.004,0.003)^T$ and $\lVert\mathbf r\rVert_\infty=0.004$.

The iterates, characteristic polynomials, and residual vectors are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-i-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Jacobi method — Wikipedia](https://en.wikipedia.org/wiki/Jacobi_method).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 7, “Iterative Techniques in Matrix Algebra.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapter 11, “Special Matrices and Gauss-Seidel.”

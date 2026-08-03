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

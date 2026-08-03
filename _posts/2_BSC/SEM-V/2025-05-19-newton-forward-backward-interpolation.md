---
title: "Newton Forward and Backward Interpolation"
date: 2025-05-19 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, interpolation, finite-differences, newton-formulae]
permalink: /bsc/sem-v/mj-9/newton-forward-backward-interpolation/
---

Suppose $y_i=f(x_i)$ is known at equally spaced points

$$x_i=x_0+ih,\qquad i=0,1,\ldots,n.$$

Newton's forward formula is convenient near the beginning of the table; the backward formula is convenient near its end.

## Difference operators

The forward differences are

$$\Delta y_i=y_{i+1}-y_i,$$

$$\Delta^2y_i=\Delta y_{i+1}-\Delta y_i,$$

with higher differences defined repeatedly. The backward differences are

$$\nabla y_i=y_i-y_{i-1},\qquad
\nabla^2y_i=\nabla y_i-\nabla y_{i-1}.$$

At the final tabulated point,

$$\nabla^r y_n=\Delta^r y_{n-r}.$$

## Derivation of the forward formula

Let $E$ be the shift operator, $Ey_i=y_{i+1}$. Since $\Delta=E-1$,

$$E=1+\Delta.$$

Put $p=(x-x_0)/h$. Extending the shift from an integer to the interpolation variable gives

$$f(x)=E^p y_0=(1+\Delta)^p y_0.$$

The generalized binomial expansion is

$$(1+\Delta)^p
=1+p\Delta+\frac{p(p-1)}{2!}\Delta^2
+\frac{p(p-1)(p-2)}{3!}\Delta^3+\cdots.$$

Therefore

$$\boxed{
f(x)=y_0+p\Delta y_0
+\frac{p(p-1)}{2!}\Delta^2y_0
+\frac{p(p-1)(p-2)}{3!}\Delta^3y_0+\cdots
}.$$

When $p$ is a non-negative integer, this reduces exactly to the corresponding tabulated value because $E^p y_0=y_p$.

## Derivation of the backward formula

Since $\nabla=1-E^{-1}$, one has

$$E=(1-\nabla)^{-1}.$$

With $q=(x-x_n)/h$,

$$f(x)=E^q y_n=(1-\nabla)^{-q}y_n.$$

Using the negative-binomial expansion,

$$(1-\nabla)^{-q}
=1+q\nabla+\frac{q(q+1)}{2!}\nabla^2
+\frac{q(q+1)(q+2)}{3!}\nabla^3+\cdots.$$

Hence

$$\boxed{
f(x)=y_n+q\nabla y_n
+\frac{q(q+1)}{2!}\nabla^2y_n
+\frac{q(q+1)(q+2)}{3!}\nabla^3y_n+\cdots
}.$$

For a degree-$n$ interpolating polynomial through $n+1$ points, the remainder has the form

$$R_n(x)=\frac{f^{(n+1)}(\xi)}{(n+1)!}
\prod_{j=0}^{n}(x-x_j),$$

for some $\xi$ in the data interval.

## Cubic table

Take

$$f(x)=x^3-2x+1$$

at $x=0,1,2,3$:

| $x$ | $y$ | $\Delta y$ | $\Delta^2y$ | $\Delta^3y$ |
|---:|---:|---:|---:|---:|
| 0 | 1 | -1 | 6 | 6 |
| 1 | 0 | 5 | 12 |  |
| 2 | 5 | 17 |  |  |
| 3 | 22 |  |  |  |

At $x=0.5$, $p=0.5$. The forward formula gives

$$f(0.5)=1+\frac12(-1)
+\frac{(1/2)(-1/2)}2(6)
+\frac{(1/2)(-1/2)(-3/2)}6(6)
=0.125.$$

At $x=2.5$, $q=-0.5$, while

$$\nabla y_3=17,\qquad\nabla^2y_3=12,\qquad\nabla^3y_3=6.$$

The backward formula gives

$$f(2.5)=22-\frac12(17)
+\frac{(-1/2)(1/2)}2(12)
+\frac{(-1/2)(1/2)(3/2)}6(6)
=11.625.$$

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/interpolation-checks.mac' | relative_url }}) expands both finite-difference polynomials and displays

~~~text
forward_residual  = 0
backward_residual = 0
~~~

Thus both formulae reproduce the entire cubic exactly, not only the two evaluated points.

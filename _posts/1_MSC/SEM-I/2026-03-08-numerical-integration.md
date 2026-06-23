---
title: "Numerical Integration: Trapezoid and Simpson Rules"
summary: "Approximating definite integrals using equally spaced data and common quadrature formulas."
date: 2026-03-08 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - integration
permalink: /msc/sem-i/numerical-integration/
hidden: true
---

Numerical integration estimates a definite integral when the antiderivative is difficult or when the function is known only through tabulated data.

$$
I=\int_a^b f(x)\,dx.
$$

## Step size

Divide the interval $[a,b]$ into $n$ equal parts:

$$
h=\frac{b-a}{n}.
$$

The points are

$$
x_i=a+ih,\qquad i=0,1,2,\ldots,n.
$$

## Trapezoidal rule

The trapezoidal rule approximates the area by trapezia:

$$
\int_a^b f(x)\,dx
\approx
\frac{h}{2}\left[
y_0+y_n+2\sum_{i=1}^{n-1}y_i
\right].
$$

It is simple and works well when the function is nearly linear over each small interval.

## Simpson's one-third rule

For an even number of intervals $n$, Simpson's rule is

$$
\int_a^b f(x)\,dx
\approx
\frac{h}{3}
\left[
y_0+y_n
+4\sum_{\text{odd }i}y_i
+2\sum_{\substack{\text{even }i\\i\ne 0,n}}y_i
\right].
$$

Simpson's rule uses parabolic approximation and is usually more accurate than the trapezoidal rule for smooth functions.

## Key points

- Smaller step size generally improves accuracy.
- Simpson's rule requires an even number of intervals.
- Numerical integration should be repeated with a smaller $h$ to check convergence.


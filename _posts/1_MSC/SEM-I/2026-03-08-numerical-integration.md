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

The definite integral represents accumulated quantity: area under a curve, work done by a variable force, charge from a current-time graph, or probability over an interval. If the antiderivative is not known, or if the function is available only as tabulated data, the integral is estimated numerically.

$$
I=\int_a^b f(x)\,dx.
$$

The basic idea is to divide the interval into small parts and replace the curve by simple shapes whose areas can be calculated.

## Step size

Divide the interval $[a,b]$ into $n$ equal parts:

$$
h=\frac{b-a}{n}.
$$

The points are

$$
x_i=a+ih,\qquad i=0,1,2,\ldots,n.
$$

The values $y_i=f(x_i)$ are called ordinates. Most elementary formulas assume equal spacing.

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

## Comparison on a simple integral

Evaluate

$$
I=\int_0^1 x^2\,dx
$$

using $h=0.5$. The tabulated values are

| $x$ | $y=x^2$ |
|---:|---:|
| 0 | 0 |
| 0.5 | 0.25 |
| 1.0 | 1.00 |

By the trapezoidal rule,

$$
I_T=\frac{0.5}{2}\,[0+1+2(0.25)]
=0.375.
$$

By Simpson's one-third rule,

$$
I_S=\frac{0.5}{3}\,[0+1+4(0.25)]
=\frac{1}{3}.
$$

The exact integral is

$$
\int_0^1x^2\,dx=\frac13.
$$

Thus Simpson's rule gives the exact answer here because it is exact for polynomials up to degree three.

## Key points

- Smaller step size generally improves accuracy.
- Simpson's rule requires an even number of intervals.
- Numerical integration should be repeated with a smaller $h$ to check convergence.

## Practice questions

1. State the trapezoidal rule for equally spaced ordinates.
2. State Simpson's one-third rule and mention its condition on $n$.
3. Evaluate $\int_0^1x^2\,dx$ using the trapezoidal rule with $h=0.5$.
4. Evaluate the same integral using Simpson's one-third rule.
5. Why is step-size reduction used as a check in numerical integration?

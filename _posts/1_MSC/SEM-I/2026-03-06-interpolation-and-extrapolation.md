---
title: "Interpolation and Extrapolation"
summary: "Estimating values from tabulated data using interpolation, extrapolation, and polynomial approximation."
date: 2026-03-06 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - interpolation
permalink: /msc/sem-i/interpolation-and-extrapolation/
hidden: true
---

Often a function is not available as a formula. Instead, its values are known only at a set of measured or tabulated points. Interpolation is the method of estimating the value of the function between known points. Extrapolation uses the same idea outside the given interval.

The first question is therefore: is the required point inside or outside the observed range? Inside the range the estimate is usually safer; outside the range it depends more strongly on the assumed trend.

## Interpolation

Suppose values of $f(x)$ are known at several points:

$$
(x_0,y_0),\;(x_1,y_1),\;(x_2,y_2),\ldots
$$

Interpolation constructs an approximate function that passes through or near these data points.

If the data are exact and few in number, a polynomial through the points may be used. If the data contain experimental error, curve fitting is usually more suitable than exact interpolation.

## Linear interpolation

Between two points $(x_0,y_0)$ and $(x_1,y_1)$, the linear interpolation formula is

$$
y=y_0+\frac{y_1-y_0}{x_1-x_0}(x-x_0).
$$

It assumes the function is nearly straight between the two points.

## Polynomial interpolation

Polynomial interpolation uses a polynomial that matches several data points. A common form is the Lagrange interpolation polynomial:

$$
P(x)=\sum_{i=0}^{n}y_i L_i(x),
$$

where

$$
L_i(x)=\prod_{\substack{j=0\\j\ne i}}^{n}
\frac{x-x_j}{x_i-x_j}.
$$

## Extrapolation

Extrapolation uses the same fitted relation outside the data interval. It is usually less reliable because the function may change behavior beyond the measured range.

## Linear interpolation example

Suppose the tabulated values are

$$
(x_0,y_0)=(2,4),\qquad (x_1,y_1)=(4,16).
$$

Estimate $y$ at $x=3$. Using linear interpolation,

$$
y=4+\frac{16-4}{4-2}(3-2).
$$

Thus

$$
y=4+6=10.
$$

This answer is an interpolation because $3$ lies between $2$ and $4$.

## Three-point Lagrange example

For the three points

$$
(1,1),\qquad (2,4),\qquad (3,9),
$$

the Lagrange polynomial is

$$
P(x)=y_0L_0(x)+y_1L_1(x)+y_2L_2(x).
$$

At $x=2.5$,

$$
L_0=\frac{(2.5-2)(2.5-3)}{(1-2)(1-3)}=-0.125,
$$

$$
L_1=\frac{(2.5-1)(2.5-3)}{(2-1)(2-3)}=0.75,
$$

and

$$
L_2=\frac{(2.5-1)(2.5-2)}{(3-1)(3-2)}=0.375.
$$

Therefore

$$
P(2.5)=1(-0.125)+4(0.75)+9(0.375)=6.25.
$$

## Key points

- Interpolation is safer than extrapolation.
- Higher-degree polynomials do not always give better results.
- The data spacing and smoothness of the function matter.

## Practice questions

1. Distinguish interpolation and extrapolation.
2. Derive the formula for linear interpolation between two points.
3. Estimate $y$ at $x=3$ from the data $(2,4)$ and $(4,16)$ by linear interpolation.
4. Write the Lagrange interpolation formula for three data points.
5. Why is extrapolation usually less reliable than interpolation?

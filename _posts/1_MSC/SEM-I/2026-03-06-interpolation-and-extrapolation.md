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

Interpolation estimates the value of a function inside the range of known data. Extrapolation estimates the value outside the known range.

## Interpolation

Suppose values of $f(x)$ are known at several points:

$$
(x_0,y_0),\;(x_1,y_1),\;(x_2,y_2),\ldots
$$

Interpolation constructs an approximate function that passes through or near these data points.

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

## Key points

- Interpolation is safer than extrapolation.
- Higher-degree polynomials do not always give better results.
- The data spacing and smoothness of the function matter.


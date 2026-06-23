---
title: "Curve Fitting and Least Squares"
summary: "Fitting experimental data, residuals, straight-line least squares, and interpreting fitted parameters."
date: 2026-03-07 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - curve-fitting
  - least-squares
permalink: /msc/sem-i/curve-fitting-and-least-squares/
hidden: true
---

Curve fitting finds a simple mathematical relation that approximately represents observed data. In experiments, data usually contain measurement error, so the curve need not pass exactly through every point.

## Residuals

If the measured value is $y_i$ and the fitted value is $Y_i$, the residual is

$$
r_i=y_i-Y_i.
$$

The least squares method chooses parameters so that the sum of squared residuals is minimum:

$$
S=\sum_{i=1}^{n}(y_i-Y_i)^2.
$$

## Straight-line fitting

For a straight line,

$$
Y=a+bx,
$$

the least squares method chooses $a$ and $b$ to minimize

$$
S=\sum_{i=1}^{n}(y_i-a-bx_i)^2.
$$

The normal equations are

$$
\sum y_i=na+b\sum x_i,
$$

and

$$
\sum x_i y_i=a\sum x_i+b\sum x_i^2.
$$

Solving these gives the intercept $a$ and slope $b$.

## Physical use

Many experimental laws are checked by plotting data in a form that should become linear. The slope and intercept then give physical constants.

## Key points

- Least squares reduces the effect of random errors.
- The fitted curve should be physically meaningful, not only mathematically convenient.
- A small residual does not always prove the model is correct.


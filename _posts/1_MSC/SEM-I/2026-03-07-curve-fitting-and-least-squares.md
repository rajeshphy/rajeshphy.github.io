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

In an experiment, repeated measurements rarely lie exactly on a simple mathematical curve. The readings contain random error, instrumental limitations, and sometimes small systematic deviations. Curve fitting asks for the most reasonable simple relation that represents the overall trend of the data.

Unlike interpolation, the fitted curve is not required to pass through every point. It should pass as close as possible to the data in a chosen sense.

## Residuals

If the measured value is $y_i$ and the fitted value is $Y_i$, the residual is

$$
r_i=y_i-Y_i.
$$

The least squares method chooses parameters so that the sum of squared residuals is minimum:

$$
S=\sum_{i=1}^{n}(y_i-Y_i)^2.
$$

The residuals are squared so that positive and negative deviations do not cancel each other. Squaring also gives more weight to larger deviations.

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

## Straight-line fit example

Fit a straight line $Y=a+bx$ to the data

| $x$ | $y$ |
|---:|---:|
| 0 | 1 |
| 1 | 3 |
| 2 | 5 |

Here

$$
n=3,\quad \sum x=3,\quad \sum y=9,
\quad \sum x^2=5,\quad \sum xy=13.
$$

The normal equations are

$$
9=3a+3b,
$$

and

$$
13=3a+5b.
$$

Subtracting the first equation from the second gives

$$
4=2b,\qquad b=2.
$$

Then

$$
9=3a+6,\qquad a=1.
$$

Thus the fitted straight line is

$$
\boxed{Y=1+2x.}
$$

For these data the points lie exactly on the fitted line, so all residuals are zero.

## Key points

- Least squares reduces the effect of random errors.
- The fitted curve should be physically meaningful, not only mathematically convenient.
- A small residual does not always prove the model is correct.

## Practice questions

1. Define residual in curve fitting.
2. Explain the principle of least squares.
3. Derive the normal equations for fitting $Y=a+bx$.
4. Fit a straight line to the points $(0,1)$, $(1,3)$, and $(2,5)$.
5. Why should the fitted curve have physical meaning?

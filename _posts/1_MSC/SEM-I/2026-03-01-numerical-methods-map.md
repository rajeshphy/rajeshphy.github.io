---
title: "Numerical Methods Syllabus Map"
summary: "A compact SEM-I map for numerical methods from roots of equations to finite difference methods."
date: 2026-03-01 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - computational-techniques
permalink: /msc/sem-i/numerical-methods-map/
hidden: true
---

Numerical methods begin with a practical difficulty: many equations in physics and mathematics cannot be solved exactly in a simple closed form. Even when an exact solution exists, it may be too long for repeated calculation. The numerical approach is to replace the original problem by a sequence of clear arithmetic steps.

Thus the question is not only "what is the answer?" but also "how close is the approximate answer to the true one?" A good numerical solution must therefore include the method, the approximation used, and a check on the result.

## Flow of ideas

1. **Roots of functions** locate where $f(x)=0$.
2. **Iteration methods** improve an approximate answer step by step.
3. **Gauss elimination** solves simultaneous linear equations.
4. **Eigenvalues and eigenvectors** describe matrix modes and characteristic values.
5. **Interpolation and extrapolation** estimate values inside or outside tabulated data.
6. **Curve fitting and least squares** find the best approximate relation from data.
7. **Numerical integration** estimates areas and integrals by trapezoid and Simpson rules.
8. **Runge-Kutta method** solves first-order differential equations numerically.
9. **Finite difference method** replaces derivatives by differences on a grid.

## Basic numerical philosophy

A numerical answer is not only a number. It must be checked for convergence, stability, step-size dependence, and physical reasonableness.

The usual path is:

1. start from the mathematical problem;
2. choose a numerical formula suited to that problem;
3. compute the result step by step;
4. estimate or reduce the error;
5. interpret the answer in the original physical setting.

## Common sources of error

- **Round-off error** comes from finite precision arithmetic.
- **Truncation error** comes from cutting off an infinite or exact process.
- **Iteration error** comes from stopping an iterative method before the exact limit.
- **Modelling error** comes from the assumptions used before computation starts.

## In an examination answer

In an examination answer, first state the method and the formula being used. Then show the substitution of numerical values clearly. A numerical result should be rounded only at the end, because early rounding may change the final answer.

For a complete answer, also mention the check used:

- in root finding, substitute the answer in $f(x)$;
- in integration, compare the answer with a smaller step size if possible;
- in iteration, show that successive approximations are becoming closer;
- in linear equations, substitute the solution back into the original equations.

## Practice questions

1. Distinguish between round-off error and truncation error.
2. Explain why convergence is important in an iterative method.
3. State one advantage and one limitation of numerical methods.
4. Why should a numerical result be checked by substitution or step-size reduction?
5. Arrange the following methods in a suitable study order: interpolation, root finding, numerical integration, and differential equations.

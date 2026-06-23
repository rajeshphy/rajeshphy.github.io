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

Numerical methods are used when an exact analytical solution is difficult, unavailable, or inefficient. The aim is to convert a mathematical problem into a sequence of arithmetic steps that can be carried out by hand for small cases and by computer for larger cases.

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

## Common sources of error

- **Round-off error** comes from finite precision arithmetic.
- **Truncation error** comes from cutting off an infinite or exact process.
- **Iteration error** comes from stopping an iterative method before the exact limit.
- **Modelling error** comes from the assumptions used before computation starts.


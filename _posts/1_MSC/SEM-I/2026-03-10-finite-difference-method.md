---
title: "Finite Difference Method"
summary: "Replacing derivatives by difference formulas on a grid for numerical solution of differential equations."
date: 2026-03-10 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - finite-difference
permalink: /msc/sem-i/finite-difference-method/
hidden: true
---

The finite difference method replaces derivatives by differences between function values at nearby grid points. It is widely used for boundary value problems and partial differential equations.

## Grid points

Let the grid points be

$$
x_i=x_0+ih,
$$

where $h$ is the spacing and $y_i=y(x_i)$.

## Forward difference

The first derivative may be approximated by

$$
\frac{dy}{dx}\bigg|_{x_i}
\approx
\frac{y_{i+1}-y_i}{h}.
$$

This is called the forward difference formula.

## Backward difference

Another approximation is

$$
\frac{dy}{dx}\bigg|_{x_i}
\approx
\frac{y_i-y_{i-1}}{h}.
$$

This is the backward difference formula.

## Central difference

The central difference formula is

$$
\frac{dy}{dx}\bigg|_{x_i}
\approx
\frac{y_{i+1}-y_{i-1}}{2h}.
$$

It is usually more accurate than forward or backward difference for smooth functions.

## Second derivative

A common formula for the second derivative is

$$
\frac{d^2y}{dx^2}\bigg|_{x_i}
\approx
\frac{y_{i+1}-2y_i+y_{i-1}}{h^2}.
$$

## Key points

- Derivatives become algebraic expressions involving neighboring grid values.
- Smaller grid spacing usually improves accuracy, but may increase round-off effects.
- Boundary conditions are essential for solving differential equations by finite differences.


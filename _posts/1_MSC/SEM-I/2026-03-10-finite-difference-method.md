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

A derivative is defined as the limiting value of a difference quotient. The finite difference method keeps a small but finite spacing and uses nearby function values to approximate derivatives. In this way a differential equation is converted into algebraic equations on a grid.

This method is widely used for boundary value problems and partial differential equations because values at neighboring grid points can be related directly.

## Grid points

Let the grid points be

$$
x_i=x_0+ih,
$$

where $h$ is the spacing and $y_i=y(x_i)$.

The choice of $h$ controls the resolution of the grid. A smaller $h$ usually gives a better approximation, but it also increases the number of unknowns.

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

## Derivatives from nearby values

Let

$$
y=x^2.
$$

Estimate the first and second derivatives at $x=1$ using $h=0.1$. The required values are

$$
y(0.9)=0.81,\qquad y(1.0)=1.00,\qquad y(1.1)=1.21.
$$

The central difference estimate for the first derivative is

$$
\frac{dy}{dx}\bigg|_{x=1}
\approx
\frac{1.21-0.81}{2(0.1)}=2.0.
$$

The second derivative estimate is

$$
\frac{d^2y}{dx^2}\bigg|_{x=1}
\approx
\frac{1.21-2(1.00)+0.81}{(0.1)^2}=2.0.
$$

These agree with the exact derivatives of $x^2$ at $x=1$.

## Key points

- Derivatives become algebraic expressions involving neighboring grid values.
- Smaller grid spacing usually improves accuracy, but may increase round-off effects.
- Boundary conditions are essential for solving differential equations by finite differences.

## Practice questions

1. Write the forward, backward, and central difference formulas for the first derivative.
2. Derive the central difference formula for the second derivative.
3. Estimate $dy/dx$ for $y=x^2$ at $x=1$ using $h=0.1$.
4. Explain why the central difference formula is usually more accurate than the forward difference formula.
5. Why are boundary conditions necessary in finite difference problems?

---
title: "Iteration Method"
summary: "Fixed-point iteration, convergence condition, error reduction, and practical numerical stopping rules."
date: 2026-03-03 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - iteration
permalink: /msc/sem-i/iteration-method/
hidden: true
---

An iteration method starts with an approximate value and improves it repeatedly. Many numerical methods have the form

$$
x_{n+1}=g(x_n).
$$

If the sequence $x_0,x_1,x_2,\ldots$ approaches a fixed value $\alpha$, then

$$
\alpha=g(\alpha).
$$

## Fixed-point form

To solve $f(x)=0$, rewrite it as

$$
x=g(x).
$$

Then choose an initial guess $x_0$ and calculate

$$
x_1=g(x_0),\qquad x_2=g(x_1),\qquad x_3=g(x_2),\ldots
$$

## Convergence condition

A useful local condition for convergence is

$$
|g'(\alpha)|<1.
$$

If $|g'(\alpha)|>1$, the iteration usually moves away from the fixed point.

## Example pattern

For the equation

$$
x=\cos x,
$$

one may use

$$
x_{n+1}=\cos x_n.
$$

Starting from a reasonable value, the sequence approaches the solution.

## Error estimate

The difference between two successive approximations,

$$
|x_{n+1}-x_n|,
$$

is often used as a practical indication of convergence.

## Key points

- The same equation may be rearranged into many iteration formulas.
- Not every rearrangement converges.
- A numerical result should be tested by substitution into the original equation.


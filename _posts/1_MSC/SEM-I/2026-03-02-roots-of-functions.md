---
title: "Roots of Functions"
summary: "Numerical meaning of roots, bracketing, bisection, Newton-Raphson method, and convergence checks."
date: 2026-03-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - roots
permalink: /msc/sem-i/roots-of-functions/
hidden: true
---

A root of a function is a value $x=\alpha$ for which

$$
f(\alpha)=0.
$$

Root-finding is common in physics: equilibrium positions, turning points, resonance conditions, and eigenvalue equations often reduce to finding zeros of a function.

## Bracketing idea

If $f(a)$ and $f(b)$ have opposite signs, then a continuous function has at least one root between $a$ and $b$.

$$
f(a)f(b)<0.
$$

This is the basis of the bisection method.

## Bisection method

The midpoint is

$$
c=\frac{a+b}{2}.
$$

If $f(a)f(c)<0$, the root lies in $[a,c]$; otherwise it lies in $[c,b]$. Repeating this process gives a narrower interval.

## Newton-Raphson method

Newton's method uses the tangent line at the present approximation:

$$
x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}.
$$

It is usually faster than bisection, but it needs a derivative and a good starting value.

## Stopping criteria

An iteration may be stopped when either

$$
|x_{n+1}-x_n|<\epsilon
$$

or

$$
|f(x_n)|<\epsilon.
$$

Here $\epsilon$ is the chosen tolerance.

## Key points

- Bisection is slow but reliable.
- Newton-Raphson is fast but can fail for poor starting values.
- Always check the final value by substituting it into $f(x)$.


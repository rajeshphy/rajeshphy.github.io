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

A root-finding problem appears when a physical or mathematical condition is written as an equation. For example, equilibrium may require force to vanish, a turning point may require velocity to vanish, and an allowed energy may be obtained from an equation whose zero must be found.

The problem is therefore reduced to finding a value $x=\alpha$ for which

$$
f(\alpha)=0.
$$

The graph of $f(x)$ crosses or touches the $x$-axis at a root. Numerical methods give successive approximations to this crossing point.

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

The reason the method is reliable is simple: after each step the root is still trapped inside the new interval. The length of the interval is halved at every step, so the uncertainty decreases steadily.

## Newton-Raphson method

Newton's method uses the tangent line at the present approximation:

$$
x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}.
$$

It is usually faster than bisection, but it needs a derivative and a good starting value.

This formula comes from replacing the curve by its tangent near $x_n$. The tangent line is followed until it cuts the $x$-axis, and that intercept is taken as the next approximation.

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

## Bisection example

Find a root of

$$
f(x)=x^3-x-2
$$

in the interval $[1,2]$.

Since

$$
f(1)=-2,\qquad f(2)=4,
$$

there is at least one root in $[1,2]$. The first midpoint is

$$
c_1=\frac{1+2}{2}=1.5,
\qquad
f(1.5)=3.375-1.5-2=-0.125.
$$

Therefore the root lies in $[1.5,2]$. The next midpoint is

$$
c_2=\frac{1.5+2}{2}=1.75,
\qquad
f(1.75)=5.359375-1.75-2=1.609375.
$$

Now the root lies in $[1.5,1.75]$. Repeating the process gives a narrower interval around the root. The known value is approximately

$$
\alpha \simeq 1.521.
$$

## Newton step for the same equation

For the same equation,

$$
f(x)=x^3-x-2,\qquad f'(x)=3x^2-1.
$$

Starting with $x_0=1.5$,

$$
x_1=x_0-\frac{f(x_0)}{f'(x_0)}
=1.5-\frac{-0.125}{5.75}
=1.521739.
$$

Thus Newton's method reaches a good approximation in one step. A final substitution check gives

$$
f(1.521739)\approx 0.002.
$$

## Key points

- Bisection is slow but reliable.
- Newton-Raphson is fast but can fail for poor starting values.
- Always check the final value by substituting it into $f(x)$.

## Practice questions

1. Define a root of a function.
2. State the condition for bracketing a root in an interval.
3. Use two bisection steps to approximate a root of $x^3-x-2=0$ in $[1,2]$.
4. Derive the Newton-Raphson formula from the tangent line.
5. Why can Newton-Raphson fail when the starting value is poorly chosen?

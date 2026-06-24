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

An iteration method starts with an approximate value and improves it repeatedly. In numerical analysis this idea is often used after rewriting a nonlinear equation in the fixed-point form

$$
x_{n+1}=g(x_n).
$$

If the sequence $x_0,x_1,x_2,\ldots$ approaches a fixed value $\alpha$, then

$$
\alpha=g(\alpha).
$$

This value $\alpha$ is called a **fixed point** of $g(x)$. If $f(x)=0$ is the original equation, the fixed point must also satisfy the original equation after substitution.

## Fixed-point form

To solve $f(x)=0$, rewrite it as

$$
x=g(x).
$$

Then choose an initial guess $x_0$ and calculate successive approximations:

$$
x_1=g(x_0),\qquad x_2=g(x_1),\qquad x_3=g(x_2),\ldots
$$

## Convergence condition

A useful local condition for convergence is

$$
\lvert g'(\alpha)\rvert<1.
$$

Equivalently, near the required root the slope of $g(x)$ should be less than one in magnitude:

$$
\lvert g'(x)\rvert <1.
$$

If $\lvert g^{\prime}(\alpha)\rvert>1$, the iteration usually moves away from the fixed point. This is why the same equation may converge in one rearrangement and diverge in another.

## Example 1: fixed point of $x=\cos x$

For the equation

$$
x=\cos x,
$$

one may use

$$
x_{n+1}=\cos x_n.
$$

Starting with $x_0=0.5$,

| $n$ | $x_n$ |
|---:|---:|
| 0 | 0.500000 |
| 1 | 0.877583 |
| 2 | 0.639012 |
| 3 | 0.802685 |
| 4 | 0.694778 |
| 5 | 0.768196 |
| 6 | 0.719165 |
| 7 | 0.752356 |

The sequence oscillates but slowly approaches

$$
\alpha \approx 0.739085.
$$

Here

$$
g(x)=\cos x,\qquad g'(x)=-\sin x.
$$

At the root,

$$
\lvert g'(\alpha)\rvert=\lvert-\sin(0.739085)\rvert \approx 0.674 <1,
$$

so the iteration is convergent.

## Example 2: university exam type problem

**Problem.** Use the iteration method to find the real root of

$$
x^3+x-1=0.
$$

**Solution.** Rewrite the equation as

$$
x=1-x^3.
$$

This form gives

$$
x_{n+1}=1-x_n^3.
$$

However,

$$
g'(x)=-3x^2.
$$

Near the root $x\approx 0.682$,

$$
\lvert g'(x)\rvert\approx 3(0.682)^2 \approx 1.40>1,
$$

so this rearrangement is not good for convergence.

A better rearrangement is

$$
x=\frac{1}{1+x^2}.
$$

Hence

$$
x_{n+1}=\frac{1}{1+x_n^2}.
$$

Now

$$
g'(x)=-\frac{2x}{(1+x^2)^2}.
$$

Starting with $x_0=0.5$,

| $n$ | $x_n$ |
|---:|---:|
| 0 | 0.500000 |
| 1 | 0.800000 |
| 2 | 0.609756 |
| 3 | 0.728997 |
| 4 | 0.653168 |
| 5 | 0.701891 |
| 6 | 0.669885 |
| 7 | 0.690657 |
| 8 | 0.676982 |
| 9 | 0.685921 |

Thus the required root is approximately

$$
x\approx 0.682.
$$

Substitution check:

$$
(0.682)^3+0.682-1 \approx -0.001.
$$

## Example 3: university exam type problem

**Problem.** Find a root of

$$
x^3-2x-5=0
$$

by the iteration method.

**Solution.** Rewrite the equation as

$$
x^3=2x+5.
$$

Therefore,

$$
x=(2x+5)^{1/3}.
$$

The iteration formula is

$$
x_{n+1}=(2x_n+5)^{1/3}.
$$

The convergence test gives

$$
g'(x)=\frac{2}{3(2x+5)^{2/3}}.
$$

Near the root $x\approx 2.095$, this derivative is less than one in magnitude, so the formula is suitable.

Starting with $x_0=2$,

| $n$ | $x_n$ |
|---:|---:|
| 0 | 2.000000 |
| 1 | 2.080084 |
| 2 | 2.092350 |
| 3 | 2.094219 |
| 4 | 2.094503 |
| 5 | 2.094547 |

Hence

$$
x\approx 2.09455.
$$

Substitution check:

$$
(2.09455)^3-2(2.09455)-5 \approx 0.
$$

## Error estimate

The difference between two successive approximations,

$$
\lvert x_{n+1}-x_n\rvert,
$$

is often used as a practical indication of convergence.

For a calculation, one may stop when

$$
\lvert x_{n+1}-x_n\rvert < \varepsilon,
$$

where $\varepsilon$ is the desired tolerance, such as $10^{-3}$, $10^{-4}$, or $10^{-5}$.

## Key points

- The same equation may be rearranged into many iteration formulas.
- Not every rearrangement converges.
- Check $\lvert g^{\prime}(x)\rvert<1$ near the root before trusting the iteration.
- A numerical result should be tested by substitution into the original equation.

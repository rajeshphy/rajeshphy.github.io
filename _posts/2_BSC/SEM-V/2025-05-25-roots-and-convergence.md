---
title: "Bisection, Newton, Fixed-Point Iteration, and Convergence"
date: 2025-05-25 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, bisection, newton-raphson, fixed-point, convergence]
permalink: /bsc/sem-v/mj-9/roots-and-convergence/
---

A numerical root of $f(x)=0$ is an approximation to a value $\alpha$ for which $f(\alpha)=0$. Bracketing methods preserve an interval containing a root; open methods update a point and can converge much faster when the starting value is suitable.

![Bisection bracket and Newton tangent]({{ '/assets/images/bsc/sem-v/mj-9/root-methods.png' | relative_url }})

The diagram is reproducible from its [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-9/root-methods.tex' | relative_url }}).

## Bisection

If $f$ is continuous on $[a_0,b_0]$ and

$$f(a_0)f(b_0)<0,$$

the intermediate value theorem guarantees at least one root in the interval. Let

$$c=\frac{a+b}{2}.$$

If $f(c)=0$, then $c$ is the exact root and the iteration stops. Otherwise, keep $[a,c]$ when $f(a)f(c)<0$, and keep $[c,b]$ when $f(c)f(b)<0$. The strict sign change is preserved at every step.

After $n$ bisections the interval width is

$$b_n-a_n=\frac{b_0-a_0}{2^n}.$$

If $m_n=(a_n+b_n)/2$ is the midpoint of the retained interval, it therefore gives the rigorous bound

$$\boxed{\lvert\alpha-m_n\rvert\le\frac{b_0-a_0}{2^{n+1}}}.$$

To ensure an error no larger than $\varepsilon$, it is sufficient to take

$$n\ge\log_2\!\left(\frac{b_0-a_0}{2\varepsilon}\right).$$

## Newton-Raphson method

At $x_n$, replace the curve by its tangent:

$$y-f(x_n)=f'(x_n)(x-x_n).$$

The tangent crosses the $x$-axis at $x_{n+1}$. Setting $y=0$ gives

$$\boxed{x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}}.$$

Near a simple root, expand $f(x_n)$ around $\alpha$. With $e_n=x_n-\alpha$,

$$f(x_n)=f'(\alpha)e_n+\frac12f''(\alpha)e_n^2+\cdots.$$

Substitution in the Newton update gives

$$e_{n+1}\approx\frac{f''(\alpha)}{2f'(\alpha)}e_n^2.$$

The squared error explains quadratic convergence. A zero or very small derivative, a poor starting point, or a multiple root can destroy this behavior.

## Fixed-point iteration

Rewrite $f(x)=0$ as

$$x=g(x)$$

and iterate

$$\boxed{x_{n+1}=g(x_n)}.$$

If $g(\alpha)=\alpha$, the mean value theorem gives

$$e_{n+1}=g(x_n)-g(\alpha)=g'(\xi_n)e_n.$$

Hence a sufficient local convergence condition is

$$\lvert g'(x)\rvert\le q<1$$

throughout a neighborhood that maps into itself. Then

$$\lvert e_{n+1}\rvert\le q\lvert e_n\rvert,$$

so fixed-point iteration is generally linearly convergent. Different rearrangements of the same equation can have different values of $q$, and some will diverge.

## One equation, three viewpoints

For

$$f(x)=x^3-x-2,$$

$f(1)=-2$ and $f(2)=4$, so bisection starts on $[1,2]$. The first midpoints are

| step | midpoint | $f(\text{midpoint})$ | retained bracket |
|---:|---:|---:|---:|
| 1 | 1.500000 | -0.125000 | $[1.5,2]$ |
| 2 | 1.750000 | 1.609375 | $[1.5,1.75]$ |
| 3 | 1.625000 | 0.666016 | $[1.5,1.625]$ |
| 4 | 1.562500 | 0.252197 | $[1.5,1.5625]$ |

Newton's method has $f'(x)=3x^2-1$. Starting from $x_0=1.5$,

$$x_1=1.5-\frac{-0.125}{5.75}=1.52173913,$$

$$x_2=1.52137981.$$

A convergent fixed-point form is

$$x_{n+1}=(x_n+2)^{1/3},$$

because at the root $\lvert g'(\alpha)\rvert=1/(3\alpha^2)\approx0.144<1$. All three approaches lead to

$$\alpha\approx1.52137971.$$

An iteration should normally stop only when both

$$\lvert x_{n+1}-x_n\rvert<\varepsilon_x
\quad\text{and}\quad
\lvert f(x_{n+1})\rvert<\varepsilon_f.$$

For bisection, the bracket-width bound remains the strongest error certificate.

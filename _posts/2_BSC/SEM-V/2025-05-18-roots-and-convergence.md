---
title: "Bisection, Newton, Fixed-Point Iteration, and Convergence"
date: 2025-05-18 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, bisection, newton-raphson, fixed-point, convergence]
permalink: /bsc/sem-v/mj-9/roots-and-convergence/
---

A numerical root of $f(x)=0$ is an approximation to a value $\alpha$ for which $f(\alpha)=0$. Bracketing methods preserve an interval containing a root; open methods update a point and can converge much faster when the starting value is suitable.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-9/root-methods.png' | relative_url }}" alt="Bisection bracket and Newton tangent" loading="lazy" decoding="async">
</figure>

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

$$y-f(x_n)=f^{\prime}(x_n)(x-x_n).$$

The tangent crosses the $x$-axis at $x_{n+1}$. Setting $y=0$ gives

$$\boxed{x_{n+1}=x_n-\frac{f(x_n)}{f^{\prime}(x_n)}}.$$

Near a simple root, expand $f(x_n)$ around $\alpha$. With $e_n=x_n-\alpha$,

$$f(x_n)=f^{\prime}(\alpha)e_n+\frac12f^{\prime\prime}(\alpha)e_n^2+\cdots.$$

Substitution in the Newton update gives

$$e_{n+1}\approx\frac{f^{\prime\prime}(\alpha)}{2f^{\prime}(\alpha)}e_n^2.$$

The squared error explains quadratic convergence. A zero or very small derivative, a poor starting point, or a multiple root can destroy this behavior.

## Fixed-point iteration

Rewrite $f(x)=0$ as

$$x=g(x)$$

and iterate

$$\boxed{x_{n+1}=g(x_n)}.$$

If $g(\alpha)=\alpha$, the mean value theorem gives

$$e_{n+1}=g(x_n)-g(\alpha)=g^{\prime}(\xi_n)e_n.$$

Hence a sufficient local convergence condition is

$$\lvert g^{\prime}(x)\rvert\le q<1$$

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

Newton's method has $f^{\prime}(x)=3x^2-1$. Starting from $x_0=1.5$,

$$x_1=1.5-\frac{-0.125}{5.75}=1.52173913,$$

$$x_2=1.52137981.$$

A convergent fixed-point form is

$$x_{n+1}=(x_n+2)^{1/3},$$

because at the root $\lvert g^{\prime}(\alpha)\rvert=1/(3\alpha^2)\approx0.144<1$. All three approaches lead to

$$\alpha\approx1.52137971.$$

An iteration should normally stop only when both

$$\lvert x_{n+1}-x_n\rvert<\varepsilon_x
\quad\text{and}\quad
\lvert f(x_{n+1})\rvert<\varepsilon_f.$$

For bisection, the bracket-width bound remains the strongest error certificate.

## Solved Problems

### 1. A certified bisection approximation to $\sqrt5$

For $f(x)=x^2-5$, $f(2)=-1$ and $f(3)=4$, so continuity guarantees a root in $[2,3]$. To make the midpoint error no larger than $10^{-3}$, require

$$\frac{3-2}{2^{n+1}}\le10^{-3}.$$

Taking logarithms,

$$n\ge\log_2(500)=8.965\ldots,$$

so nine bisections are sufficient. Repeated sign tests give the final bracket

$$\left[2.234375,\,2.236328125\right]
=\left[\frac{143}{64},\,\frac{1145}{512}\right].$$

Its midpoint is

$$m_9=\frac{2289}{1024}=2.2353515625,$$

with the rigorous bound

$$\lvert\sqrt5-m_9\rvert\le\frac{1}{1024}
=9.765625\times10^{-4}.$$

The approximation is dimensionless because the equation itself is dimensionless.

### 2. Newton iteration at a double root

Let $f(x)=(x-1)^2$. Since $f^{\prime}(x)=2(x-1)$, ordinary Newton iteration gives

$$
\begin{aligned}
x_{n+1}
&=x_n-\frac{(x_n-1)^2}{2(x_n-1)}\\
&=x_n-\frac{x_n-1}{2}
=\frac{x_n+1}{2}.
\end{aligned}
$$

Hence

$$e_{n+1}=x_{n+1}-1=\frac12(x_n-1)=\frac12e_n,$$

so the convergence is only linear. If the multiplicity $m=2$ is known, the modified update is

$$x_{n+1}=x_n-m\frac{f(x_n)}{f^{\prime}(x_n)}
=x_n-2\frac{(x_n-1)^2}{2(x_n-1)}=1.$$

It reaches the root in one step for every $x_n\ne1$. The loss of quadratic convergence is therefore caused by the repeated zero of $f^{\prime}$ at the root, not by a sign mistake in Newton's formula.

## Descriptive Questions

1. Prove the bisection midpoint-error bound and explain the role of continuity and a strict sign change.
2. Derive Newton's method geometrically and obtain its local quadratic error relation for a simple root.
3. State a sufficient contraction condition for fixed-point iteration and derive the corresponding error inequality.
4. Explain why a multiple root changes the convergence order of ordinary Newton iteration.

## Numerical Problems

1. How many bisections guarantee midpoint error at most $10^{-5}$ for a root initially bracketed in $[1,2]$?
   **Answer:** $n\ge\lceil\log_2(1/(2\times10^{-5}))\rceil=16$ bisections.

2. Apply one Newton step to $f(x)=x^2-3$ from $x_0=2$, and calculate the equation residual.
   **Answer:** $x_1=7/4=1.75$ and $f(x_1)=1/16=0.0625$.

3. For $x_{n+1}=(x_n+2)^{1/3}$ with $x_0=1.5$, calculate two iterates.
   **Answer:** $x_1\approx1.518294486$, $x_2\approx1.520935263$.

4. Decide whether $x_{n+1}=\cos x_n$ is a contraction on $[0,1]$.
   **Answer:** yes; $\max_{[0,1]}\lvert-\sin x\rvert=\sin1\approx0.84147<1$.

The bisection, Newton, multiplicity, and fixed-point calculations are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-i-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Root-finding algorithm — Wikipedia](https://en.wikipedia.org/wiki/Root-finding_algorithm).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 2, “Solutions of Equations in One Variable.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapters 5–6, “Bracketing Methods” and “Open Methods.”

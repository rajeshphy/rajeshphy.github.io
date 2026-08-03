---
title: "Numerical Differentiation with Finite Differences"
date: 2025-06-20 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, numerical-differentiation, finite-differences]
permalink: /bsc/sem-v/mj-9/numerical-differentiation-finite-differences/
---

Numerical differentiation estimates derivatives from tabulated or computed function values. Let the data be sampled at equally spaced points

$$x_i=x_0+ih,\qquad f_i=f(x_i),\qquad h\ne0.$$

The step $h$ has the same unit as $x$. Consequently, a first derivative has units of $f/x$, and a second derivative has units of $f/x^2$.

## Taylor expansions about a tabulated point

For a sufficiently smooth function,

$$f_{i+1}=f_i+h f_i'+\frac{h^2}{2}f_i''
+\frac{h^3}{6}f_i'''+O(h^4),$$

$$f_{i-1}=f_i-h f_i'+\frac{h^2}{2}f_i''
-\frac{h^3}{6}f_i'''+O(h^4).$$

These two expansions determine the finite-difference formulae and their truncation errors.

## Forward and backward first derivatives

Solving the first expansion for $f_i'$ gives

$$f_i'=\frac{f_{i+1}-f_i}{h}
-\frac h2f_i''+O(h^2).$$

Thus the forward-difference approximation is

$$\boxed{f'(x_i)\approx\frac{f_{i+1}-f_i}{h}}
\qquad\text{with error }O(h).$$

Similarly,

$$f_i'=\frac{f_i-f_{i-1}}{h}
+\frac h2f_i''+O(h^2),$$

so the backward-difference approximation is

$$\boxed{f'(x_i)\approx\frac{f_i-f_{i-1}}{h}}
\qquad\text{with error }O(h).$$

The forward formula is useful at a left endpoint, where $f_{i-1}$ is unavailable; the backward formula is useful at a right endpoint.

## Centered first derivative

Subtracting the two Taylor expansions cancels all even-derivative terms:

$$f_{i+1}-f_{i-1}=2hf_i'+\frac{h^3}{3}f_i'''+O(h^5).$$

Therefore

$$f_i'=\frac{f_{i+1}-f_{i-1}}{2h}
-\frac{h^2}{6}f_i'''+O(h^4),$$

and hence

$$\boxed{f'(x_i)\approx\frac{f_{i+1}-f_{i-1}}{2h}}
\qquad\text{with error }O(h^2).$$

At an interior point this centered approximation is normally preferred because its leading truncation error is quadratic rather than linear in $h$.

## Centered second derivative

Adding the Taylor expansions and subtracting $2f_i$ gives

$$f_{i+1}-2f_i+f_{i-1}
=h^2f_i''+\frac{h^4}{12}f_i^{(4)}+O(h^6).$$

Thus

$$f_i''=\frac{f_{i+1}-2f_i+f_{i-1}}{h^2}
-\frac{h^2}{12}f_i^{(4)}+O(h^4),$$

so

$$\boxed{f''(x_i)\approx
\frac{f_{i+1}-2f_i+f_{i-1}}{h^2}}
\qquad\text{with error }O(h^2).$$

## Example and step-size choice

For

$$f(x)=x^3-2x+1,\qquad x_i=1,\qquad h=0.1,$$

the exact derivatives are $f'(1)=1$ and $f''(1)=6$. The centered formulae give

$$\frac{f(1.1)-f(0.9)}{0.2}=1.01,$$

$$\frac{f(1.1)-2f(1)+f(0.9)}{0.1^2}=6.$$

For this cubic, the centered first-derivative error is exactly $h^2=0.01$, while the centered second derivative is exact because the fourth derivative vanishes.

Reducing $\lvert h\rvert$ decreases truncation error only until floating-point subtraction begins to magnify round-off. A useful computation therefore checks that the derivative stabilizes as $h$ is reduced, rather than assuming that the smallest representable step is best.

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/numerical-differentiation-checks.mac' | relative_url }}) verifies the forward, backward, centered-first, centered-second, and numerical-example identities. Every printed residual is zero.

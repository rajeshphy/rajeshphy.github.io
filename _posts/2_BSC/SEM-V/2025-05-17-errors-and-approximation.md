---
title: "Errors, Significant Digits, and Approximation"
date: 2025-05-17 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, approximation, error-analysis]
permalink: /bsc/sem-v/mj-9/errors-and-approximation/
---

A numerical answer is an approximation whenever the input data or the arithmetic has finite precision. Error analysis records how far an approximation may be from the value it represents and how that uncertainty moves through a calculation.

## Significant digits and measures of error

Significant digits begin at the first non-zero digit. Thus $0.004\,560$ has four significant digits; the leading zeros locate the decimal point, while the final zero records precision. If a number is retained to $n$ significant digits, the next digit decides whether the last retained digit is rounded up.

Let $x$ be the exact value and $\widehat{x}$ its numerical approximation. Define

$$e=x-\widehat{x},\qquad
E_a=\lvert e\rvert,$$

$$E_r=\frac{\lvert e\rvert}{\lvert x\rvert},\qquad
E_p=100E_r\%.$$

Here $E_a$, $E_r$, and $E_p$ are the absolute, relative, and percentage errors. When $x$ is unknown, a convergent iteration commonly estimates relative change by

$$\frac{\lvert x_{n+1}-x_n\rvert}{\lvert x_{n+1}\rvert}.$$

For example, if $x=\sqrt2$ is stored as $1.414$, then

$$E_a=\lvert1.41421356\ldots-1.414\rvert\approx2.14\times10^{-4},$$

$$E_r\approx1.51\times10^{-4},\qquad E_p\approx0.0151\%.$$

## Round-off error

A computer stores only finitely many digits. Replacing a number by the nearest representable number produces round-off error. Decimal fractions such as $0.1$ generally have non-terminating binary representations, so even apparently simple floating-point sums may not be exact.

Round-off also becomes visible through cancellation. If two nearly equal approximations are subtracted, their leading digits disappear and the relative importance of their stored errors increases. The algebraically equivalent form

$$\sqrt{x+1}-\sqrt{x}
=\frac{1}{\sqrt{x+1}+\sqrt{x}}$$

therefore behaves better for large $x$.

## Truncation error

Truncation error occurs when an infinite mathematical process is replaced by finitely many terms or steps. For example, Taylor's theorem gives

$$e^x=1+x+\frac{x^2}{2!}+\frac{x^3}{3!}+R_3,$$

where

$$R_3=\frac{e^\xi x^4}{4!}$$

for some $\xi$ between $0$ and $x$. Retaining terms only through $x^3$ makes $R_3$ the truncation error. At $x=0.1$,

$$e^{0.1}\approx1+0.1+\frac{0.1^2}{2}+\frac{0.1^3}{6}
=1.105166666\ldots,$$

while the omitted remainder is about $4.25\times10^{-6}$. More retained terms or smaller numerical steps reduce truncation error, although the associated extra arithmetic can increase accumulated round-off.

## Propagation of error

Suppose

$$z=f(x_1,x_2,\ldots,x_m)$$

and every input changes by a small amount $\delta x_i$. A first-order Taylor expansion gives

$$f(x_1+\delta x_1,\ldots,x_m+\delta x_m)
\approx f(x_1,\ldots,x_m)
+\sum_{i=1}^{m}\frac{\partial f}{\partial x_i}\delta x_i.$$

Therefore

$$\boxed{\delta z\approx
\sum_{i=1}^{m}\frac{\partial f}{\partial x_i}\delta x_i}.$$

If only upper bounds $\Delta x_i$ are known, the triangle inequality gives the maximum first-order bound

$$\boxed{\Delta z\lesssim
\sum_{i=1}^{m}\left\lvert\frac{\partial f}{\partial x_i}\right\rvert\Delta x_i}.$$

Important special cases follow directly:

$$z=x\pm y
\quad\Longrightarrow\quad
\Delta z\lesssim\Delta x+\Delta y,$$

$$z=xy\ \text{or}\ z=\frac{x}{y}
\quad\Longrightarrow\quad
\frac{\Delta z}{\lvert z\rvert}\lesssim
\frac{\Delta x}{\lvert x\rvert}+\frac{\Delta y}{\lvert y\rvert},$$

$$z=x^p
\quad\Longrightarrow\quad
\frac{\Delta z}{\lvert z\rvert}\lesssim \lvert p\rvert\frac{\Delta x}{\lvert x\rvert}.$$

For a circle with measured radius $r=(2.00\pm0.01)\,\mathrm{cm}$, $A=\pi r^2$. Hence

$$\frac{\Delta A}{A}\approx2\frac{\Delta r}{r}
=2\frac{0.01}{2.00}=0.010,$$

so $A\approx12.57\,\mathrm{cm^2}$ with $\Delta A\approx0.13\,\mathrm{cm^2}$. The precision reported in the result should not exceed the precision justified by this propagated error.

## Solved Problems

### 1. Uncertainty in the volume of a cylinder

A cylinder has $r=(2.50\pm0.01)\,\mathrm{cm}$ and $h=(10.0\pm0.1)\,\mathrm{cm}$. Its volume is

$$V=\pi r^2h=\pi(2.50\,\mathrm{cm})^2(10.0\,\mathrm{cm})
=196.350\,\mathrm{cm^3}.$$

For independent maximum-error bounds, logarithmic differentiation gives

$$\frac{dV}{V}=2\frac{dr}{r}+\frac{dh}{h}.$$

Taking absolute upper bounds,

$$\frac{\Delta V}{V}\lesssim
2\frac{0.01}{2.50}+\frac{0.1}{10.0}
=0.018.$$

Thus

$$\Delta V\approx(196.350)(0.018)
=3.534\,\mathrm{cm^3},$$

and the justified result is

$$\boxed{V=(196.4\pm3.5)\,\mathrm{cm^3}}.$$

The relative uncertainty is dimensionless, while $\Delta V$ has the same unit as $V$.

### 2. Removing subtractive cancellation

Evaluate $\sqrt{10^8+1}-\sqrt{10^8}$. Direct subtraction asks floating-point arithmetic to subtract two numbers close to $10^4$, so their common leading digits cancel. Multiplying by the conjugate gives

$$
\begin{aligned}
\sqrt{10^8+1}-\sqrt{10^8}
&=\frac{(10^8+1)-10^8}
{\sqrt{10^8+1}+\sqrt{10^8}}\\
&=\frac{1}{\sqrt{10^8+1}+10^4}\\
&\approx4.9999999875\times10^{-5}.
\end{aligned}
$$

The transformation changes neither the sign nor the unit, but it replaces a dangerous subtraction by a well-scaled division. For large $N$,

$$\sqrt{N+1}-\sqrt N\sim\frac{1}{2\sqrt N},$$

which also gives $5.0\times10^{-5}$ when $N=10^8$.

## Descriptive Questions

1. Distinguish absolute, relative, and percentage error, and state when relative error is undefined.
2. Explain how round-off and truncation errors arise and why reducing a step size cannot remove both indefinitely.
3. Derive the first-order maximum-error formula for a function of several measured variables.
4. Explain subtractive cancellation and show how an algebraically equivalent expression can improve numerical stability.

## Numerical Problems

1. Taking $9.81\,\mathrm{m\,s^{-2}}$ as exact, find the absolute, relative, and percentage errors when it is stored as $9.8\,\mathrm{m\,s^{-2}}$.
   **Answer:** $E_a=0.01\,\mathrm{m\,s^{-2}}$, $E_r=1/981\approx1.0194\times10^{-3}$, $E_p\approx0.10194\%$.

2. A sphere has radius $(5.00\pm0.02)\,\mathrm{cm}$. Use first-order propagation to find its volume uncertainty.
   **Answer:** $V=500\pi/3\approx523.60\,\mathrm{cm^3}$, $\Delta V=2\pi\approx6.28\,\mathrm{cm^3}$.

3. The density $\rho=m/(\pi r^2l)$ is calculated from $m=(50.0\pm0.5)\,\mathrm g$, $r=(1.50\pm0.02)\,\mathrm{cm}$, and $l=(20.0\pm0.1)\,\mathrm{cm}$. Find the maximum first-order relative error.
   **Answer:** $\Delta\rho/\rho\lesssim1/24\approx0.04167$, or $4.167\%$.

4. Approximate $\sin(0.1)$ by $x-x^3/3!$ and find both the actual truncation error and the next-term bound.
   **Answer:** approximation $=0.09983333333$; actual error $\approx8.33135\times10^{-8}$; bound $0.1^5/5!\approx8.33333\times10^{-8}$.

All symbolic identities and printed values above are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-i-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Approximation error — Wikipedia](https://en.wikipedia.org/wiki/Approximation_error).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 1, “Mathematical Preliminaries and Error Analysis.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapters 3–4, “Approximations and Round-Off Errors” and “Truncation Errors and the Taylor Series.”

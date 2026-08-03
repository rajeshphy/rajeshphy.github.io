---
title: "Errors, Significant Digits, and Approximation"
date: 2025-05-26 09:00:00 +0530
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

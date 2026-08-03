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

$$f_{i+1}=f_i+h f_i^{\prime}+\frac{h^2}{2}f_i^{\prime\prime}
+\frac{h^3}{6}f_i^{\prime\prime\prime}+O(h^4),$$

$$f_{i-1}=f_i-h f_i^{\prime}+\frac{h^2}{2}f_i^{\prime\prime}
-\frac{h^3}{6}f_i^{\prime\prime\prime}+O(h^4).$$

These two expansions determine the finite-difference formulae and their truncation errors.

## Forward and backward first derivatives

Solving the first expansion for $f_i^{\prime}$ gives

$$f_i^{\prime}=\frac{f_{i+1}-f_i}{h}
-\frac h2f_i^{\prime\prime}+O(h^2).$$

Thus the forward-difference approximation is

$$\boxed{f^{\prime}(x_i)\approx\frac{f_{i+1}-f_i}{h}}
\qquad\text{with error }O(h).$$

Similarly,

$$f_i^{\prime}=\frac{f_i-f_{i-1}}{h}
+\frac h2f_i^{\prime\prime}+O(h^2),$$

so the backward-difference approximation is

$$\boxed{f^{\prime}(x_i)\approx\frac{f_i-f_{i-1}}{h}}
\qquad\text{with error }O(h).$$

The forward formula is useful at a left endpoint, where $f_{i-1}$ is unavailable; the backward formula is useful at a right endpoint.

## Centered first derivative

Subtracting the two Taylor expansions cancels all even-derivative terms:

$$f_{i+1}-f_{i-1}=2hf_i^{\prime}+\frac{h^3}{3}f_i^{\prime\prime\prime}+O(h^5).$$

Therefore

$$f_i^{\prime}=\frac{f_{i+1}-f_{i-1}}{2h}
-\frac{h^2}{6}f_i^{\prime\prime\prime}+O(h^4),$$

and hence

$$\boxed{f^{\prime}(x_i)\approx\frac{f_{i+1}-f_{i-1}}{2h}}
\qquad\text{with error }O(h^2).$$

At an interior point this centered approximation is normally preferred because its leading truncation error is quadratic rather than linear in $h$.

## Centered second derivative

Adding the Taylor expansions and subtracting $2f_i$ gives

$$f_{i+1}-2f_i+f_{i-1}
=h^2f_i^{\prime\prime}+\frac{h^4}{12}f_i^{(4)}+O(h^6).$$

Thus

$$f_i^{\prime\prime}=\frac{f_{i+1}-2f_i+f_{i-1}}{h^2}
-\frac{h^2}{12}f_i^{(4)}+O(h^4),$$

so

$$\boxed{f^{\prime\prime}(x_i)\approx
\frac{f_{i+1}-2f_i+f_{i-1}}{h^2}}
\qquad\text{with error }O(h^2).$$

## Example and step-size choice

For

$$f(x)=x^3-2x+1,\qquad x_i=1,\qquad h=0.1,$$

the exact derivatives are $f^{\prime}(1)=1$ and $f^{\prime\prime}(1)=6$. The centered formulae give

$$\frac{f(1.1)-f(0.9)}{0.2}=1.01,$$

$$\frac{f(1.1)-2f(1)+f(0.9)}{0.1^2}=6.$$

For this cubic, the centered first-derivative error is exactly $h^2=0.01$, while the centered second derivative is exact because the fourth derivative vanishes.

Reducing $\lvert h\rvert$ decreases truncation error only until floating-point subtraction begins to magnify round-off. A useful computation therefore checks that the derivative stabilizes as $h$ is reduced, rather than assuming that the smallest representable step is best.

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/numerical-differentiation-checks.mac' | relative_url }}) verifies the forward, backward, centered-first, centered-second, and numerical-example identities. Every printed residual is zero.

At a left endpoint, second-order accuracy is recovered without using $f_{i-1}$. Expand both available values:

$$f_{i+1}=f_i+hf_i^{\prime}+\frac{h^2}{2}f_i^{\prime\prime}+\frac{h^3}{6}f_i^{\prime\prime\prime}+O(h^4),$$

$$f_{i+2}=f_i+2hf_i^{\prime}+2h^2f_i^{\prime\prime}+\frac{4h^3}{3}f_i^{\prime\prime\prime}+O(h^4).$$

The combination $-3f_i+4f_{i+1}-f_{i+2}$ cancels $f_i$ and $f_i^{\prime\prime}$:

$$-3f_i+4f_{i+1}-f_{i+2}
=2hf_i^{\prime}-\frac{2h^3}{3}f_i^{\prime\prime\prime}+O(h^4).$$

Therefore

$$\boxed{f^{\prime}(x_i)\approx\frac{-3f_i+4f_{i+1}-f_{i+2}}{2h}}
\qquad\text{with error }O(h^2).$$

## Solved Problems

### 1. Centered derivatives of $\ln x$

Use $h=0.1$ about $x=1$. Since

$$f(0.9)=\ln0.9,\qquad f(1)=0,\qquad f(1.1)=\ln1.1,$$

the centered first derivative is

$$
\begin{aligned}
f^{\prime}(1)&\approx\frac{\ln1.1-\ln0.9}{0.2}\\
&=5\ln\!\left(\frac{11}{9}\right)\\
&\approx1.003353477.
\end{aligned}
$$

The exact value is $f^{\prime}(1)=1$, so the error is $3.353477\times10^{-3}$. The centered second derivative is

$$
\begin{aligned}
f^{\prime\prime}(1)&\approx\frac{\ln1.1-2\ln1+\ln0.9}{0.1^2}\\
&=100\ln(0.99)\\
&\approx-1.005033585.
\end{aligned}
$$

The exact value is $-1$; the numerical sign correctly records the concavity of $\ln x$.

### 2. A second-order endpoint derivative

For $f(x)=e^x$ at $x=0$, take $h=0.1$. The three-point forward formula gives

$$
\begin{aligned}
f^{\prime}(0)&\approx\frac{-3f(0)+4f(0.1)-f(0.2)}{0.2}\\
&=5\left[-3+4e^{0.1}-e^{0.2}\right]\\
&\approx0.996404571.
\end{aligned}
$$

Since $f^{\prime}(0)=1$, the signed error is $-3.595429\times10^{-3}$. Every term in the numerator is dimensionless and division by $h$ supplies the required inverse-$x$ unit.

## Descriptive Questions

1. Derive forward and backward first-derivative formulae and identify their leading truncation errors.
2. Show why the centered first derivative is second-order accurate.
3. Derive the centered second-derivative formula from Taylor expansions.
4. Explain the competition between truncation error and round-off error as the step size decreases.

## Numerical Problems

1. Use the centered formula with $h=0.1$ to estimate $d(x^2)/dx$ at $x=2$.
   **Answer:** $[(2.1)^2-(1.9)^2]/0.2=4$, exactly.

2. Use the centered second difference with $h=0.1$ to estimate $d^2(x^4)/dx^2$ at $x=1$.
   **Answer:** $12.02$; the exact value is $12$, so the error is $0.02$.

3. Estimate $d(\sin x)/dx$ at $x=0$ using a forward difference with $h=0.05$.
   **Answer:** $\sin(0.05)/0.05\approx0.999583385$.

4. A centered first-difference estimate for a cubic has error $0.04$ at $h=0.2$. Predict the error at $h=0.1$.
   **Answer:** $0.04(0.1/0.2)^2=0.01$.

The endpoint formula and every new value are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-ii-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Numerical differentiation — Wikipedia](https://en.wikipedia.org/wiki/Numerical_differentiation).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 4, “Numerical Differentiation and Integration.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapter 23, “Numerical Differentiation.”

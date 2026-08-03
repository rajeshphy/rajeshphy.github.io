---
title: "Fourier Transforms, Delta Functions and Convolution"
summary: "Fourier transforms of trigonometric, Gaussian, finite-train, and elementary functions, with derivative, inverse, delta, and convolution theorems."
date: 2025-06-14 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-17, fourier-transform, dirac-delta, convolution]
permalink: /bsc/sem-vii/fourier-transforms/
hidden: true
---

Use the transform pair

$$
\boxed{
F(k)=\int_{-\infty}^{\infty}f(x)e^{-ikx}\,dx,
\qquad
f(x)=\frac1{2\pi}\int_{-\infty}^{\infty}F(k)e^{ikx}\,dk.
}
$$

The constants and signs in every formula below follow from this convention.

## Dirac delta as a Fourier integral

The inverse transform of $F(k)=1$ defines

$$
\boxed{
\delta(x-x_0)=\frac1{2\pi}\int_{-\infty}^{\infty}
e^{ik(x-x_0)}\,dk.
}
$$

This equality is distributional. Multiply by a smooth test function $g(x)$,
integrate over $x$, and use the inverse transform to obtain
$\int\delta(x-x_0)g(x)dx=g(x_0)$.

## Trigonometric functions

Since

$$
\int_{-\infty}^{\infty}e^{-i(k-k_0)x}\,dx
=2\pi\delta(k-k_0),
$$

Euler's relations give

$$
\boxed{
\mathcal F\{\cos k_0x\}
=\pi[\delta(k-k_0)+\delta(k+k_0)],
}
$$

$$
\boxed{
\mathcal F\{\sin k_0x\}
=\frac\pi i[\delta(k-k_0)-\delta(k+k_0)].
}
$$

These transforms are distributions because an infinite sinusoid is not
absolutely integrable.

## Gaussian transform

For $a>0$, let $f(x)=e^{-ax^2}$. Complete the square:

$$
-ax^2-ikx
=-a\left(x+\frac{ik}{2a}\right)^2-\frac{k^2}{4a}.
$$

The Gaussian integral is unchanged by the permitted contour displacement, so

$$
\begin{aligned}
F(k)&=e^{-k^2/(4a)}
\int_{-\infty}^{\infty}
e^{-a(x+ik/2a)^2}\,dx\\
&=\boxed{\sqrt{\frac\pi a}\,e^{-k^2/(4a)}}.
\end{aligned}
$$

The dimensions are consistent: if $x$ is measured in metres, then $k$ is in
$\mathrm{m}^{-1}$, $a$ is in $\mathrm{m}^{-2}$, and $F$ has the dimensions
of $f$ times metres.

## Finite pulse and finite wave train

For a rectangular pulse of width $L$,

$$
f(x)=\begin{cases}1,&\lvert x\rvert<L/2,\\0,&\lvert x\rvert>L/2,\end{cases}
$$

direct integration gives

$$
F(k)=\int_{-L/2}^{L/2}e^{-ikx}dx
=\frac{2\sin(kL/2)}k
=L\,\operatorname{sinc}\!\left(\frac{kL}{2}\right),
$$

where $\operatorname{sinc}u=\sin u/u$.

A finite cosine train is
$f(x)=\cos(k_0x)$ for $\lvert x\rvert<L/2$ and zero otherwise. Using the two
exponentials,

$$
\boxed{
F(k)=
\frac{\sin[(k-k_0)L/2]}{k-k_0}
+\frac{\sin[(k+k_0)L/2]}{k+k_0}.
}
$$

The apparent singularities at $k=\pm k_0$ are removable limits. Each sinc
contribution by itself has first zeros $2\pi/L$ from its centre. When
$k_0L\gg1$ the two contributions are well separated, so each peak has this
approximate width; where they overlap, their sum need not vanish at those
individual-sinc zeros.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-17/unit-2/fourier-transform-pairs.png' | relative_url }}" alt="Equation-generated Gaussian transform and finite cosine-train spectrum" loading="lazy">
  </div>
  <figcaption>The Gaussian remains Gaussian under transformation. Truncating a cosine to \(\lvert x\rvert<L/2\) replaces each delta line by a sinc-shaped spectral peak.</figcaption>
</figure>

## Transform of derivatives

Assume $f$ and its required derivatives vanish at $\lvert x\rvert\to\infty$.
Integration by parts gives

$$
\begin{aligned}
\mathcal F\{f'(x)\}
&=\left[f(x)e^{-ikx}\right]_{-\infty}^{\infty}
+ik\int_{-\infty}^{\infty}f(x)e^{-ikx}dx\\
&=ikF(k).
\end{aligned}
$$

Repeated integration gives

$$
\boxed{\mathcal F\{f^{(n)}(x)\}=(ik)^nF(k).}
$$

If the boundary terms do not vanish, they must be retained.

## Inverse transform

Insert the definition of $F(k)$ into the proposed inverse:

$$
\begin{aligned}
\frac1{2\pi}\int F(k)e^{ikx}dk
&=\int f(x')\left[
\frac1{2\pi}\int e^{ik(x-x')}dk
\right]dx'\\
&=\int f(x')\delta(x-x')dx'=f(x).
\end{aligned}
$$

Thus the inverse formula follows directly from the Fourier representation of
the delta distribution.

## Convolution theorem

Define

$$
(f*g)(x)=\int_{-\infty}^{\infty}f(u)g(x-u)\,du.
$$

Its transform is

$$
\begin{aligned}
\mathcal F\{f*g\}
&=\int dx\,e^{-ikx}\int du\,f(u)g(x-u)\\
&=\int du\,f(u)e^{-iku}
\int dy\,g(y)e^{-iky}\\
&=\boxed{F(k)G(k)},
\end{aligned}
$$

where $y=x-u$. Conversely,

$$
\boxed{\mathcal F\{f(x)g(x)\}=\frac1{2\pi}(F*G)(k).}
$$

The Gaussian pair, finite-train transform, derivative rule, and convolution
identity are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-2/fourier-transforms.mac' | relative_url }}); every printed residual is zero.

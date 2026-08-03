---
title: "Contour Integration for Definite Integrals"
summary: "Residue calculations for a real rational integral and a trigonometric integral on the unit circle."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, contour-integration, definite-integrals]
permalink: /bsc/sem-ii/contour-integration-definite-integrals/
hidden: true
---

## A rational integral on the real line

Let $a>0$ and consider

$$
I=\int_{-\infty}^{\infty}\frac{dx}{x^2+a^2}.
$$

Use

$$
f(z)=\frac1{z^2+a^2}
=\frac1{(z-ia)(z+ia)}
$$

and close the real segment $[-R,R]$ by the upper semicircle. Only the pole $z=ia$ lies inside.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/contour-definite-integral.png' | relative_url }}" alt="Upper semicircular contour with pole at i a and an arc estimate" loading="lazy">
  <figcaption>The upper semicircle encloses \(z=ia\) but not \(z=-ia\). Counterclockwise orientation fixes the positive sign in the residue theorem.</figcaption>
</figure>

The residue is

$$
\operatorname{Res}(f,ia)
=\lim_{z\to ia}\frac{z-ia}{(z-ia)(z+ia)}
=\frac1{2ia}.
$$

Thus

$$
\int_{-R}^{R}\frac{dx}{x^2+a^2}
+\int_{\Gamma_R}\frac{dz}{z^2+a^2}
=2\pi i\frac1{2ia}
=\frac{\pi}{a}.
$$

On the arc $\lvert z\rvert=R>a$,

$$
\lvert z^2+a^2\rvert\ge
\left\lvert\lvert z\rvert^2-a^2\right\rvert=R^2-a^2.
$$

Since the arc length is $\pi R$,

$$
\left\lvert
\int_{\Gamma_R}\frac{dz}{z^2+a^2}
\right\rvert
\le\frac{\pi R}{R^2-a^2}
\longrightarrow0.
$$

Taking $R\to\infty$ gives

$$
\boxed{
\int_{-\infty}^{\infty}\frac{dx}{x^2+a^2}
=\frac{\pi}{a}}.
$$

If $x$ and $a$ have units of length, both sides have units of inverse length.

## A trigonometric integral

For real $a>\lvert b\rvert>0$, evaluate

$$
J=\int_0^{2\pi}\frac{d\theta}{a+b\cos\theta}.
$$

Set $z=e^{i\theta}$ on the unit circle. Then

$$
d\theta=\frac{dz}{iz},
\qquad
\cos\theta=\frac12\left(z+\frac1z\right).
$$

Therefore

$$
\begin{aligned}
J
&=\oint_{\lvert z\rvert=1}
\frac{1}{a+\dfrac b2(z+z^{-1})}\frac{dz}{iz}\\
&=\frac2i\oint_{\lvert z\rvert=1}
\frac{dz}{bz^2+2az+b}.
\end{aligned}
$$

The poles are the roots

$$
z_\pm=\frac{-a\pm\sqrt{a^2-b^2}}{b}.
$$

Their product is $z_+z_-=1$. Because $a>\lvert b\rvert>0$, $z_+$ has magnitude less than one and $z_-$ has magnitude greater than one. Only $z_+$ is enclosed.

The derivative of the quadratic denominator is $2bz+2a$, so

$$
\operatorname{Res}
\left(\frac1{bz^2+2az+b},z_+\right)
=\frac1{2(bz_++a)}.
$$

Using $bz_++a=\sqrt{a^2-b^2}$,

$$
\begin{aligned}
J
&=\frac2i(2\pi i)
\frac1{2\sqrt{a^2-b^2}}\\
&=\boxed{\frac{2\pi}{\sqrt{a^2-b^2}}}.
\end{aligned}
$$

Both definite-integral results are independently reduced from their residues in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

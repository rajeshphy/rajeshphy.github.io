---
title: "Fraunhofer Diffraction and Resolving Power"
summary: "Single-, double-, circular-, and multiple-aperture diffraction, Rayleigh resolution, grating resolving power, and monochromatic selection."
date: 2025-06-30 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, fraunhofer-diffraction, single-slit, double-slit, circular-aperture, diffraction-grating, resolving-power]
permalink: /bsc/sem-iii/fraunhofer-diffraction-resolving-power/
hidden: true
---

Fraunhofer diffraction is the far-field limit in which the incident and observed waves are effectively plane. In the laboratory, a collimating lens forms the incident plane wave and a focusing lens maps each diffraction angle to a point in its focal plane.

## Single slit

Let a slit of width $a$ extend from $x=-a/2$ to $a/2$. At observation angle $\theta$, the phase of an element at $x$ relative to the centre is $kx\sin\theta$, where $k=2\pi/\lambda$. For uniform illumination,

$$
U(\theta)\propto
\int_{-a/2}^{a/2}e^{ikx\sin\theta}\,dx.
$$

Evaluating,

$$
U(\theta)\propto
\left[\frac{e^{ikx\sin\theta}}{ik\sin\theta}\right]_{-a/2}^{a/2}
=a\frac{\sin\beta}{\beta},
$$

where

$$
\boxed{\beta=\frac{\pi a\sin\theta}{\lambda}}.
$$

Taking the limit $\sin\beta/\beta\to1$ at $\beta=0$ fixes the normalization:

$$
\boxed{I(\theta)=I(0)
\left(\frac{\sin\beta}{\beta}\right)^2}.
$$

The minima satisfy $\beta=m\pi$, so

$$
\boxed{a\sin\theta_m=m\lambda},
\qquad
m=\pm1,\pm2,\ldots
$$

In the variable $\sin\theta$, the central maximum lies between $-\lambda/a$ and $+\lambda/a$ and is twice as wide as each interval between neighboring nonzero minima. The same statement is approximately angular when $\lvert\theta\rvert\ll1$.

## Double slit

Take two identical slits of width $a$ and centre separation $d$. Their centre-to-centre phase difference is

$$
2\alpha=\frac{2\pi d\sin\theta}{\lambda},
\qquad
\boxed{\alpha=\frac{\pi d\sin\theta}{\lambda}}.
$$

If $U_s$ is the field from one slit, then

$$
U_2=U_s(e^{-i\alpha}+e^{i\alpha})=2U_s\cos\alpha.
$$

Writing $I_s(0)$ for the central intensity of one slit,

$$
\boxed{I_2(\theta)=4I_s(0)
\left(\frac{\sin\beta}{\beta}\right)^2\cos^2\alpha}.
$$

The interference maxima $d\sin\theta=m\lambda$ lie inside the single-slit envelope. An interference order is missing when its maximum also satisfies the single-slit minimum condition $a\sin\theta=p\lambda$.

## $N$ identical slits and a diffraction grating

For $N$ slits, successive fields differ by phase $2\alpha$. Their array sum is

$$
\sum_{n=0}^{N-1}e^{i2n\alpha}
=\frac{1-e^{i2N\alpha}}{1-e^{i2\alpha}}
=e^{i(N-1)\alpha}\frac{\sin N\alpha}{\sin\alpha}.
$$

Multiplying by the single-slit field gives

$$
\boxed{I_N(\theta)=I_s(0)
\left(\frac{\sin\beta}{\beta}\right)^2
\left(\frac{\sin N\alpha}{\sin\alpha}\right)^2}.
$$

At $\alpha=m\pi$, the ratio tends to $N$, so the principal intensity is $N^2$ times the one-slit intensity at that angle. The grating equation is

$$
\boxed{d\sin\theta_m=m\lambda}.
$$

Between neighboring principal maxima the array factor has $N-1$ zeros and $N-2$ secondary maxima. Increasing the illuminated number $N$ makes each principal maximum narrower.

## Circular aperture

Let the aperture radius be $a=D/2$ and put $q=k\sin\theta$. In polar coordinates the far-field amplitude is

$$
U(\theta)\propto
\int_0^a\rho\,d\rho
\int_0^{2\pi}e^{iq\rho\cos\phi}\,d\phi.
$$

Using

$$
\int_0^{2\pi}e^{iz\cos\phi}\,d\phi=2\pi J_0(z)
$$

and

$$
\int_0^a\rho J_0(q\rho)\,d\rho=\frac{aJ_1(qa)}{q},
$$

we obtain

$$
\frac{U(\theta)}{U(0)}=\frac{2J_1(u)}{u},
\qquad
\boxed{u=qa=\frac{\pi D\sin\theta}{\lambda}}.
$$

Thus the Airy pattern is

$$
\boxed{I(\theta)=I(0)
\left[\frac{2J_1(u)}{u}\right]^2}.
$$

The first positive zero of $J_1$ is $u=3.8317$. Hence

$$
\sin\theta_1=\frac{3.8317}{\pi}\frac{\lambda}{D}
=1.2197\frac{\lambda}{D}.
$$

For small angles,

$$
\boxed{\theta_1\simeq1.22\frac{\lambda}{D}}.
$$

## Rayleigh resolution and telescope resolving power

Rayleigh's criterion states that two equal point sources are just resolved when the central maximum of one diffraction pattern lies at the first minimum of the other. For a telescope objective of clear diameter $D$,

$$
\boxed{\theta_{\min}=1.22\frac{\lambda}{D}},
$$

so its angular resolving power is

$$
\boxed{\mathcal R_\theta=\frac1{\theta_{\min}}
=\frac{D}{1.22\lambda}}.
$$

The angle is in radians, and $D$ and $\lambda$ must use the same length unit.

## Resolving power of a grating

At a principal maximum, $\alpha=m\pi$. The first adjacent zero of the $N$-slit factor occurs when

$$
N(\alpha-m\pi)=\pm\pi,
$$

so $\lvert\Delta\alpha\rvert=\pi/N$. Since

$$
\frac{d\alpha}{d\theta}
=\frac{\pi d\cos\theta}{\lambda},
$$

the angular half-width of the principal maximum is

$$
\boxed{\lvert\Delta\theta\rvert_{\rm width}
=\frac{\lambda}{Nd\cos\theta}}.
$$

For two nearby wavelengths in the same order, differentiating $d\sin\theta=m\lambda$ gives the angular separation

$$
d\cos\theta\,\lvert\Delta\theta\rvert_{\lambda}
=m\lvert\Delta\lambda\rvert.
$$

Rayleigh's criterion sets the wavelength separation equal to the angular half-width:

$$
\frac{m\lvert\Delta\lambda\rvert}{d\cos\theta}
=\frac{\lambda}{Nd\cos\theta}.
$$

Cancelling the common factors yields

$$
\boxed{\mathcal R_\lambda
=\frac{\lambda}{\lvert\Delta\lambda\rvert}=mN}.
$$

Here $m$ is the spectral order and $N$ is the number of illuminated grating lines.

## Producing monochromatic light with a grating

A monochromator uses an entrance slit at the focus of a collimator, a plane grating, a focusing lens, and an exit slit. The grating sends each wavelength to the angle fixed by

$$
d\sin\theta=m\lambda.
$$

Rotating the grating places the chosen wavelength and order on the exit slit; other wavelengths focus at different positions and are blocked. A narrower exit slit improves spectral purity but reduces transmitted intensity.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable Fraunhofer-diffraction diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-2/fraunhofer-patterns.png' | relative_url }}" alt="Equation-generated single-slit, double-slit, multiple-slit, and circular-aperture diffraction patterns" loading="lazy">
  </div>
  <figcaption>The slit curves use their exact sinc and array factors; the Airy intensity uses $[2J_1(u)/u]^2$, with its first zero marked.</figcaption>
</figure>

## Solved Problems

### Problem 1: Missing orders in a double-slit pattern

Two slits have width $a$ and centre separation $d=3a$. Which interference maxima are absent?

An interference maximum requires

$$
d\sin\theta=m\lambda,
$$

while a single-slit envelope minimum requires

$$
a\sin\theta=p\lambda,
\qquad p=1,2,3,\ldots
$$

A missing order satisfies both conditions. Dividing them gives

$$
\frac da=\frac mp.
$$

Since $d/a=3$,

$$
\boxed{m=3p}.
$$

Thus the 3rd, 6th, 9th, and every subsequent multiple-of-three interference maximum is absent. The central maximum $m=0$ is not removed.

### Problem 2: Telescope aperture for one-arcsecond resolution

Find the minimum objective diameter that just resolves two sources separated by
$1.00$ arcsecond at $\lambda=550\,\mathrm{nm}$.

Convert the angular separation to radians:

$$
\theta
=1.00\left(\frac{\pi}{180\times3600}\right)
=\frac{\pi}{648000}\,\mathrm{rad}.
$$

Rayleigh's criterion gives

$$
D=\frac{1.22\lambda}{\theta}.
$$

Therefore

$$
\begin{aligned}
D
&=\frac{1.22(550\times10^{-9})(648000)}{\pi}\\
&=1.384\times10^{-1}\,\mathrm m.
\end{aligned}
$$

Hence $\boxed{D\simeq0.138\,\mathrm m=13.8\,\mathrm{cm}}$. A smaller clear aperture has a larger diffraction angle and cannot meet the criterion.

## Descriptive Questions

1. Why is the central single-slit maximum twice as wide as the neighboring maxima?
2. How does the single-slit envelope control a double-slit pattern and create missing orders?
3. How do the number and spacing of illuminated slits affect the principal maxima of a grating?
4. How do telescope resolving power, grating resolving power, and an exit slit enter monochromatic-light selection?

## Numerical Problems

1. Light of wavelength $500\,\mathrm{nm}$ falls normally on a slit of width $0.200\,\mathrm{mm}$. Find the small angle of the first minimum.

   **Answer:** $\boldsymbol{\theta_1\simeq2.50\times10^{-3}\,\mathrm{rad}}$.

2. Two narrow slits have centre separation $0.500\,\mathrm{mm}$ and use $\lambda=600\,\mathrm{nm}$. Find the small-angle separation of adjacent interference maxima.

   **Answer:** $\boldsymbol{\Delta\theta\simeq1.20\times10^{-3}\,\mathrm{rad}}$.

3. A grating has $600$ lines per millimetre. Find the first-order angle for $\lambda=500\,\mathrm{nm}$.

   **Answer:** $\boldsymbol{\theta_1=\sin^{-1}(0.300)\simeq17.46^\circ}$.

4. A grating illuminates $N=25000$ lines in second order at $\lambda=600\,\mathrm{nm}$. Find its resolving power and the just-resolved wavelength interval.

   **Answer:** $\boldsymbol{\mathcal R=50000,\quad\Delta\lambda=0.0120\,\mathrm{nm}}$.

The aperture integrals, array factor, Airy scaling, resolving-power steps, and all worked answers are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-2/mj4-unit-2-checks.mac' | relative_url }}).

## References

1. [Fraunhofer diffraction — Wikipedia](https://en.wikipedia.org/wiki/Fraunhofer_diffraction)
2. [Single-Slit Diffraction — OpenStax, *University Physics Volume 3*](https://openstax.org/books/university-physics-volume-3/pages/4-1-single-slit-diffraction)
3. [Diffraction Gratings — OpenStax, *University Physics Volume 3*](https://openstax.org/books/university-physics-volume-3/pages/4-4-diffraction-gratings)
4. [Circular Apertures and Resolution — OpenStax, *University Physics Volume 3*](https://openstax.org/books/university-physics-volume-3/pages/4-5-circular-apertures-and-resolution)
5. [Max Born and Emil Wolf, *Principles of Optics* — Cambridge University Press](https://www.cambridge.org/core/books/principles-of-optics/9D54D6FF0317074912CB285C3FF7341C)

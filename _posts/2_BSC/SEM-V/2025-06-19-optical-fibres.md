---
title: "Optical Fibres: Numerical Aperture, Index Profiles, and Modes"
summary: "Acceptance cone, numerical aperture, step and graded indices, and single- and multimode fibres."
date: 2025-06-19 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, optical-fibre, numerical-aperture]
permalink: /bsc/sem-v/mj-8/unit-ii/optical-fibres-numerical-aperture-modes/
---

An optical fibre is a cylindrical dielectric waveguide. Its core index $n_1$ exceeds its cladding index $n_2$, so a suitable field is confined by total internal reflection and by the corresponding evanescent cladding field.

## Acceptance angle and numerical aperture

Let the external medium have index $n_0$, and let the largest accepted meridional ray enter at half-angle $\theta_a$ to the fibre axis. Refraction at the flat input face gives

$$n_0\sin\theta_a=n_1\sin r,$$

where $r$ is the ray angle inside the core relative to the axis. At the core-cladding boundary the incidence angle to the normal is $90^\circ-r$. At the limiting accepted ray this equals the critical angle $\theta_c$:

$$\sin\theta_c=\frac{n_2}{n_1}.$$

Therefore

$$\sin r_{\max}=\cos\theta_c
=\sqrt{1-\frac{n_2^2}{n_1^2}}.$$

Substitution at the input face gives

$$n_0\sin\theta_a
=n_1\sqrt{1-\frac{n_2^2}{n_1^2}}
=\sqrt{n_1^2-n_2^2}.$$

The numerical aperture is

$$\boxed{\mathrm{NA}\equiv n_0\sin\theta_a
=\sqrt{n_1^2-n_2^2}}.$$

NA is dimensionless. In air, $n_0\simeq1$, so $\theta_a=\sin^{-1}(\mathrm{NA})$.

Define the exact relative index parameter

$$\boxed{\Delta=\frac{n_1^2-n_2^2}{2n_1^2}}
\simeq\frac{n_1-n_2}{n_1}\qquad(\Delta\ll1).$$

It follows exactly from this definition that

$$\boxed{\mathrm{NA}=n_1\sqrt{2\Delta}}.$$

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-ii/fibre-guidance.png' | relative_url }}" alt="Optical fibre acceptance geometry with step-index and graded-index refractive-index profiles" loading="lazy">
  <figcaption>The acceptance cone follows from Snell's law and the core-cladding critical-angle condition. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-ii/fibre-guidance.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Step-index fibre

For core radius $a$, an ideal step-index profile is

$$\boxed{n(r)=\begin{cases}
n_1,&0\le r<a,\\
n_2,&r\ge a.
\end{cases}}$$

The abrupt boundary produces total internal reflection in the ray picture. In the wave picture, core solutions are oscillatory Bessel functions and cladding solutions decay exponentially; continuity of tangential $\mathbf E$ and $\mathbf H$ selects the allowed propagation constants.

## Graded-index fibre

In a graded-index fibre the core index decreases continuously away from the axis. A common model is

$$\boxed{n^2(r)=n_1^2\left[1-2\Delta\left(\frac ra\right)^g\right],
\quad 0\le r<a},$$

with $n(r)=n_2$ in the cladding. The exact definition above ensures $n^2(a)=n_1^2(1-2\Delta)=n_2^2$, so the ideal profile joins continuously at the core boundary. The exponent $g$ fixes the profile; $g=2$ is approximately parabolic. Rays bend continuously toward the high-index axis. The parabolic profile reduces intermodal transit-time differences because rays travelling farther from the axis also travel through lower-index, higher-speed regions.

## Normalized frequency and guided modes

The fibre normalized frequency is

$$\boxed{V=\frac{2\pi a}{\lambda_0}\mathrm{NA}
=\frac{2\pi a}{\lambda_0}\sqrt{n_1^2-n_2^2}}.$$

$V$ is dimensionless. It combines core size, vacuum wavelength, and index contrast.

A weakly guiding step-index fibre is single mode when

$$\boxed{V<2.405}.$$

The fundamental $\mathrm{LP}_{01}$ mode then propagates, while the next mode is below cutoff. A fibre with $V>2.405$ can support several modes and is called multimode. For large $V$, the approximate number of guided modes including polarization degeneracy is

$$\boxed{M\simeq\frac{V^2}{2}\quad\text{(step index)}}.$$

For an approximately parabolic graded-index fibre,

$$\boxed{M\simeq\frac{V^2}{4}\quad\text{(graded index)}}.$$

Single-mode fibres avoid intermodal dispersion; multimode fibres accept a larger family of spatial field patterns. These classifications concern transverse guided modes, not optical frequency components.

The exact numerical-aperture identity and its weak-guidance expansion are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}); every printed residual is zero.

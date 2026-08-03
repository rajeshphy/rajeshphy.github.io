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

<figure class="diagram-figure diagram-pan" tabindex="0">
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

## Solved Problems

### 1. Acceptance, normalized frequency, and mode classification

A step-index fibre in air has $n_1=1.48$, $n_2=1.46$, core radius $a=4.00\ \mathrm{\mu m}$, and vacuum wavelength $\lambda_0=1.30\ \mathrm{\mu m}$. Find its NA, acceptance half-angle, $V$-number, and large-$V$ mode-count estimate.

**Solution.** The numerical aperture is

$$\mathrm{NA}=\sqrt{n_1^2-n_2^2}
=\sqrt{1.48^2-1.46^2}=0.2425.$$

In air, $n_0\simeq1$, so

$$\theta_a=\sin^{-1}(\mathrm{NA})=14.03^\circ.$$

The normalized frequency is

$$V=\frac{2\pi a}{\lambda_0}\mathrm{NA}
=4.688.$$

Because $V>2.405$, the fibre is multimode. The large-$V$ step-index estimate is

$$M\simeq\frac{V^2}{2}=10.99\approx11.$$

Thus

$$\boxed{\mathrm{NA}=0.2425,\quad \theta_a=14.03^\circ,\quad
V=4.688,\quad M\approx11}.$$

NA, $V$, and $M$ are dimensionless; only the angle carries an angular unit. The positive square root is chosen because NA is an acceptance magnitude. As $n_2\to n_1$, NA and $V$ tend to zero and index guidance disappears.

### 2. Largest core that remains single mode

Design a weakly guiding step-index fibre with $\mathrm{NA}=0.120$ to remain single mode at $\lambda_0=1.55\ \mathrm{\mu m}$. Find the largest allowed core radius and diameter.

**Solution.** Single-mode operation requires $V<2.405$. At the cutoff boundary,

$$2.405=\frac{2\pi a_{\max}}{\lambda_0}\mathrm{NA}.$$

Solving for radius,

$$a_{\max}=\frac{2.405\lambda_0}{2\pi\mathrm{NA}}
=4.944\ \mathrm{\mu m}.$$

Therefore

$$\boxed{a<4.94\ \mathrm{\mu m},\qquad 2a<9.89\ \mathrm{\mu m}}.$$

The inequality, rather than equality, keeps the next mode below cutoff. The factor $\lambda_0/\mathrm{NA}$ has unit length, providing the dimensional check. A smaller NA permits a larger single-mode core, while the limit $\mathrm{NA}\to0$ also removes practical confinement, so the algebraic trend must be interpreted together with guidance.

## Descriptive Questions

1. Derive the numerical-aperture formula from refraction at the input face and total internal reflection at the core-cladding boundary.
2. Contrast step-index and graded-index profiles, explaining why an approximately parabolic profile reduces intermodal delay.
3. What physical information is combined in the normalized frequency $V$, and why is $2.405$ important?
4. Distinguish single-mode and multimode fibres from monochromatic and polychromatic light.

## Numerical Problems

1. Find the exact relative index parameter for $n_1=1.50$ and $n_2=1.47$.
   **Final answer:** $\boxed{\Delta=0.0198=1.98\%}$.
2. A fibre has $\mathrm{NA}=0.200$ and is immersed in water of index $1.33$. Find its acceptance half-angle in the water.
   **Final answer:** $\boxed{\theta_a=8.649^\circ}$.
3. Estimate the number of guided modes in an approximately parabolic graded-index fibre with $V=20.0$.
   **Final answer:** $\boxed{M\simeq100}$.
4. A step-index fibre has $a=4.50\ \mathrm{\mu m}$ and $\mathrm{NA}=0.130$. Find the cutoff wavelength corresponding to $V=2.405$.
   **Final answer:** $\boxed{\lambda_c=1.528\ \mathrm{\mu m}}$.

The numerical-aperture identities are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Optical fiber - Wikipedia](https://en.wikipedia.org/wiki/Optical_fiber)
2. [RP Photonics Encyclopedia, Fibers](https://www.rp-photonics.com/fibers.html)
3. [RP Photonics Encyclopedia, Numerical Aperture](https://www.rp-photonics.com/numerical_aperture.html)
4. [RP Photonics Encyclopedia, V-number](https://www.rp-photonics.com/v_number.html)

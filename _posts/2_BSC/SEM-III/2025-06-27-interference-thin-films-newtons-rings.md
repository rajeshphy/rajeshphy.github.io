---
title: "Interference, Thin Films, and Newton's Rings"
summary: "Coherent superposition, fringe visibility, division of wavefront and amplitude, equal-inclination and equal-thickness fringes, and Newton's rings."
date: 2025-06-27 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, interference, thin-films, haidinger-fringes, fizeau-fringes, newtons-rings]
permalink: /bsc/sem-iii/interference-thin-films-newtons-rings/
hidden: true
---

## Two-beam interference and visibility

At a point where two coherent fields have the same polarization,

$$
E_1=E_{01}\cos\omega t,
\qquad
E_2=E_{02}\cos(\omega t+\delta).
$$

Since intensity is proportional to the time average of the squared field,

$$
\left\langle(E_1+E_2)^2\right\rangle
=\frac{E_{01}^2}{2}+\frac{E_{02}^2}{2}
+E_{01}E_{02}\cos\delta.
$$

Writing the separate intensities as $I_1$ and $I_2$ gives

$$
\boxed{I=I_1+I_2+2\sqrt{I_1I_2}\cos\delta}.
$$

Therefore

$$
I_{\max}=(\sqrt{I_1}+\sqrt{I_2})^2,
\qquad
I_{\min}=(\sqrt{I_1}-\sqrt{I_2})^2,
$$

and the fringe visibility is

$$
\boxed{\mathcal V=\frac{I_{\max}-I_{\min}}{I_{\max}+I_{\min}}
=\frac{2\sqrt{I_1I_2}}{I_1+I_2}}.
$$

Visibility reaches one only for equal intensities and complete mutual coherence. Division of wavefront makes coherent secondary sources from different portions of one wavefront, as in a two-slit arrangement. Division of amplitude splits one beam and later recombines its parts, as in thin films and interferometers.

## Thin-film phase and reflection convention

Consider a film of refractive index $\mu$, thickness $t$, and internal ray angle $r$. The normal component of the wave vector in the film is

$$
k_z=\frac{2\pi\mu}{\lambda}\cos r.
$$

A down-and-back traversal therefore adds propagation phase $2k_zt$, equivalent to the optical-path difference

$$
\boxed{\Delta_g=2\mu t\cos r}.
$$

A reflection from a lower to a higher refractive index changes the field phase by $\pi$; reflection from higher to lower does not. Thus, when exactly one of the two reflected rays undergoes phase reversal,

$$
\delta=\frac{2\pi}{\lambda}(2\mu t\cos r)+\pi.
$$

Reflected maxima require $\delta=2q\pi$, and reflected minima require $\delta=(2q+1)\pi$. Re-indexing with $m=0,1,2,\ldots$ gives

$$
\boxed{2\mu t\cos r=m\lambda
\quad\text{(reflected dark)}},
$$

$$
\boxed{2\mu t\cos r=\left(m+\frac12\right)\lambda
\quad\text{(reflected bright)}}.
$$

If there are zero or two reflection phase reversals, these bright and dark conditions interchange. Transmitted maxima and minima are complementary for a non-absorbing film.

## Haidinger and Fizeau fringes

For a parallel film, $t$ is fixed. A given interference order therefore selects a fixed $r$. The resulting circular **Haidinger fringes** are fringes of equal inclination and are localized at infinity; a lens brings rays of equal inclination together in its focal plane.

For a wedge of small angle $\alpha$, the thickness at distance $x$ from the contact is

$$
t(x)=x\tan\alpha\simeq x\alpha.
$$

At nearly normal incidence and with one phase reversal, the $m$th reflected dark fringe obeys

$$
2\mu\alpha x_m=m\lambda.
$$

Hence neighboring fringes have constant spacing

$$
\boxed{\beta=x_{m+1}-x_m=\frac{\lambda}{2\mu\alpha}}.
$$

These straight, parallel **Fizeau fringes** are fringes of equal thickness and are localized near the film.

## Newton's rings and measurements

A plano-convex lens of radius of curvature $R$ rests on a plane plate. At radial distance $r$ from the contact, geometry gives

$$
R^2=(R-t)^2+r^2
=R^2-2Rt+t^2+r^2,
$$

so

$$
r^2=2Rt-t^2.
$$

Because $t\ll R$, the $t^2$ term is negligible and

$$
\boxed{t\simeq\frac{r^2}{2R}}.
$$

The film between lens and plate has one reflected phase reversal. Thus the contact is dark in reflected light. Combining $2\mu t=m\lambda$ with the geometrical thickness gives the dark-ring radii and diameters:

$$
\boxed{r_m^2=\frac{m\lambda R}{\mu}},
\qquad
\boxed{D_m^2=\frac{4m\lambda R}{\mu}}.
$$

For bright reflected rings,

$$
\boxed{r_{m,{\rm bright}}^2
=\frac{(m+1/2)\lambda R}{\mu}}.
$$

For an air film, $\mu=1$. Subtracting the squared diameters of orders $m$ and $m+p$ removes the uncertain position of contact:

$$
D_{m+p}^2-D_m^2=4p\lambda R.
$$

Therefore the wavelength is

$$
\boxed{\lambda=
\frac{D_{m+p}^2-D_m^2}{4pR}}.
$$

If a liquid fills the gap, then $D_{m,\ell}^2=4m\lambda R/\mu$. Comparing the same order in air and liquid gives

$$
\boxed{\mu=\frac{D_{m,{\rm air}}^2}{D_{m,\ell}^2}}.
$$

More robustly, using two orders in each medium,

$$
\boxed{\mu=
\frac{D_{m+p,{\rm air}}^2-D_{m,{\rm air}}^2}
{D_{m+p,\ell}^2-D_{m,\ell}^2}}.
$$

Every diameter must be measured in the same length unit; then the ratios are dimensionless and the wavelength formula returns the unit used for $D^2/R$.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable thin-film and Newton's-rings diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-2/thin-film-newtons-rings.png' | relative_url }}" alt="Thin-film reflected rays and equation-generated Newton's rings with radii proportional to square root of order" loading="lazy">
  </div>
  <figcaption>The film phase convention is shown explicitly; the ring radii are generated from $r_m=\sqrt{m\lambda R/\mu}$, so the decreasing radial spacing is physical.</figcaption>
</figure>

## Solved Problems

### Problem 1: Visibility for unequal beams

Two coherent beams have intensities $I_1=9I_0$ and $I_2=4I_0$. Find the extreme intensities and fringe visibility.

The interference extremes are

$$
I_{\max}=(\sqrt{I_1}+\sqrt{I_2})^2
=(3+2)^2I_0=25I_0,
$$

$$
I_{\min}=(\sqrt{I_1}-\sqrt{I_2})^2
=(3-2)^2I_0=I_0.
$$

Therefore

$$
\mathcal V=\frac{I_{\max}-I_{\min}}{I_{\max}+I_{\min}}
=\frac{25-1}{25+1}
=\boxed{\frac{12}{13}}.
$$

The check $0<12/13<1$ is consistent with unequal but coherent beams.

### Problem 2: Wavelength from Newton's rings

For an air film with lens curvature radius $R=1.00\,\mathrm m$, the diameters of the 10th and 20th dark rings are $3.00\,\mathrm{mm}$ and $5.00\,\mathrm{mm}$. Find the wavelength.

For orders separated by $p=10$,

$$
\lambda=\frac{D_{m+p}^2-D_m^2}{4pR}.
$$

Using SI units,

$$
\begin{aligned}
\lambda
&=\frac{(5.00\times10^{-3})^2-(3.00\times10^{-3})^2}
{4(10)(1.00)}\\
&=\frac{16.0\times10^{-6}}{40}
=4.00\times10^{-7}\,\mathrm m.
\end{aligned}
$$

Thus $\boxed{\lambda=400\,\mathrm{nm}}$. Substitution gives
$D_{20}^2-D_{10}^2=4(10)\lambda R=16.0\,\mathrm{mm^2}$, matching the data.

## Descriptive Questions

1. How do division of wavefront and division of amplitude produce coherent beams, and what is one example of each?
2. Why does reflection from a lower-index medium to a higher-index medium reverse the electric-field phase?
3. How do Haidinger fringes differ from Fizeau fringes in geometry and localization?
4. Why is the point of contact dark in reflected Newton's rings, and why is $D_m^2$ linear in order $m$?

## Numerical Problems

1. A wedge-shaped air film has angle $\alpha=0.50\,\mathrm{mrad}$ and is illuminated normally with $\lambda=600\,\mathrm{nm}$. Since $\beta=\lambda/(2\alpha)$,

   **Answer:** $\boldsymbol{\beta=0.600\,\mathrm{mm}}$.

2. A film of index $\mu=1.50$ has one reflection phase reversal. Find its least non-zero thickness for a reflected maximum at $\lambda=600\,\mathrm{nm}$, using $2\mu t=\lambda/2$.

   **Answer:** $\boldsymbol{t=100\,\mathrm{nm}}$.

3. The same Newton-ring order has diameter $4.20\,\mathrm{mm}$ in air and $3.50\,\mathrm{mm}$ after a liquid is introduced. Use $\mu=D_{\mathrm{air}}^2/D_{\ell}^2$.

   **Answer:** $\boldsymbol{\mu=1.44}$.

4. An air-film Newton ring has diameter $4.00\,\mathrm{mm}$ for $\lambda=500\,\mathrm{nm}$ and $R=1.00\,\mathrm m$. Find its dark-ring order from $D_m^2=4m\lambda R$.

   **Answer:** $\boldsymbol{m=8}$.

The intensity, visibility, film phase, wedge spacing, ring-diameter identities, and all worked answers are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-2/mj4-unit-2-checks.mac' | relative_url }}).

## References

1. [Thin-film interference — Wikipedia](https://en.wikipedia.org/wiki/Thin-film_interference)
2. [Interference in Thin Films — OpenStax, *University Physics Volume 3*](https://openstax.org/books/university-physics-volume-3/pages/3-4-interference-in-thin-films)
3. [Ajoy Ghatak, *Optics*, 8th ed. — McGraw Hill](https://www.mheducation.co.in/optics-9789355328595-india)

---
title: "Ripples and Gravity Waves"
date: 2025-05-14 09:00:00 +0530
categories:
  - bsc-i
tags: [ripples, gravity-waves, surface-waves, dispersion]
permalink: /bsc/sem-i/ripples-and-gravity-waves/
---

Consider a small wave on the free surface of an incompressible, inviscid liquid of density $\rho$. Take the undisturbed surface as $z=0$, with the liquid in $z<0$. If the depth is $h$, the deep-water condition is $kh\gg1$.

Write the surface displacement as the real part of

$$
\zeta(x,t)=\zeta_0e^{i(kx-\omega t)},
$$

where $k=2\pi/\lambda$.

## Velocity potential

For irrotational flow, the fluid velocity is

$$
\mathbf v=\boldsymbol\nabla\phi.
$$

Incompressibility requires

$$
\boldsymbol\nabla\cdot\mathbf v=\nabla^2\phi=0.
$$

The solution with the same $x,t$ dependence as the surface wave and which vanishes as $z\to-\infty$ is

$$
\phi(x,z,t)=\phi_0e^{kz}e^{i(kx-\omega t)}.
$$

Because $k>0$ and $z<0$, the factor $e^{kz}$ shows that the fluid motion decreases exponentially with depth.

## Boundary conditions at the surface

The surface moves with the liquid. To first order, the vertical velocity of the surface equals that of the fluid at $z=0$:

$$
\frac{\partial\zeta}{\partial t}
=\left.\frac{\partial\phi}{\partial z}\right|_{z=0}.
$$

Substitution gives

$$
-i\omega\zeta_0=k\phi_0,
\qquad
\boxed{\phi_0=-\frac{i\omega}{k}\zeta_0}.
$$

The linearized unsteady Bernoulli equation gives the liquid pressure at the displaced surface:

$$
p-p_0=-\rho\left(
\frac{\partial\phi}{\partial t}+g\zeta
\right).
$$

For the weakly curved graph $z=\zeta(x,t)$, the surface-tension pressure is

$$
p-p_0=-\gamma\frac{\partial^2\zeta}{\partial x^2}
=\gamma k^2\zeta.
$$

This sign is physically consistent: at a crest, $\partial^2\zeta/\partial x^2<0$, so the liquid pressure exceeds the air pressure.

Equating the two pressure expressions at $z=0$ gives

$$
-\rho(-i\omega\phi_0+g\zeta_0)
=\gamma k^2\zeta_0.
$$

Since

$$
-i\omega\phi_0
=-\frac{\omega^2}{k}\zeta_0,
$$

the nonzero amplitude cancels and

$$
\frac{\rho\omega^2}{k}-\rho g=\gamma k^2.
$$

Thus the deep-water gravity-capillary dispersion relation is

$$
\boxed{\omega^2=gk+\frac{\gamma}{\rho}k^3}.
$$

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable surface-wave diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-1/surface-wave-dispersion.png' | relative_url }}" alt="Depth dependence and phase speed of deep-water gravity-capillary waves" loading="lazy">
</div>

## Gravity waves and ripples

The phase speed $c=\omega/k$ satisfies

$$
\boxed{
c^2=\frac{g}{k}+\frac{\gamma k}{\rho}
=\frac{g\lambda}{2\pi}
+\frac{2\pi\gamma}{\rho\lambda}
}.
$$

For $k\ll k_c$ while still satisfying $kh\gg1$, the gravity term dominates:

$$
\omega^2\simeq gk,
\qquad
\boxed{c_{\rm grav}\simeq\sqrt{\frac{g}{k}}
=\sqrt{\frac{g\lambda}{2\pi}}}.
$$

These are **gravity waves**; gravity is the principal restoring agency.

For $k\gg k_c$, the surface-tension term dominates:

$$
\omega^2\simeq\frac{\gamma}{\rho}k^3,
\qquad
\boxed{c_{\rm cap}\simeq\sqrt{\frac{\gamma k}{\rho}}
=\sqrt{\frac{2\pi\gamma}{\rho\lambda}}}.
$$

These capillary waves are **ripples**; surface tension is the principal restoring agency.

The two contributions to $c^2$ are equal at

$$
\frac{g}{k_c}=\frac{\gamma k_c}{\rho}.
$$

Therefore

$$
\boxed{k_c=\sqrt{\frac{\rho g}{\gamma}}},
\qquad
\boxed{\lambda_c=2\pi\sqrt{\frac{\gamma}{\rho g}}}.
$$

This is also the minimum of the phase-speed curve. Differentiating $c^2$ with respect to $k$ gives

$$
\frac{d(c^2)}{dk}
=-\frac{g}{k^2}+\frac{\gamma}{\rho}=0
\quad\text{at}\quad k=k_c.
$$

At the minimum,

$$
\boxed{c_{\min}=\left(\frac{4g\gamma}{\rho}\right)^{1/4}}.
$$

The editable wave and phase-speed diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/surface-wave-dispersion.tex' | relative_url }}).

## Finite depth and group velocity

When the liquid has finite depth $h$, the bottom condition is no normal flow at $z=-h$:

$$
\left.\frac{\partial\phi}{\partial z}\right|_{z=-h}=0.
$$

A potential satisfying this condition is

$$
\phi=\Phi_0
\frac{\cosh[k(z+h)]}{\cosh(kh)}
e^{i(kx-\omega t)}.
$$

At the surface, $\partial\phi/\partial z=k\tanh(kh)\phi$. Repeating the kinematic and dynamic boundary-condition calculation gives

$$
\boxed{
\omega^2=\left(gk+\frac{\gamma}{\rho}k^3\right)\tanh(kh)
}.
$$

For $kh\gg1$, $\tanh(kh)\to1$ and the deep-water result is recovered. For $kh\ll1$,

$$
\omega^2\simeq ghk^2+\frac{\gamma h}{\rho}k^4.
$$

If gravity dominates in shallow water, $\omega\simeq k\sqrt{gh}$ and

$$
\boxed{c\simeq\sqrt{gh}},
$$

which is independent of wavelength to this order.

The group velocity is $c_g=d\omega/dk$. In deep water,

$$
\boxed{
c_g=\frac{g+3\gamma k^2/\rho}{2\omega}
},
$$

or

$$
\frac{c_g}{c}
=\frac{g+3\gamma k^2/\rho}
{2(g+\gamma k^2/\rho)}.
$$

Consequently $c_g=c/2$ for gravity-dominated deep-water waves, $c_g=3c/2$ for capillary waves, and $c_g=c$ at $k=k_c$.

## Solved Problems

### 1. Gravity--capillary crossover for water

For water, take $\rho=1000\ \mathrm{kg\,m^{-3}}$, $\gamma=0.0720\ \mathrm{N\,m^{-1}}$ and $g=9.81\ \mathrm{m\,s^{-2}}$. Find the crossover wave number and wavelength, the minimum phase speed and the crossover frequency.

The equality of the two contributions gives

$$
k_c=\sqrt{\frac{\rho g}{\gamma}}
=\sqrt{\frac{(1000)(9.81)}{0.0720}}
=3.691\times10^2\ \mathrm{m^{-1}}.
$$

Hence

$$
\lambda_c=\frac{2\pi}{k_c}
=1.702\times10^{-2}\ \mathrm{m}
=1.702\ \mathrm{cm}.
$$

The minimum speed is

$$
c_{\min}=\left(\frac{4g\gamma}{\rho}\right)^{1/4}
=0.2306\ \mathrm{m\,s^{-1}}.
$$

At crossover the gravity and capillary terms are equal, so

$$
\omega_c^2=2gk_c,
\qquad
\omega_c=85.10\ \mathrm{rad\,s^{-1}},
$$

and

$$
f_c=\frac{\omega_c}{2\pi}=13.54\ \mathrm{Hz}.
$$

Thus

$$
\boxed{
k_c=369.1\ \mathrm{m^{-1}},\quad
\lambda_c=1.702\ \mathrm{cm},\quad
c_{\min}=0.2306\ \mathrm{m\,s^{-1}},\quad
f_c=13.54\ \mathrm{Hz}}.
$$

The dimensional check $\rho g/\gamma\sim\mathrm{m^{-2}}$ confirms that $k_c$ has units $\mathrm{m^{-1}}$, and $c_g=c$ at this minimum.

### 2. A finite-depth gravity wave

A small-amplitude gravity wave has wavelength $\lambda=20.0\ \mathrm{m}$ in water of depth $h=1.00\ \mathrm{m}$. Surface tension is negligible. Find $\omega$, the phase speed and the group speed, and compare the phase speed with the shallow-water value.

First,

$$
k=\frac{2\pi}{\lambda}=0.3142\ \mathrm{m^{-1}},
\qquad
kh=0.3142.
$$

The finite-depth dispersion relation gives

$$
\omega=\sqrt{gk\tanh(kh)}
=0.9683\ \mathrm{rad\,s^{-1}}.
$$

Therefore

$$
c=\frac{\omega}{k}=3.082\ \mathrm{m\,s^{-1}}.
$$

For a finite-depth pure gravity wave,

$$
c_g=\frac{c}{2}
\left[1+\frac{2kh}{\sinh(2kh)}\right]
=2.985\ \mathrm{m\,s^{-1}}.
$$

The shallow-water estimate is

$$
\sqrt{gh}=3.132\ \mathrm{m\,s^{-1}}.
$$

Thus

$$
\boxed{
\omega=0.9683\ \mathrm{rad\,s^{-1}},\quad
c=3.082\ \mathrm{m\,s^{-1}},\quad
c_g=2.985\ \mathrm{m\,s^{-1}}}.
$$

Because $kh$ is small but not zero, $c$ lies close to, but below, $\sqrt{gh}$; the inequality $c_g<c$ shows the remaining weak dispersion.

## Descriptive Questions

1. Starting from a velocity potential, derive the deep-water gravity--capillary dispersion relation and state the linearizing assumptions.
2. Explain physically why fluid motion associated with a deep-water surface wave decays exponentially with depth.
3. Derive the finite-depth factor $\tanh(kh)$ from the no-penetration condition at the bottom.
4. Compare phase and group velocities in the gravity-dominated, crossover and capillary-dominated regimes.

## Numerical Problems

1. Find the phase speed of a deep-water gravity wave of wavelength $4.00\ \mathrm{m}$.

   **Final answer:** $c=2.499\ \mathrm{m\,s^{-1}}$.

2. A pure capillary ripple on water has $\lambda=4.00\ \mathrm{mm}$, $\gamma=0.0730\ \mathrm{N\,m^{-1}}$ and $\rho=1000\ \mathrm{kg\,m^{-3}}$. Find its phase speed.

   **Final answer:** $c=0.3386\ \mathrm{m\,s^{-1}}$.

3. Using both gravity and surface tension, find the deep-water phase speed for $\lambda=2.00\ \mathrm{cm}$ when $\gamma=0.0720\ \mathrm{N\,m^{-1}}$ and $\rho=1000\ \mathrm{kg\,m^{-3}}$.

   **Final answer:** $c=0.2320\ \mathrm{m\,s^{-1}}$.

4. A deep-water wave is in the pure capillary regime and has phase speed $0.400\ \mathrm{m\,s^{-1}}$. Find its group speed.

   **Final answer:** $c_g=0.600\ \mathrm{m\,s^{-1}}$.

5. For a deep-water surface wave of wavelength $0.120\ \mathrm{m}$, find the depth at which the velocity amplitude has fallen to $1/e$ of its surface value.

   **Final answer:** $z=-1/k=-1.910\times10^{-2}\ \mathrm{m}$, a depth of $19.1\ \mathrm{mm}$.

6. Neglecting surface tension, find the speed of a long shallow-water wave where $h=2.00\ \mathrm{m}$.

   **Final answer:** $c=4.429\ \mathrm{m\,s^{-1}}$.

The boundary-condition algebra, finite-depth and group-speed formulas, and all numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/surface-waves.mac' | relative_url }}).

## References

1. [Capillary wave -- Wikipedia](https://en.wikipedia.org/wiki/Capillary_wave).
2. [R. P. Feynman, R. B. Leighton and M. Sands, *The Feynman Lectures on Physics*, Vol. I, Chapter 51: Waves](https://www.feynmanlectures.caltech.edu/I_51.html).
3. [MIT, *Lecture 8: Water Waves*](https://thales.mit.edu/bush/wp-content/uploads/2024/03/Lec-8-Waves.pdf).

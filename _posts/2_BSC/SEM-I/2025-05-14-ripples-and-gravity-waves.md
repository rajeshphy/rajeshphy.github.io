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

![Depth dependence and phase speed of deep-water gravity-capillary waves]({{ '/assets/images/bsc/sem-i/unit-1/surface-wave-dispersion.png' | relative_url }})

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

The editable wave and phase-speed diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/surface-wave-dispersion.tex' | relative_url }}). The boundary-condition algebra, limiting speeds and crossover are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/surface-waves.mac' | relative_url }}); every displayed residual is zero.

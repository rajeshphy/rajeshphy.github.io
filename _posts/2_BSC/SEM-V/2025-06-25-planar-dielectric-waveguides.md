---
title: "Planar Dielectric Waveguides and Guided-Wave Power"
summary: "Total-reflection phase, slab continuity conditions, eigenvalue equations, velocities, field energy, and power."
date: 2025-06-25 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, planar-waveguide, guided-waves]
permalink: /bsc/sem-v/mj-8/unit-ii/planar-dielectric-waveguides/
---

A symmetric planar dielectric guide has a core of refractive index $n_1$ in $\lvert x\rvert<a$, cladding of index $n_2<n_1$ in $\lvert x\rvert>a$, and is uniform along $y$ and the propagation direction $z$. A guided field must oscillate in the core and decay in the cladding.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-ii/slab-waveguide.png' | relative_url }}" alt="Planar dielectric waveguide and equation-generated even TE mode profile" loading="lazy">
  <figcaption>A guided mode is a standing transverse field joined continuously to evanescent cladding tails. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-ii/slab-waveguide.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Total internal reflection and its phase

Consider a core ray incident on a core-cladding interface at angle $\theta$ to the normal. Snell's law is

$$n_1\sin\theta=n_2\sin\theta_t.$$

When $\theta>\theta_c$, where

$$\boxed{\sin\theta_c=\frac{n_2}{n_1}},$$

$\sin\theta_t>1$ and the cladding field is evanescent. Define

$$\gamma=\sqrt{\sin^2\theta-\left(\frac{n_2}{n_1}\right)^2}.$$

The Fresnel reflection coefficients have unit magnitude but a nonzero phase. They may be written

$$r_s=\exp(i\phi_s),
\qquad
\boxed{\phi_s=-2\tan^{-1}\!\left(\frac{\gamma}{\cos\theta}\right)},$$

$$r_p=\exp(i\phi_p),
\qquad
\boxed{\phi_p=-2\tan^{-1}\!\left(\frac{n_1^2\gamma}{n_2^2\cos\theta}\right)}.$$

The reflected power is unity, but the phase shift is essential in the guided-mode condition.

## Wave equation across the slab

For a TE mode choose

$$\mathbf E=\hat{\mathbf y}\,\psi(x)e^{i(\beta z-\omega t)},
\qquad k_0=\frac{\omega}{c}.$$

The Helmholtz equation becomes

$$\boxed{\frac{d^2\psi}{dx^2}+[n^2(x)k_0^2-\beta^2]\psi=0}.$$

Define the real positive transverse constants

$$\boxed{h=\sqrt{n_1^2k_0^2-\beta^2}},
\qquad
\boxed{q=\sqrt{\beta^2-n_2^2k_0^2}}.$$

Both are real only when

$$\boxed{n_2k_0<\beta<n_1k_0}.$$

This inequality is the guided-wave condition. It is often written $n_2<n_{\mathrm{eff}}<n_1$, where

$$\boxed{n_{\mathrm{eff}}=\frac{\beta}{k_0}}.$$

## Continuity and TE eigenvalue equations

For the convention $e^{i(\beta z-\omega t)}$, Faraday's law gives

$$H_z=\frac{1}{i\omega\mu}\frac{dE_y}{dx}
=-\frac{i}{\omega\mu}\frac{dE_y}{dx}.$$

For equal magnetic permeabilities, tangential $E_y$ and $H_z$ are continuous. Hence both $\psi$ and $d\psi/dx$ are continuous at $x=\pm a$; the common factor $-i/(\omega\mu)$ does not alter the eigenvalue equation.

For an even mode,

$$\psi(x)=\begin{cases}
A\cos(hx),&\lvert x\rvert\le a,\\
A\cos(ha)e^{-q(\lvert x\rvert-a)},&\lvert x\rvert\ge a.
\end{cases}$$

Derivative continuity at $x=a$ gives

$$-Ah\sin(ha)=-qA\cos(ha),$$

so

$$\boxed{h\tan(ha)=q\qquad\text{(even TE)}}.$$

For an odd core field $A\sin(hx)$, the same boundary condition gives

$$\boxed{-h\cot(ha)=q\qquad\text{(odd TE)}}.$$

These transcendental eigenvalue equations select discrete $\beta$ values at a fixed frequency.

For TM modes it is convenient to use $H_y=\psi(x)e^{i(\beta z-\omega t)}$. Tangential $H_y$ and tangential $E_z\propto(1/\epsilon)dH_y/dx$ are continuous. Therefore

$$\boxed{h\tan(ha)=\frac{\epsilon_1}{\epsilon_2}q
\qquad\text{(even TM)}},$$

$$\boxed{-h\cot(ha)=\frac{\epsilon_1}{\epsilon_2}q
\qquad\text{(odd TM)}}.$$

With normalized variables

$$u=ha,\qquad w=qa,$$

the definitions give

$$\boxed{u^2+w^2=V^2},
\qquad
\boxed{V=k_0a\sqrt{n_1^2-n_2^2}}.$$

$V$ is dimensionless and controls how many slab modes can exist.

## Phase and group velocities

The longitudinal phase is $\beta z-\omega t$. Therefore

$$\boxed{v_p=\frac{\omega}{\beta}=\frac{c}{n_{\mathrm{eff}}}}.$$

The envelope of a narrow frequency band travels at

$$\boxed{v_g=\frac{d\omega}{d\beta}=\left(\frac{d\beta}{d\omega}\right)^{-1}}.$$

Both material dispersion $n_j(\omega)$ and waveguide dispersion through the eigenvalue equation contribute to $d\beta/d\omega$. In the simpler nondispersive relation $\beta^2+\kappa^2=n^2\omega^2/c^2$ with fixed transverse eigenvalue $\kappa$,

$$\boxed{v_pv_g=\left(\frac cn\right)^2}.$$

## Field energy and transmitted power

For peak phasors in a lossless, nondispersive guide, the cycle-averaged energy density is

$$\boxed{\overline u=\frac14\left(\epsilon\lvert\mathbf E\rvert^2+\mu\lvert\mathbf H\rvert^2\right)}
\quad[\mathrm{J\,m^{-3}}].$$

The time-averaged longitudinal power per unit width in $y$ is

$$\boxed{P'=\frac12\Re\int_{-\infty}^{\infty}
(\mathbf E\times\mathbf H^{\ast})\cdot\hat{\mathbf z}\,dx}
\quad[\mathrm{W\,m^{-1}}].$$

For the TE field above, Faraday's law gives $H_x=-\beta E_y/(\omega\mu)$. Consequently,

$$\boxed{P'=\frac{\beta}{2\omega\mu}
\int_{-\infty}^{\infty}\lvert\psi(x)\rvert^2dx}.$$

The energy stored per unit guide length and per unit width is

$$U'=\int_{-\infty}^{\infty}\overline u\,dx
\quad[\mathrm{J\,m^{-2}}].$$

Their ratio has units of speed. For a lossless guide it equals the group velocity:

$$\boxed{\frac{P'}{U'}=v_g}.$$

The normalized-frequency identity and the fixed-$\kappa$ phase-group velocity product are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}); every printed residual is zero.

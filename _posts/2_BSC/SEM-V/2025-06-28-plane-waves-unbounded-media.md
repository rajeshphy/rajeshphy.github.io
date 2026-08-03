---
title: "Plane Electromagnetic Waves in Vacuum and Dielectrics"
summary: "Plane-wave propagation, transversality, refractive index, dielectric constant, and wave impedance."
date: 2025-06-28 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, plane-waves]
permalink: /bsc/sem-v/mj-8/unit-ii/plane-waves-vacuum-dielectrics/
---

An unbounded medium has no interface to select a reflected wave or a discrete transverse mode. In a homogeneous, linear, isotropic, source-free dielectric,

$$\rho_{\mathrm f}=0,\qquad \mathbf J=0,\qquad
\mathbf D=\epsilon\mathbf E,\qquad \mathbf B=\mu\mathbf H.$$

Maxwell's equations give

$$\nabla^2\mathbf E-\mu\epsilon\frac{\partial^2\mathbf E}{\partial t^2}=0,
\qquad
\nabla^2\mathbf H-\mu\epsilon\frac{\partial^2\mathbf H}{\partial t^2}=0.$$

## Harmonic plane-wave solution

Use the real part of the phasor

$$\mathbf E(\mathbf r,t)=\Re\!\left\{\mathbf E_0e^{i(\mathbf k\cdot\mathbf r-\omega t)}\right\}.$$

Every spatial derivative contributes $i\mathbf k$ and every time derivative contributes $-i\omega$. The wave equation becomes

$$(-k^2+\mu\epsilon\omega^2)\mathbf E_0=\mathbf0,$$

so a nonzero field requires

$$\boxed{k=\omega\sqrt{\mu\epsilon}},
\qquad
\boxed{v=\frac{\omega}{k}=\frac1{\sqrt{\mu\epsilon}}}.$$

$k$ is in $\mathrm{rad\,m^{-1}}$, $\omega$ in $\mathrm{rad\,s^{-1}}$, and $v$ in $\mathrm{m\,s^{-1}}$. Constant phase means $\mathbf k\cdot\mathbf r-\omega t=\text{constant}$; differentiating it along $\hat{\mathbf k}$ confirms that the phase advances at $v=\omega/k$.

## Transverse character from Gauss's laws

In a homogeneous medium, $\nabla\cdot\mathbf D=0$ implies

$$i\epsilon\mathbf k\cdot\mathbf E_0=0
\quad\Longrightarrow\quad
\boxed{\mathbf k\cdot\mathbf E_0=0}.$$

Similarly, $\nabla\cdot\mathbf B=0$ gives

$$\boxed{\mathbf k\cdot\mathbf H_0=0}.$$

The curl equations give the remaining geometry:

$$\boxed{\mathbf k\times\mathbf E_0=\omega\mu\mathbf H_0},
\qquad
\boxed{\mathbf k\times\mathbf H_0=-\omega\epsilon\mathbf E_0}.$$

Thus $\mathbf E_0$, $\mathbf H_0$, and $\mathbf k$ form a mutually perpendicular right-handed triad. In particular,

$$\mathbf H_0=\frac1\eta\hat{\mathbf k}\times\mathbf E_0,
\qquad
\boxed{\eta=\frac{E_0}{H_0}=\sqrt{\frac\mu\epsilon}}.$$

The intrinsic wave impedance $\eta$ has unit ohm. For propagation in $+z$ with $\mathbf E$ along $+x$, $\mathbf H$ points along $+y$, since $\hat{\mathbf x}\times\hat{\mathbf y}=\hat{\mathbf z}$.

## Vacuum and isotropic dielectric

In vacuum,

$$c=\frac1{\sqrt{\mu_0\epsilon_0}},
\qquad
\eta_0=\sqrt{\frac{\mu_0}{\epsilon_0}}\approx376.73\ \Omega.$$

Write the material constants as

$$\epsilon=\epsilon_r\epsilon_0,
\qquad
\mu=\mu_r\mu_0.$$

The refractive index is the ratio of vacuum phase speed to material phase speed:

$$\boxed{n=\frac cv=\sqrt{\epsilon_r\mu_r}}.$$

For most transparent optical dielectrics $\mu_r\simeq1$, so

$$\boxed{n\simeq\sqrt{\epsilon_r}},
\qquad
\boxed{\epsilon_r\simeq n^2}.$$

This relation uses the dielectric response at the wave frequency; a low-frequency static dielectric constant need not equal the optical value. The wavelength in the medium is

$$\lambda=\frac{2\pi}{k}=\frac{v}{f}=\frac{\lambda_0}{n},$$

while the frequency $f=\omega/(2\pi)$ is fixed by the source and does not change on entering a stationary medium.

The material impedance can also be written

$$\boxed{\eta=\eta_0\sqrt{\frac{\mu_r}{\epsilon_r}}}.$$

For a nonmagnetic dielectric, $\eta\simeq\eta_0/n$: a larger refractive index means a smaller ratio $E/H$.

## Energy transported by a harmonic plane wave

For peak phasors, the cycle-averaged Poynting vector is

$$\langle\mathbf S\rangle
=\frac12\Re(\mathbf E_0\times\mathbf H_0^{\ast})
=\boxed{\frac{\lvert E_0\rvert^2}{2\eta}\hat{\mathbf k}}.$$

It has unit $\mathrm{W\,m^{-2}}$. In a lossless dielectric, $\mathbf E_0$ and $\mathbf H_0$ are in phase, so the average power flows in the phase-propagation direction.

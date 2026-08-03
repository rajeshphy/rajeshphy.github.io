---
title: "Plane Electromagnetic Waves in Vacuum and Dielectrics"
summary: "Plane-wave propagation, transversality, refractive index, dielectric constant, and wave impedance."
date: 2025-06-15 09:00:00 +0530
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

## Solved Problems

### 1. Reconstructing a plane wave from its frequency and electric amplitude

A $100\ \mathrm{MHz}$ plane wave travels along $+z$ through a nonmagnetic dielectric with $\epsilon_r=4.00$. Its peak electric field is $100\ \mathrm{V\,m^{-1}}$ along $+x$. Find $v$, $\lambda$, $k$, $\mathbf H_0$, and $\langle\mathbf S\rangle$.

**Solution.** The propagation speed and wavelength are

$$v=\frac{c}{\sqrt{\epsilon_r}}=1.499\times10^8\ \mathrm{m\,s^{-1}},$$

$$\lambda=\frac vf=1.499\ \mathrm m,
\qquad
k=\frac{2\pi}{\lambda}=4.192\ \mathrm{rad\,m^{-1}}.$$

The impedance is $\eta=\eta_0/2=188.37\ \Omega$. To make $\mathbf E\times\mathbf H$ point along $+z$, $\mathbf H$ must point along $+y$:

$$\mathbf H_0=\frac{100}{188.37}\hat{\mathbf y}
=0.5309\hat{\mathbf y}\ \mathrm{A\,m^{-1}}.$$

The mean power flux is

$$\langle\mathbf S\rangle
=\frac{E_0^2}{2\eta}\hat{\mathbf z}
=26.54\hat{\mathbf z}\ \mathrm{W\,m^{-2}}.$$

Thus the phase convention $\cos(kz-\omega t)$ and the vector triad give

$$\boxed{v=1.499\times10^8\ \mathrm{m\,s^{-1}},\quad
\lambda=1.499\ \mathrm m,\quad k=4.192\ \mathrm{rad\,m^{-1}},\quad
\mathbf H_0=0.5309\hat{\mathbf y}\ \mathrm{A\,m^{-1}}}.$$

$k\lambda=2\pi$ is dimensionless, and $E_0/H_0$ has unit ohm. If $\epsilon_r\to1$, both $v$ and $\eta$ approach their vacuum values.

### 2. Field amplitudes from a specified energy flux

A nonmagnetic dielectric of refractive index $n=1.50$ carries a $+z$-directed plane-wave intensity of $20.0\ \mathrm{W\,m^{-2}}$. Find the peak $E$ and $H$ amplitudes and the average total energy density.

**Solution.** The impedance is

$$\eta=\frac{\eta_0}{n}=251.15\ \Omega.$$

Using peak phasors and the positive-power convention,

$$E_0=\sqrt{2\eta\langle S\rangle}=100.23\ \mathrm{V\,m^{-1}},$$

$$H_0=\frac{E_0}{\eta}=0.3991\ \mathrm{A\,m^{-1}}.$$

Energy travels at $v=c/n$, so

$$\langle u\rangle=\frac{\langle S\rangle}{v}
=1.001\times10^{-7}\ \mathrm{J\,m^{-3}}.$$

Hence

$$\boxed{E_0=100.23\ \mathrm{V\,m^{-1}},\quad
H_0=0.3991\ \mathrm{A\,m^{-1}},\quad
\langle u\rangle=1.001\times10^{-7}\ \mathrm{J\,m^{-3}}}.$$

The relation $\langle S\rangle/\langle u\rangle=v$ supplies both the physical interpretation and a dimensional check. All three quantities vanish consistently as the specified intensity tends to zero.

## Descriptive Questions

1. Use the phasor form of Maxwell's equations to prove that a uniform plane electromagnetic wave is transverse.
2. Explain why frequency is unchanged but wavelength changes when a monochromatic wave enters a stationary dielectric.
3. Distinguish phase velocity, intrinsic impedance, and refractive index, including the material assumptions behind $n\simeq\sqrt{\epsilon_r}$.
4. Why must the electric field, magnetic field, and propagation vector form a right-handed triad for positive energy flow?

## Numerical Problems

1. Light of vacuum wavelength $600\ \mathrm{nm}$ enters a nonmagnetic dielectric of index $1.50$. Find its wavelength in the medium.
   **Final answer:** $\boxed{\lambda=400\ \mathrm{nm}}$.
2. A transparent nonmagnetic material has $n=2.20$ at the operating frequency. Estimate its relative permittivity.
   **Final answer:** $\boxed{\epsilon_r=4.84}$.
3. Find the intrinsic impedance of a nonmagnetic dielectric with $\epsilon_r=2.25$.
   **Final answer:** $\boxed{\eta=251.15\ \Omega}$.
4. A plane wave with $E_0=90.0\ \mathrm{V\,m^{-1}}$ travels in a nonmagnetic medium of index $1.50$. Find its peak magnetic flux density.
   **Final answer:** $\boxed{B_0=4.503\times10^{-7}\ \mathrm T}$.

Every worked and numerical result is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed check is zero.

## References

1. [Plane wave - Wikipedia](https://en.wikipedia.org/wiki/Plane_wave)
2. [The Feynman Lectures on Physics, Vol. II, Chapter 20: Solutions of Maxwell's Equations in Free Space](https://www.feynmanlectures.caltech.edu/II_20.html)
3. [MIT 6.013, Plane Waves and the Wave Equation](https://web.mit.edu/6.013_book/www/chapter14/14.0.html)

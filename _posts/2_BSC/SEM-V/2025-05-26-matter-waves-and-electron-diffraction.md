---
title: "Matter Waves, Phase and Group Velocities, and Electron Diffraction"
date: 2025-05-26 09:00:00 +0530
categories:
  - bsc-v
tags: [matter-waves, de-broglie-wavelength, davisson-germer, wave-particle-duality]
permalink: /bsc/sem-v/mj-11/matter-waves-electron-diffraction/
---

For a photon,

$$
E=h\nu=\hbar\omega,\qquad
p=\frac{h}{\lambda}=\hbar k,
$$

where $\omega=2\pi\nu$, $k=2\pi/\lambda$, and $\hbar=h/(2\pi)$. De Broglie proposed that the same frequency-energy and wavelength-momentum relations apply to material particles:

$$
\boxed{\lambda=\frac{h}{p}},\qquad
\boxed{k=\frac{p}{\hbar}},\qquad
\boxed{\omega=\frac{E}{\hbar}}.
$$

The first relation has the required dimension because

$$
\left[\frac hp\right]
=\frac{\mathrm{J\,s}}{\mathrm{kg\,m\,s^{-1}}}
=\mathrm m.
$$

For a non-relativistic particle, $p=mv$ and $K=p^2/(2m)$, so

$$
\lambda=\frac{h}{mv}=\frac{h}{\sqrt{2mK}}.
$$

An electron accelerated from rest through a potential difference $V$ gains kinetic energy $eV$, provided losses are negligible. Consequently,

$$
\boxed{\lambda=\frac{h}{\sqrt{2m_e eV}}}.
$$

This approximation assumes $eV\ll m_ec^2$. In convenient units it becomes $\lambda(\text{angstrom})\simeq12.27/\sqrt{V(\mathrm V)}$. Relativistically, $E_{\rm tot}=m_ec^2+eV$ and

$$
p c=\sqrt{E_{\rm tot}^2-m_e^2c^4}
=\sqrt{eV(eV+2m_ec^2)},
$$

so $\lambda=hc/\sqrt{eV(eV+2m_ec^2)}$, which reduces to the non-relativistic expression when $eV/(m_ec^2)$ is neglected.

## Phase and group velocities

A single plane component has the form

$$
\psi(x,t)=A e^{i(kx-\omega t)}.
$$

A surface of constant phase satisfies $kx-\omega t=\text{constant}$, and differentiation gives the phase velocity

$$
\boxed{v_p=\frac{dx}{dt}=\frac{\omega}{k}=\frac{E}{p}}.
$$

A localized particle is represented by neighboring wave numbers, not one infinite plane wave. For two close components, use

$$
\cos(k_1x-\omega_1t)+\cos(k_2x-\omega_2t)
=2\cos\!\left(\frac{\Delta k\,x-\Delta\omega\,t}{2}\right)
\cos(\bar kx-\bar\omega t).
$$

The slowly varying first factor is the envelope. In the limit $\Delta k\to0$, its speed is

$$
\boxed{v_g=\frac{d\omega}{dk}=\frac{dE}{dp}}.
$$

For the relativistic dispersion relation

$$
E^2=p^2c^2+m^2c^4,
$$

differentiation gives

$$
2E\frac{dE}{dp}=2pc^2,\qquad
v_g=\frac{pc^2}{E}=v.
$$

Here $p=\gamma mv$ and $E=\gamma mc^2$. Therefore

$$
v_p=\frac Ep=\frac{c^2}{v},\qquad
\boxed{v_pv_g=c^2}.
$$

The phase velocity may exceed $c$, but a plane-wave phase carries neither a localized particle nor a signal; the envelope and its information move at $v_g=v<c$.

If the rest-energy phase is removed and the non-relativistic Schrödinger energy $K=p^2/(2m)$ is used, then

$$
\omega=\frac{\hbar k^2}{2m},\qquad
v_p=\frac{\hbar k}{2m}=\frac v2,
$$

while $v_g=d\omega/dk=\hbar k/m=v$. There is no contradiction: adding the constant rest energy $mc^2$ changes the phase rotation but not the group velocity or any probability density.

## Davisson-Germer experiment

Davisson and Germer accelerated electrons through a known voltage and scattered them elastically from a nickel crystal. The crystal planes form a diffraction grating. Waves reflected from adjacent planes separated by $d$ travel an extra distance $2d\sin\theta$, so constructive interference requires

$$
\boxed{2d\sin\theta=n\lambda},\qquad n=1,2,\ldots .
$$

Here $\theta$ is the glancing angle measured from the crystal plane. If the apparatus reports the angle $\phi$ between incident and detected beams, the reflection geometry gives $\theta=(\pi-\phi)/2$; the distinction prevents a sign or angle-convention error.

For the well-known $54\,\mathrm V$ peak from nickel, $d\simeq0.091\,\mathrm{nm}$ and $\phi\simeq50^\circ$, hence $\theta\simeq65^\circ$. First-order Bragg diffraction gives

$$
\lambda_{\rm Bragg}=2d\sin\theta\simeq0.165\,\mathrm{nm}.
$$

The de Broglie prediction is

$$
\lambda_{\rm dB}=\frac{12.27}{\sqrt{54}}\,\text{angstrom}
\simeq1.67\,\text{angstrom}=0.167\,\mathrm{nm},
$$

in agreement within the experimental and crystal-spacing precision.

The detector records localized electron impacts, yet many impacts form the diffraction distribution of a wave amplitude. Wave-particle duality therefore does not mean that an electron is alternately a classical particle and a classical wave. Propagation and interference are described by amplitudes, whereas detection transfers localized quanta of energy and momentum.

## Solved Problems

### 1. Relativistic de Broglie wavelength at 100 kV

An electron is accelerated from rest through $100\ \mathrm{kV}$. Calculate its relativistic de Broglie wavelength and compare it with the non-relativistic value.

**Solution.** The electron gains kinetic energy $K=eV>0$. Relativistic energy and momentum obey

$$
(pc)^2=(K+m_ec^2)^2-m_e^2c^4
=K(K+2m_ec^2).
$$

Therefore

$$
\lambda_{\rm rel}
=\frac{hc}{\sqrt{eV(eV+2m_ec^2)}}
=\boxed{3.701\ \mathrm{pm}}.
$$

The non-relativistic expression gives

$$
\lambda_{\rm nr}
=\frac{h}{\sqrt{2m_e eV}}
=\boxed{3.878\ \mathrm{pm}}.
$$

Thus the approximation overestimates the wavelength by

$$
\frac{\lambda_{\rm nr}-\lambda_{\rm rel}}{\lambda_{\rm rel}}\times100\%
=\boxed{4.78\%}.
$$

Both formulas have dimensions of length because momentum occupies the denominator of $h/p$. Relativity increases the momentum associated with a given accelerating voltage, so the corrected wavelength is shorter. When $eV\ll m_ec^2$, the factor $eV+2m_ec^2$ approaches $2m_ec^2$ and the relativistic expression reduces to the non-relativistic one.

### 2. Predicting a first-order electron-diffraction maximum

Electrons accelerated through $150\ \mathrm V$ strike crystal planes separated by $d=0.100\ \mathrm{nm}$. Find the first-order Bragg glancing angle, using the non-relativistic approximation.

**Solution.** Since $150\ \mathrm{eV}\ll511\ \mathrm{keV}$, the non-relativistic wavelength is adequate:

$$
\lambda=\frac{h}{\sqrt{2m_e eV}}
=0.100137\ \mathrm{nm}.
$$

With $\theta$ measured from the planes and $n=1$, constructive interference requires

$$
2d\sin\theta=\lambda.
$$

The positive glancing angle is therefore

$$
\theta=\sin^{-1}\!\left(\frac{0.100137}{2(0.100)}\right)
=\boxed{30.05^\circ}.
$$

The ratio $\lambda/(2d)$ is dimensionless and is less than one, so a real first-order maximum exists. Increasing $V$ decreases $\lambda$ and hence decreases this glancing angle. In the limiting case $\lambda>2d$, no first-order solution is possible because it would require $\sin\theta>1$.

## Descriptive Questions

1. Why is the de Broglie wavelength a property of momentum rather than of particle charge?
2. Distinguish phase velocity from group velocity and explain which one follows the motion of a localized free particle.
3. How does the Davisson-Germer experiment establish wave-particle duality without implying that an electron is a classical material wave?
4. Why must the reported detector angle be converted carefully before it is inserted into a Bragg-law convention?

## Numerical Problems

1. Find the non-relativistic de Broglie wavelength of a proton with kinetic energy $1.00\ \mathrm{keV}$.<br>
   **Final answer:** $\boxed{\lambda=0.905\ \mathrm{pm}}$.
2. A neutron has de Broglie wavelength $0.180\ \mathrm{nm}$. Find its speed.<br>
   **Final answer:** $\boxed{v=2.20\times10^3\ \mathrm{m\,s^{-1}}}$.
3. For a non-relativistic free particle moving at $2.00\times10^6\ \mathrm{m\,s^{-1}}$, find the phase and group velocities after removal of the rest-energy phase.<br>
   **Final answer:** $\boxed{v_p=1.00\times10^6\ \mathrm{m\,s^{-1}},\quad v_g=2.00\times10^6\ \mathrm{m\,s^{-1}}}$.
4. A relativistic particle moves at $0.800c$. Find its matter-wave phase and group velocities.<br>
   **Final answer:** $\boxed{v_p=1.25c,\quad v_g=0.800c}$.

Every added wavelength, velocity, and diffraction value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Matter wave](https://en.wikipedia.org/wiki/Matter_wave)
2. [OpenStax, *University Physics Volume 3*, Section 6.5: De Broglie's Matter Waves](https://openstax.org/books/university-physics-volume-3/pages/6-5-de-broglies-matter-waves)
3. [MIT OpenCourseWare 8.04, lecture notes: Lectures 3-4 on matter waves and phase/group velocity](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/pages/lecture-notes/)

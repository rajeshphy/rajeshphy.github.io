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

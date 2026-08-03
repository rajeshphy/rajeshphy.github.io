---
title: "Why Quantum Mechanics: Radiation Quanta"
date: 2025-05-25 09:00:00 +0530
categories:
  - bsc-v
tags: [quantum-mechanics, blackbody-radiation, photoelectric-effect, compton-scattering]
permalink: /bsc/sem-v/mj-11/radiation-quanta/
---

Classical mechanics assigns a particle a continuous trajectory, while classical electrodynamics permits radiation to exchange energy continuously. Blackbody radiation, photoelectric emission, and Compton scattering contradict that combined classical picture. The common resolution is that radiation exchanges energy and momentum in quanta.

## Planck's theory of blackbody radiation

A blackbody may be represented by electromagnetic radiation in a perfectly reflecting cavity of volume $V$. For a large cavity, the allowed wavevectors are so closely spaced that they may be counted continuously. One state occupies volume $(2\pi)^3/V$ in $\mathbf k$-space. Including the two transverse polarizations, the number of modes in a spherical shell $(k,k+dk)$ is

$$
dN=2\frac{V}{(2\pi)^3}4\pi k^2dk
=\frac{V k^2}{\pi^2}dk.
$$

Since $k=2\pi\nu/c$ and $dk=(2\pi/c)d\nu$,

$$
\boxed{\frac{dN}{V}=g(\nu)d\nu
=\frac{8\pi\nu^2}{c^3}d\nu}.
$$

The density $g(\nu)$ has SI units $\mathrm{s\,m^{-3}}$, so $g(\nu)d\nu$ has units $\mathrm{m^{-3}}$. Classical equipartition assigns mean energy $k_{\rm B}T$ to every mode. It therefore predicts

$$
u_{\rm RJ}(\nu,T)=g(\nu)k_{\rm B}T
=\frac{8\pi\nu^2}{c^3}k_{\rm B}T.
$$

The integral $\int_0^\infty u_{\rm RJ}\,d\nu$ diverges. This ultraviolet catastrophe is not repaired by classical mechanics or classical electrodynamics.

Planck assumed that a material oscillator of frequency $\nu$ exchanges energy only in multiples

$$
E_n=nh\nu,\qquad n=0,1,2,\ldots .
$$

Put $\beta=1/(k_{\rm B}T)$ and $q=e^{-\beta h\nu}$. The canonical partition sum is the convergent geometric series

$$
Z=\sum_{n=0}^{\infty}e^{-\beta nh\nu}
=\sum_{n=0}^{\infty}q^n=\frac{1}{1-q}.
$$

The mean excitation energy is

$$
\begin{aligned}
\langle E\rangle
&=-\frac{\partial}{\partial\beta}\ln Z
=\frac{h\nu e^{-\beta h\nu}}{1-e^{-\beta h\nu}}\\
&=\frac{h\nu}{e^{h\nu/(k_{\rm B}T)}-1}.
\end{aligned}
$$

Multiplication by the mode density gives Planck's law,

$$
\boxed{
u(\nu,T)=\frac{8\pi h\nu^3}{c^3}
\frac{1}{e^{h\nu/(k_{\rm B}T)}-1}
}.
$$

Its units are $\mathrm{J\,m^{-3}\,Hz^{-1}}$. For $x=h\nu/(k_{\rm B}T)\ll1$, the approximation $e^x-1=x+O(x^2)\simeq x$ recovers the Rayleigh-Jeans law. For $x\gg1$, $e^x-1\simeq e^x$, so the spectrum is exponentially suppressed instead of diverging.

## Photoelectric effect

Einstein assigned one light quantum the energy $E_\gamma=h\nu$. Suppose an electron needs the work function $\phi$ to escape a surface. Energy conservation for the fastest emitted electron is

$$
h\nu=\phi+K_{\max}.
$$

A reverse stopping potential $V_s$ removes kinetic energy $eV_s$, hence

$$
\boxed{eV_s=h\nu-\phi},\qquad
\boxed{\nu_0=\frac{\phi}{h}}.
$$

Here $eV_s$, $h\nu$, and $\phi$ all have units of joules. The threshold $\nu_0$ follows from $K_{\max}=0$. Above threshold, increasing intensity at fixed $\nu$ increases the photon arrival rate and therefore the photocurrent, but does not change $K_{\max}$. Increasing $\nu$ changes the energy of each photon and makes $V_s$ rise linearly with slope $h/e$. A continuous classical wave would instead predict that sufficiently intense light of any frequency could eventually supply the required energy; the observed threshold and immediate emission exclude that prediction.

## Compton scattering

A photon of wavelength $\lambda$ has

$$
E_\gamma=\frac{hc}{\lambda},\qquad
p_\gamma=\frac{E_\gamma}{c}=\frac{h}{\lambda}.
$$

Let it scatter through angle $\theta$ from an electron initially at rest. Use four-momenta $P=(E/c,\mathbf p)$ and the metric $P\!\cdot Q=P^0Q^0-\mathbf P\!\cdot\mathbf Q$. Write the initial electron momentum as $P_e=(m_ec,\mathbf0)$ and the photon momenta as $K$ and $K^{\prime}$. Conservation gives

$$
P_e+K=P_e^{\prime}+K^{\prime},\qquad
P_e^{\prime}=P_e+K-K^{\prime}.
$$

The electron remains an electron, so $(P_e^{\prime})^2=P_e^2=m_e^2c^2$, while $K^2=(K^{\prime})^2=0$. Squaring the conservation equation therefore yields

$$
2P_e\!\cdot(K-K^{\prime})-2K\!\cdot K^{\prime}=0.
$$

The required products, with every sign fixed by the metric, are

$$
P_e\!\cdot K=\frac{m_ech}{\lambda},\qquad
P_e\!\cdot K^{\prime}=\frac{m_ech}{\lambda^{\prime}},
$$

$$
K\!\cdot K^{\prime}
=\frac{h^2}{\lambda\lambda^{\prime}}(1-\cos\theta).
$$

Thus

$$
m_ech\left(\frac1\lambda-\frac1{\lambda^{\prime}}\right)
=\frac{h^2}{\lambda\lambda^{\prime}}(1-\cos\theta).
$$

Multiplying by $\lambda\lambda^{\prime}/(m_ech)$ gives

$$
\boxed{\lambda^{\prime}-\lambda
=\frac{h}{m_ec}(1-\cos\theta)}.
$$

The factor $h/(m_ec)$ has units of length and is the electron Compton wavelength. The angle-dependent shift follows from photon energy and momentum conservation; a classical electromagnetic wave scattered by a free electron does not produce this wavelength shift. Together these failures establish why the classical description must be replaced at microscopic scales.

## Solved Problems

### 1. Threshold, stopping potential, and the sign of the photoelectric energy balance

A metal has work function $\phi=2.28\ \mathrm{eV}$ and is illuminated by light of wavelength $400\ \mathrm{nm}$. Find the maximum photoelectron kinetic energy, stopping potential, and threshold wavelength.

**Solution.** The incident photon energy is positive and the work done in escaping the metal is subtracted:

$$
E_\gamma=\frac{hc}{\lambda}
=\frac{1239.842\ \mathrm{eV\,nm}}{400\ \mathrm{nm}}
=3.0996\ \mathrm{eV},
$$

$$
K_{\max}=E_\gamma-\phi
=3.0996-2.28
=0.8196\ \mathrm{eV}.
$$

The stopping voltage is applied with polarity opposing the emitted electrons. Its positive magnitude satisfies $eV_s=K_{\max}$, so

$$
\boxed{V_s=0.820\ \mathrm V}.
$$

At threshold $K_{\max}=0$, hence

$$
\lambda_0=\frac{hc}{\phi}
=\frac{1239.842}{2.28}\ \mathrm{nm}
=\boxed{543.8\ \mathrm{nm}}.
$$

The energy terms all have units of eV, while dividing an energy in eV by the elementary charge gives the same numerical value in volts. Since $400\ \mathrm{nm}<\lambda_0$, emission is possible. In the limiting case $\lambda\to\lambda_0^{-}$, both $K_{\max}$ and $V_s$ approach zero.

### 2. Compton shift and electron recoil energy

An X-ray photon of wavelength $0.0710\ \mathrm{nm}$ scatters through $120^\circ$ from a free electron initially at rest. Find the scattered wavelength and the recoil kinetic energy.

**Solution.** Take $\theta$ as the angle from the incident photon direction. The electron Compton wavelength is $\lambda_C=h/(m_ec)=2.42631\ \mathrm{pm}$, so the shift is non-negative:

$$
\Delta\lambda=\lambda_C(1-\cos120^\circ)
=(2.42631)(1.5)\ \mathrm{pm}
=3.63947\ \mathrm{pm}.
$$

Therefore

$$
\boxed{\lambda^{\prime}=0.0710\ \mathrm{nm}+0.00363947\ \mathrm{nm}
=0.07464\ \mathrm{nm}}.
$$

Energy conservation makes the electron recoil energy equal to the photon energy loss:

$$
\begin{aligned}
K_e
&=hc\left(\frac1\lambda-\frac1{\lambda^{\prime}}\right)\\
&=(1239.842\ \mathrm{eV\,nm})
\left(\frac1{0.0710\ \mathrm{nm}}-
\frac1{0.0746395\ \mathrm{nm}}\right)\\
&=\boxed{0.8515\ \mathrm{keV}}.
\end{aligned}
$$

The reciprocal wavelengths supply $\mathrm{nm^{-1}}$, leaving energy units. The positive result means energy has passed from the photon to the electron. At $\theta=0$, $1-\cos\theta=0$, so both the wavelength shift and recoil energy vanish, as required by the forward-scattering limit.

## Descriptive Questions

1. Why does the Rayleigh-Jeans spectrum fail at high frequency, and which assumption of Planck removes the ultraviolet catastrophe?
2. How do threshold frequency, stopping potential, and photocurrent respond differently to changes in incident frequency and intensity?
3. Why must a derivation of the Compton shift use both relativistic energy conservation and vector momentum conservation?
4. Explain how blackbody radiation, the photoelectric effect, and Compton scattering reveal different aspects of radiation quantization.

## Numerical Problems

1. A surface has work function $2.50\ \mathrm{eV}$. Find its threshold frequency.<br>
   **Final answer:** $\boxed{\nu_0=6.04\times10^{14}\ \mathrm{Hz}}$.
2. A monochromatic $3.00\ \mathrm{mW}$ beam has wavelength $500\ \mathrm{nm}$. Find its photon rate.<br>
   **Final answer:** $\boxed{\dot N=7.55\times10^{15}\ \mathrm{s^{-1}}}$.
3. Find the Compton wavelength shift for photon backscattering from a free electron.<br>
   **Final answer:** $\boxed{\Delta\lambda=4.853\ \mathrm{pm}}$.
4. For a radiation mode with $h\nu/(k_{\rm B}T)=3.00$, find the Planck mean occupation number.<br>
   **Final answer:** $\boxed{\bar n=(e^3-1)^{-1}=0.05240}$.

Every added value and energy-balance identity is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Introduction to quantum mechanics](https://en.wikipedia.org/wiki/Introduction_to_quantum_mechanics)
2. [OpenStax, *University Physics Volume 3*, Section 6.1: Blackbody Radiation](https://openstax.org/books/university-physics-volume-3/pages/6-1-blackbody-radiation)
3. [OpenStax, *University Physics Volume 3*, Section 6.2: Photoelectric Effect](https://openstax.org/books/university-physics-volume-3/pages/6-2-photoelectric-effect)
4. [OpenStax, *University Physics Volume 3*, Section 6.3: The Compton Effect](https://openstax.org/books/university-physics-volume-3/pages/6-3-the-compton-effect)

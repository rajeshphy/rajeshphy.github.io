---
title: "Quantum Theory of Radiation"
summary: "Blackbody modes, Planck's law, its classical and quantum limits, Stefan-Boltzmann law, and Wien displacement."
date: 2025-06-27 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, statistical-mechanics, blackbody-radiation, planck-law]
permalink: /bsc/sem-vi/statistical-mechanics/blackbody-radiation/
hidden: true
---

A blackbody is an ideal absorber in thermal equilibrium. Its spectral distribution is universal because cavity radiation repeatedly exchanges energy with the walls until only temperature remains as a thermodynamic parameter.

## Electromagnetic mode density

In a large cubic cavity, one mode occupies volume $(\pi/L)^3$ in positive $k$-space. Including two polarizations, the number of modes between $k$ and $k+dk$ per volume is

$$g(k)dk=2\frac{4\pi k^2dk/8}{\pi^3}=\frac{k^2}{\pi^2}dk.$$

Since $k=2\pi\nu/c$,

$$g(\nu)d\nu=\frac{8\pi\nu^2}{c^3}d\nu.$$

Planck postulated oscillator energies $E_n=nh\nu$. For one mode,

$$z=\sum_{n=0}^{\infty}e^{-n\beta h\nu}=\frac1{1-e^{-\beta h\nu}}.$$

Therefore

$$
\bar E=-\frac{\partial\ln z}{\partial\beta}
=\frac{h\nu}{e^{h\nu/k_BT}-1}.
$$

Multiplying by the mode density gives Planck's law per unit frequency:

$$\boxed{u_\nu(T)=\frac{8\pi h\nu^3}{c^3}\frac1{e^{h\nu/k_BT}-1}}.$$

Per unit wavelength, energy conservation $u_\lambda\lvert d\lambda\rvert=u_\nu\lvert d\nu\rvert$ with $\nu=c/\lambda$ gives

$$\boxed{u_\lambda(T)=\frac{8\pi hc}{\lambda^5}\frac1{e^{hc/\lambda k_BT}-1}}.$$

The measured cavity spectrum rises from zero, has a finite maximum, and returns to zero. Planck's expression reproduces all three features; the measured peak moves to shorter wavelength as $T$ rises and the integrated area grows as $T^4$. These are the experimental checks developed below.

## Rayleigh-Jeans and Wien limits

Let $x=h\nu/(k_BT)$. For $x\ll1$, $e^x-1\simeq x$, so

$$u_\nu\simeq\frac{8\pi\nu^2}{c^3}k_BT,$$

the Rayleigh-Jeans law. For $x\gg1$, $e^x-1\simeq e^x$, so

$$u_\nu\simeq\frac{8\pi h\nu^3}{c^3}e^{-h\nu/k_BT},$$

the Wien distribution law in frequency form.

## Stefan-Boltzmann law

Integrating Planck's law and substituting $x=h\nu/(k_BT)$,

$$
u(T)=\frac{8\pi(k_BT)^4}{h^3c^3}\int_0^\infty\frac{x^3}{e^x-1}dx.
$$

Since the integral is $\pi^4/15$,

$$u(T)=aT^4,\qquad a=\frac{8\pi^5k_B^4}{15h^3c^3}.$$

Isotropic radiation carries outward flux $c/4$ times its energy density, hence

$$j^\star=\frac c4u=\sigma T^4,\qquad \sigma=\frac{2\pi^5k_B^4}{15h^3c^2}.$$

The same angular average gives spectral radiance $B_\nu=cu_\nu/(4\pi)$ and spectral exitance $M_\nu=\pi B_\nu=cu_\nu/4$. Photon momentum transfer also produces the equilibrium radiation pressure

$$p_{rad}=\frac13u=\frac13aT^4.$$

The factors $1/4$ and $1/3$ come from different angular averages: outward energy flux weights one direction cosine over a hemisphere, whereas isotropic pressure weights its square over the full sphere.

## Wien displacement law

Maximize $u_\lambda$. Put $x=hc/(\lambda k_BT)$; apart from constants, $u_\lambda\propto x^5/(e^x-1)$. Setting its derivative to zero gives

$$5(1-e^{-x})=x.$$

The positive root is $x=4.965114\ldots$, so

$$\lambda_{max}T=\frac{hc}{k_Bx}=2.8978\times10^{-3}\ \mathrm{m\,K}.$$

## Direct applications

For a surface of area $A$ and emissivity $\varepsilon$ surrounded by temperature $T_0$, the net radiative power follows from the Stefan-Boltzmann law:

$$P_{net}=\varepsilon\sigma A\left(T^4-T_0^4\right).$$

The spectral peak gives a non-contact temperature measurement,

$$T=\frac{2.8978\times10^{-3}\ \mathrm{m\,K}}{\lambda_{max}},$$

which is the basis of optical pyrometry and the first temperature estimate from a thermal spectrum.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/statistical/unit-2/planck-spectra.png' | relative_url }}" alt="Planck blackbody spectra for three temperatures with Wien peaks">
  </div>
  <figcaption>Planck spectra generated from $u_\lambda$ for $3000$, $4500$, and $6000$ K. Peak positions obey $\lambda_{max}T=2.8978\times10^{-3}\,\mathrm{m\,K}$.</figcaption>
</figure>

## Solved Problems

### 1. Temperature and radiant exitance from a spectral peak

A nearly black surface has wavelength peak $\lambda_{max}=500\ \mathrm{nm}$. Estimate its temperature and total radiant exitance.

Wien's displacement law gives

$$
T=\frac{2.897771955\times10^{-3}\ \mathrm{m\,K}}
{500\times10^{-9}\ \mathrm m}
=5.79554\times10^3\ \mathrm K.
$$

For a black surface,

$$
j^\star=\sigma T^4
=(5.670374419\times10^{-8})(5795.54)^4
=6.39718\times10^7\ \mathrm{W\,m^{-2}}.
$$

The peak wavelength fixes a color temperature; the flux result assumes emissivity one at all wavelengths. Dimensional checks give kelvin from $b/\lambda$ and $\mathrm{W\,m^{-2}}$ from $\sigma T^4$.

### 2. Net radiative cooling in finite-temperature surroundings

A surface of area $0.0200\ \mathrm{m^2}$ and emissivity $0.800$ is at $800\ \mathrm K$ in surroundings at $300\ \mathrm K$. Neglect conduction and convection. Find the net radiative power leaving it.

Emission and absorption must both be retained:

$$
P_{net}=\varepsilon\sigma A(T^4-T_0^4).
$$

Thus

$$
P_{net}=(0.800)(5.670374419\times10^{-8})(0.0200)
\left(800^4-300^4\right)
=364.265\ \mathrm W.
$$

The positive sign denotes outward power because $T>T_0$. The expression vanishes in the equilibrium limit $T\to T_0$ and reverses sign if the surroundings are hotter.

## Descriptive Questions

1. Derive the electromagnetic mode density $g(\nu)=8\pi\nu^2/c^3$, including the octant and polarization factors.
2. Obtain Planck's mean oscillator energy from the single-mode partition function and explain the physical assumption behind the discrete energies.
3. Derive the Rayleigh-Jeans and Wien limits of Planck's law and identify why the classical result produces the ultraviolet catastrophe.
4. Starting from Planck's spectrum, derive the Stefan-Boltzmann law and explain the geometrical origin of the $c/4$ flux factor.

## Numerical Problems

1. Find the total blackbody energy density in a cavity at $300\ \mathrm K$.

   **Answer:** $u=aT^4=6.12824\times10^{-6}\ \mathrm{J\,m^{-3}}$.

2. Find the mean thermal energy of a $10.0\ \mathrm{THz}$ cavity mode at $300\ \mathrm K$, excluding the zero-point term.

   **Answer:** $\bar E=1.67673\times10^{-21}\ \mathrm J$.

3. The frequency form of Planck's law peaks at $x=h\nu/(k_BT)=2.821439$. At $3000\ \mathrm K$, calculate $\nu_{max}$ and $c/\nu_{max}$. Compare it with the wavelength-form peak.

   **Answer:** $\nu_{max}=1.76368\times10^{14}\ \mathrm{Hz}$ and $c/\nu_{max}=1.69981\ \mu\mathrm m$, whereas $\lambda_{max}=0.965924\ \mu\mathrm m$; the two peaks are not related by direct inversion.

4. A cavity has volume $1.00\times10^{-3}\ \mathrm{m^3}$. How many electromagnetic modes lie between $5.00\times10^{14}$ and $5.10\times10^{14}\ \mathrm{Hz}$?

   **Answer:** $N=2.37889\times10^{15}$ modes.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/statistical/unit-2/blackbody-radiation.mac' | relative_url }})

## References

1. [Planck's law — Wikipedia](https://en.wikipedia.org/wiki/Planck%27s_law)
2. F. Reif, *Fundamentals of Statistical and Thermal Physics*, chapter 9 on blackbody radiation and the photon gas.
3. R. K. Pathria and P. D. Beale, *Statistical Mechanics*, 3rd ed., chapter 7 sections on photons and blackbody radiation.
4. R. Eisberg and R. Resnick, *Quantum Physics of Atoms, Molecules, Solids, Nuclei, and Particles*, 2nd ed., chapter 1 on thermal radiation and Planck's hypothesis.

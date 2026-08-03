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

$$j^\star=\frac c4u=\sigma T^4,qquad \sigma=\frac{2\pi^5k_B^4}{15h^3c^2}.$$

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

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/statistical/unit-2/blackbody-radiation.mac' | relative_url }})

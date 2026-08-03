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

Let it scatter through angle $\theta$ from an electron initially at rest. Use four-momenta $P=(E/c,\mathbf p)$ and the metric $P\!\cdot Q=P^0Q^0-\mathbf P\!\cdot\mathbf Q$. Write the initial electron momentum as $P_e=(m_ec,\mathbf0)$ and the photon momenta as $K$ and $K'$. Conservation gives

$$
P_e+K=P_e'+K',\qquad P_e'=P_e+K-K'.
$$

The electron remains an electron, so $P_e'^2=P_e^2=m_e^2c^2$, while $K^2=K'^2=0$. Squaring the conservation equation therefore yields

$$
2P_e\!\cdot(K-K')-2K\!\cdot K'=0.
$$

The required products, with every sign fixed by the metric, are

$$
P_e\!\cdot K=\frac{m_ech}{\lambda},\qquad
P_e\!\cdot K'=\frac{m_ech}{\lambda'},
$$

$$
K\!\cdot K'=\frac{h^2}{\lambda\lambda'}(1-\cos\theta).
$$

Thus

$$
m_ech\left(\frac1\lambda-\frac1{\lambda'}\right)
=\frac{h^2}{\lambda\lambda'}(1-\cos\theta).
$$

Multiplying by $\lambda\lambda'/(m_ech)$ gives

$$
\boxed{\lambda'-\lambda
=\frac{h}{m_ec}(1-\cos\theta)}.
$$

The factor $h/(m_ec)$ has units of length and is the electron Compton wavelength. The angle-dependent shift follows from photon energy and momentum conservation; a classical electromagnetic wave scattered by a free electron does not produce this wavelength shift. Together these failures establish why the classical description must be replaced at microscopic scales.

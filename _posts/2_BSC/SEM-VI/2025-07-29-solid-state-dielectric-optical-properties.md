---
title: "Dielectric and Optical Properties"
summary: "Polarization, local fields, Langevin-Debye theory, normal and anomalous dispersion, Cauchy and Sellmeier relations, complex permittivity, and optical attenuation."
date: 2025-07-29 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, dielectrics, optical-properties, dispersion]
permalink: /bsc/sem-vi/solid-state/dielectric-optical-properties/
hidden: true
---

Polarization is electric dipole moment per unit volume. In a linear isotropic dielectric,

$$
\mathbf D=\epsilon_0\mathbf E+\mathbf P
=\epsilon_0\epsilon_r\mathbf E,
$$

so

$$
\boxed{\mathbf P=\epsilon_0(\epsilon_r-1)\mathbf E
=\epsilon_0\chi_e\mathbf E}.
$$

$\mathbf P$ has unit $\mathrm{C\,m^{-2}}$; $\epsilon_r$ and $\chi_e$ are dimensionless.

## Polarizability and local field

If one molecule develops dipole $\mathbf p=\alpha\mathbf E_{\rm loc}$, then $\alpha$ has unit $\mathrm{C\,m^2V^{-1}}$. For number density $N$,

$$
\mathbf P=N\alpha\mathbf E_{\rm loc}.
$$

In an isotropic cubic dielectric, a spherical Lorentz cavity gives

$$
\boxed{\mathbf E_{\rm loc}=\mathbf E+\frac{\mathbf P}{3\epsilon_0}}.
$$

Substitution yields

$$
P=N\alpha\left(E+\frac{P}{3\epsilon_0}\right).
$$

Using $P=\epsilon_0(\epsilon_r-1)E$ and solving,

$$
\boxed{\frac{\epsilon_r-1}{\epsilon_r+2}
=\frac{N\alpha}{3\epsilon_0}},
$$

the Clausius-Mossotti relation.

## Langevin-Debye equation

A permanent dipole $p_0$ at angle $\theta$ to the local field has energy

$$
U=-p_0E_{\rm loc}\cos\theta.
$$

With $x=p_0E_{\rm loc}/(k_BT)$, its orientational partition integral is

$$
Z=2\pi\int_0^\pi e^{x\cos\theta}\sin\theta\,d\theta
=4\pi\frac{\sinh x}{x}.
$$

Therefore

$$
\langle\cos\theta\rangle
=\frac{d\ln Z}{dx}=\coth x-\frac1x\equiv L(x).
$$

For $x\ll1$, $L(x)=x/3+O(x^3)$, and

$$
P_{\rm or}=Np_0L(x)
\simeq\frac{Np_0^2}{3k_BT}E_{\rm loc}.
$$

If $\alpha_i$ is the induced electronic-plus-ionic polarizability, the effective weak-field polarizability is

$$
\alpha=\alpha_i+\frac{p_0^2}{3k_BT}.
$$

The local-field result becomes the Langevin-Debye equation

$$
\boxed{
\frac{\epsilon_r-1}{\epsilon_r+2}
=\frac{N}{3\epsilon_0}\left(\alpha_i+\frac{p_0^2}{3k_BT}\right)
}.
$$

## Complex dielectric constant

Use the time convention $E(t)=\operatorname{Re}[E_0e^{-i\omega t}]$. A bound charge $q$ of mass $m$ obeys

$$
m\ddot x+m\gamma\dot x+m\omega_0^2x=qE.
$$

For $x=x_0e^{-i\omega t}$,

$$
x_0=\frac{qE_0/m}{\omega_0^2-\omega^2-i\gamma\omega}.
$$

With $N$ oscillators per unit volume and $P=Nqx$,

$$
\boxed{
\epsilon_r(\omega)=\epsilon_\infty+
\frac{\Omega^2}{\omega_0^2-\omega^2-i\gamma\omega}},
\qquad
\Omega^2=\frac{Nq^2}{\epsilon_0m}.
$$

Write $\epsilon_r=\epsilon^{\prime}+i\epsilon^{\prime\prime}$. Multiplying by the complex conjugate of the denominator gives

$$
\boxed{
\epsilon'=\epsilon_\infty+
\frac{\Omega^2(\omega_0^2-\omega^2)}
{(\omega_0^2-\omega^2)^2+\gamma^2\omega^2}},
$$

$$
\boxed{
\epsilon''=\frac{\Omega^2\gamma\omega}
{(\omega_0^2-\omega^2)^2+\gamma^2\omega^2}}.
$$

$\epsilon^{\prime\prime}>0$ represents loss. The mean absorbed power density is

$$
\boxed{\langle p\rangle=\frac12\omega\epsilon_0\epsilon''\lvert E_0\rvert^2}
$$

in $\mathrm{W\,m^{-3}}$.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-3/dielectric-optical-dispersion.png' | relative_url }}" alt="Real and imaginary Lorentz dielectric response showing normal and anomalous dispersion near resonance">
  </div>
  <figcaption>The curves use the displayed Lorentz equations. Absorption peaks where $\epsilon^{\prime\prime}$ is large; the rapid reversal of the real response produces an anomalous-dispersion interval adjacent to otherwise normal dispersion.</figcaption>
</figure>

## Normal and anomalous dispersion

Away from resonance, damping is negligible and a transparent nonmagnetic material has $n^2\simeq\epsilon_r$. With several resonances,

$$
n^2(\omega)=1+\sum_j\frac{A_j}{\omega_j^2-\omega^2}.
$$

Below a resonance, increasing $\omega$ normally increases $n$: $dn/d\omega>0$, equivalently $dn/d\lambda<0$. Close to an absorption resonance the slope can reverse, giving anomalous dispersion $dn/d\omega<0$.

Using $\omega=2\pi c/\lambda$ and defining $C_j=(2\pi c/\omega_j)^2$ gives the Sellmeier form

$$
\boxed{n^2(\lambda)=1+\sum_j\frac{B_j\lambda^2}{\lambda^2-C_j}}.
$$

Far from resonance, $C_j/\lambda^2\ll1$ and

$$
\frac{\lambda^2}{\lambda^2-C_j}
=\frac1{1-C_j/\lambda^2}
\simeq1+\frac{C_j}{\lambda^2}+\frac{C_j^2}{\lambda^4}+\cdots.
$$

Taking the square root and collecting constants produces Cauchy's transparent-region relation

$$
\boxed{n(\lambda)=A+\frac{B}{\lambda^2}+\frac{C}{\lambda^4}+\cdots}.
$$

## Complex refractive index and extinction

Let the complex refractive index be

$$
\widetilde n=n+i\kappa,
$$

where $\kappa$ is the extinction coefficient. For a nonmagnetic solid,

$$
(n+i\kappa)^2=\epsilon'+i\epsilon'',
$$

so

$$
\boxed{n^2-\kappa^2=\epsilon'},
\qquad
\boxed{2n\kappa=\epsilon''}.
$$

A wave propagating along $z$ contains

$$
e^{i\widetilde n\omega z/c-i\omega t}
=e^{-\kappa\omega z/c}e^{i(n\omega z/c-\omega t)}.
$$

Its intensity therefore obeys $I(z)=I_0e^{-\alpha z}$ with

$$
\boxed{\alpha=\frac{2\omega\kappa}{c}=\frac{4\pi\kappa}{\lambda}}.
$$

At normal incidence from vacuum, the optical reflectance is

$$
\boxed{R=\left\lvert\frac{\widetilde n-1}{\widetilde n+1}\right\rvert^2
=\frac{(n-1)^2+\kappa^2}{(n+1)^2+\kappa^2}}.
$$

Thus $n$ controls phase velocity and refraction, while $\kappa$ controls attenuation; both follow from the same complex dielectric response.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/dielectric-optical-properties.mac' | relative_url }})

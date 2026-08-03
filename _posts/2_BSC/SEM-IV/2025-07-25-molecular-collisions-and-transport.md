---
title: "Molecular Collisions and Transport Phenomena"
summary: "Mean free path, collision probability, viscosity, thermal conductivity, and diffusion in dilute ideal gases."
date: 2025-07-25 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, mean-free-path, transport-phenomena]
permalink: /bsc/sem-iv/mj-6/molecular-collisions-transport-phenomena/
hidden: true
---

Model a dilute ideal gas as identical hard spheres of diameter $d$, number density $n=N/V$, and mean molecular speed $\bar c$. Between instantaneous binary collisions the molecules move freely in straight lines.

## Mean free path

Two molecular centres collide when their separation becomes $d$, so the collision cross-section is

$$\sigma=\pi d^2.$$

If the other molecules were stationary, a molecule travelling distance $\ell$ would sweep volume $\sigma\ell$ and meet on average $n\sigma\ell$ targets. Molecular motion increases the mean relative speed by a factor $\sqrt2$ for identical Maxwellian molecules. Setting the mean collision count equal to one gives

$$
\boxed{\lambda=\frac{1}{\sqrt2\,n\sigma}
=\frac{1}{\sqrt2\pi d^2n}}.
$$

Using $p=nk_{\mathrm B}T$,

$$
\boxed{\lambda=\frac{k_{\mathrm B}T}{\sqrt2\pi d^2p}}.
$$

$\lambda$ has units of length. The mean time between collisions and collision frequency per molecule are approximately

$$\tau=\frac{\lambda}{\bar c},\qquad z=\frac1\tau=\frac{\bar c}{\lambda}.$$

## Collision probability

Assume collisions form a memoryless process along the path. The probability of no collision over distance $x$ is

$$P_0(x)=e^{-x/\lambda}.$$

Therefore

$$
P(\text{at least one collision before }x)=1-e^{-x/\lambda},
$$

and the probability that the next collision occurs between $x$ and $x+dx$ is

$$
\boxed{w(x)\,dx=\frac1\lambda e^{-x/\lambda}\,dx}.
$$

It is normalized on $x\geq0$, and $\int_0^\infty xw(x)\,dx=\lambda$.

## Transport by molecular motion

Molecules crossing an imaginary surface carry momentum, energy, and particle number from the region of their last collision, roughly one mean free path away. Isotropic angular averaging supplies a factor of order $1/3$. The elementary kinetic estimates are

$$
\boxed{\eta\simeq\frac13\rho_m\bar c\lambda},
$$

$$
\boxed{K\simeq\frac13C_V^{(\mathrm{vol})}\bar c\lambda},
$$

$$
\boxed{D\simeq\frac13\bar c\lambda}.
$$

Here $\rho_m=mn$ is mass density, $C_V^{(\mathrm{vol})}$ is heat capacity per unit volume, $\eta$ is dynamic viscosity, $K$ is thermal conductivity, and $D$ is the self-diffusion coefficient. Their constitutive laws fix the signs:

$$
J^{(p_x)}_z=-\eta\frac{\partial u_x}{\partial z},
\qquad
q_x=-K\frac{\partial T}{\partial x},
\qquad
J_x=-D\frac{\partial n}{\partial x}.
$$

$J^{(p_x)}_z$ is the flux of $x$-momentum in the $z$ direction. The units are $\eta$: $\mathrm{Pa\,s}$, $K$: $\mathrm{W\,m^{-1}K^{-1}}$, and $D$: $\mathrm{m^2\,s^{-1}}$. The minus signs show transport down the corresponding gradient.

For a dilute hard-sphere gas, $\lambda\propto1/n$ and $\bar c\propto\sqrt T$. Since $\rho_m$ and $C_V^{(\mathrm{vol})}$ are proportional to $n$, the leading estimates make $\eta$ and $K$ nearly independent of pressure and proportional to $\sqrt T$, while $D\propto\sqrt T/n$. These results require the dilute-gas, binary-collision approximation.

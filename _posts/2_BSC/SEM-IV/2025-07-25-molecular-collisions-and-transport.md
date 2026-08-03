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

## Solved Problems

### 1. Derive the exponential free-path distribution

Let $P_0(x)$ be the probability of surviving a distance $x$ without a collision. In a further distance $dx$, the collision probability is $dx/\lambda$, so independence of successive small path elements gives

$$
P_0(x+dx)=P_0(x)\left(1-\frac{dx}{\lambda}\right).
$$

Keeping first-order terms,

$$
\frac{dP_0}{dx}=-\frac{P_0}{\lambda}.
$$

The boundary condition $P_0(0)=1$ selects

$$P_0(x)=e^{-x/\lambda}.$$

The density for the next collision is the loss of survival probability:

$$
w(x)=-\frac{dP_0}{dx}
=\boxed{\frac1\lambda e^{-x/\lambda}}.
$$

It satisfies $\int_0^\infty w\,dx=1$ and $\int_0^\infty xw\,dx=\lambda$. The derivation assumes a uniform dilute gas and a pathwise memoryless collision rate.

### 2. Explain the leading pressure independence of gas viscosity

Insert $\rho_m=mn$ and $\lambda=(\sqrt2\,n\pi d^2)^{-1}$ into the kinetic estimate:

$$
\eta\simeq\frac13mn\bar c
\frac{1}{\sqrt2\,n\pi d^2}
=\boxed{\frac{m\bar c}{3\sqrt2\pi d^2}}.
$$

The number density cancels: at lower pressure fewer molecules cross a plane, but each carries momentum from farther away. Since $\bar c\propto\sqrt{T/m}$, this simple model predicts $\eta\propto\sqrt{mT}/d^2$. Its dimensions are

$$
\frac{\mathrm{kg}(\mathrm{m\,s^{-1}})}{\mathrm{m^2}}
=\mathrm{kg\,m^{-1}s^{-1}}=\mathrm{Pa\,s}.
$$

At high density or when intermolecular potentials matter, the hard-sphere cancellation is no longer quantitatively reliable.

## Descriptive Questions

1. Explain the origin of the factor $\sqrt2$ in the mean-free-path formula for identical Maxwellian molecules.
2. What assumptions make molecular collisions a Poisson process along path length?
3. Give the microscopic interpretation and sign of each constitutive law for viscosity, heat conduction, and diffusion.
4. Why are dilute-gas viscosity and thermal conductivity nearly pressure independent while self-diffusion is not?

## Numerical Problems

1. Estimate the mean free path at $300\ \mathrm K$ and $1.01325\times10^5\ \mathrm{Pa}$ for molecular diameter $d=3.7\times10^{-10}\ \mathrm m$.

   **Final answer:** $\lambda=6.72\times10^{-8}\ \mathrm m=67.2\ \mathrm{nm}$.

2. Find the probability that a molecule travels at least two mean free paths without collision.

   **Final answer:** $P_0(2\lambda)=e^{-2}=0.135$.

3. If $\lambda=70\ \mathrm{nm}$ and $\bar c=470\ \mathrm{m\,s^{-1}}$, estimate the collision frequency per molecule.

   **Final answer:** $z=\bar c/\lambda=6.71\times10^9\ \mathrm{s^{-1}}$.

4. Using the same $\lambda$ and $\bar c$, estimate the self-diffusion coefficient.

   **Final answer:** $D\simeq\bar c\lambda/3=1.097\times10^{-5}\ \mathrm{m^2\,s^{-1}}$.

The [molecular-transport Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/molecular-transport-checks.mac' | relative_url }}) verifies normalization and the mean free path of the exponential distribution, transport scaling, and all numerical answers.

## References

1. [Mean free path](https://en.wikipedia.org/wiki/Mean_free_path), Wikipedia.
2. S. Chapman and T. G. Cowling, *The Mathematical Theory of Non-Uniform Gases*, 3rd ed., Cambridge University Press, 1970, chapters 4-7.
3. R. B. Bird, W. E. Stewart, and E. N. Lightfoot, *Transport Phenomena*, 2nd ed., Wiley, 2002, chapters 1 and 17.

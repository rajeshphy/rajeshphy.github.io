---
title: "Motion in a Centrally Symmetric Field"
summary: "Quantum motion in a central potential, separation of variables, radial equation, and angular momentum quantum numbers."
date: 2026-06-06 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - central-potential
  - spherical-harmonics
permalink: /msc/sem-i/central-potential-motion/
hidden: true
---

A centrally symmetric field is described by a potential that depends only on the distance from the origin:

$$
V=V(r).
$$

Such systems are important because rotational symmetry allows the Schrodinger equation to be separated into radial and angular parts.

## Hamiltonian

For a particle of mass $m$ in a central potential,

$$
H=-\frac{\hbar^2}{2m}\nabla^2+V(r).
$$

In spherical coordinates,

$$
\nabla^2=
\frac{1}{r^2}\frac{\partial}{\partial r}
\left(r^2\frac{\partial}{\partial r}\right)
-
\frac{L^2}{\hbar^2r^2}.
$$

Therefore the Hamiltonian can be written as

$$
H=
-\frac{\hbar^2}{2m}
\frac{1}{r^2}\frac{\partial}{\partial r}
\left(r^2\frac{\partial}{\partial r}\right)
+\frac{L^2}{2mr^2}
+V(r).
$$

The term

$$
\frac{L^2}{2mr^2}
$$

acts like an angular kinetic energy term.

## Separation of variables

Since $V(r)$ is spherically symmetric,

$$
[H,L^2]=0,\qquad [H,L_z]=0.
$$

The wavefunction can be chosen as a simultaneous eigenfunction:

$$
\psi(r,\theta,\phi)=R_{nl}(r)Y_l^m(\theta,\phi).
$$

The angular part is determined by spherical harmonics:

$$
L^2Y_l^m=\hbar^2l(l+1)Y_l^m,
$$

$$
L_zY_l^m=\hbar mY_l^m.
$$

## Radial equation

Substitution into the Schrodinger equation gives the radial equation

$$
-\frac{\hbar^2}{2m}
\frac{1}{r^2}\frac{d}{dr}
\left(r^2\frac{dR}{dr}\right)
+\frac{\hbar^2l(l+1)}{2mr^2}R
+V(r)R
=ER.
$$

It is often simplified by defining

$$
u(r)=rR(r).
$$

Then the radial equation becomes

$$
\boxed{
-\frac{\hbar^2}{2m}\frac{d^2u}{dr^2}
+\left[
V(r)+\frac{\hbar^2l(l+1)}{2mr^2}
\right]u
=Eu.
}
$$

The effective potential is

$$
\boxed{
V_{\mathrm{eff}}(r)
=
V(r)+\frac{\hbar^2l(l+1)}{2mr^2}.
}
$$

The second term is called the centrifugal term.

## Quantum numbers

For central potentials, stationary states are labeled by

$$
n,\quad l,\quad m.
$$

Here:

- $n$ labels the radial energy level,
- $l$ labels orbital angular momentum,
- $m$ labels the $z$-component of angular momentum.

The degeneracy in $m$ follows from spherical symmetry. For a fixed $l$, the number of $m$ states is

$$
2l+1.
$$

## Boundary conditions

The radial wavefunction must be finite at the origin and normalizable at infinity:

$$
R(r)\ \text{finite at }r=0,
$$

$$
\int_0^\infty |R(r)|^2r^2\,dr<\infty.
$$

Equivalently,

$$
\int_0^\infty |u(r)|^2\,dr<\infty.
$$

These boundary conditions make the energy spectrum discrete for bound states.

## Main points

- Central potentials depend only on $r$.
- The Hamiltonian commutes with $L^2$ and $L_z$.
- The wavefunction separates as $R(r)Y_l^m(\theta,\phi)$.
- The radial equation contains an effective centrifugal potential.
- The degeneracy in $m$ reflects rotational symmetry.

## Practice questions

1. Show that $[H,L_z]=0$ for $V=V(r)$.
2. Derive the radial equation for a central potential.
3. Explain the origin of the centrifugal term.
4. Why does the wavefunction separate into radial and angular parts?
5. For $l=2$, how many possible $m$ values exist?

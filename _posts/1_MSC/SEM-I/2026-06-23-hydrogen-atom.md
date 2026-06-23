---
title: "Hydrogen Atom"
summary: "Hydrogen atom as a central potential problem, quantum numbers, energy spectrum, and degeneracy."
date: 2026-06-23 10:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - hydrogen-atom
  - central-potential
permalink: /msc/sem-i/hydrogen-atom/
hidden: true
---

The hydrogen atom is the most important exactly solvable central-potential problem in quantum mechanics. It consists of an electron moving in the Coulomb field of a proton.

## Coulomb potential

The potential energy is

$$
V(r)=-\frac{e^2}{4\pi\epsilon_0r}.
$$

The Hamiltonian is

$$
H=-\frac{\hbar^2}{2\mu}\nabla^2
-\frac{e^2}{4\pi\epsilon_0r},
$$

where $\mu$ is the reduced mass:

$$
\mu=\frac{m_em_p}{m_e+m_p}.
$$

Since the potential is central,

$$
[H,L^2]=0,\qquad [H,L_z]=0.
$$

Therefore the eigenfunctions can be written as

$$
\psi_{nlm}(r,\theta,\phi)
=
R_{nl}(r)Y_l^m(\theta,\phi).
$$

## Energy spectrum

Solving the radial equation gives the bound-state energy levels

$$
\boxed{
E_n=-\frac{\mu e^4}{2(4\pi\epsilon_0)^2\hbar^2}
\frac{1}{n^2}.
}
$$

In electron-volt units,

$$
\boxed{
E_n=-\frac{13.6\ \mathrm{eV}}{n^2}
}
$$

when the reduced-mass correction is neglected.

Here

$$
n=1,2,3,\dots
$$

is the principal quantum number.

## Allowed quantum numbers

For a given $n$,

$$
l=0,1,2,\dots,n-1,
$$

and for each $l$,

$$
m=-l,-l+1,\dots,l.
$$

Thus the states are labeled by

$$
\lvert n,l,m\rangle.
$$

The total number of orbital states for a given $n$ is

$$
\sum_{l=0}^{n-1}(2l+1)=n^2.
$$

Including electron spin, the degeneracy becomes

$$
2n^2.
$$

## Bohr radius

The natural length scale of the hydrogen atom is the Bohr radius:

$$
\boxed{
a_0=\frac{4\pi\epsilon_0\hbar^2}{\mu e^2}.
}
$$

The ground-state wavefunction is

$$
\boxed{
\psi_{100}(r)=
\frac{1}{\sqrt{\pi a_0^3}}e^{-r/a_0}.
}
$$

It is spherically symmetric because $l=0$.

## Physical meaning of quantum numbers

The principal quantum number $n$ determines the energy in the nonrelativistic Coulomb problem.

The orbital quantum number $l$ determines the magnitude of orbital angular momentum:

$$
L^2=\hbar^2l(l+1).
$$

The magnetic quantum number $m$ determines the $z$-component:

$$
L_z=\hbar m.
$$

The spin quantum number $m_s=\pm1/2$ labels the two spin states of the electron.

## Degeneracy

The energy depends only on $n$:

$$
E=E_n.
$$

It does not depend on $l$ or $m$ in the nonrelativistic Coulomb problem. This produces a high degeneracy. Some of this degeneracy comes from rotational symmetry, and the additional degeneracy is related to a hidden symmetry of the Coulomb potential.

In more accurate treatments, fine structure, spin-orbit coupling, Lamb shift, and external fields partially remove this degeneracy.

## Main points

- The hydrogen atom is a central-potential problem with $V(r)\propto -1/r$.
- The wavefunction separates into radial and spherical-harmonic parts.
- The energy spectrum is $E_n=-13.6\,\mathrm{eV}/n^2$.
- For each $n$, $l=0,\dots,n-1$ and $m=-l,\dots,l$.
- The nonrelativistic energy depends only on $n$.

## Practice questions

1. Write the Hamiltonian of the hydrogen atom using the reduced mass.
2. Derive the allowed values of $l$ and $m$ for $n=3$.
3. How many orbital states correspond to a fixed $n$?
4. Why is the ground state spherically symmetric?
5. Explain why the hydrogen spectrum is degenerate in $l$ and $m$ in the nonrelativistic theory.

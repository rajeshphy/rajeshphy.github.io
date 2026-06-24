---
title: "Hydrogen Atom"
summary: "Hydrogen atom with one proton and one electron, Coulomb potential, quantum numbers, energy spectrum, and degeneracy."
date: 2026-06-07 09:00:00 +0530
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

The hydrogen atom contains one proton as the nucleus and one electron bound to it. The proton has charge $+e$ and the electron has charge $-e$, so the force between them is attractive. Since this electrostatic interaction depends only on the separation $r$ between the two particles, it is modelled by a Coulomb potential.

This makes the hydrogen atom a central-potential problem. The potential depends only on $r$, so the Schrodinger equation can be separated into radial and angular parts. The solution gives quantum numbers, allowed energies, and degeneracies.

## Coulomb potential

Choose the zero of potential energy when the electron and proton are infinitely far apart. The Coulomb potential energy is then

$$
V(r)=-\frac{e^2}{4\pi\epsilon_0r}.
$$

The negative sign shows attraction. As $r$ decreases, the potential energy becomes more negative, meaning that the electron is bound more strongly to the proton.

Strictly, hydrogen is a two-body problem. It is reduced to an equivalent one-body problem by using the reduced mass $\mu$ for the relative motion of the electron-proton system.

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

This separation is possible because the angular part is governed by $L^2$ and $L_z$, while the radial part contains the Coulomb potential.

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

The negative sign means that the electron is in a bound state. The energy approaches zero from below as $n$ becomes large, corresponding to the ionization limit.

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

## States belonging to $n=3$

For $n=3$, the allowed orbital quantum numbers are

$$
l=0,1,2.
$$

For these values, the possible $m$ values are:

| $l$ | allowed $m$ values | number of states |
|---:|---|---:|
| 0 | $0$ | 1 |
| 1 | $-1,0,1$ | 3 |
| 2 | $-2,-1,0,1,2$ | 5 |

The total number of orbital states is

$$
1+3+5=9=n^2.
$$

Including spin, the number becomes

$$
2n^2=18.
$$

The energy is

$$
E_3=-\frac{13.6}{9}\,\mathrm{eV}
\approx -1.51\,\mathrm{eV}.
$$

## Ground-state probability density

For the ground state,

$$
\psi_{100}(r)=
\frac{1}{\sqrt{\pi a_0^3}}e^{-r/a_0}.
$$

The probability density is

$$
|\psi_{100}|^2=
\frac{1}{\pi a_0^3}e^{-2r/a_0}.
$$

It depends only on $r$, not on $\theta$ or $\phi$, so the ground-state charge distribution is spherically symmetric.

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

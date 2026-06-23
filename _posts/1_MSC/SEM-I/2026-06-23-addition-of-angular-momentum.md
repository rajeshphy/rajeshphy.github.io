---
title: "Addition of Angular Momentum and Clebsch-Gordan Coefficients"
summary: "Addition theorem, coupled and uncoupled bases, Clebsch-Gordan coefficients, and simple examples."
date: 2026-06-04 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - angular-momentum-addition
  - clebsch-gordan
permalink: /msc/sem-i/addition-of-angular-momentum/
hidden: true
---

When a system has two angular momenta, the total angular momentum is obtained by vector addition at the operator level. The main question is how to rewrite product states of the two subsystems in terms of total angular momentum eigenstates.

## Total angular momentum

Let two angular momenta be $\mathbf J_1$ and $\mathbf J_2$. The total angular momentum is

$$
\mathbf J=\mathbf J_1+\mathbf J_2.
$$

The corresponding operators satisfy

$$
J_z=J_{1z}+J_{2z}
$$

and

$$
J^2=(\mathbf J_1+\mathbf J_2)^2
=J_1^2+J_2^2+2\mathbf J_1\cdot\mathbf J_2.
$$

## Uncoupled basis

The uncoupled basis is

$$
\lvert j_1m_1\rangle\lvert j_2m_2\rangle
\equiv
\lvert j_1m_1;j_2m_2\rangle.
$$

It diagonalizes

$$
J_1^2,\quad J_2^2,\quad J_{1z},\quad J_{2z}.
$$

In this basis, the total magnetic quantum number is

$$
m=m_1+m_2.
$$

## Coupled basis

The coupled basis is

$$
\lvert j_1j_2;JM\rangle.
$$

It diagonalizes

$$
J_1^2,\quad J_2^2,\quad J^2,\quad J_z.
$$

The allowed total angular momentum values are

$$
\boxed{
J=\lvert j_1-j_2\rvert,\ \lvert j_1-j_2\rvert+1,\dots,j_1+j_2.
}
$$

For each $J$,

$$
M=-J,-J+1,\dots,J.
$$

## Clebsch-Gordan expansion

The coupled and uncoupled bases are related by

$$
\boxed{
\lvert j_1j_2;JM\rangle
=
\sum_{m_1,m_2}
C^{JM}_{j_1m_1\,j_2m_2}
\lvert j_1m_1;j_2m_2\rangle.
}
$$

The numbers

$$
C^{JM}_{j_1m_1\,j_2m_2}
=
\langle j_1m_1;j_2m_2\mid j_1j_2;JM\rangle
$$

are called Clebsch-Gordan coefficients.

They are nonzero only when

$$
\boxed{
M=m_1+m_2.
}
$$

## Example: two spin-one-half particles

Let

$$
j_1=j_2=\frac12.
$$

The allowed total angular momenta are

$$
J=1,\ 0.
$$

The triplet states are

$$
\lvert 1,1\rangle=\lvert +\rangle\lvert +\rangle,
$$

$$
\lvert 1,0\rangle=
\frac{1}{\sqrt2}
\left(
\lvert +\rangle\lvert -\rangle+
\lvert -\rangle\lvert +\rangle
\right),
$$

$$
\lvert 1,-1\rangle=\lvert -\rangle\lvert -\rangle.
$$

The singlet state is

$$
\lvert 0,0\rangle=
\frac{1}{\sqrt2}
\left(
\lvert +\rangle\lvert -\rangle-
\lvert -\rangle\lvert +\rangle
\right).
$$

The triplet states are symmetric under particle interchange, while the singlet state is antisymmetric.

## Physical importance

Angular momentum addition is used in:

- spin-orbit coupling,
- fine structure of atoms,
- addition of orbital and spin angular momentum,
- coupling of nuclear spins,
- selection rules in atomic transitions.

## Main points

- Angular momenta add as operators: $\mathbf J=\mathbf J_1+\mathbf J_2$.
- The allowed total values are $J=\lvert j_1-j_2\rvert,\dots,j_1+j_2$.
- Clebsch-Gordan coefficients connect coupled and uncoupled bases.
- The condition $M=m_1+m_2$ must hold.
- Two spin-one-half particles give one triplet and one singlet multiplet.

## Practice questions

1. Find the possible $J$ values when $j_1=1$ and $j_2=1/2$.
2. How many total states are obtained by adding $j_1=1$ and $j_2=1$?
3. Write the singlet state for two spin-one-half particles.
4. Why must $M=m_1+m_2$ for a nonzero Clebsch-Gordan coefficient?
5. Distinguish coupled and uncoupled bases.

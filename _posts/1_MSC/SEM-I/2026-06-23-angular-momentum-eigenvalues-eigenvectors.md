---
title: "Angular Momentum Eigenvalues and Eigenvectors"
summary: "Eigenvalues of J squared and Jz, ladder construction, spherical harmonics, and angular momentum eigenstates."
date: 2026-06-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - angular-momentum
  - eigenvalues
permalink: /msc/sem-i/angular-momentum-eigenvalues-eigenvectors/
hidden: true
---

The components of angular momentum do not commute, so a quantum state cannot generally have definite values of $J_x$, $J_y$, and $J_z$ at the same time. The useful pair is $J^2$ and one component, conventionally $J_z$, because these two operators commute.

The angular momentum eigenvalue problem is therefore built around simultaneous eigenstates of $J^2$ and $J_z$.

## Simultaneous eigenstates

Let the common eigenstate be written as $\lvert j,m\rangle$. It is defined by

$$
\boxed{
J^2\lvert j,m\rangle=\hbar^2j(j+1)\lvert j,m\rangle
}
$$

and

$$
\boxed{
J_z\lvert j,m\rangle=\hbar m\lvert j,m\rangle.
}
$$

Here $j$ is the angular momentum quantum number and $m$ is the magnetic quantum number.

The allowed values are

$$
j=0,\frac12,1,\frac32,\dots
$$

and, for fixed $j$,

$$
m=-j,-j+1,\dots,j-1,j.
$$

Thus for a given $j$, the number of allowed $m$ values is

$$
2j+1.
$$

## Ladder operation

The operators $J_+$ and $J_-$ act as

$$
\boxed{
J_\pm\lvert j,m\rangle
=
\hbar\sqrt{j(j+1)-m(m\pm1)}\,
\lvert j,m\pm1\rangle.
}
$$

The coefficient becomes zero at the top and bottom of the ladder:

$$
J_+\lvert j,j\rangle=0,
\qquad
J_-\lvert j,-j\rangle=0.
$$

This termination condition forces the allowed $m$ values to be finite and evenly spaced.

The ladder picture also explains why $m$ changes in steps of one. Starting from the highest state and applying $J_-$ repeatedly gives the full set of $m$ values for a fixed $j$.

## Orbital angular momentum

For orbital angular momentum, the quantum number is usually written as $l$ instead of $j$:

$$
L^2\lvert l,m\rangle=\hbar^2l(l+1)\lvert l,m\rangle,
$$

$$
L_z\lvert l,m\rangle=\hbar m\lvert l,m\rangle.
$$

For orbital angular momentum,

$$
l=0,1,2,3,\dots
$$

and

$$
m=-l,-l+1,\dots,l.
$$

Only integer $l$ values occur for orbital angular momentum because the spatial wavefunction must be single-valued under a rotation by $2\pi$.

## Spherical harmonics

In coordinate representation, the simultaneous eigenfunctions of $L^2$ and $L_z$ are the spherical harmonics:

$$
L^2Y_l^m(\theta,\phi)=\hbar^2l(l+1)Y_l^m(\theta,\phi),
$$

$$
L_zY_l^m(\theta,\phi)=\hbar mY_l^m(\theta,\phi).
$$

Since

$$
L_z=-i\hbar\frac{\partial}{\partial\phi},
$$

the azimuthal dependence is

$$
Y_l^m(\theta,\phi)\propto e^{im\phi}.
$$

Single-valuedness requires

$$
e^{im(\phi+2\pi)}=e^{im\phi},
$$

so $m$ must be an integer for orbital angular momentum.

## Normalization and orthogonality

The spherical harmonics are orthonormal:

$$
\int_0^{2\pi}\int_0^\pi
Y_l^{m*}(\theta,\phi)Y_{l'}^{m'}(\theta,\phi)
\sin\theta\,d\theta\,d\phi
=
\delta_{ll'}\delta_{mm'}.
$$

They also form a complete basis for angular functions on the sphere.

## Example for $j=2$

For $j=2$, the allowed magnetic quantum numbers are

$$
m=-2,-1,0,1,2.
$$

There are

$$
2j+1=5
$$

states. The eigenvalue of $J^2$ is

$$
\hbar^2j(j+1)=6\hbar^2.
$$

The eigenvalues of $J_z$ are

$$
-2\hbar,\ -\hbar,\ 0,\ \hbar,\ 2\hbar.
$$

## Ladder coefficient example

For $j=1$ and $m=0$,

$$
J_+\lvert 1,0\rangle
=\hbar\sqrt{1(1+1)-0(0+1)}
\lvert 1,1\rangle.
$$

Thus

$$
\boxed{
J_+\lvert 1,0\rangle=\hbar\sqrt2\,\lvert 1,1\rangle.
}
$$

Similarly,

$$
J_-\lvert 1,0\rangle=\hbar\sqrt2\,\lvert 1,-1\rangle.
$$

## Main points

- The state $\lvert j,m\rangle$ is a simultaneous eigenstate of $J^2$ and $J_z$.
- The eigenvalue of $J^2$ is $\hbar^2j(j+1)$.
- The eigenvalue of $J_z$ is $\hbar m$.
- For each $j$, there are $2j+1$ possible $m$ values.
- Orbital angular momentum has integer $l$; spin can have integer or half-integer $j$.

## Practice questions

1. Derive the coefficient in $J_\pm\lvert j,m\rangle$.
2. Explain why $m$ runs from $-j$ to $j$.
3. Why is orbital angular momentum restricted to integer $l$?
4. Show that $Y_l^m(\theta,\phi)$ is an eigenfunction of $L_z$.
5. How many states correspond to $l=3$?

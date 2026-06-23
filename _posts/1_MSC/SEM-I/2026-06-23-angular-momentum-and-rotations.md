---
title: "Angular Momentum and Rotations"
summary: "Angular momentum as the generator of rotations, rotation operators, and transformation of quantum states."
date: 2026-06-23 09:40:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - rotations
  - angular-momentum
permalink: /msc/sem-i/angular-momentum-and-rotations/
hidden: true
---

Angular momentum is the generator of rotations in quantum mechanics. This means that a rotation of a state is produced by applying an exponential operator built from the angular momentum operator.

## Rotation about an axis

For a rotation by angle $\theta$ about a unit vector $\hat{\mathbf n}$, the rotation operator is

$$
\boxed{
U(R)=\exp\left(-\frac{i}{\hbar}\theta\,\hat{\mathbf n}\cdot\mathbf J\right).
}
$$

For rotations about the coordinate axes,

$$
U_z(\phi)=\exp\left(-\frac{i}{\hbar}\phi J_z\right),
$$

$$
U_y(\theta)=\exp\left(-\frac{i}{\hbar}\theta J_y\right),
$$

$$
U_x(\alpha)=\exp\left(-\frac{i}{\hbar}\alpha J_x\right).
$$

The negative sign appears because the operator acts on the quantum state.

## Infinitesimal rotation

For a very small angle $\delta\theta$ about the $z$-axis,

$$
U_z(\delta\theta)
\simeq
1-\frac{i}{\hbar}\delta\theta J_z.
$$

Thus $J_z$ is the generator of rotations about the $z$-axis. Similarly, $J_x$ and $J_y$ generate rotations about the $x$ and $y$ axes.

## Transformation of operators

If a state transforms as

$$
\lvert \psi'\rangle=U\lvert\psi\rangle,
$$

then an operator transforms as

$$
A'=UAU^\dagger.
$$

For a vector operator $\mathbf V$, the angular momentum generators satisfy

$$
[J_i,V_j]=i\hbar\epsilon_{ijk}V_k.
$$

This relation means that $\mathbf V$ transforms as a vector under rotations.

## Rotation of angular momentum eigenstates

Since

$$
J_z\lvert j,m\rangle=\hbar m\lvert j,m\rangle,
$$

a rotation about the $z$-axis gives

$$
U_z(\phi)\lvert j,m\rangle
=
e^{-im\phi}\lvert j,m\rangle.
$$

Thus an eigenstate of $J_z$ only gains a phase under rotation about the $z$-axis.

For rotations about other axes, states with different $m$ values are mixed.

## Spin-one-half rotation

For spin one-half,

$$
S_i=\frac{\hbar}{2}\sigma_i.
$$

A rotation about the $z$-axis is

$$
U_z(\phi)=\exp\left(-\frac{i}{2}\phi\sigma_z\right).
$$

Using $\sigma_z^2=I$,

$$
U_z(\phi)=
\begin{pmatrix}
e^{-i\phi/2}&0\\
0&e^{i\phi/2}
\end{pmatrix}.
$$

For $\phi=2\pi$,

$$
U_z(2\pi)=-I.
$$

Therefore a spin-one-half state changes sign under a $2\pi$ rotation and returns exactly to itself only after a $4\pi$ rotation. This is one of the most striking features of spinors.

## Rotational invariance and conservation

If the Hamiltonian is invariant under rotations, then

$$
[H,\mathbf J]=0.
$$

This implies conservation of angular momentum. For a spherically symmetric potential,

$$
V=V(r),
$$

the Hamiltonian commutes with $L^2$ and $L_z$:

$$
[H,L^2]=0,\qquad [H,L_z]=0.
$$

Hence angular momentum quantum numbers can be used to label the energy eigenstates.

## Main points

- Angular momentum generates rotations.
- A finite rotation is represented by an exponential operator.
- Rotations about $z$ multiply $\lvert j,m\rangle$ by $e^{-im\phi}$.
- Spin-one-half states acquire a minus sign under a $2\pi$ rotation.
- Rotational symmetry gives conservation of angular momentum.

## Practice questions

1. Derive the infinitesimal rotation operator about the $z$-axis.
2. Show that $U_z(\phi)\lvert j,m\rangle=e^{-im\phi}\lvert j,m\rangle$.
3. Find the spin-one-half rotation matrix about the $z$-axis.
4. Explain why spinors require a $4\pi$ rotation to return to the same state.
5. Why does spherical symmetry imply conservation of angular momentum?

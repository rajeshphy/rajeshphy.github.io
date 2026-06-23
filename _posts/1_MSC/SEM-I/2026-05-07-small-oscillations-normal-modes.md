---
title: "Small Oscillations and Normal Modes"
summary: "Small oscillations, normal modes of vibration, and the coupled oscillator problem."
date: 2026-05-11 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - small-oscillations
  - normal-modes
permalink: /msc/sem-i/small-oscillations-normal-modes/
hidden: true
---

This note covers the final syllabus topics: small oscillation, normal mode of vibration, and coupled oscillator.

## Equilibrium and small displacement

Let $q_i^{(0)}$ be an equilibrium point. Write small displacements as

$$
\eta_i=q_i-q_i^{(0)}.
$$

At equilibrium,

$$
\left(\frac{\partial V}{\partial q_i}\right)_0=0.
$$

For small oscillations, expand the potential up to second order:

$$
V=V_0+\frac12\sum_{ij}K_{ij}\eta_i\eta_j.
$$

The kinetic energy is approximated as

$$
T=\frac12\sum_{ij}M_{ij}\dot\eta_i\dot\eta_j.
$$

Here $M$ is the mass matrix and $K$ is the stiffness matrix.

## Equations of motion

The Lagrange equations give

$$
\boxed{
\sum_j M_{ij}\ddot\eta_j+\sum_jK_{ij}\eta_j=0.
}
$$

Assume a normal-mode solution

$$
\eta_i=a_i e^{i\omega t}.
$$

Then

$$
\boxed{
(K-\omega^2M)\mathbf a=0.
}
$$

For nontrivial $\mathbf a$,

$$
\boxed{
\det(K-\omega^2M)=0.
}
$$

This equation gives the normal frequencies.

## Normal modes

A normal mode is a pattern of motion in which all coordinates oscillate with the same frequency and fixed relative amplitudes.

For each normal frequency $\omega_r$, the corresponding eigenvector $\mathbf a^{(r)}$ gives the mode shape.

The general small motion is a superposition of normal modes.

## Coupled oscillator example

Consider two equal masses $m$ connected by springs, with coordinates $x_1$ and $x_2$. Let each mass be attached to a wall by spring constant $k$, and the coupling spring between them have constant $k_c$.

The equations are

$$
m\ddot x_1= -kx_1-k_c(x_1-x_2),
$$

$$
m\ddot x_2= -kx_2-k_c(x_2-x_1).
$$

In matrix form,

$$
m\begin{pmatrix}
\ddot x_1\\
\ddot x_2
\end{pmatrix}
+
\begin{pmatrix}
k+k_c&-k_c\\
-k_c&k+k_c
\end{pmatrix}
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}=0.
$$

Assume $x_i=a_i e^{i\omega t}$. The normal frequencies are

$$
\boxed{
\omega_1^2=\frac{k}{m},
\qquad
\omega_2^2=\frac{k+2k_c}{m}.
}
$$

For $\omega_1$, the mode is

$$
\mathbf a_1\propto
\begin{pmatrix}
1\\
1
\end{pmatrix},
$$

so both masses move in phase.

For $\omega_2$, the mode is

$$
\mathbf a_2\propto
\begin{pmatrix}
1\\
-1
\end{pmatrix},
$$

so the masses move out of phase.

## Main points

- Small oscillations are studied by expanding near equilibrium.
- The quadratic part of $V$ determines restoring forces.
- Normal frequencies follow from $\det(K-\omega^2M)=0$.
- A normal mode has fixed amplitude ratios and one frequency.
- Coupled oscillators split into in-phase and out-of-phase modes.

## Practice questions

1. Define small oscillation about equilibrium.
2. Derive the matrix equation $M\ddot\eta+K\eta=0$.
3. What is a normal mode?
4. Derive the normal frequencies of two coupled equal masses.
5. Explain the physical difference between in-phase and out-of-phase modes.

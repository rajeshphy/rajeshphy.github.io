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

Many mechanical systems have stable equilibrium positions. If the displacement from equilibrium is small, the force can often be approximated as linear in the displacement. This turns a complicated motion into harmonic motion or a set of coupled harmonic motions.

Small oscillation theory is therefore the systematic study of motion near stable equilibrium. Normal modes are the special patterns in which all parts of the system oscillate with one common frequency.

## Equilibrium and small displacement

Let $q_i^{(0)}$ be an equilibrium point. Write small displacements as

$$
\eta_i=q_i-q_i^{(0)}.
$$

At equilibrium,

$$
\left(\frac{\partial V}{\partial q_i}\right)_0=0.
$$

This condition says that the first-order force term vanishes at equilibrium. The leading restoring effect then comes from the second-order term in the potential energy.

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

## Determinant calculation

For the coupled oscillator, the matrix equation is

$$
\begin{pmatrix}
k+k_c-m\omega^2&-k_c\\
-k_c&k+k_c-m\omega^2
\end{pmatrix}
\begin{pmatrix}
a_1\\
a_2
\end{pmatrix}=0.
$$

For a non-zero mode shape,

$$
\begin{vmatrix}
k+k_c-m\omega^2&-k_c\\
-k_c&k+k_c-m\omega^2
\end{vmatrix}=0.
$$

Thus

$$
(k+k_c-m\omega^2)^2-k_c^2=0.
$$

Therefore

$$
k+k_c-m\omega^2=\pm k_c.
$$

This gives

$$
\omega_1^2=\frac{k}{m},
\qquad
\omega_2^2=\frac{k+2k_c}{m}.
$$

## One-dimensional small oscillation

For a single coordinate $q$, the equilibrium point $q_0$ is found from

$$
\left(\frac{dV}{dq}\right)_{q_0}=0.
$$

Expanding near $q_0$,

$$
V(q)\simeq V(q_0)+\frac12
\left(\frac{d^2V}{dq^2}\right)_{q_0}(q-q_0)^2.
$$

If

$$
T=\frac12m\dot q^2,
$$

then the small-oscillation frequency is

$$
\boxed{
\omega^2=\frac{1}{m}
\left(\frac{d^2V}{dq^2}\right)_{q_0}.
}
$$

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

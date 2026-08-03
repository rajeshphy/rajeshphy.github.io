---
title: "Energy-Eigenfunction Expansion and Time Evolution"
date: 2025-06-27 09:00:00 +0530
categories:
  - bsc-v
tags: [energy-eigenfunctions, spectral-expansion, stationary-states, time-evolution]
permalink: /bsc/sem-v/mj-11/energy-expansion-time-evolution/
---

Let a time-independent Hamiltonian have a complete orthonormal set of discrete energy eigenfunctions,

$$
\hat H\phi_n(\mathbf r)=E_n\phi_n(\mathbf r),
\qquad
\int\phi_m^{\ast}(\mathbf r)\phi_n(\mathbf r)d^3r=\delta_{mn}.
$$

Completeness means that an arbitrary square-integrable initial state can be expanded as

$$
\Psi(\mathbf r,0)=\sum_n c_n\phi_n(\mathbf r).
$$

Multiply by $\phi_m^{\ast}$ and integrate:

$$
\int\phi_m^{\ast}\Psi(\mathbf r,0)d^3r
=\sum_n c_n\int\phi_m^{\ast}\phi_n d^3r
=\sum_n c_n\delta_{mn}=c_m.
$$

Therefore

$$
\boxed{c_n=\int\phi_n^{\ast}(\mathbf r)\Psi(\mathbf r,0)d^3r}.
$$

If the initial state is normalized, orthonormality gives

$$
\begin{aligned}
1&=\int\lvert\Psi(\mathbf r,0)\rvert^2d^3r\\
&=\sum_{m,n}c_m^{\ast}c_n
\int\phi_m^{\ast}\phi_n d^3r
=\sum_n\lvert c_n\rvert^2.
\end{aligned}
$$

Thus $\lvert c_n\rvert^2$ is the probability of obtaining $E_n$ in an energy measurement.

## General time-dependent solution

Each eigenfunction supplies a stationary solution $\phi_n e^{-iE_nt/\hbar}$. Linearity then gives

$$
\boxed{
\Psi(\mathbf r,t)=
\sum_n c_n\phi_n(\mathbf r)e^{-iE_nt/\hbar}
}.
$$

The sign in the phase is fixed directly by substitution:

$$
i\hbar\frac{\partial}{\partial t}
e^{-iE_nt/\hbar}=E_ne^{-iE_nt/\hbar}.
$$

Consequently,

$$
i\hbar\partial_t\Psi
=\sum_nE_nc_n\phi_ne^{-iE_nt/\hbar}
=\sum_nc_n(\hat H\phi_n)e^{-iE_nt/\hbar}
=\hat H\Psi.
$$

At $t=0$ the expression returns the prescribed initial state, so it is the required solution. Only the phases change; hence the energy probabilities $\lvert c_n\rvert^2$ remain constant. The expectation value is

$$
\boxed{\langle H\rangle=\sum_n\lvert c_n\rvert^2E_n},
$$

and is time independent for a time-independent Hamiltonian.

## Density of a superposition

Although a single energy eigenstate has a time-independent density, a superposition need not. For two components,

$$
\Psi=c_1\phi_1e^{-iE_1t/\hbar}
+c_2\phi_2e^{-iE_2t/\hbar},
$$

so

$$
\begin{aligned}
\lvert\Psi\rvert^2={}&\lvert c_1\phi_1\rvert^2+\lvert c_2\phi_2\rvert^2\\
&+2\operatorname{Re}\!\left[
c_1c_2^{\ast}\phi_1\phi_2^{\ast}
e^{-i(E_1-E_2)t/\hbar}
\right].
\end{aligned}
$$

The interference term oscillates at angular frequency

$$
\omega_{12}=\frac{\lvert E_1-E_2\rvert}{\hbar}.
$$

If $E_1=E_2$, the relative phase is constant. If the Hamiltonian also has a continuous spectrum, the corresponding part of the expansion is an integral,

$$
\Psi(\mathbf r,t)
=\sum_n c_n\phi_n e^{-iE_nt/\hbar}
+\int c(E)\phi_E(\mathbf r)e^{-iEt/\hbar}dE,
$$

with Dirac-delta rather than Kronecker-delta normalization. This is the same spectral principle for both bound and free components.

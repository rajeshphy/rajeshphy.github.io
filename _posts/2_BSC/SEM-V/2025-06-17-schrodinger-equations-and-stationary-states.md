---
title: "Schrödinger Equations and Stationary States"
date: 2025-06-17 09:00:00 +0530
categories:
  - bsc-v
tags: [schrodinger-equation, hamiltonian, stationary-states, energy-eigenvalues]
permalink: /bsc/sem-v/mj-11/schrodinger-equations-stationary-states/
---

For a non-relativistic particle in a scalar potential,

$$
E=\frac{p^2}{2m}+V(\mathbf r,t).
$$

The de Broglie plane wave $e^{i(\mathbf p\cdot\mathbf r-Et)/\hbar}$ is an eigenfunction of $i\hbar\partial_t$ with eigenvalue $E$ and of $-i\hbar\nabla$ with eigenvalue $\mathbf p$. This fixes the operator substitutions

$$
E\longmapsto i\hbar\frac{\partial}{\partial t},
\qquad
\mathbf p\longmapsto-i\hbar\nabla.
$$

Applying the classical energy expression as an operator relation motivates the time-dependent Schrödinger equation; the equation itself is a postulate of non-relativistic quantum dynamics:

$$
\boxed{i\hbar\frac{\partial\Psi}{\partial t}=\hat H\Psi},
\qquad
\boxed{\hat H=-\frac{\hbar^2}{2m}\nabla^2+V(\mathbf r,t)}.
$$

The minus sign in the kinetic term is $(-i)^2=-1$. Its units are those of energy because $\hbar^2\nabla^2/m$ has dimensions

$$
\frac{(\mathrm{J\,s})^2}{\mathrm{kg\,m^2}}
=\mathrm J.
$$

The potential $V$ must have the same units. The equation is first order in time, so a specified initial wavefunction determines its later evolution; it is second order in space, so spatial boundary conditions are also required.

## Conservation under dynamical evolution

Write the equation and its adjoint in state notation:

$$
\lvert\dot\Psi\rangle=-\frac{i}{\hbar}\hat H\lvert\Psi\rangle,
\qquad
\langle\dot\Psi\rvert=\frac{i}{\hbar}\langle\Psi\rvert\hat H^\dagger.
$$

For a self-adjoint Hamiltonian,

$$
\begin{aligned}
\frac d{dt}\langle\Psi\vert\Psi\rangle
&=\langle\dot\Psi\vert\Psi\rangle
+\langle\Psi\vert\dot\Psi\rangle\\
&=\frac{i}{\hbar}\langle\Psi\vert\hat H\vert\Psi\rangle
-\frac{i}{\hbar}\langle\Psi\vert\hat H\vert\Psi\rangle=0.
\end{aligned}
$$

Thus normalization is preserved. If $\hat H$ is time independent, the evolution operator is

$$
\boxed{U(t,t_0)=\exp\!\left[-\frac{i}{\hbar}\hat H(t-t_0)\right]},
$$

$$
\lvert\Psi(t)\rangle=U(t,t_0)\lvert\Psi(t_0)\rangle.
$$

Differentiation verifies $i\hbar\,\partial_tU=\hat HU$ and $U(t_0,t_0)=I$. Since $\hat H=\hat H^\dagger$,

$$
U^\dagger U
=e^{i\hat H(t-t_0)/\hbar}e^{-i\hat H(t-t_0)/\hbar}=I,
$$

so the evolution is unitary.

## Time-independent Schrödinger equation

When $V(\mathbf r)$ has no explicit time dependence, set

$$
\Psi(\mathbf r,t)=\psi(\mathbf r)T(t).
$$

Substitution gives

$$
i\hbar\psi\frac{dT}{dt}
=T\left[-\frac{\hbar^2}{2m}\nabla^2+V(\mathbf r)\right]\psi.
$$

Divide by $\psi T$ wherever the product is non-zero:

$$
i\hbar\frac1T\frac{dT}{dt}
=\frac1\psi\left[-\frac{\hbar^2}{2m}\nabla^2+V\right]\psi.
$$

The left side depends only on $t$ and the right side only on $\mathbf r$; both must equal a constant $E$. Hermiticity of $\hat H$ makes $E$ real. The separated equations are

$$
i\hbar\frac{dT}{dt}=ET,
\qquad
\boxed{\hat H\psi=E\psi}.
$$

Integrating $dT/T=-iE\,dt/\hbar$ gives

$$
T(t)=T(0)e^{-iEt/\hbar}.
$$

After absorbing $T(0)$ into $\psi$, an energy eigenfunction produces the stationary state

$$
\boxed{\Psi_E(\mathbf r,t)=\psi_E(\mathbf r)e^{-iEt/\hbar}}.
$$

Its probability density is stationary,

$$
\lvert\Psi_E(\mathbf r,t)\rvert^2
=\lvert\psi_E(\mathbf r)\rvert^2,
$$

because the time factor has unit modulus. The state vector still changes by a phase. Spatial boundary conditions and normalizability select the allowed eigenfunctions and hence the energy eigenvalues; this selection is derived for the stated potentials in Unit III.

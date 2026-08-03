---
title: "Schrödinger Equations and Stationary States"
date: 2025-06-26 09:00:00 +0530
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

## Solved Problems

### 1. Plane-wave eigenstate in a constant potential

An electron moves in the constant potential $V_0=3.00\ \mathrm{eV}$ with wave number $k=+2.00\times10^{10}\ \mathrm{m^{-1}}$. Find its total energy, angular frequency, and stationary plane-wave factor.

**Solution.** For $\psi=Ae^{ikx}$,

$$
\frac{d^2\psi}{dx^2}=-k^2\psi.
$$

The kinetic contribution is therefore positive despite the minus sign in the Hamiltonian:

$$
K=\frac{\hbar^2k^2}{2m_e}
=15.2399\ \mathrm{eV}.
$$

Adding the potential with its stated sign gives

$$
\boxed{E=K+V_0=18.2399\ \mathrm{eV}},
$$

and

$$
\boxed{\omega=\frac E\hbar
=2.771\times10^{16}\ \mathrm{rad\,s^{-1}}}.
$$

Thus one stationary solution is

$$
\boxed{\Psi(x,t)=A
e^{\,i(2.00\times10^{10}\ \mathrm{m^{-1}})x}
e^{-i(2.771\times10^{16}\ \mathrm{s^{-1}})t}}.
$$

The positive $k$ selects positive momentum and probability current; changing $k$ to $-k$ reverses the current but leaves the energy unchanged. The combinations $kx$ and $\omega t$ are dimensionless. In the limit $k\to0$, the kinetic contribution vanishes and $E\to V_0$.

### 2. Adding a constant to every potential energy

If $\hat H\psi_n=E_n\psi_n$, show what changes when $V(\mathbf r)$ is replaced by $V(\mathbf r)+C$, where $C$ is a real constant.

**Solution.** The shifted Hamiltonian is

$$
\hat H^{\prime}=\hat H+C.
$$

Acting on the old eigenfunction gives

$$
\hat H^{\prime}\psi_n=(\hat H+C)\psi_n
=(E_n+C)\psi_n.
$$

Hence

$$
\boxed{\psi_n^{\prime}=\psi_n,\qquad E_n^{\prime}=E_n+C}.
$$

The corresponding time-dependent state is

$$
\Psi_n^{\prime}(\mathbf r,t)
=\psi_n(\mathbf r)e^{-i(E_n+C)t/\hbar}
=e^{-iCt/\hbar}\Psi_n(\mathbf r,t).
$$

The extra factor is a global phase, so $\lvert\Psi_n^{\prime}\rvert^2=\lvert\Psi_n\rvert^2$ and all expectation values are unchanged. The exponent is dimensionless because $Ct/\hbar$ is energy times time divided by action. Energy differences also remain unchanged: $(E_m+C)-(E_n+C)=E_m-E_n$. For $C\to0$, the original spectrum and state are recovered.

## Descriptive Questions

1. Why is the time-dependent Schrödinger equation a postulate rather than a derivable consequence of the classical energy equation?
2. How does self-adjointness of the Hamiltonian guarantee preservation of normalization during time evolution?
3. Derive the time-independent Schrödinger equation by separation of variables and explain why its separation constant is real.
4. Why is an energy eigenstate called stationary even though its state vector continues to acquire phase?

## Numerical Problems

1. Find the kinetic energy and angular frequency of a free electron with de Broglie wavelength $0.200\ \mathrm{nm}$.<br>
   **Final answer:** $\boxed{E=37.60\ \mathrm{eV},\quad\omega=5.713\times10^{16}\ \mathrm{rad\,s^{-1}}}$.
2. An energy eigenstate has $E=2.00\ \mathrm{eV}$. Find its phase angle after $1.00\ \mathrm{fs}$ in the convention $e^{-iEt/\hbar}$.<br>
   **Final answer:** $\boxed{-Et/\hbar=-3.039\ \mathrm{rad}}$.
3. A stationary-state time factor has ordinary frequency $5.00\times10^{14}\ \mathrm{Hz}$. Find its energy.<br>
   **Final answer:** $\boxed{E=h\nu=2.068\ \mathrm{eV}}$.

Every added eigenvalue, phase, and constant-shift identity is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Schrödinger equation](https://en.wikipedia.org/wiki/Schr%C3%B6dinger_equation)
2. [OpenStax, *University Physics Volume 3*, Section 7.3: The Schrödinger Equation](https://openstax.org/books/university-physics-volume-3/pages/7-3-the-schrodinger-equation)
3. [MIT OpenCourseWare 8.04, Lecture Note 5: Wavefunction equations and the Schrödinger equation](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/resources/mit8_04s16_lecnotes5/)
4. [The Feynman Lectures on Physics, Vol. III, Chapter 16: The Dependence of Amplitudes on Position](https://www.feynmanlectures.caltech.edu/III_16.html)

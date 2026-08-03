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

## Solved Problems

### 1. Energy statistics and time evolution of a three-state superposition

A normalized state has coefficients

$$
c_1=\frac1{\sqrt6},\qquad
c_2=\frac{i}{\sqrt3},\qquad
c_3=-\frac1{\sqrt2},
$$

for energies $E_1=1.00\ \mathrm{eV}$, $E_2=2.00\ \mathrm{eV}$, and $E_3=5.00\ \mathrm{eV}$. Find the energy probabilities, mean energy, and standard deviation.

**Solution.** Phases and signs do not enter an energy probability:

$$
P_1=\frac16,\qquad P_2=\frac13,\qquad P_3=\frac12,
$$

and $P_1+P_2+P_3=1$. Therefore

$$
\begin{aligned}
\langle E\rangle
&=\frac16(1)+\frac13(2)+\frac12(5)\\
&=\boxed{\frac{10}{3}\ \mathrm{eV}=3.333\ \mathrm{eV}}.
\end{aligned}
$$

The second moment is

$$
\langle E^2\rangle
=\frac16(1)^2+\frac13(2)^2+\frac12(5)^2
=14.00\ \mathrm{eV^2},
$$

so

$$
\Delta E
=\sqrt{\langle E^2\rangle-\langle E\rangle^2}
=\boxed{\frac{\sqrt{26}}3\ \mathrm{eV}
=1.700\ \mathrm{eV}}.
$$

The evolved state is

$$
\lvert\Psi(t)\rangle
=\sum_{n=1}^3c_ne^{-iE_nt/\hbar}\lvert n\rangle.
$$

Each phase has unit modulus, so the three probabilities, $\langle E\rangle$, and $\Delta E$ are time independent. The variance has units $\mathrm{eV^2}$ and its non-negative square root has energy units. If only one coefficient remains nonzero, the limiting spread is zero.

### 2. Beat period of an off-diagonal observable

Let $\lvert\Psi(0)\rangle=(\lvert1\rangle+\lvert2\rangle)/\sqrt2$, with $E_2-E_1=1.50\ \mathrm{eV}$. An observable has $A_{11}=A_{22}=0$ and $A_{12}=A_{21}=a=2.00$ in its stated units. Find $\langle A\rangle(t)$ and its period.

**Solution.** Time evolution gives

$$
\lvert\Psi(t)\rangle
=\frac1{\sqrt2}\left(
e^{-iE_1t/\hbar}\lvert1\rangle+
e^{-iE_2t/\hbar}\lvert2\rangle\right).
$$

Only the two cross terms survive:

$$
\begin{aligned}
\langle A\rangle(t)
&=\frac a2\left[
e^{-i(E_2-E_1)t/\hbar}
+e^{i(E_2-E_1)t/\hbar}\right]\\
&=\boxed{a\cos\!\left(\frac{(E_2-E_1)t}{\hbar}\right)}.
\end{aligned}
$$

Thus

$$
T=\frac{2\pi\hbar}{E_2-E_1}
=\frac{h}{1.50\ \mathrm{eV}}
=\boxed{2.757\ \mathrm{fs}}.
$$

At $t=0$, $\langle A\rangle=+2.00$; after $T/2$ it is $-2.00$. The cosine argument is dimensionless and the sign of $E_2-E_1$ would not change the observable because cosine is even. In the degenerate limit $E_2-E_1\to0$, the relative phase stops evolving and the expectation becomes constant.

## Descriptive Questions

1. How are expansion coefficients obtained from an initial wavefunction, and why do their squared magnitudes sum to one?
2. Why are energy probabilities constant for a time-independent Hamiltonian even when the position-space probability density oscillates?
3. Explain how interference terms generate beat frequencies in a superposition of nondegenerate energy eigenstates.
4. How is the spectral expansion modified when a Hamiltonian has both discrete bound states and a continuous spectrum?

## Numerical Problems

1. A two-state expansion has coefficients $3/5$ and $4i/5$. Find the two measurement probabilities.<br>
   **Final answer:** $\boxed{P_1=0.360,\quad P_2=0.640}$.
2. Find the beat period associated with an energy separation of $0.800\ \mathrm{eV}$.<br>
   **Final answer:** $\boxed{T=h/\Delta E=5.170\ \mathrm{fs}}$.
3. Energy values $2.00\ \mathrm{eV}$ and $8.00\ \mathrm{eV}$ occur with probabilities $0.250$ and $0.750$. Find the mean energy.<br>
   **Final answer:** $\boxed{\langle E\rangle=6.50\ \mathrm{eV}}$.

Every added probability, energy moment, and beat-period identity is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Quantum superposition](https://en.wikipedia.org/wiki/Quantum_superposition)
2. [MIT OpenCourseWare 8.04, Lecture Note 10: Stationary states and energy eigenstates](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/resources/mit8_04s16_lecnotes10/)
3. [The Feynman Lectures on Physics, Vol. III, Chapter 16: Wavefunctions and quantized energies](https://www.feynmanlectures.caltech.edu/III_16.html)

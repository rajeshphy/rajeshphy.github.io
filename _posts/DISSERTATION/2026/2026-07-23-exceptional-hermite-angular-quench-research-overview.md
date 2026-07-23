---
layout: post
title: "Research Overview: Exceptional-Hermite Angular Quenches"
summary: "An overview of a seven-part research sequence on stable magnetic oscillators, exact exceptional-Hermite state preparation, angular quenches, covariance response, survival probability, spectral dynamics, synchronization, and non-Gaussian mutual information."
date: 2026-07-23 10:30:00 +0530
categories:
  - dissertation-2026
tags:
  - dissertation
  - quantum mechanics
  - exceptional Hermite
  - quantum quench
  - non-Gaussian dynamics
  - quantum information
permalink: /dissertation/exceptional-hermite-angular-quench/
hidden: true
---

This research sequence studies how an exactly prepared non-Gaussian quantum
state responds when an angular-momentum coupling is switched on suddenly.
The system is a two-dimensional anisotropic oscillator, motivated by a
charged particle in a magnetic field, whose one-dimensional preparation
potentials are rational extensions of the harmonic oscillator. Their exact
eigenstates are expressed through exceptional-Hermite polynomials.

The seven posts form one connected argument. They begin with the physical
Hamiltonian and its stability, construct the non-Gaussian initial state,
define a controlled quench, derive exact short-time responses, propagate the
state at finite time, and finally determine which correlations require the
complete quantum state rather than its covariance matrix.

## Central physical question

The preparation Hamiltonian is separable in two rotated coordinates,
$q_+$ and $q_-$. At the quench, the coordinate confinement is kept fixed and
the signed angular generator

$$
L_z=q_+p_- -q_-p_+
$$

is activated:

$$
H_f=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z.
$$

Here $\omega_c$ is signed, while
$H_{\mathrm{sep}}^{\mathrm{RE}}$ contains the two exactly solvable rational
oscillators. The problem is then to determine how the prepared product state
departs from stationarity, develops cross-mode correlations, exhibits
relative-fluctuation synchronization, and generates mutual information.

The difficulty is that exceptional-Hermite states are non-Gaussian. Their
first and second moments do not determine the complete state, and the
covariance equations do not generally close. The research therefore combines
exact operator results with controlled finite-basis propagation instead of
assuming Gaussian dynamics.

## Main findings and new results

### Coordinate reduction is not dynamical diagonalization

An orthogonal rotation removes the mixed coordinate term from the confining
potential, but it does not remove the magnetic angular-momentum coupling.
The rotated confinement scales $\Omega_\pm$ are therefore not the true
phase-space normal-mode frequencies. The analysis derives the distinct
dynamical frequencies and shows that strict confinement is governed by the
bare-trap positivity conditions, equivalently

$$
\Omega_\pm^2>\omega_c^2.
$$

This separation prevents a coordinate rotation from being mistaken for a
complete solution of the magnetic dynamics.

### The non-Gaussian initial state is exact

A Darboux factorization produces regular rational oscillator potentials from
even pseudo-Hermite seeds. The construction gives normalized
exceptional-Hermite eigenfunctions, their shifted spectrum, parity, exact
moments, and coordinate and momentum matrix elements. The initial two-mode
state is therefore an exact product eigenstate of the preparation Hamiltonian,
not a fitted wavefunction or a Gaussian approximation.

### The quench changes one physical interaction

The protocol holds the coordinate potentials and their scales fixed while
switching on only $-\omega_cL_z$. This distinguishes the intended angular
quench from a literal change of magnetic field, which would generally alter
both the signed angular term and the quadratic diamagnetic contribution.
The energy variance provides an exact state-specific test of whether the
prepared state must evolve after the switch.

### The initial covariance response is exact without Gaussian closure

For a real, definite-parity product state, the complete first-order
cross-covariance response follows directly from the Heisenberg equations:

$$
\left.\dot{\sigma}_{q_+q_-}\right|_0
=\omega_c\left(V_{q,-}-V_{q,+}\right),
$$

$$
\left.\dot{\sigma}_{p_+p_-}\right|_0
=\omega_c\left(V_{p,-}-V_{p,+}\right),
$$

while the two mixed position-momentum cross rates vanish initially. These
relations require no Gaussian approximation. They show that the signed
linear response is controlled by the mismatch of the corresponding local
variances.

### Vanishing covariance slopes do not imply stationarity

When the two factors have equal local variances, every first-order cross
covariance rate can vanish. The state can nevertheless be nonstationary.
The survival probability detects this through the exact short-time law

$$
\mathcal S(t)
=1-\omega_c^2
\left(
V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12
\right)t^2+O(t^4).
$$

This supplies a concrete counterexample to the idea that an unchanged
covariance matrix proves that the complete state is stationary.

### Finite-time dynamics can be obtained without closing the moments

The exact exceptional-product basis converts the Schrödinger equation into
an infinite system for the expansion coefficients. Parity separates the
dynamics into invariant sectors, and finite matrices are propagated
spectrally. Increasing quadrature orders and basis cutoffs, together with
boundary-population and observable-level comparisons, distinguishes a
converged finite-time result from a merely norm-preserving truncation.

This calculation produces survival, covariance, synchronization, and
entanglement-related observables from the propagated amplitudes themselves.
No assumed Gaussian covariance model replaces the state.

### Exact mutual information and a covariance bound are different

For a propagated pure state with coefficient matrix $C(t)$, the reduced
density operator is

$$
\rho_A(t)=C(t)C^\dagger(t).
$$

Its eigenvalues determine the exact mutual information within the converged
finite basis. The local covariance instead determines a Gaussian
maximum-entropy upper bound. For a globally pure state, their difference is

$$
2h(\nu_A)-I(A:B)
=2\delta_{\mathrm{NG}}(\rho_A).
$$

Thus the excess of the covariance bound is exactly twice the relative-entropy
non-Gaussianity of the reduced state. In particular, the covariance bound can
be positive even when the exact mutual information is zero for an initial
product state.

## Methodology

The research uses four complementary levels of analysis.

### First-principles analytical construction

The Hamiltonian is derived from minimal coupling in the symmetric gauge.
Canonical coordinate and momentum rotations are performed together, the
stability conditions are obtained from positivity of the bare trap, and the
true dynamical frequencies follow from the coupled Hamilton or Heisenberg
equations.

The exceptional-Hermite preparation is derived from the one-dimensional
Schrödinger equation using Darboux factorization. This fixes the potential,
energy shift, normalization, parity, and low moments before any time
evolution is attempted.

### Operator and short-time methods

Commutators with the post-quench Hamiltonian generate the exact Heisenberg
equations. Product structure, parity, reality, and local stationarity are
then used to derive the first covariance rates. A Taylor expansion of the
survival amplitude relates its curvature to the post-quench energy variance.
These calculations remain exact even though the full non-Gaussian moment
hierarchy is open.

### Symbolic verification with Maxima

Compact Maxima calculations verify the coordinate reduction, exceptional
Schrödinger residuals, Gaussian control cases, covariance coefficients,
survival curvature, stability margins, and entropy identities. The symbolic
checks accompany the derivations and return exact zero residuals or the
stated numerical values.

### Controlled numerical propagation

One-mode matrix elements are evaluated with Gauss-Hermite quadrature and
assembled into the exceptional-product representation of $H_f$. The
projected Hermitian Hamiltonian is diagonalized, and its spectral phases
propagate the coefficient vector. Reliability is assessed through
orthogonality and Hermiticity errors, parity leakage, boundary population,
norm conservation, analytic short-time targets, and convergence of each
reported observable as the cutoff increases.

The calculation carefully separates three kinds of statement:

- exact identities in the infinite-dimensional theory;
- exact evolution inside a chosen projected matrix; and
- numerical evidence that a finite-window observable has converged toward
  its infinite-dimensional value.

## Overall contribution

The sequence provides a complete route from a physical Hamiltonian to
non-Gaussian information dynamics. Its central conceptual result is that
covariance can give exact local response coefficients and useful bounds, but
it cannot generally determine the state, close the dynamics, or supply the
exact mutual information. Survival probability and the reduced density
spectrum recover information that second moments omit.

The work also supplies a reproducible research framework: exact
exceptional-Hermite preparation, a precisely defined fixed-confinement
quench, Maxima-verified analytical benchmarks, and observable-level
convergence tests for the finite-time calculation.

## The seven research posts

### [I: Magnetic oscillator stability and rotated-coordinate reduction](/magnetic-oscillator-stability-reduction/)

Derives the charged anisotropic oscillator from minimal coupling, rotates the
coordinate quadratic form, distinguishes the rotated scales from the true
dynamical frequencies, and establishes the strict confinement conditions.

### [II: Exact exceptional-Hermite preparation before the angular quench](/exceptional-hermite-preparation/)

Builds regular rational oscillator potentials and normalized
exceptional-Hermite eigenstates from Darboux factorization, including their
spectrum, parity, exact moments, and operator matrix elements.

### [III: A fixed-confinement angular-momentum quench](/fixed-confinement-angular-quench/)

Defines the sudden quench that activates only the signed angular-momentum
coupling, proves how it couples the preparation coordinates, and derives an
exact energy-variance test for post-quench stationarity.

### [IV: Exact first-order covariance response without Gaussian closure](/exact-covariance-response/)

Derives the initial means and complete covariance response from the
Heisenberg equations, identifies the open non-Gaussian moment hierarchy, and
obtains the exact short-time relative-noise synchronization response.

### [V: Survival curvature beyond the linear covariance response](/survival-curvature/)

Uses energy variance to derive the survival-probability curvature and shows
why vanishing first-order covariance rates do not prove that the quantum
state is stationary.

### [VI: Exceptional-basis spectral propagation and synchronization](/spectral-propagation-synchronization/)

Constructs parity-resolved finite-basis propagation, explains the physical
meaning of the cutoff, verifies analytic short-time targets, and studies
finite-time survival, covariance, synchronization, and convergence.

### [VII: Non-Gaussian mutual information: exact entropy and covariance bounds](/non-gaussian-mutual-information/)

Computes mutual information from the reduced density spectrum, distinguishes
it from globally matched Gaussian information and local covariance bounds,
and identifies the bound gap with reduced-state non-Gaussianity.

---
title: "IV: Exact First-Order Covariance Response Without Gaussian Closure"
date: 2026-06-07 09:00:00 +05:30
categories: research
tags: [covariance dynamics, moment hierarchy, exceptional Hermite states, quantum synchronization, non-Gaussian dynamics]
permalink: /research/exact-covariance-response/
description: "The nonlinear moment hierarchy and the complete first-order cross-covariance response of a parity-resolved exceptional-Hermite quench."
series: exceptional-hermite-angular-quench
part: 4
authors: [Rajesh Kumar, Rajesh Kumar Yadav]
status: manuscript
---

Covariances are useful observables in a non-Gaussian quench, but they do not generally form a closed dynamical system. Here the initial cross-covariance rates can nevertheless be derived exactly, directly from the Heisenberg equations and the symmetry of the prepared state.

## Setting and conventions

We use $\hbar=2M=1$ and a signed half-cyclotron frequency

$$
\omega_c=\frac{q_{\mathrm{el}}B}{2Mc}.
$$

The preparation bipartition is fixed as

$$
A\equiv +,\qquad B\equiv -.
$$

An exact product eigenstate of the separable exceptional-Hermite Hamiltonian is prepared first,

$$
\lvert\Psi_0\rangle
=\lvert m_+,\ell_+\rangle_A
\otimes\lvert m_-,\ell_-\rangle_B,
$$

and then evolved with

$$
H_f=p_+^2+p_-^2+U_+(q_+)+U_-(q_-)
-\omega_c(q_+p_--q_-p_+).
$$

The functions $U_\pm$ contain the regular rational extensions and the same diamagnetically dressed confinement used during preparation. The quench switches on the angular term only.

Throughout the first-order theorem below, each initial factor is assumed to be real and of definite parity. These hypotheses are essential; the stated selection rules need not hold for a displaced, current-carrying, or indefinite-parity input.

## Why the moment hierarchy remains open

The exact Heisenberg equations are

$$
\begin{aligned}
\dot q_+&=2p_++\omega_cq_-,
&\dot q_-&=2p_--\omega_cq_+,\\
\dot p_+&=-U_+'(q_+)+\omega_cp_-,
&\dot p_-&=-U_-'(q_-)-\omega_cp_+.
\end{aligned}
$$

For a quadratic potential, $U_\alpha'$ is linear and the second moments close. A rational extension changes that structure. For example,

$$
\frac{d}{dt}\langle q_+^2\rangle
=2\langle q_+p_++p_+q_+\rangle
+2\omega_c\langle q_+q_-\rangle,
$$

while

$$
\begin{aligned}
\frac{d}{dt}\langle q_+p_++p_+q_+\rangle
={}&4\langle p_+^2\rangle
-\langle q_+U_+'+U_+'q_+\rangle\\
&+2\omega_c\langle q_+p_-+q_-p_+\rangle.
\end{aligned}
$$

The rational-force expectation is not fixed by the covariance matrix. Higher equations generate further force-weighted moments, so the exact dynamics do not admit a Gaussian second-moment closure.

This does not prevent local analytic results. For any observable $\mathcal O$, its derivatives at the quench are

$$
\left.\frac{d^n}{dt^n}\langle\mathcal O(t)\rangle\right|_{t=0}
=i^n\left\langle\operatorname{ad}_{H_f}^n(\mathcal O)\right\rangle_0,
\qquad
\operatorname{ad}_{H_f}(X)=[H_f,X].
$$

This nested-commutator identity is exact. Keeping finitely many Taylor terms is, separately, a short-time approximation.

## Complete first-order cross-covariance theorem

Define the initial local variances

$$
V_{q,\alpha}=\langle q_\alpha^2\rangle_0,
\qquad
V_{p,\alpha}=\langle p_\alpha^2\rangle_0.
$$

For the real definite-parity product input, all first moments vanish. Initial cross correlations and local symmetrized $q_\alpha p_\alpha$ covariances also vanish. Therefore cross moments and cross covariances agree to first order at $t=0$.

Direct differentiation gives the complete response:

$$
\boxed{
\left.\frac{d}{dt}\operatorname{Cov}(q_+,q_-)\right|_0
=\omega_c(V_{q,-}-V_{q,+})
}
$$

and

$$
\boxed{
\left.\frac{d}{dt}\operatorname{Cov}(p_+,p_-)\right|_0
=\omega_c(V_{p,-}-V_{p,+}).
}
$$

Both symmetrized mixed blocks vanish:

$$
\left.\frac{d}{dt}\frac12
\langle q_+p_-+p_-q_+\rangle\right|_0=0,
$$

$$
\left.\frac{d}{dt}\frac12
\langle q_-p_++p_+q_-\rangle\right|_0=0.
$$

The force terms that might enter the momentum cross rate factorize into products such as $\langle U_+'\rangle_0\langle p_-\rangle_0$, and parity makes them vanish. No assumption of Gaussianity is used.

The result has three immediate consequences:

- Field reversal changes the sign of each nonzero rate because $\omega_c$ is signed.
- Equality $V_{q,+}=V_{q,-}$ removes only the coordinate-coordinate rate.
- Every linear cross-covariance rate vanishes only when both $V_{q,+}=V_{q,-}$ and $V_{p,+}=V_{p,-}$.

These are statements about derivatives at the quench. They do not imply that the same pattern persists at later times, when the nonlinear hierarchy becomes active.

## The synchronization numerator

When the rotated and laboratory axes coincide up to permutation—as for $g=0$—introduce dimensionless quadratures

$$
Q_j=\sqrt{\frac{\omega_0}{2}}x_j,
\qquad
P_j=\sqrt{\frac{2}{\omega_0}}p_j.
$$

The complete-synchronization measure is

$$
S_c=\langle\mathcal D_c\rangle^{-1},
\qquad
\mathcal D_c=\frac12\left[
(\delta Q_x-\delta Q_y)^2+(\delta P_x-\delta P_y)^2
\right].
$$

An equal-time value of $S_c$ measures relative fluctuations; by itself it is not evidence of phase locking or a stationary synchronized regime.

For two codimension-two ground factors, set $\omega_0=1$ and define

$$
\mathcal M=\sqrt{\frac{\pi}{2}}e^{1/2}
\operatorname{erfc}\!\left(\frac{1}{\sqrt2}\right),
$$

$$
A_\alpha^{(2)}
=V_{Q,\alpha}+V_{P,\alpha}
=\frac{\mathcal M-1/2}{\Omega_\alpha}
+\Omega_\alpha\left(\frac32+\frac{\mathcal M}{3}\right).
$$

The local variance rates vanish at $t=0$ for these real stationary one-mode factors. Hence

$$
\left.\frac{d}{dt}\langle\mathcal D_c\rangle\right|_0
=\omega_c\underbrace{\left(A_+^{(2)}-A_-^{(2)}\right)}_{
\mathcal N_{\mathrm{sync}}},
$$

where $\mathcal N_{\mathrm{sync}}$ is the synchronization numerator. It yields

$$
\boxed{
S_c(t)=
\frac{2}{A_+^{(2)}+A_-^{(2)}}
-\frac{4\omega_c\left(A_+^{(2)}-A_-^{(2)}\right)}
{\left(A_+^{(2)}+A_-^{(2)}\right)^2}t
+O(t^2).
}
$$

The slope is odd under field reversal and disappears when the two dimensionless second-moment sums coincide. This formula is local in time and specific to the stated axes, parity, factor choice, and scaling. It is not a claim of persistent or stationary synchronization.

For the manuscript benchmark

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
$$

Maxima gives

$$
S_c(0)=0.5106376395008639\ldots,
\qquad
\dot S_c(0)=-0.1229730434570357\ldots.
$$

The symbolic residuals used in the publication check vanish. A separate converged basis propagation reproduces these coefficients numerically, but that propagation uses tested finite cutoffs—it is not an exact finite-dimensional reduction.

## What this result does and does not establish

The first-order response is exact for the stated initial state. It provides a sharp diagnostic for analytic work and numerical propagation. It does not close the rational moment hierarchy, determine later-time covariances from initial second moments alone, or turn a non-Gaussian state into a covariance-complete one.

In particular, vanishing linear covariance rates do not prove stationarity. The survival probability supplies an independent second-order test, developed in the next article.

## Series navigation

1. [Magnetic oscillator: stability and coordinate reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite state preparation](/research/exceptional-hermite-preparation/)
3. [A fixed-confinement angular-momentum quench](/research/fixed-confinement-angular-quench/)
4. **Exact first-order covariance response**
5. [Survival curvature beyond covariance](/research/survival-curvature/)
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

---
title: "Exceptional-Basis Spectral Propagation and Synchronization"
date: 2026-06-09 09:00:00 +05:30
categories: [Research, Quantum Mechanics]
tags: [exceptional Hermite, angular-momentum quench, spectral propagation, quantum synchronization, cutoff convergence, non-Gaussian dynamics]
permalink: /research/spectral-propagation-synchronization/
description: "A cutoff-tested exceptional-Hermite propagation of a fixed-confinement angular-momentum quench, with an exact short-time synchronization slope and explicit limits on its interpretation."
series: exceptional-hermite-angular-quench
part: 6
authors: [Rajesh Kumar, Rajesh Kumar Yadav]
status: manuscript
---

> **Manuscript status.** This article describes work prepared for submission to the *International Journal of Modern Physics A*. It does not claim journal acceptance or a DOI.

The short-time commutator expansion tells us how an observable first responds to the quench. It does not, by itself, produce a finite-time trajectory. Here we use the complete exceptional-Hermite product basis to propagate the same non-Gaussian state beyond short times, without imposing a Gaussian closure.

The result is a numerical approximation to the infinite-dimensional Schrödinger evolution, not a new finite-dimensional exact model. Its reliability therefore rests on observable-level cutoff tests.

## The fixed-confinement quench

We use

$$
\hbar=2M=1,
$$

and retain the sign of the half-cyclotron frequency

$$
\omega_c=\frac{qB}{2Mc}.
$$

After the coordinate potential has been diagonalized, the post-quench Hamiltonian is

$$
H_{\mathrm{RE},B}
=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_c L_z,
\qquad
L_z=q_+p_- -q_-p_+.
$$

The preparation Hamiltonian $H_{\mathrm{sep}}^{\mathrm{RE}}$ already contains the coordinate scales $\Omega_\pm$, including the target diamagnetic dressing. At $t=0$, only the angular generator $-\omega_cL_z$ is activated. This is a fixed-confinement angular-momentum quench. It is not a literal switch of the complete magnetic field, which would also alter the diamagnetic coordinate term.

The signed $\omega_c$ matters. Reversing it reverses every first-order angular-response coefficient, although even-in-time quantities such as the leading survival loss depend on $\omega_c^2$.

## Expansion in the exceptional basis

Fix the even exceptional-Hermite codimensions

$$
\boldsymbol m=(m_+,m_-).
$$

The separable one-mode eigenstates form a complete product basis, so the evolving state can be written as

$$
|\Psi(t)\rangle
=\sum_{r,s=0}^{\infty}c_{rs}(t)
|m_+,r\rangle\otimes|m_-,s\rangle.
$$

Projecting the Schrödinger equation gives

$$
i\dot c_{rs}
=E^{\mathrm{sep}}_{\boldsymbol m,(r,s)}c_{rs}
-\omega_c\sum_{u,v=0}^{\infty}
\mathsf L_{rs,uv}c_{uv},
$$

where the angular-momentum matrix elements factor into one-dimensional integrals:

$$
\begin{aligned}
\mathsf L_{rs,uv}
={}&\langle r|q_+|u\rangle
\langle s|p_-|v\rangle\\
&-\langle r|p_+|u\rangle
\langle s|q_-|v\rangle.
\end{aligned}
$$

The mode labels $m_+$ and $m_-$ are suppressed inside these one-mode matrix elements. For momentum elements, the derivative acts on the exceptional polynomial ratio as well as on its Gaussian envelope. Reweighting a Gaussian probability density is therefore insufficient for the momentum sector.

Both $q_\alpha$ and $p_\alpha$ reverse one-mode parity. Each term in $L_z$ consequently flips both mode parities and preserves their product. The propagation separates into fixed total-parity sectors, a useful structural check on the matrix assembly.

## What the finite cutoff means

For computation we retain

$$
0\le r,s\le N
$$

and Hermitize the projected Hamiltonian before diagonalizing it. If

$$
H_N=V_ND_NV_N^\dagger,
$$

then the coefficient vector within the retained space is propagated as

$$
\boldsymbol c_N(t)
=V_Ne^{-iD_Nt}V_N^\dagger\boldsymbol c_N(0).
$$

This spectral exponential is unitary within the truncated space, so its norm is conserved to floating-point accuracy. That fact does **not** establish convergence to the infinite-basis dynamics: a truncated Hermitian matrix can conserve its norm while omitting physically important high-level amplitudes.

We therefore monitor two more demanding diagnostics:

1. the maximum change in each observable curve when $N$ is increased; and
2. the population on the cutoff boundary,

$$
P_{\partial}(t)
=\sum_s|c_{Ns}(t)|^2
+\sum_r|c_{rN}(t)|^2
-|c_{NN}(t)|^2.
$$

There is no claim that any finite $N$ closes the rational dynamics exactly. The cutoff must be reconsidered for stronger quenches, more highly excited inputs, or longer time windows.

## Synchronization as a relative-fluctuation contrast

For the mass convention above, define dimensionless quadratures

$$
Q_j=\sqrt{\frac{\omega_0}{2}}\,x_j,
\qquad
P_j=\sqrt{\frac{2}{\omega_0}}\,p_j.
$$

The complete-synchronization contrast is

$$
S_c(t)=\langle\mathcal D_c(t)\rangle^{-1},
$$

with

$$
\mathcal D_c
=\frac12\left[
(\delta Q_x-\delta Q_y)^2
+(\delta P_x-\delta P_y)^2
\right].
$$

This is an equal-time relative-fluctuation measure. A large value, an extremum, or an oscillatory interval does not by itself prove phase locking or stationary synchronization.

In the benchmark below, $g=0$, so the rotated $+,-$ axes coincide with the laboratory axes up to a permutation. For $g\ne0$, one must keep track of which quadratures define the synchronization observable.

## Exact local slope for the codimension-two input

For the $m=2$, $\ell=0$ exceptional-Hermite factor, let

$$
\mathcal M
=\sqrt{\frac{\pi}{2}}e^{1/2}
\operatorname{erfc}\!\left(\frac{1}{\sqrt2}\right).
$$

Its physical variances are

$$
V_{q,\alpha}
=\frac{2(\mathcal M-1/2)}{\Omega_\alpha},
\qquad
V_{p,\alpha}
=\frac{\Omega_\alpha}{2}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

At $\omega_0=1$, define the dimensionless variance sum

$$
A_\alpha^{(2)}
=\frac{\mathcal M-1/2}{\Omega_\alpha}
+\Omega_\alpha\left(\frac32+\frac{\mathcal M}{3}\right).
$$

This is $V_{Q,\alpha}+V_{P,\alpha}$, not $V_{q,\alpha}+V_{p,\alpha}$.

For the real product eigenstate, both local variance rates vanish at the instant of the quench:

$$
\left.\frac{dV_{Q,\alpha}}{dt}\right|_{0}=0,
\qquad
\left.\frac{dV_{P,\alpha}}{dt}\right|_{0}=0.
$$

The cross-covariance rates remain

$$
\left.\frac{d}{dt}\langle q_+q_-\rangle\right|_0
=\omega_c(V_{q,-}-V_{q,+}),
$$

$$
\left.\frac{d}{dt}\langle p_+p_-\rangle\right|_0
=\omega_c(V_{p,-}-V_{p,+}),
$$

while both mixed position-momentum cross rates vanish. Combining these facts gives the exact first-order expansion

$$
\boxed{
S_c^{(2,2)}(t)
=\frac{2}{A_+^{(2)}+A_-^{(2)}}
-\frac{4\omega_c\bigl(A_+^{(2)}-A_-^{(2)}\bigr)}
{\bigl(A_+^{(2)}+A_-^{(2)}\bigr)^2}\,t
+O(t^2)
}.
$$

This statement is local to $t=0$. It is exact for the stated real, definite-parity product preparation, but the displayed Taylor truncation is only a first-order short-time approximation.

If $A_+^{(2)}=A_-^{(2)}$, the linear slope vanishes. That cancellation does not freeze the state: the survival probability can still have nonzero quadratic curvature. It also does not establish stationary synchronization.

## A cutoff-tested finite-time benchmark

The representative quench uses

$$
g=0,
\qquad
m_+=m_-=2,
\qquad
\ell_+=\ell_-=0,
$$

and

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
\qquad
\omega_0=1.
$$

The bare-confinement stability margins are positive:

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

One-mode $q$ and $p$ matrices were evaluated with 360-point Gauss-Hermite quadrature. We propagated $0\le t\le12$ at square cutoffs $N=30,34,38,42$. At $N=42$, the maximum one-mode overlap error was $1.71\times10^{-12}$, and the maximum propagated norm error was $5.77\times10^{-15}$.

The more informative observable-level comparison is:

| $N$ | $\max|\Delta\mathcal S|$ | $\max|\Delta S_c|$ | $\max|\Delta I|$ | $\max P_\partial$ |
|---:|---:|---:|---:|---:|
| 30 | $1.69\times10^{-5}$ | $9.60\times10^{-4}$ | $3.49\times10^{-4}$ | $1.01\times10^{-6}$ |
| 34 | $1.25\times10^{-5}$ | $7.25\times10^{-4}$ | $2.39\times10^{-4}$ | $5.15\times10^{-7}$ |
| 38 | $9.83\times10^{-6}$ | $3.70\times10^{-4}$ | $1.58\times10^{-4}$ | $1.59\times10^{-7}$ |
| 42 | reference | reference | reference | $1.04\times10^{-7}$ |

Every $\Delta$ is the largest absolute difference from the $N=42$ curve over the stated time window. Thus $N=42$ is the numerical reference, not a mathematically certified infinite-cutoff answer.

## Short-time and finite-time checks

The analytic synchronization values are

$$
S_c(0)=0.5106376395009\ldots,
$$

$$
\dot S_c(0)=-0.1229730434570\ldots.
$$

At the first numerical step, $t=10^{-3}$, the propagated values give

$$
S_c(0)=0.5106376395002\ldots,
\qquad
\dot S_c(0)\big|_{\mathrm{one\,step}}
=-0.1229306242038\ldots.
$$

The slope difference is consistent with the remainder of a one-sided finite difference. The analytic coefficient, together with the stability margins and the codimension-two moment formulas, was independently evaluated in Maxima 5.49.0.

At the $N=42$ reference cutoff:

- the survival probability reaches a minimum $0.996300824942$ near $t=9.188$, so the state is not stationary;
- $S_c(t)$ ranges from $0.4935354$ to $0.5232898$ over $0\le t\le12$; and
- the exact-within-cutoff rotated-mode mutual information reaches $0.0433166$ nats.

These are bounded-window dynamics. They do not establish equilibration, an asymptotic synchronized state, or uniform long-time convergence.

## What this calculation establishes

The exceptional basis turns the formal coefficient equations into a reproducible finite-time method for one stable quench. It also separates four logically different claims:

- the exceptional-Hermite preparation is analytic and exact;
- the synchronization slope is an exact coefficient at $t=0$;
- truncating its Taylor series is a short-time approximation;
- spectral propagation at finite $N$ is a cutoff-tested numerical approximation.

No Gaussian closure is used. The rational force continues to generate an open moment hierarchy, while the basis calculation evolves the state amplitudes directly.

## Series navigation

1. [Magnetic oscillator stability and rotated-coordinate reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/research/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/research/fixed-confinement-angular-quench/)
4. [Exact covariance response](/research/exact-covariance-response/)
5. [Survival curvature](/research/survival-curvature/)
6. **[Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)**
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

---
title: "VII: Non-Gaussian Mutual Information: Exact Entropy and Covariance Bounds"
date: 2026-06-10 09:00:00 +0530
categories: research
tags:
  - non-Gaussian states
  - mutual information
  - covariance matrix
  - relative entropy
  - exceptional Hermite
  - angular-momentum quench
permalink: "/non-gaussian-mutual-information/"
---

Covariance matrices are indispensable for continuous-variable systems, but they do not determine a generic non-Gaussian state. This becomes decisive in the exceptional-Hermite angular quench: second moments produce a useful entropy bound, while the exact mutual information requires the spectrum of a reduced density operator.

The distinction is visible even before the quench. The initial state is a product, so its mutual information vanishes. Each factor is nevertheless non-Gaussian, and its covariance is also compatible with a mixed Gaussian state of positive entropy. A covariance entropy therefore need not be an intermode correlation entropy.

## Fix the subsystem assignment first

We use

$$
\hbar=2M=1
$$

and the fixed-confinement post-quench Hamiltonian

$$
H_{\mathrm{RE},B}
=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z,
\qquad
L_z=q_+p_- -q_-p_+,
$$

where $\omega_c=qB/(2Mc)$ is signed. The coordinate confinement, including its diamagnetic dressing, is held fixed while the angular term is activated. No Gaussian approximation is introduced into the state preparation or propagation.

Throughout this article the bipartition is explicitly

$$
A=+,
\qquad
B=-.
$$

These are the rotated modes that prepare the product input and support the exceptional-basis coefficient expansion. If $g\ne0$, the $+:-$ partition is not the laboratory $x:y$ partition. A canonical rotation changes the subsystem assignment, so the two mutual informations are different observables. In the numerical benchmark, $g=0$, so the two axis pairs coincide up to a permutation.

## Exact mutual information from the reduced spectrum

For a bipartite state $\rho_{AB}$, the quantum mutual information is

$$
I(A:B)_\rho
=S(\rho_A)+S(\rho_B)-S(\rho_{AB}),
$$

where

$$
S(\rho)=-\operatorname{Tr}(\rho\ln\rho).
$$

The quench is unitary and the prepared global state is pure. Therefore

$$
S(\rho_{AB})=0,
\qquad
S(\rho_A)=S(\rho_B),
$$

and hence

$$
I(A:B)_\rho=2S(\rho_A).
$$

In the exceptional product basis,

$$
|\Psi(t)\rangle
=\sum_{r,s=0}^{\infty}c_{rs}(t)
|m_+,r\rangle\otimes|m_-,s\rangle.
$$

Treating $C(t)=[c_{rs}(t)]$ as a coefficient matrix gives

$$
\rho_A(t)=C(t)C^\dagger(t).
$$

If $\{\lambda_k(t)\}$ are its eigenvalues, then

$$
\boxed{
I(A:B)_\rho(t)
=-2\sum_k\lambda_k(t)\ln\lambda_k(t)
}.
$$

This calculation uses the reduced density spectrum and retains non-Gaussian information. In a finite basis it is exact for the propagated truncated pure state; its interpretation as the infinite-dimensional result still requires cutoff convergence.

## The globally covariance-matched Gaussian state

Let $\tau_{AB}$ be the Gaussian state with the same global first and second moments as $\rho_{AB}$. Its marginals $\tau_A$ and $\tau_B$ are the covariance-matched Gaussian states of $\rho_A$ and $\rho_B$.

For any subsystem $X$, define the relative-entropy non-Gaussianity

$$
\delta_{\mathrm{NG}}(\rho_X)
=D(\rho_X\Vert\tau_X)
=S(\tau_X)-S(\rho_X).
$$

Subtracting the corresponding entropy differences gives the exact general identity

$$
\boxed{
I(A:B)_\rho
=I(A:B)_\tau
+\delta_{\mathrm{NG}}(\rho_{AB})
-\delta_{\mathrm{NG}}(\rho_A)
-\delta_{\mathrm{NG}}(\rho_B)
}.
$$

For a general mixed state, the non-Gaussian correction to $I(A:B)_\tau$ has no fixed sign. Covariance reconstruction can overestimate or underestimate the exact mutual information depending on the balance of global and local non-Gaussianities.

## What the Gaussian mutual information actually is

For one mode $X$, let

$$
\boldsymbol R_X=(q_X,p_X)^T
$$

and

$$
(\sigma_X)_{jk}
=\frac12\langle
\delta R_{X,j}\delta R_{X,k}
+\delta R_{X,k}\delta R_{X,j}
\rangle.
$$

Its symplectic eigenvalue is

$$
\nu_X=\sqrt{\det\sigma_X}\ge\frac12.
$$

The entropy of the covariance-matched one-mode Gaussian state is

$$
h(\nu)
=\left(\nu+\frac12\right)
\ln\left(\nu+\frac12\right)
-\left(\nu-\frac12\right)
\ln\left(\nu-\frac12\right).
$$

If $\nu_1$ and $\nu_2$ are the two global symplectic eigenvalues of $\tau_{AB}$, then its mutual information is

$$
\boxed{
I(A:B)_\tau
=h(\nu_A)+h(\nu_B)-h(\nu_1)-h(\nu_2)
}.
$$

Even when $\rho_{AB}$ is pure, its globally matched Gaussian state $\tau_{AB}$ is generally mixed. Consequently,

$$
I(A:B)_\tau\ne2h(\nu_A)
$$

in general. The quantity $2h(\nu_A)$ has a different meaning.

## The local-covariance maximum-entropy bound

Let $\rho_A^{G}=\tau_A$ be the one-mode Gaussian state with the same first moments and covariance as $\rho_A$. Gaussian states maximize entropy at fixed covariance, so

$$
S(\rho_A)\le S(\rho_A^G)=h(\nu_A).
$$

Since the global state is pure,

$$
I(A:B)_\rho=2S(\rho_A),
$$

and therefore

$$
I(A:B)_\rho\le2h(\nu_A).
$$

More strongly, covariance matching converts this inequality into the exact relative-entropy identity

$$
\boxed{
2h(\nu_A)-I(A:B)_\rho
=2D\!\left(\rho_A\middle\Vert\rho_A^G\right)
=2\delta_{\mathrm{NG}}(\rho_A)
}.
$$

Thus $2h(\nu_A)$ is a **local-covariance maximum-entropy upper bound**. It is not the mutual information of the globally matched Gaussian state. Its excess over the exact pure-state mutual information is precisely twice the non-Gaussianity of the reduced state.

This identity was also checked symbolically in Maxima 5.49.0: both the general Gaussian/non-Gaussian decomposition and its pure-state specialization reduce to zero residual.

## Finite-time calculation without Gaussian closure

The numerical example uses

$$
g=0,
\qquad
m_+=m_-=2,
\qquad
\ell_+=\ell_-=0,
$$

with

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
\qquad
\omega_0=1.
$$

Both bare-confinement margins are positive:

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

One-mode matrix elements were evaluated by 360-point Gauss-Hermite quadrature. The Hermitian projected Hamiltonian was spectrally propagated over $0\le t\le12$ with square cutoffs $N=30,34,38,42$. At each time, $I(A:B)_\rho$ came from the eigenvalues of $CC^\dagger$, while $2h(\nu_A)$ came only from the local covariance matrix.

The information-level cutoff comparison is:

| $N$ | $\max|\Delta I|$ | $\max|\Delta[2h(\nu_A)]|$ | $\max P_\partial$ |
|---:|---:|---:|---:|
| 30 | $3.49\times10^{-4}$ | $1.74\times10^{-3}$ | $1.01\times10^{-6}$ |
| 34 | $2.39\times10^{-4}$ | $1.20\times10^{-3}$ | $5.15\times10^{-7}$ |
| 38 | $1.58\times10^{-4}$ | $1.34\times10^{-3}$ | $1.59\times10^{-7}$ |
| 42 | reference | reference | $1.04\times10^{-7}$ |

The differences are maxima over the whole time interval relative to $N=42$. Their decrease is not perfectly monotonic for the covariance bound, which is why the individual observable diagnostics are reported rather than inferred from norm conservation. The $N=42$ overlap error is $1.71\times10^{-12}$, and its maximum norm error is $5.77\times10^{-15}$, but neither number alone proves physical convergence.

## What the curves say

At $t=0$, the product state gives

$$
I(A:B)_\rho\simeq2.2\times10^{-15}\ \text{nats},
$$

which is numerical zero. Yet

$$
2h(\nu_A)=0.174840637013\ldots,
$$

and

$$
\delta_{\mathrm{NG}}(\rho_A)
=0.0874203185065\ldots.
$$

The identity

$$
2h(\nu_A)-I=2\delta_{\mathrm{NG}}(\rho_A)
$$

is already visible: the nonzero covariance bound at $t=0$ measures the entropy of a mixed Gaussian state matched to a pure non-Gaussian marginal, not correlations between the two modes.

Over $0\le t\le12$, the $N=42$ reference curves give

$$
\max_t I(A:B)_\rho(t)=0.0433166\ \text{nats},
$$

near $t=9.188$, while

$$
0.173412\lesssim2h(\nu_A)\lesssim0.230489.
$$

The reduced non-Gaussianity ranges approximately from $0.079683$ to $0.102965$ nats. Using the tabulated data, the maximum residual in

$$
2h(\nu_A)-I-2\delta_{\mathrm{NG}}(\rho_A)
$$

is about $10^{-13}$, set by output precision and floating-point arithmetic.

## Scope and limitations

The information calculation supports several precise conclusions:

- the rotated-mode mutual information is obtained from the reduced density spectrum, not inferred from covariance;
- the global Gaussian mutual information $I(A:B)_\tau$ and the local bound $2h(\nu_A)$ are distinct quantities;
- covariance determines the bound but not the reduced non-Gaussianity or the exact entropy;
- the finite-time benchmark uses no Gaussian closure; and
- “exact mutual information” means exact for the propagated finite-cutoff pure state, followed by an explicit convergence study.

The reported cutoff study covers one stable parameter set and $0\le t\le12$. It does not prove uniform convergence for arbitrary coupling, excitation, or time, and it makes no stationary synchronization or equilibration claim. For $g\ne0$, every information result must again specify whether the chosen subsystems are the rotated $+:-$ modes or the laboratory $x:y$ modes.

## Series navigation

1. [Magnetic oscillator stability and rotated-coordinate reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/research/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/research/fixed-confinement-angular-quench/)
4. [Exact covariance response](/research/exact-covariance-response/)
5. [Survival curvature](/research/survival-curvature/)
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. **[Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)**

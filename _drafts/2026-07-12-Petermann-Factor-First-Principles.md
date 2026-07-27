---
title: "Reading the Exceptional-Point Project IV: Petermann Factor from First Principles"
date: 2026-07-12 21:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - petermann-factor
  - eigenvalue-condition-number
  - phase-rigidity
  - excess-noise
  - exceptional-points
permalink: "/exceptional-point-project-petermann-factor/"
---

This self-contained post derives the **Petermann factor**, relates it to phase
rigidity, and explains the robustness statement used in the paper.

The main relation for the reciprocal complex-symmetric arrays is

$$
K=r^{-2}.
$$

Near an exceptional point, $r\to0$ and therefore $K\to\infty$.  A large
eigenvalue response is consequently accompanied by strong eigenvector
nonorthogonality.

## 1. Minimal Background: Left and Right Eigenvectors

For a non-Hermitian matrix,

$$
H\neq H^\dagger.
$$

Right eigenvectors satisfy

$$
H\psi_k^R=E_k\psi_k^R.
$$

Left eigenvectors satisfy

$$
(\psi_k^L)^\dagger H
=E_k(\psi_k^L)^\dagger.
$$

Equivalently,

$$
H^\dagger\psi_k^L=E_k^*\psi_k^L.
$$

Unlike the Hermitian case, $\psi_k^L$ and $\psi_k^R$ need not be the same
vector.

## 2. Why Left-Right Overlap Matters

Suppose the Hamiltonian changes by a small perturbation $\Delta H$.  To first
order, the eigenvalue shift of a simple eigenvalue is

$$
\Delta E_k
\approx
\frac{(\psi_k^L)^\dagger
\Delta H\,\psi_k^R}
{(\psi_k^L)^\dagger\psi_k^R}.
$$

This formula is the non-Hermitian version of ordinary first-order perturbation
theory.

If the denominator

$$
(\psi_k^L)^\dagger\psi_k^R
$$

is small, a modest perturbation can produce a large eigenvalue change.  Thus
left-right nonorthogonality controls eigenvalue conditioning.

## 3. Definition of the Petermann Factor

A normalization-independent measure is

$$
K_k=
\frac{
(\psi_k^R)^\dagger\psi_k^R\,
(\psi_k^L)^\dagger\psi_k^L
}{
|(\psi_k^L)^\dagger\psi_k^R|^2
}.
$$

The Cauchy-Schwarz inequality implies

$$
K_k\ge1
$$

for an isolated simple mode.

| Value | Interpretation |
|---|---|
| $K=1$ | orthogonal, well-conditioned mode |
| $K>1$ | nonorthogonal mode |
| $K\to\infty$ | approach to a defective exceptional point |

The factor is widely associated with excess noise and linewidth enhancement in
open resonant systems.  Mathematically, it is closely related to the square of
an eigenvalue condition number.

## 4. Reduction for a Complex-Symmetric Hamiltonian

The paper uses reciprocal arrays with

$$
H^{\mathsf T}=H.
$$

If

$$
H\psi_k=E_k\psi_k,
$$

then transposition gives

$$
\psi_k^{\mathsf T}H
=E_k\psi_k^{\mathsf T}.
$$

Thus the left row vector may be taken as $\psi_k^{\mathsf T}$, or the left
column as $\psi_k^*$.

The Petermann factor becomes

$$
K_k=
\frac{(\psi_k^\dagger\psi_k)^2}
{|\psi_k^{\mathsf T}\psi_k|^2}.
$$

Define phase rigidity

$$
r_k=
\frac{|\psi_k^{\mathsf T}\psi_k|}
{\psi_k^\dagger\psi_k}.
$$

Therefore

$$
\boxed{K_k=r_k^{-2}}.
$$

The relation is exact for the complex-symmetric model.

## 5. Two-Site Example

For

$$
H_2=
\frac12
\begin{pmatrix}
i\gamma&\Omega\\
\Omega&-i\gamma
\end{pmatrix},
\qquad
q=\Omega^2-\gamma^2>0,
$$

the phase rigidity is

$$
r_2=\frac{\sqrt q}{|\Omega|}.
$$

Hence

$$
K_2=
\frac{\Omega^2}{q}.
$$

As $q\to0^+$,

$$
r_2\to0,
\qquad
K_2\to\infty.
$$

For example, if

$$
\frac{q}{\Omega^2}=10^{-2},
$$

then

$$
r_2=10^{-1},
\qquad
K_2=10^2.
$$

The Petermann factor amplifies the loss of rigidity quadratically.

## 6. Structured Scaling for an $\mathrm{EP}_N$

For the structured spin array, define

$$
\rho=\frac{q}{\Omega^2}.
$$

The exact near-EP phase rigidity of mode $m$ is

$$
r_{jm}\sim
c_{N,m}\rho^{(N-1)/2},
$$

where

$$
c_{N,m}=
\binom{N-1}{j-m}^{-1}.
$$

Therefore

$$
K_{jm}\sim
c_{N,m}^{-2}
\rho^{-(N-1)}.
$$

The divergence becomes more severe as the exceptional-point order increases.

For $N=4$:

| Modes | $c_{4,m}$ | Leading $K$ |
|---|---:|---:|
| outer, $m=\pm3/2$ | $1$ | $\rho^{-3}$ |
| inner, $m=\pm1/2$ | $1/3$ | $9\rho^{-3}$ |

The exponent is common, while the finite prefactor distinguishes the modes.

## 7. Generic Structure-Breaking Scaling

A perturbation that activates the full Jordan chain gives

$$
E-E_{\mathrm{EP}}
\sim\delta^{1/N}.
$$

For a one-chain unfolding, the phase rigidity scales as

$$
r_{\mathrm g}
\sim|\delta|^{(N-1)/N}.
$$

Therefore

$$
K_{\mathrm g}
\sim|\delta|^{-2(N-1)/N}.
$$

The control-parameter exponent differs from the structured case:

| Regime | Splitting | Petermann factor |
|---|---|---|
| structured | $q^{1/2}$ | $q^{-(N-1)}$ |
| generic | $\delta^{1/N}$ | $\delta^{-2(N-1)/N}$ |

This difference is real, but it is not the end of the comparison.

## 8. Fixed-Splitting Robustness Law

Let $s$ be the characteristic measured eigenvalue displacement and define the
dimensionless splitting

$$
\sigma=\frac{s}{|\Omega|}.
$$

### Structured regime

The structured spectrum gives

$$
\sigma\sim
\left|\frac{q}{\Omega^2}\right|^{1/2}.
$$

Therefore

$$
\left|\frac{q}{\Omega^2}\right|
\sim\sigma^2.
$$

Substitution into

$$
K_{\mathrm s}\sim
\left|\frac{q}{\Omega^2}\right|^{-(N-1)}
$$

gives

$$
K_{\mathrm s}\sim
\sigma^{-2(N-1)}.
$$

### Generic regime

The generic spectrum gives

$$
\sigma\sim
\left|\frac{\delta}{\Omega}\right|^{1/N}
$$

up to an $N$-dependent constant.  Hence

$$
\left|\frac{\delta}{\Omega}\right|
\sim\sigma^N.
$$

Substitution into

$$
K_{\mathrm g}\sim
\left|\frac{\delta}{\Omega}\right|^{-2(N-1)/N}
$$

again gives

$$
K_{\mathrm g}\sim
\sigma^{-2(N-1)}.
$$

Thus

$$
\boxed{
K\sim\sigma^{-2(N-1)}
}.
$$

Changing the perturbation direction changes how the experimental control
parameter maps to a splitting.  It does not remove the leading nonorthogonality
penalty associated with an already resolved splitting.

## 9. Spectral Sensitivity Is Not Sensor Performance

A large $K$ is a warning that the eigenbasis is ill-conditioned.  It may be
associated with:

1. excess spontaneous-emission noise,
2. linewidth enhancement,
3. enhanced response to uncontrolled perturbations,
4. strong mode nonorthogonality,
5. numerical sensitivity of eigenvectors.

However, $K$ alone is not a complete noise model.  A quantitative sensor analysis
also needs:

| Missing ingredient | Why it matters |
|---|---|
| input noise statistics | sets fluctuation strength |
| gain and loss mechanism | determines added noise |
| readout observable | determines what is measured |
| integration time | determines estimator variance |
| nonlinear saturation | limits linear amplification |

Therefore one should not claim improved signal-to-noise ratio from an
eigenvalue splitting alone.

## 10. Common Mistakes

| Mistake | Correction |
|---|---|
| treating $K$ as an eigenvalue | it is an eigenvector nonorthogonality measure |
| using $K=r^{-1}$ | for this model, $K=r^{-2}$ |
| writing $K\sim s^{-2(N-1)}$ with dimensional $s$ | use $\sigma=s/|\Omega|$ |
| assuming a large $K$ guarantees a useful sensor | a platform-specific noise model is required |
| ignoring modal prefactors | different modes can have the same exponent but different $K$ |

## 11. Final Summary

The logical chain is

$$
\text{eigenvectors coalesce}
\Longrightarrow
r\to0
\Longrightarrow
K=r^{-2}\to\infty.
$$

Continue with [Part V: A Complete Notation and Crossover
Guide]({{ '/exceptional-point-project-notation-crossover/' | relative_url }}).

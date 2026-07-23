---
title: "VII: Non-Gaussian Mutual Information: Exact Entropy and Covariance Bounds"
description: "Derives exact two-mode mutual information from the reduced density spectrum and separates it from covariance-based Gaussian bounds."
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

Quantum mutual information answers a concrete question: **how much information
is shared by two chosen subsystems?** For continuous-variable systems it is
tempting to answer from a covariance matrix alone. That shortcut is exact for
Gaussian states, but it is generally wrong for non-Gaussian states.

This guide develops the distinction from the definitions. It requires only the
basic ideas of a wavefunction, an inner product, and matrix eigenvalues. The
central task is to derive the exact correlation measure and then identify,
mathematically, the more limited statement supplied by a covariance matrix.

All logarithms are natural logarithms, so entropies are measured in **nats**.
Divide by $\ln 2$ to convert nats to bits.

## 1. Physics carried forward

This is the information-theory step of a progressive calculation. Three
results have already been established:

1. [The magnetic Hamiltonian and its stability
   domain](/magnetic-oscillator-stability-reduction/) give two rotated
   canonical modes $(q_\pm,p_\pm)$.
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/) gives
   a normalized product input
   $$\lvert m_+,\ell_+\rangle\otimes\lvert m_-,\ell_-\rangle$$.
3. [Spectral propagation](/spectral-propagation-synchronization/) gives
   cutoff-tested coefficients

   $$
   |\Psi(t)\rangle
   =\sum_{r,s}c_{rs}(t)
   |m_+,r\rangle\otimes|m_-,s\rangle.
   $$

Those derivations are not repeated here. The new problem is to convert the
coefficient array $c_{rs}(t)$ into an exact correlation measure and to
determine precisely what can—and cannot—be inferred from second moments.

The two-mode Hilbert space is

$$
\mathcal H=\mathcal H_A\otimes\mathcal H_B,
\qquad A=+,\quad B=-.
$$

The labels $A$ and $B$ are physical choices, not decorative notation.

If a rotation relates $(q_+,q_-)$ to laboratory coordinates $(x,y)$, then the
partition $+:-$ need not equal the partition $x:y$. A transformation that mixes
the two sides changes what is meant by a subsystem and can change the mutual
information. Every calculation must therefore state the partition before
quoting a number.

## 2. Pure states, mixed states, and the partial trace

A normalized pure state is represented by a ket
$$\lvert\Psi\rangle$$ satisfying

$$
\langle\Psi|\Psi\rangle=1.
$$

Its density operator is

$$
\rho_{AB}=|\Psi\rangle\langle\Psi|,
\qquad
\rho_{AB}^2=\rho_{AB}.
$$

Observer $A$ does not have access to measurements on $B$. The state available
to that observer is obtained by tracing out $B$:

$$
\rho_A=\operatorname{Tr}_B\rho_{AB}.
$$

Similarly, $$\rho_B=\operatorname{Tr}_A\rho_{AB}$$. Even when
$$\rho_{AB}$$ is pure, $\rho_A$ and $\rho_B$ are usually mixed. This mixedness records
entanglement between the two modes.

For a positive, unit-trace density matrix $\rho$ with eigenvalues
$\{\lambda_k\}$, the von Neumann entropy is

$$
S(\rho)=-\operatorname{Tr}(\rho\ln\rho)
       =-\sum_k\lambda_k\ln\lambda_k.
$$

The convention $0\ln0=0$ follows from the limit
$\lim_{x\to0^+}x\ln x=0$. A pure state has eigenvalues
$(1,0,0,\ldots)$ and therefore zero entropy.

## 3. Derive mutual information from its definition

For any bipartite state,

$$
\boxed{
I(A:B)_\rho
=S(\rho_A)+S(\rho_B)-S(\rho_{AB})
}.
$$

It vanishes for a product state
$\rho_{AB}=\rho_A\otimes\rho_B$ and is non-negative for every valid quantum
state. It includes both classical and quantum correlations.

Unitary time evolution preserves global purity:

$$
\rho_{AB}(t)=U(t)\rho_{AB}(0)U^\dagger(t),
\qquad
U(t)=e^{-iHt}.
$$

Thus $S(\rho_{AB}(t))=0$ when the initial state is pure. A Schmidt
decomposition,

$$
|\Psi(t)\rangle
=\sum_k\sqrt{\lambda_k(t)}
\,|u_k(t)\rangle_A|v_k(t)\rangle_B,
$$

shows that $\rho_A$ and $\rho_B$ have the same nonzero eigenvalues. Hence

$$
S(\rho_A)=S(\rho_B)
$$

and the pure-state formula is

$$
\boxed{I(A:B)_\rho=2S(\rho_A)}.
$$

The factor of two is important: the entanglement entropy is $S(\rho_A)$,
whereas the mutual information of a globally pure bipartite state is twice
that value.

## 4. Turn a propagated wavefunction into a density spectrum

Expand the state in any orthonormal product basis:

$$
|\Psi(t)\rangle
=\sum_{r,s=0}^{\infty}c_{rs}(t)
|m_+,r\rangle\otimes|m_-,s\rangle.
$$

Insert this expansion into
$$\rho_A=\operatorname{Tr}_B\lvert\Psi\rangle\langle\Psi\rvert$$.
Orthogonality on $B$ gives

$$
\rho_A
=\sum_{r,r',s}c_{rs}c_{r's}^*
|m_+,r\rangle\langle m_+,r'|.
$$

If $C=[c_{rs}]$ is the coefficient matrix, this is simply

$$
\boxed{\rho_A=CC^\dagger},
\qquad
\boxed{\rho_B=C^\dagger C}.
$$

The nonzero eigenvalues of $CC^\dagger$ and $C^\dagger C$ are the squared
singular values of $C$. Therefore a singular-value decomposition

$$
C=U\,\operatorname{diag}(s_k)\,V^\dagger
$$

immediately gives

$$
\lambda_k=s_k^2,
\qquad
\sum_k\lambda_k=1.
$$

For the propagated pure state,

$$
\boxed{
I(A:B)_\rho(t)
=-2\sum_k\lambda_k(t)\ln\lambda_k(t)
}.
$$

This formula contains all orders of the state, not only its first and second
moments.

Numerically, singular values are preferable to diagonalizing a rounded
$CC^\dagger$: they preserve non-negativity more reliably. The identities
$$\lVert C\rVert_F^2=1$$ and $\sum_k\lambda_k=1$ must hold within the numerical
tolerance. A substantial negative density-matrix eigenvalue is not something
to clip away; it signals an error in propagation, reshaping, normalization, or
the partial trace.

## 5. What a covariance matrix knows

Collect the four quadratures into

$$
\boldsymbol R=(q_+,p_+,q_-,p_-)^T
$$

and define centered operators

$$
\delta R_j=R_j-\langle R_j\rangle.
$$

The covariance matrix is

$$
\sigma_{jk}
=\frac12\langle\delta R_j\delta R_k+\delta R_k\delta R_j\rangle.
$$

It stores means, variances, and pair correlations. It does **not** store
higher moments such as $\langle q^4\rangle$, nor the full shape of a
non-Gaussian Wigner function.

For one mode $X$, with

$$
\sigma_X=
\begin{pmatrix}
\langle(\delta q_X)^2\rangle &
\tfrac12\langle\{\delta q_X,\delta p_X\}\rangle\\
\tfrac12\langle\{\delta q_X,\delta p_X\}\rangle &
\langle(\delta p_X)^2\rangle
\end{pmatrix},
$$

the symplectic eigenvalue is

$$
\nu_X=\sqrt{\det\sigma_X}.
$$

Because $[q_X,p_X]=i$, the uncertainty principle requires

$$
\nu_X\ge\frac12.
$$

If a computation gives $\nu_X<1/2$ by more than rounding error, the state,
operator matrices, or covariance convention is inconsistent.

## 6. The Gaussian entropy function

A Gaussian state is completely determined by its first and second moments.
The one-mode Gaussian state having symplectic eigenvalue $\nu$ has entropy

$$
h(\nu)
=\left(\nu+\frac12\right)\ln\left(\nu+\frac12\right)
-\left(\nu-\frac12\right)\ln\left(\nu-\frac12\right).
$$

Useful checks are

$$
h\!\left(\frac12\right)=0,
\qquad
h(\nu)>0\quad\text{for}\quad\nu>\frac12.
$$

For a non-Gaussian state, $h(\nu_X)$ is **not automatically**
$S(\rho_X)$. It is the entropy of the Gaussian state with the same local
covariance.

## 7. Two quantities that must not be confused

### 7.1 Mutual information of the globally matched Gaussian state

Let $\tau_{AB}$ be the Gaussian state with the same global first moments and
the same $4\times4$ covariance matrix as $\rho_{AB}$. Its marginals
$\tau_A$ and $\tau_B$ match the local covariances of $\rho_A$ and $\rho_B$.

The two global symplectic eigenvalues $\nu_1,\nu_2$ are obtained from the
positive eigenvalues of $$\lvert i\Omega\sigma\rvert$$, where

$$
\Omega=
\begin{pmatrix}
0&1&0&0\\
-1&0&0&0\\
0&0&0&1\\
0&0&-1&0
\end{pmatrix}.
$$

Then

$$
S(\tau_{AB})=h(\nu_1)+h(\nu_2)
$$

and

$$
\boxed{
I(A:B)_\tau
=h(\nu_A)+h(\nu_B)-h(\nu_1)-h(\nu_2)
}.
$$

Even if $\rho_{AB}$ is pure, its covariance-matched Gaussian state
$\tau_{AB}$ can be mixed. Consequently,

$$
I(A:B)_\tau\ne2h(\nu_A)
$$

in general.

### 7.2 Local-covariance maximum-entropy bound

Among all states with a fixed covariance, the Gaussian state has the largest
entropy. Therefore

$$
S(\rho_A)\le S(\tau_A)=h(\nu_A).
$$

For a globally pure state,

$$
I(A:B)_\rho=2S(\rho_A),
$$

so

$$
\boxed{I(A:B)_\rho\le2h(\nu_A)}.
$$

The right-hand side is a local-covariance **upper bound**. It is not generally
the exact mutual information and is not generally $I(A:B)_\tau$.

## 8. Why the gap measures non-Gaussianity

The quantum relative entropy is

$$
D(\rho\Vert\tau)
=\operatorname{Tr}\!\left[\rho(\ln\rho-\ln\tau)\right].
$$

When $\tau$ is the Gaussian state matching the first and second moments of
$\rho$, $\ln\tau$ is at most quadratic in the quadratures. Moment matching
therefore gives

$$
\operatorname{Tr}(\rho\ln\tau)
=\operatorname{Tr}(\tau\ln\tau).
$$

It follows that

$$
\delta_{\mathrm{NG}}(\rho)
\equiv D(\rho\Vert\tau)
=S(\tau)-S(\rho)\ge0.
$$

Apply this relation to $AB$, $A$, and $B$:

$$
S(\rho_X)=S(\tau_X)-\delta_{\mathrm{NG}}(\rho_X).
$$

Substitution into the definition of mutual information gives the exact
identity

$$
\boxed{
I(A:B)_\rho
=I(A:B)_\tau
+\delta_{\mathrm{NG}}(\rho_{AB})
-\delta_{\mathrm{NG}}(\rho_A)
-\delta_{\mathrm{NG}}(\rho_B)
}.
$$

For a general mixed state, the correction has no fixed sign. A covariance-only
reconstruction may overestimate or underestimate the true mutual information.

For a globally pure state, the local form is especially transparent:

$$
S(\rho_A)=h(\nu_A)-\delta_{\mathrm{NG}}(\rho_A).
$$

Therefore

$$
\boxed{
2h(\nu_A)-I(A:B)_\rho
=2\delta_{\mathrm{NG}}(\rho_A)
=2D(\rho_A\Vert\tau_A)
}.
$$

This proves exactly what the covariance bound misses: the gap is twice the
non-Gaussianity of the reduced state.

The algebraic step can be checked directly in Maxima without inserting any
model-dependent numbers:

```maxima
/* S(rho_X) = S(tau_X) - delta_X */
SrA  : StA  - dA$
SrB  : StB  - dB$
SrAB : StAB - dAB$

Irho : SrA + SrB - SrAB$
Itau : StA + StB - StAB$

ratsimp(Irho - (Itau + dAB - dA - dB));
/* 0 */

/* Pure global state: SrAB=0 and SrA=SrB. */
Ipure : 2 * SrA$
ratsimp(2 * StA - Ipure - 2 * dA);
/* 0 */
```

## 9. A zero-correlation example that catches the common mistake

Suppose the initial state is a product of two pure non-Gaussian factors:

$$
|\Psi(0)\rangle=|\phi_+\rangle\otimes|\phi_-\rangle.
$$

Then

$$
\rho_A(0)=|\phi_+\rangle\langle\phi_+|,
\qquad
S(\rho_A(0))=0,
$$

and hence

$$
I(A:B)_\rho(0)=0.
$$

However, a pure non-Gaussian one-mode state may have
$\det\sigma_A>1/4$, so $\nu_A>1/2$ and

$$
2h(\nu_A)>0.
$$

There is no contradiction. The exact mutual information is zero because the
modes are uncorrelated. The positive covariance bound is the entropy of a
different state—a mixed Gaussian state having the same covariance as the pure
non-Gaussian factor.

This is a useful unit test: any method that reports nonzero exact mutual
information for a normalized product input is computing the wrong quantity or
using the wrong subsystem partition.

## 10. Add the information layer to the propagated state

The propagation procedure and its cutoff diagnostics were constructed in the
[preceding guide](/spectral-propagation-synchronization/). Its output at each
time is a normalized coefficient array $C_N(t)$ together with the one-mode
quadrature matrices. The singular values of $C_N$ give the exact
finite-cutoff information

$$
I_N(t)=-2\sum_k s_k^2(t)\ln s_k^2(t).
$$

Independently, the quadrature matrices give $\sigma_A$, then
$\nu_A=\sqrt{\det\sigma_A}$ and the bound $2h(\nu_A)$. These two calculations
must remain separate: one uses the complete coefficient matrix and the other
discards everything beyond second moments.

For a square cutoff, the boundary population

$$
P_\partial(t)=
\sum_{\substack{r=N-1\\\text{or }s=N-1}}|c_{rs}(t)|^2
$$

helps expose probability reaching the truncation edge. The information curve,
the covariance bound, and the low moments must also be compared at increasing
$N$.

Norm preservation alone is not a convergence test: unitary evolution inside
an inadequate truncated space preserves the norm perfectly.

## 11. Worked benchmark and interpretation

Consider

$$
g=0,\qquad
m_+=m_-=2,\qquad
\ell_+=\ell_-=0,
$$

with

$$
\Omega_+=\frac54,\qquad
\Omega_-=\frac{17}{20},\qquad
\omega_c=\frac34,\qquad
\omega_0=1.
$$

The bare-confinement margins are positive:

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

For this example, one-mode matrix elements were evaluated with 360-point
Gauss-Hermite quadrature. The projected Hamiltonian was propagated on
$0\le t\le12$ using square cutoffs $N=30,34,38,42$. Differences below are
maximum absolute differences from the $N=42$ curve over the whole interval:

| $N$ | $$\max\lvert\Delta I\rvert$$ | $$\max\lvert\Delta[2h(\nu_A)]\rvert$$ | $\max P_\partial$ |
|---:|---:|---:|---:|
| 30 | $3.49\times10^{-4}$ | $1.74\times10^{-3}$ | $1.01\times10^{-6}$ |
| 34 | $2.39\times10^{-4}$ | $1.20\times10^{-3}$ | $5.15\times10^{-7}$ |
| 38 | $1.58\times10^{-4}$ | $1.34\times10^{-3}$ | $1.59\times10^{-7}$ |
| 42 | numerical reference | numerical reference | $1.04\times10^{-7}$ |

The covariance-bound differences are not perfectly monotonic. Reporting them
is more honest than inferring convergence from a small norm error. At $N=42$,
the overlap-matrix error was $1.71\times10^{-12}$ and the maximum norm error
was $5.77\times10^{-15}$; neither number alone certifies observable
convergence.

At $t=0$,

$$
I(A:B)_\rho\simeq2.2\times10^{-15},
$$

which is numerical zero, while

$$
2h(\nu_A)=0.174840637013\ldots
$$

and

$$
\delta_{\mathrm{NG}}(\rho_A)
=0.0874203185065\ldots.
$$

Thus

$$
2h(\nu_A)-I=2\delta_{\mathrm{NG}}(\rho_A)
$$

already holds at the product-state starting point.

Over the stated time window, the $N=42$ calculation gives

$$
\max_t I(A:B)_\rho(t)=0.0433166
$$

near $t=9.188$, while

$$
0.173412\lesssim2h(\nu_A)\lesssim0.230489.
$$

The reduced non-Gaussianity lies approximately between $0.079683$ and
$0.102965$ nats. The maximum numerical residual in

$$
2h(\nu_A)-I-2\delta_{\mathrm{NG}}(\rho_A)
$$

is about $10^{-13}$. This is a strong internal consistency check, not a proof
of infinite-cutoff convergence.

## 12. Conceptual result

The reduced density spectrum is the exact source of two-mode mutual
information. For a pure state,

$$
I(A:B)=2S(\rho_A).
$$

A covariance matrix has a narrower role. It defines a globally matched
Gaussian comparison state and a local maximum-entropy bound, but those are
different objects. The precise loss of information in the local covariance
description is

$$
2h(\nu_A)-I(A:B)=2\delta_{\mathrm{NG}}(\rho_A).
$$

In a truncated calculation these identities are exact for the propagated
finite-dimensional state. Their interpretation as statements about the
original continuous system depends on the convergence analysis carried
forward from the spectral step.

## Guided sequence

1. [Magnetic oscillator stability and rotated-coordinate reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/fixed-confinement-angular-quench/)
4. [Exact covariance response](/exact-covariance-response/)
5. [Survival curvature](/survival-curvature/)
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. **[Non-Gaussian mutual information](/non-gaussian-mutual-information/)**

---
title: "Reading the Exceptional-Point Project III: Phase Rigidity from First Principles"
date: 2026-07-12 20:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - phase-rigidity
  - eigenvector-coalescence
  - complex-symmetric-matrices
  - exceptional-points
  - non-hermitian-physics
permalink: "/exceptional-point-project-phase-rigidity/"
---

This self-contained post develops **phase rigidity** from the elementary idea of
an eigenvector overlap.  No earlier post in the series is required.

The central result is

$$
r=\frac{|\psi^{\mathsf T}\psi|}{\psi^\dagger\psi}.
$$

For an ordinary real eigenvector, $r=1$.  At an exceptional point, the
coalesced eigenvector becomes self-orthogonal under the transpose product and
$r=0$.  Phase rigidity therefore measures eigenvector coalescence, not merely
eigenvalue spacing.

## 1. Minimal Background

A matrix is non-Hermitian when

$$
H\neq H^\dagger.
$$

The arrays in the paper are more specifically **complex symmetric**:

$$
H^{\mathsf T}=H,
\qquad
H^\dagger\neq H.
$$

An exceptional point is a parameter value at which eigenvalues and eigenvectors
coalesce.  A two-state exceptional point is an $\mathrm{EP}_2$; a coalescence of
$N$ states into one Jordan chain is an $\mathrm{EP}_N$.

The distinction between transpose and Hermitian conjugate is essential:

| Operation | Expression |
|---|---|
| transpose | $\psi^{\mathsf T}$ |
| complex conjugate | $\psi^*$ |
| Hermitian conjugate | $\psi^\dagger=(\psi^*)^{\mathsf T}$ |

## 2. Two Different Self-Overlaps

For a column vector

$$
\psi=
\begin{pmatrix}
\psi_1\\
\vdots\\
\psi_N
\end{pmatrix},
$$

the ordinary positive norm is

$$
\psi^\dagger\psi
=\sum_{n=1}^{N}|\psi_n|^2.
$$

It is positive for every nonzero vector.

The transpose or bilinear self-overlap is

$$
\psi^{\mathsf T}\psi
=\sum_{n=1}^{N}\psi_n^2.
$$

The terms are complex squares, not absolute squares.  They can cancel.

For example,

$$
\psi=
\begin{pmatrix}
1\\
i
\end{pmatrix}
$$

has

$$
\psi^\dagger\psi=2,
$$

but

$$
\psi^{\mathsf T}\psi=1+i^2=0.
$$

The vector is nonzero but bilinearly self-orthogonal.

## 3. Definition of Phase Rigidity

For a right eigenvector of a complex-symmetric Hamiltonian, define

$$
r=
\frac{|\psi^{\mathsf T}\psi|}
{\psi^\dagger\psi}.
$$

The triangle inequality gives

$$
0\le r\le1.
$$

If the eigenvector is rescaled as $\psi\to c\psi$, then both numerator and
denominator acquire the factor $|c|^2$.  Therefore $r$ does not depend on the
normalization of the eigenvector.

| Value | Interpretation |
|---|---|
| $r=1$ | eigenvector can be made real up to one overall phase |
| $0<r<1$ | partial nonorthogonality |
| $r=0$ | self-orthogonal coalesced eigenvector |

The word *rigidity* refers to phase alignment.  If all components share one
common phase, a global phase rotation makes the vector real and $r=1$.  If the
components acquire different complex phases, cancellation lowers $r$.

## 4. Complete Two-Site Derivation

Consider

$$
H_2=
\frac12
\begin{pmatrix}
i\gamma&\Omega\\
\Omega&-i\gamma
\end{pmatrix},
\qquad
q=\Omega^2-\gamma^2>0.
$$

The positive eigenvalue is

$$
E_+=\frac{\sqrt q}{2}.
$$

Write the corresponding eigenvector as

$$
\psi_+=
\begin{pmatrix}
1\\
z
\end{pmatrix}.
$$

The first row of $H_2\psi_+=E_+\psi_+$ gives

$$
i\gamma+\Omega z=\sqrt q,
$$

so

$$
z=\frac{\sqrt q-i\gamma}{\Omega}.
$$

Because $q+\gamma^2=\Omega^2$,

$$
|z|^2=
\frac{q+\gamma^2}{\Omega^2}=1.
$$

Therefore

$$
\psi_+^\dagger\psi_+=1+|z|^2=2.
$$

Introduce an angle $\theta$ through

$$
\cos\theta=\frac{\sqrt q}{|\Omega|},
\qquad
\sin\theta=\frac{\gamma}{|\Omega|}.
$$

For positive $\Omega$, $z=e^{-i\theta}$.  Hence

$$
|1+z^2|
=|1+e^{-2i\theta}|
=2|\cos\theta|
=\frac{2\sqrt q}{|\Omega|}.
$$

The phase rigidity is therefore

$$
r_2=
\frac{|1+z^2|}{2}
=\frac{\sqrt q}{|\Omega|}.
$$

At the exceptional point $q\to0^+$,

$$
r_2\to0.
$$

This explicit calculation shows that phase rigidity detects the eigenvector
coalescence.

## 5. The $N$-Site Structured Array

The paper studies

$$
H_N(\Omega,\gamma)=\Omega J_x+i\gamma J_z,
\qquad
N=2j+1.
$$

In the unbroken region $q=\Omega^2-\gamma^2>0$, introduce

$$
\tanh\alpha=\frac{\gamma}{\Omega},
\qquad
\operatorname{sech}^2\alpha=\frac{q}{\Omega^2}.
$$

The Hamiltonian is related to the Hermitian spin matrix $J_x$ by a nonunitary
similarity transformation:

$$
H_N=
\sqrt q\,S(\alpha)J_xS^{-1}(\alpha),
\qquad
S(\alpha)=e^{-\alpha J_y}.
$$

If

$$
J_x|m_x\rangle=m|m_x\rangle,
$$

then a right eigenvector is

$$
|\psi_m\rangle=S(\alpha)|m_x\rangle.
$$

In the $J_z$ basis,

$$
S^\dagger=S,
\qquad
S^{\mathsf T}=S^{-1}.
$$

Choose $|m_x\rangle$ real and normalized.  Then

$$
\psi_m^{\mathsf T}\psi_m
=\langle m_x|S^{\mathsf T}S|m_x\rangle
=1,
$$

whereas

$$
\psi_m^\dagger\psi_m
=\langle m_x|e^{-2\alpha J_y}|m_x\rangle
\equiv\mathcal N_{jm}(\alpha).
$$

Thus

$$
r_{jm}=\frac{1}{\mathcal N_{jm}(\alpha)}.
$$

## 6. Exact Finite-$q$ Formula

The spin-$j$ representation is the symmetric sector of $2j=N-1$
spin-one-half factors.  Counting how many factors contribute the two possible
terms gives

$$
\mathcal N_{jm}(\alpha)=
\sum_{k=0}^{\min(j+m,j-m)}
\binom{j+m}{k}
\binom{j-m}{k}
(\cosh\alpha)^{2j-2k}
(\sinh\alpha)^{2k}.
$$

Define the dimensionless distance

$$
\rho=\frac{q}{\Omega^2}
=\operatorname{sech}^2\alpha.
$$

Since $\tanh^2\alpha=1-\rho$, factor
$(\cosh\alpha)^{2j}=\rho^{-j}$ from the norm.  The exact rigidity becomes

$$
r_{jm}(\rho)=
\frac{\rho^{(N-1)/2}}
{\displaystyle
\sum_{k=0}^{\min(j+m,j-m)}
\binom{j+m}{k}
\binom{j-m}{k}
(1-\rho)^k}.
$$

This formula is valid throughout the unbroken region, not only close to the
exceptional point.

## 7. Near-EP Scaling and the Binomial Prefactor

As $\rho\to0^+$, the denominator tends to

$$
\sum_k
\binom{j+m}{k}
\binom{j-m}{k}.
$$

Vandermonde's identity gives

$$
\sum_k
\binom{j+m}{k}
\binom{j-m}{k}
=
\binom{2j}{j-m}
=
\binom{N-1}{j-m}.
$$

Therefore

$$
r_{jm}\sim
\binom{N-1}{j-m}^{-1}
\left(\frac{q}{\Omega^2}\right)^{(N-1)/2}.
$$

Every mode has the same exponent

$$
\frac{N-1}{2},
$$

but different modes can have different binomial prefactors.

For $N=4$, $j=3/2$:

| Mode | Prefactor |
|---|---|
| $m=\pm3/2$ | $1$ |
| $m=\pm1/2$ | $1/3$ |

## 8. Cofactor Eigenvectors for the Mixed Problem

When both the structured displacement and terminal link are present, the
nonunitary spin rotation no longer diagonalizes the Hamiltonian.  The paper uses
cofactors instead.

Let

$$
A(E)=EI-H,
\qquad
P(E)=\det A(E).
$$

The adjugate identity is

$$
A(E)\operatorname{adj}A(E)=P(E)I.
$$

At a simple eigenvalue $E_k$, $P(E_k)=0$.  Every nonzero column of
$\operatorname{adj}A(E_k)$ is therefore a right eigenvector.

One such vector has components

$$
v_i(E_k)=(-1)^{1+i}
\det[A(E_k)]_{\widehat1,\widehat i}.
$$

The rigidity is then calculated algebraically:

$$
r_k=
\frac{|v_k^{\mathsf T}v_k|}
{v_k^\dagger v_k}.
$$

This avoids an ill-conditioned numerical null-space calculation near an
exceptional point.

## 9. Why Rigidity Vanishes at the Secondary $\mathrm{EP}_2$

For the positive $N=4$ secondary point, the paper verifies

$$
P(E_*)=0,
\qquad
P'(E_*)=0,
$$

and also finds a nonzero cofactor.  The matrix therefore has rank three and
nullity one: it is defective.

At rank $N-1$,

$$
\operatorname{adj}A(E_*)\propto vv^{\mathsf T}.
$$

Jacobi's identity gives

$$
P'(E)=
\operatorname{tr}[\operatorname{adj}A(E)].
$$

Since $P'(E_*)=0$,

$$
v^{\mathsf T}v=0.
$$

The ordinary norm $v^\dagger v$ remains positive, so

$$
r(E_*)=0.
$$

This is the direct connection between a defective repeated root and the
rigidity collapse in the paper's plot.

## 10. Common Mistakes

| Mistake | Correction |
|---|---|
| replacing $\psi^{\mathsf T}\psi$ by $\psi^\dagger\psi$ | the two products carry different information |
| interpreting $r=0$ as a zero vector | the vector is nonzero; only its bilinear norm vanishes |
| assuming all modes have the same prefactor | only the critical exponent is common |
| using phase rigidity for a generic nonsymmetric matrix without modification | the simple formula here relies on complex symmetry |
| inferring an EP from a repeated eigenvalue alone | geometric multiplicity must also be checked |

## 11. Final Summary

Phase rigidity is an eigenvector diagnostic:

$$
r=1
\quad\text{ordinary phase-aligned mode},
$$

$$
0<r<1
\quad\text{nonorthogonal non-Hermitian mode},
$$

$$
r=0
\quad\text{self-orthogonal exceptional-point mode}.
$$

Continue with [Part IV: Petermann Factor from First
Principles]({{ '/exceptional-point-project-petermann-factor/' | relative_url }}).

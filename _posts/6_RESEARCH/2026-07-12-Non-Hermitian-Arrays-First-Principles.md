---
title: "Reading the Exceptional-Point Project I: Non-Hermitian Arrays from First Principles"
date: 2026-07-12 18:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - non-hermitian-arrays
  - coupled-mode-theory
  - complex-eigenvalues
  - resonator-arrays
  - research-reading
permalink: "/exceptional-point-project-non-hermitian-arrays/"
---

This is Part I of a five-part guide to the paper **Structured-to-generic
crossover at arbitrary-order exceptional points in supersymmetric
$\mathcal{PT}$-symmetric arrays**.

The discussion assumes that the reader already knows the basic ideas of
$\mathcal{PT}$ symmetry and supersymmetry.  Here we build the remaining language
from first principles:

| Part | Topic |
|---|---|
| I | non-Hermitian arrays |
| II | exceptional points |
| III | phase rigidity |
| IV | Petermann factor |
| V | notation and crossover formulas used in the paper |

The goal is not merely to define words.  By the end of the series, a reader
should be able to move from the array Hamiltonian

$$
H_N(\Omega,\gamma)=\Omega J_x+i\gamma J_z
$$

to the crossover estimate

$$
|\delta_c|\asymp
\frac{2^{N-2}}{(N-1)!}
\frac{|q|^{N/2}}{|\Omega|^{N-1}}
$$

without treating any symbol as mysterious.

## 1. Begin with Coupled Amplitudes

Consider $N$ resonators, waveguides, circuit nodes, or abstract basis states.
Let

$$
\mathbf a(t)=
\begin{pmatrix}
a_1(t)\\
a_2(t)\\
\vdots\\
a_N(t)
\end{pmatrix}
$$

collect their complex amplitudes.  In temporal coupled-mode theory their linear
evolution is written as

$$
i\frac{d\mathbf a}{dt}=H\mathbf a.
$$

This equation has the same mathematical form as the Schrodinger equation.  The
matrix $H$ tells us:

| Matrix element | Physical role |
|---|---|
| $H_{nn}$ | resonance frequency and gain or loss at site $n$ |
| $H_{nm}$, $n\neq m$ | coupling from site $m$ to site $n$ |
| eigenvalue $E_k$ | complex modal frequency |
| eigenvector $\psi_k$ | distribution of the mode over the array |

For a waveguide array, time is replaced by propagation distance:

$$
i\frac{d\mathbf a}{dz}=H\mathbf a.
$$

The mathematics is unchanged.  Only the units change: the entries of $H$ are
angular frequencies in the temporal problem and inverse lengths in the spatial
problem.

## 2. Hermitian and Non-Hermitian Matrices

The Hermitian conjugate of a matrix is

$$
H^\dagger=(H^*)^{\mathsf T}.
$$

A Hamiltonian is Hermitian when

$$
H=H^\dagger.
$$

Hermitian matrices have real eigenvalues and mutually orthogonal eigenvectors.
They describe closed, conservative systems in elementary quantum mechanics.

A matrix is non-Hermitian when

$$
H\neq H^\dagger.
$$

This does not mean that the model is unphysical.  It usually means that the
system exchanges energy with an environment.  Loss, gain, radiation leakage,
measurement back-action, and eliminated external channels can all produce an
effective non-Hermitian Hamiltonian.

<div class="note-box" markdown="1">

**Important distinction:** non-Hermitian does not mean arbitrary.  A
non-Hermitian matrix may still obey reciprocity, spatial symmetries,
$\mathcal{PT}$ symmetry, or other constraints.

</div>

## 3. What a Complex Eigenvalue Means

Suppose

$$
H\psi_k=E_k\psi_k,
\qquad
E_k=\omega_k+i\Gamma_k.
$$

The corresponding time dependence is

$$
\mathbf a_k(t)=e^{-iE_kt}\psi_k
=e^{-i\omega_kt}e^{\Gamma_kt}\psi_k.
$$

Therefore:

| Part of $E_k$ | Meaning |
|---|---|
| $\operatorname{Re}E_k=\omega_k$ | oscillation frequency |
| $\operatorname{Im}E_k=\Gamma_k<0$ | decay |
| $\operatorname{Im}E_k=\Gamma_k>0$ | growth |

This is the first reason complex spectra are natural in open systems.

## 4. A Two-Site Example

The smallest useful example is

$$
H_2=
\frac{1}{2}
\begin{pmatrix}
i\gamma & \Omega\\
\Omega & -i\gamma
\end{pmatrix}.
$$

Here $\Omega$ is the coupling scale and $\gamma$ is the gain-loss scale.  The
characteristic equation is

$$
\det(EI-H_2)=0.
$$

Direct expansion gives

$$
E^2-\frac{\Omega^2-\gamma^2}{4}=0.
$$

Define

$$
q=\Omega^2-\gamma^2.
$$

Then

$$
E_\pm=\pm\frac{\sqrt q}{2}.
$$

This single expression already displays three regimes:

| Condition | Spectrum |
|---|---|
| $q>0$ | two real eigenvalues |
| $q=0$ | both eigenvalues meet |
| $q<0$ | an imaginary-conjugate pair |

The paper uses the same quantity $q$ for every array size.  It measures the
signed distance from the exceptional-point boundary in squared-frequency
units.

## 5. From Two Sites to an Array

For $N$ sites, the paper uses

$$
H_N(\Omega,\gamma)=\Omega J_x+i\gamma J_z.
$$

The matrices $J_x$ and $J_z$ are the spin-$j$ angular-momentum matrices with

$$
j=\frac{N-1}{2}.
$$

In the site basis, the nearest-neighbour coupling between sites $n$ and $n+1$
is

$$
C_n=\frac{\Omega}{2}\sqrt{n(N-n)},
\qquad n=1,\ldots,N-1.
$$

The diagonal entry is proportional to

$$
i\gamma m,
\qquad m=j,j-1,\ldots,-j.
$$

Thus the array contains:

1. a correlated nearest-neighbour coupling profile,
2. a linear imaginary diagonal gradient,
3. no long-range link in the ideal design.

The exact eigenvalues are

$$
E_m=m\sqrt q,
\qquad m=-j,-j+1,\ldots,j.
$$

The two-site result has therefore become an $N$-level ladder with common spacing
$\sqrt q$.

## 6. Complex Symmetric Is Not Hermitian

The Hamiltonians used in the paper satisfy

$$
H^{\mathsf T}=H,
$$

because the couplings are reciprocal.  But generally

$$
H^\dagger\neq H
$$

because of the imaginary gain-loss diagonal.

This is called a **complex-symmetric matrix**.  It is important because its
natural bilinear product is

$$
\psi^{\mathsf T}\phi,
$$

whereas the ordinary positive norm is

$$
\psi^\dagger\phi.
$$

The difference between these two products is the origin of phase rigidity and
the Petermann factor, developed in Parts III and IV.

## 7. Right and Left Eigenvectors

For a general non-Hermitian matrix, right and left eigenvectors satisfy

$$
H\psi_k^{R}=E_k\psi_k^{R},
$$

and

$$
(\psi_k^{L})^\dagger H
=E_k(\psi_k^{L})^\dagger.
$$

They are not generally related by ordinary Hermitian conjugation.  Instead one
uses biorthogonality:

$$
(\psi_k^{L})^\dagger\psi_\ell^{R}
=0,
\qquad k\neq\ell.
$$

For a complex-symmetric matrix, the transpose structure makes the relevant
self-overlap especially simple:

$$
\psi_k^{\mathsf T}\psi_k.
$$

At an exceptional point this quantity can vanish even though
$\psi_k^\dagger\psi_k$ is positive.  That phenomenon is called
self-orthogonality.

## 8. What to Remember Before Reading the Paper

| Symbol | Meaning |
|---|---|
| $N$ | number of sites or modes |
| $j=(N-1)/2$ | spin label used to construct the matrices |
| $\Omega$ | common coupling scale |
| $\gamma$ | gain-loss gradient scale |
| $q=\Omega^2-\gamma^2$ | structured distance from the exceptional point |
| $E_m=m\sqrt q$ | exact structured spectrum |
| $C_n$ | nearest-neighbour coupling at bond $n$ |

The essential lesson is:

> A non-Hermitian array is a coupled-mode system whose matrix includes openness,
> gain, or loss.  Its complex eigenvalues describe modal frequency and
> amplification or decay, while its nonorthogonal eigenvectors contain
> additional physics not visible in the spectrum alone.

Continue with [Part II: Exceptional Points from First
Principles]({{ '/exceptional-point-project-exceptional-points/' | relative_url }}).

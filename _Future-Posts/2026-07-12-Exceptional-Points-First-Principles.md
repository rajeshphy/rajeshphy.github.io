---
title: "Reading the Exceptional-Point Project II: Exceptional Points from First Principles"
date: 2026-07-12 19:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - exceptional-points
  - jordan-blocks
  - eigenvalue-coalescence
  - puiseux-series
  - non-hermitian-physics
permalink: "/exceptional-point-project-exceptional-points/"
---

This is Part II of the project guide, but it is written to be read
independently.  A matrix is non-Hermitian when $H\neq H^\dagger$.  Such a
matrix can have complex eigenvalues and nonorthogonal eigenvectors.  The
two-site example below supplies all the additional background needed here.

[Part I]({{ '/exceptional-point-project-non-hermitian-arrays/' | relative_url }})
develops the broader array interpretation and introduces the exact spectrum

$$
E_m=m\sqrt{\Omega^2-\gamma^2}.
$$

We now derive what happens when the square root vanishes.

## 1. Ordinary Degeneracy Versus Exceptional Point

Two eigenvalues are degenerate when they have the same numerical value.  That
statement alone does not tell us what happens to the eigenvectors.

For a Hermitian matrix, a twofold degeneracy normally still has two independent
eigenvectors.  For example,

$$
H_{\mathrm d}=
\begin{pmatrix}
0&0\\
0&0
\end{pmatrix}
$$

has eigenvalue zero twice, but both

$$
\begin{pmatrix}1\\0\end{pmatrix},
\qquad
\begin{pmatrix}0\\1\end{pmatrix}
$$

are independent eigenvectors.

An **exceptional point** is stronger:

1. eigenvalues coalesce,
2. eigenvectors also coalesce,
3. the matrix becomes defective and cannot be diagonalized.

For a two-state problem this is an $\mathrm{EP}_2$.  If $N$ states and their
eigenvectors coalesce, it is an $\mathrm{EP}_N$.

## 2. The Two-Site Array at the Critical Point

Take

$$
H_2=
\frac12
\begin{pmatrix}
i\gamma&\Omega\\
\Omega&-i\gamma
\end{pmatrix},
\qquad
q=\Omega^2-\gamma^2.
$$

The eigenvalues are

$$
E_\pm=\pm\frac{\sqrt q}{2}.
$$

At $\Omega=\gamma=J$,

$$
q=0,
\qquad
E_+=E_-=0.
$$

The critical matrix is

$$
H_{\mathrm{EP}}
=\frac{J}{2}
\begin{pmatrix}
i&1\\
1&-i
\end{pmatrix}.
$$

To find an eigenvector, solve

$$
H_{\mathrm{EP}}\psi=0.
$$

The first row gives

$$
i\psi_1+\psi_2=0,
$$

so

$$
\psi_2=-i\psi_1.
$$

Both rows give the same condition.  There is therefore only one independent
eigenvector, for example

$$
\psi_{\mathrm{EP}}=
\begin{pmatrix}
1\\
-i
\end{pmatrix}.
$$

The algebraic multiplicity is two, but the geometric multiplicity is one.  This
is the defining signature of an $\mathrm{EP}_2$.

## 3. Jordan Form

A diagonalizable matrix can be written as

$$
H=SDS^{-1},
$$

where $D$ is diagonal.  At an exceptional point, the correct canonical form is a
Jordan block:

$$
H_{\mathrm{EP}}
=S
\begin{pmatrix}
E_{\mathrm{EP}}&1\\
0&E_{\mathrm{EP}}
\end{pmatrix}
S^{-1}.
$$

After shifting $E_{\mathrm{EP}}$ to zero,

$$
L_2=
\begin{pmatrix}
0&1\\
0&0
\end{pmatrix}
$$

satisfies

$$
L_2^2=0,
\qquad
L_2\neq0.
$$

This is nilpotency of order two.

For an $\mathrm{EP}_N$, the canonical nilpotent block is

$$
L_N=
\begin{pmatrix}
0&1&0&\cdots&0\\
0&0&1&\cdots&0\\
\vdots&&\ddots&\ddots&\vdots\\
0&\cdots&0&0&1\\
0&\cdots&\cdots&0&0
\end{pmatrix},
$$

with

$$
L_N^N=0,
\qquad
L_N^{N-1}\neq0.
$$

The paper proves that its critical $N$-site Hamiltonian is similar to one such
block.

## 4. Generalized Eigenvectors

One ordinary eigenvector is not enough to span the space at an $\mathrm{EP}_N$.
The missing vectors are replaced by a Jordan chain:

$$
H_{\mathrm{EP}}\chi_0=0,
$$

$$
H_{\mathrm{EP}}\chi_1=\chi_0,
$$

$$
H_{\mathrm{EP}}\chi_2=\chi_1,
$$

and so on.  The vector $\chi_0$ is the coalesced eigenvector.  The remaining
$\chi_r$ are generalized eigenvectors.

This chain is why a perturbation can produce fractional powers.  A perturbation
may need to propagate through the entire chain before it closes the spectral
equation.

## 5. Why an $\mathrm{EP}_N$ Produces an $N$th Root

At an ideal $\mathrm{EP}_N$, the characteristic polynomial is

$$
P_0(E)=E^N.
$$

Suppose a perturbation of strength $\delta$ adds a nonzero constant carrier:

$$
P(E,\delta)=E^N-A\delta+\cdots.
$$

To leading order,

$$
E^N=A\delta.
$$

Therefore the $N$ roots are

$$
E_k=(A\delta)^{1/N}
\exp\left(\frac{2\pi i k}{N}\right),
\qquad k=0,\ldots,N-1.
$$

Hence

$$
|E_k|\propto|\delta|^{1/N}.
$$

This is the generic $\mathrm{EP}_N$ response.  The fractional powers form a
Puiseux series rather than an ordinary Taylor series.

## 6. Why the Paper Also Finds a Square Root

The existence of an $\mathrm{EP}_N$ does not mean that every perturbation must
produce an $N$th root.  The exponent depends on the direction of perturbation in
matrix space.

The structured array has

$$
E_m=m\sqrt q.
$$

If

$$
\Omega=J+\epsilon,
\qquad
\gamma=J,
$$

then

$$
q=(J+\epsilon)^2-J^2
=2J\epsilon+\epsilon^2.
$$

For small $\epsilon$,

$$
E_m\sim m\sqrt{2J\epsilon}
\propto\epsilon^{1/2}.
$$

The exponent remains one half for every $N$ because this perturbation stays
inside the specially correlated spin-array family.

By contrast, the terminal link

$$
V_\delta=
\delta\left(
|1\rangle\langle N|
+|N\rangle\langle1|
\right)
$$

breaks the nearest-neighbour structure and activates the full Jordan chain:

$$
E_k\propto\delta^{1/N}.
$$

| Perturbation | Leading response |
|---|---|
| structured change of $\Omega$ | $\epsilon^{1/2}$ |
| terminal structure-breaking link | $\delta^{1/N}$ |

The paper is about the competition between these two laws.

## 7. Repeated Root Is Not Automatically an Exceptional Point

A repeated root satisfies

$$
P(E_*)=0,
\qquad
P'(E_*)=0.
$$

But this only proves algebraic degeneracy.  To prove an exceptional point, one
must also show that the eigenspace has insufficient dimension.

For a double root:

| Nullity of $E_*I-H$ | Interpretation |
|---|---|
| 2 | two independent eigenvectors; not an $\mathrm{EP}_2$ |
| 1 | one eigenvector; defective $\mathrm{EP}_2$ |

The paper uses a nonzero cofactor to show that the positive $N=4$ secondary
double root has matrix rank three and nullity one.  Its phase rigidity also
vanishes.  Together these facts prove that it is a genuine secondary
$\mathrm{EP}_2$.

## 8. What to Remember

| Term | Meaning |
|---|---|
| algebraic multiplicity | number of times an eigenvalue occurs in the characteristic polynomial |
| geometric multiplicity | number of independent eigenvectors |
| defective matrix | geometric multiplicity is too small |
| Jordan chain | eigenvector plus generalized eigenvectors |
| $\mathrm{EP}_N$ | one eigenvalue and one eigenvector formed from $N$ coalescing states |
| Puiseux response | fractional-power eigenvalue expansion |

The compact logic is

$$
\text{one Jordan chain of length }N
\quad\Longrightarrow\quad
E^N\sim\delta
\quad\Longrightarrow\quad
E\sim\delta^{1/N}.
$$

Continue with [Part III: Phase Rigidity from First
Principles]({{ '/exceptional-point-project-phase-rigidity/' | relative_url }}).

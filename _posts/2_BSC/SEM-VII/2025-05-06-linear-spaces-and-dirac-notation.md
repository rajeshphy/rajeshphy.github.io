---
title: "Linear Spaces, Dirac Notation and Quantum Operators"
summary: "Linear vector spaces, bases, inner products, completeness, outer products, Hilbert space, coordinate representations, and operator algebra."
date: 2025-05-06 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-18, quantum-mechanics, linear-vector-space, dirac-notation, operators]
permalink: /bsc/sem-vii/linear-spaces-and-dirac-notation/
hidden: true
---

A complex linear vector space $V$ is closed under addition and complex scalar
multiplication:

$$
\lvert u\rangle,\lvert v\rangle\in V,\quad a,b\in\mathbb C
\quad\Longrightarrow\quad
a\lvert u\rangle+b\lvert v\rangle\in V.
$$

Addition is associative and commutative, a zero vector and additive inverses
exist, and scalar multiplication is associative and distributive. Examples
are $\mathbb C^N$, square-integrable wavefunctions, and the solution set of a
homogeneous linear differential equation. The last example is a vector space
because any linear combination of two solutions is again a solution.

## Linear independence, basis, and dimension

The vectors $\lvert e_1\rangle,\ldots,\lvert e_N\rangle$ are linearly independent if

$$
\sum_{j=1}^N c_j\lvert e_j\rangle=\lvert0\rangle
\quad\Longrightarrow\quad c_j=0\quad\text{for every }j.
$$

A basis is an independent set that spans $V$. Hence every vector has one and
only one expansion

$$
\lvert\psi\rangle=\sum_{j=1}^N c_j\lvert e_j\rangle.
$$

If two distinct coefficient sets represented the same vector, their
difference would be a nonzero linear combination equal to zero, contradicting
independence. The number $N$ is the dimension. A function space can instead
have a countably infinite basis, such as
$e^{inx}/\sqrt{2\pi}$ on $[-\pi,\pi]$.

## Bras, kets, and inner products

A state vector is a ket $\lvert\psi\rangle$. Its dual is the bra
$\langle\psi\rvert$. Combining a bra and ket gives the complex number
$\langle\phi\mid\psi\rangle$, subject to

$$
\langle\phi\mid\psi\rangle=\langle\psi\mid\phi\rangle^*,
\qquad
\langle\psi\mid\psi\rangle\ge0,
$$

$$
\langle\phi\rvert(a\lvert u\rangle+b\lvert v\rangle)
=a\langle\phi\mid u\rangle+b\langle\phi\mid v\rangle.
$$

Positivity is strict: $\langle\psi\mid\psi\rangle=0$ only for the zero vector.
Taking the adjoint conjugates scalars,

$$
(a\lvert u\rangle+b\lvert v\rangle)^\dagger
=a^*\langle u\rvert+b^*\langle v\rvert.
$$

An orthonormal basis obeys

$$
\langle e_i\mid e_j\rangle=\delta_{ij}.
$$

Multiplying the basis expansion by $\langle e_i\rvert$ determines the coordinate

$$
c_i=\langle e_i\mid\psi\rangle,
$$

and substitution back gives

$$
\lvert\psi\rangle=\sum_i\lvert e_i\rangle\langle e_i\mid\psi\rangle.
$$

Because this holds for every ket,

$$
\boxed{\sum_i\lvert e_i\rangle\langle e_i\rvert=I,}
$$

the completeness relation.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-18/unit-1/hilbert-space-coordinates.png' | relative_url }}" alt="A ket resolved into orthonormal basis components and reconstructed by the completeness relation" loading="lazy">
  </div>
  <figcaption>For the displayed two-dimensional example, \(\lvert\psi\rangle=c_1\lvert e_1\rangle+c_2\lvert e_2\rangle\), with each coefficient obtained by an inner product.</figcaption>
</figure>

## Outer products and projectors

Combining a ket and bra produces an operator:

$$
(\lvert u\rangle\langle v\rvert)\lvert\psi\rangle
=\lvert u\rangle\langle v\mid\psi\rangle.
$$

For a normalized ket, $P_u=\lvert u\rangle\langle u\rvert$ is a projector because

$$
P_u^2=\lvert u\rangle\langle u\mid u\rangle\langle u\rvert
=\lvert u\rangle\langle u\rvert=P_u,
\qquad P_u^\dagger=P_u.
$$

It extracts the component of a state along $\lvert u\rangle$.

## Hilbert space and coordinate representation

An inner-product space is a Hilbert space when every Cauchy sequence of its
vectors converges to a vector that remains in the space. This completeness is
needed for limits of state expansions.

For a discrete orthonormal basis, the ket is represented by the column

$$
\lvert\psi\rangle\longleftrightarrow
\begin{pmatrix}c_1\\c_2\\\vdots\end{pmatrix},
\qquad c_i=\langle e_i\mid\psi\rangle,
$$

and the bra by its conjugate transpose. In the continuous position basis,

$$
\psi(\mathbf r)=\langle\mathbf r\mid\psi\rangle,
\qquad
\langle\mathbf r\mid\mathbf r'\rangle=\delta^3(\mathbf r-\mathbf r'),
$$

$$
\int\lvert\mathbf r\rangle\langle\mathbf r\rvert\,d^3r=I,
\qquad
\lvert\psi\rangle=\int\lvert\mathbf r\rangle\psi(\mathbf r)\,d^3r.
$$

Normalization becomes
$\int\lvert\psi(\mathbf r)\rvert^2d^3r=1$; therefore a three-dimensional wavefunction
has SI dimension $\mathrm{m}^{-3/2}$.

## Linear operators and their algebra

An operator $A$ is linear when

$$
A(a\lvert u\rangle+b\lvert v\rangle)=aA\lvert u\rangle+bA\lvert v\rangle.
$$

Its matrix elements in an orthonormal basis are
$A_{ij}=\langle e_i\rvert A\lvert e_j\rangle$. Insert completeness on both sides:

$$
A=IAI
=\sum_{ij}\lvert e_i\rangle A_{ij}\langle e_j\rvert.
$$

The sum, product, commutator, and adjoint are defined by

$$
(A+B)\lvert\psi\rangle=A\lvert\psi\rangle+B\lvert\psi\rangle,
\qquad
(AB)\lvert\psi\rangle=A(B\lvert\psi\rangle),
$$

$$
[A,B]=AB-BA,
\qquad
\langle\phi\mid A\psi\rangle
=\langle A^\dagger\phi\mid\psi\rangle.
$$

Consequently

$$
(AB)^\dagger=B^\dagger A^\dagger,
\qquad
[A,B]^\dagger=-[A^\dagger,B^\dagger].
$$

A Hermitian operator satisfies $A^\dagger=A$. Its expectation value is real:

$$
\langle A\rangle^*
=\langle\psi\rvert A\lvert\psi\rangle^*
=\langle\psi\rvert A^\dagger\lvert\psi\rangle
=\langle A\rangle.
$$

A unitary operator satisfies $U^\dagger U=I$ and preserves inner products,

$$
\langle U\phi\mid U\psi\rangle
=\langle\phi\rvert U^\dagger U\lvert\psi\rangle
=\langle\phi\mid\psi\rangle.
$$

The outer-product reconstruction, projector identity, and operator-algebra
relations are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-18/unit-1/linear-spaces-operators.mac' | relative_url }}); every printed residual is zero.

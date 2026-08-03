---
title: "Linear Spaces, Dirac Notation and Quantum Operators"
summary: "Linear vector spaces, bases, inner products, completeness, outer products, Hilbert space, coordinate representations, and operator algebra."
date: 2025-05-30 09:00:00 +0530
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
\langle\mathbf r\mid\mathbf r^{\prime}\rangle=\delta^3(\mathbf r-\mathbf r^{\prime}),
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

## Solved Problems

### 1. Independence and coordinates in an unnormalized basis

In $\mathbb C^3$, consider

$$
\lvert b_1\rangle=\begin{pmatrix}1\\i\\0\end{pmatrix},\qquad
\lvert b_2\rangle=\begin{pmatrix}1\\-i\\0\end{pmatrix},\qquad
\lvert b_3\rangle=\begin{pmatrix}0\\0\\1\end{pmatrix}.
$$

The matrix with these vectors as columns is

$$
B=\begin{pmatrix}1&1&0\\i&-i&0\\0&0&1\end{pmatrix},
\qquad \det B=-2i\ne0.
$$

The three vectors are therefore linearly independent and form a basis. To
expand $\lvert\psi\rangle=(2,2i,3)^{\mathsf T}$, write
$\lvert\psi\rangle=a\lvert b_1\rangle+b\lvert b_2\rangle+c\lvert b_3\rangle$.
Component comparison gives

$$
a+b=2,\qquad a-b=2,\qquad c=3,
$$

and hence

$$
\boxed{\lvert\psi\rangle=2\lvert b_1\rangle+3\lvert b_3\rangle.}
$$

These coordinates are dimensionless. Because the basis is not orthonormal,
they were obtained from $B^{-1}\psi$, not by taking simple inner products
with the basis vectors.

### 2. A rank-one projector and its probability

Let

$$
\lvert u\rangle=\frac1{\sqrt2}\begin{pmatrix}1\\i\end{pmatrix},
\qquad
\lvert\psi\rangle=\frac1{\sqrt5}\begin{pmatrix}2\\i\end{pmatrix}.
$$

Both kets are normalized. The projector onto $\lvert u\rangle$ is

$$
P_u=\lvert u\rangle\langle u\rvert
=\frac12\begin{pmatrix}1&-i\\i&1\end{pmatrix},
\qquad P_u^2=P_u.
$$

The amplitude along $\lvert u\rangle$ is

$$
\langle u\mid\psi\rangle
=\frac{1}{\sqrt{10}}(1,-i)
\begin{pmatrix}2\\i\end{pmatrix}
=\frac3{\sqrt{10}},
$$

so

$$
P_u\lvert\psi\rangle
=\frac3{\sqrt{20}}\begin{pmatrix}1\\i\end{pmatrix},
\qquad
\boxed{\langle\psi\rvert P_u\lvert\psi\rangle
=\left\lvert\langle u\mid\psi\rangle\right\rvert^2=\frac9{10}.}
$$

The result is dimensionless and lies between zero and one; the orthogonal
complement has probability $1/10$, so the two mutually exclusive outcomes
sum to unity.

### 3. Spectrum and expectation value of a Hermitian operator

Let an observable be

$$
A=E_0\begin{pmatrix}2&i\\-i&3\end{pmatrix},
\qquad E_0>0.
$$

The off-diagonal entries are complex conjugates, so $A^\dagger=A$. With
$a=A/E_0$, the characteristic equation is

$$
\det(a-\lambda I)=(2-\lambda)(3-\lambda)-1
=\lambda^2-5\lambda+5=0.
$$

Therefore

$$
\boxed{A_\pm=\frac{5\pm\sqrt5}{2}E_0.}
$$

For $\lvert\psi\rangle=(1,i)^{\mathsf T}/\sqrt2$,

$$
a\lvert\psi\rangle
=\frac1{\sqrt2}\begin{pmatrix}1\\2i\end{pmatrix},
\qquad
\boxed{\langle A\rangle
=E_0\langle\psi\rvert a\lvert\psi\rangle=\frac32E_0.}
$$

The expectation has the units of the observable and satisfies
$A_-<\langle A\rangle<A_+$, as required for a normalized state.

## Descriptive Questions

1. Distinguish algebraic completeness of a basis from metric completeness of an inner-product space, and explain why the latter defines a Hilbert space.
2. Starting from a finite orthonormal basis, derive both the coordinate formula $c_i=\langle e_i\mid\psi\rangle$ and the completeness operator.
3. Explain how an outer product acts on a ket, and state the additional conditions that make a rank-one outer product an orthogonal projector.
4. Derive the adjoint rules for a product and a commutator, and explain why unitary operators preserve inner products.

## Numerical Problems

1. For $u=(1,i,-1)^{\mathsf T}$ and $v=(2,0,i)^{\mathsf T}$, evaluate $(1-i)u+2v$ and identify the vector space to which the result belongs.
2. The normalized vectors are $\lvert\phi\rangle=(1,i,1)^{\mathsf T}/\sqrt3$ and $\lvert\chi\rangle=(1,-i,1)^{\mathsf T}/\sqrt3$. Find $\langle\phi\mid\chi\rangle$ and its squared magnitude.
3. In the orthonormal basis $e_1=(1,1,0)^{\mathsf T}/\sqrt2$, $e_2=(1,-1,0)^{\mathsf T}/\sqrt2$, $e_3=(0,0,1)^{\mathsf T}$, find the coordinates of $\psi=(2,0,i)^{\mathsf T}/\sqrt5$ and verify its norm from those coordinates.
4. Let $A=\lvert u\rangle\langle v\rvert$, where $u=(1,0)^{\mathsf T}$ and $v=(1,i)^{\mathsf T}/\sqrt2$. Find the matrix of $A$ and $A(2,-i)^{\mathsf T}$.
5. For $A=\begin{pmatrix}0&1\\1&0\end{pmatrix}$ and $B=\begin{pmatrix}1&0\\0&-1\end{pmatrix}$, calculate $[A,B]$.
6. Show numerically that $U=2^{-1/2}\begin{pmatrix}1&i\\i&1\end{pmatrix}$ is unitary, and find the image and norm of $(1,0)^{\mathsf T}$.

**Final answers:** 1. $(5-i,1+i,-1+3i)^{\mathsf T}\in\mathbb C^3$; 2. $1/3$, $1/9$; 3. $(\sqrt{2/5},\sqrt{2/5},i/\sqrt5)^{\mathsf T}$, norm $1$; 4. $A=2^{-1/2}\begin{pmatrix}1&-i\\0&0\end{pmatrix}$ and $A(2,-i)^{\mathsf T}=(1/\sqrt2,0)^{\mathsf T}$; 5. $\begin{pmatrix}0&-2\\2&0\end{pmatrix}$; 6. $U^\dagger U=I$, image $(1,i)^{\mathsf T}/\sqrt2$, norm $1$.

The core identities and all problem answers are checked in the
[original Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-18/unit-1/linear-spaces-operators.mac' | relative_url }})
and the [problems worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-18/unit-1/linear-spaces-problems.mac' | relative_url }}); every printed residual is zero.

## References

1. [Bra–ket notation](https://en.wikipedia.org/wiki/Bra%E2%80%93ket_notation).
2. J. J. Sakurai and J. Napolitano, *Modern Quantum Mechanics*, 3rd ed., Chapter 1, “Fundamental Concepts.”
3. R. Shankar, *Principles of Quantum Mechanics*, 2nd ed., Chapter 1, “Mathematical Introduction.”
4. D. J. Griffiths and D. F. Schroeter, *Introduction to Quantum Mechanics*, 3rd ed., Chapter 3, “Formalism.”

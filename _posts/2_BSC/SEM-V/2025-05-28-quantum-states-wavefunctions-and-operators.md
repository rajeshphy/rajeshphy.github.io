---
title: "Quantum Postulates, Wavefunctions, and Operators"
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-v
tags: [quantum-postulates, wavefunction, probability-current, hermitian-operators, commutators]
permalink: /bsc/sem-v/mj-11/quantum-states-wavefunctions-operators/
---

## Postulates of quantum mechanics

1. A pure state is represented by a non-zero vector $\lvert\psi\rangle$ in a complex Hilbert space. Vectors differing only by a non-zero complex factor represent the same physical ray. In the position representation, $\psi(\mathbf r,t)=\langle\mathbf r\vert\psi(t)\rangle$.
2. Each observable $A$ is represented by a linear Hermitian operator $\hat A$. Its possible measured values are its eigenvalues, defined by $\hat A\phi_a=a\phi_a$.
3. If a normalized state is expanded in an orthonormal eigenbasis as $\lvert\psi\rangle=\sum_a c_a\lvert a\rangle$, a measurement of $A$ gives $a$ with probability $\lvert c_a\rvert^2$. Immediately after an ideal measurement with result $a$, the state lies in the corresponding eigenspace.
4. The expectation value in a normalized state is $\langle A\rangle=\langle\psi\vert\hat A\vert\psi\rangle$.
5. Between measurements the state evolves according to $i\hbar\,\partial_t\lvert\psi\rangle=\hat H\lvert\psi\rangle$, where $\hat H$ is the Hamiltonian.

## Probability interpretation and normalization

Born's interpretation identifies

$$
\boxed{\rho(\mathbf r,t)=\lvert\psi(\mathbf r,t)\rvert^2}
$$

as probability per unit volume. Thus $\rho$ has SI units $\mathrm{m^{-3}}$, and the probability of finding the particle in a volume $\Omega$ is

$$
P(\Omega,t)=\int_\Omega \lvert\psi(\mathbf r,t)\rvert^2d^3r.
$$

A state representing one particle over all space is normalized by

$$
\boxed{\int_{\mathbb R^3}\lvert\psi\rvert^2d^3r=1}.
$$

If an unnormalized square-integrable function is $f$, then $\psi=Nf$ with

$$
\lvert N\rvert^{-2}=\int_{\mathbb R^3}\lvert f\rvert^2d^3r.
$$

The overall phase of $N$ is physically irrelevant because it cancels from $\lvert\psi\rvert^2$ and all expectation values.

## Physical acceptability of a wavefunction

A bound-state wavefunction must be single-valued, finite, and square-integrable. It is continuous wherever the potential has no infinite discontinuity. To obtain the derivative condition in one dimension, integrate the stationary Schrödinger equation across $(x_0-\epsilon,x_0+\epsilon)$:

$$
-\frac{\hbar^2}{2m}\int_{x_0-\epsilon}^{x_0+\epsilon}\psi^{\prime\prime}dx
+\int_{x_0-\epsilon}^{x_0+\epsilon}(V-E)\psi\,dx=0.
$$

Therefore

$$
\psi^{\prime}(x_0+\epsilon)-\psi^{\prime}(x_0-\epsilon)
=\frac{2m}{\hbar^2}\int_{x_0-\epsilon}^{x_0+\epsilon}(V-E)\psi\,dx.
$$

If $V$ and $\psi$ remain finite, the integral vanishes as $\epsilon\to0$, so $\psi^{\prime}$ is continuous. At an infinite wall this argument fails and the physical boundary condition is instead $\psi=0$ at the wall; its derivative need not match the identically zero exterior derivative. For a normalizable state on an unbounded domain, $\psi$ must approach zero sufficiently rapidly as $\lvert\mathbf r\rvert\to\infty$.

## Linearity and superposition

The Schrödinger equation is linear. If $\psi_1$ and $\psi_2$ satisfy the same homogeneous equation, then for constants $c_1,c_2$,

$$
(i\hbar\partial_t-\hat H)(c_1\psi_1+c_2\psi_2)
=c_1(i\hbar\partial_t-\hat H)\psi_1
+c_2(i\hbar\partial_t-\hat H)\psi_2=0.
$$

Hence $c_1\psi_1+c_2\psi_2$ is also a state after normalization. The probability density contains cross terms $c_1c_2^{\ast}\psi_1\psi_2^{\ast}+\mathrm{c.c.}$; these interference terms distinguish a coherent superposition from a classical addition of probabilities.

## Probability current density in three dimensions

For a real potential,

$$
i\hbar\frac{\partial\psi}{\partial t}
=-\frac{\hbar^2}{2m}\nabla^2\psi+V\psi,
$$

and complex conjugation reverses the sign of $i$:

$$
-i\hbar\frac{\partial\psi^{\ast}}{\partial t}
=-\frac{\hbar^2}{2m}\nabla^2\psi^{\ast}+V\psi^{\ast}.
$$

Multiply the first equation by $\psi^{\ast}$, the second by $\psi$, and subtract the second from the first. The potential terms cancel:

$$
i\hbar\frac{\partial\lvert\psi\rvert^2}{\partial t}
=-\frac{\hbar^2}{2m}
(\psi^{\ast}\nabla^2\psi-\psi\nabla^2\psi^{\ast}).
$$

Using

$$
\psi^{\ast}\nabla^2\psi-\psi\nabla^2\psi^{\ast}
=\nabla\!\cdot(\psi^{\ast}\nabla\psi-\psi\nabla\psi^{\ast}),
$$

we obtain the continuity equation

$$
\boxed{\frac{\partial\rho}{\partial t}+\nabla\cdot\mathbf j=0},
$$

with

$$
\boxed{
\mathbf j=\frac{\hbar}{2mi}
(\psi^{\ast}\nabla\psi-\psi\nabla\psi^{\ast})
=\frac{\hbar}{m}\operatorname{Im}(\psi^{\ast}\nabla\psi)
}.
$$

Since $\rho$ has units $\mathrm{m^{-3}}$, $\mathbf j$ has units $\mathrm{m^{-2}s^{-1}}$. Integrating over a fixed volume and applying the divergence theorem gives

$$
\frac d{dt}\int_\Omega\rho\,d^3r
=-\oint_{\partial\Omega}\mathbf j\cdot d\mathbf S,
$$

so probability decreases inside $\Omega$ only by flowing through its boundary.

## Free-particle wavefunction

For $V=0$, a simultaneous momentum and energy eigenfunction is

$$
\psi_{\mathbf p}(\mathbf r,t)=A
\exp\!\left[\frac{i}{\hbar}(\mathbf p\cdot\mathbf r-Et)\right],
\qquad E=\frac{p^2}{2m}.
$$

Substitution gives $\nabla^2\psi=-p^2\psi/\hbar^2$ and $\partial_t\psi=-iE\psi/\hbar$, fixing both signs in the Schrödinger equation. Because $\lvert\psi_{\mathbf p}\rvert^2=\lvert A\rvert^2$ is constant, a plane wave cannot be normalized to unity over infinite space. The standard generalized normalization is

$$
\langle\mathbf r\vert\mathbf p\rangle
=\frac{1}{(2\pi\hbar)^{3/2}}
e^{i\mathbf p\cdot\mathbf r/\hbar},
$$

$$
\langle\mathbf p\vert\mathbf p^{\prime}\rangle
=\delta^{(3)}(\mathbf p-\mathbf p^{\prime}).
$$

A physical localized free state is a square-integrable superposition of these plane waves.

## Eigenfunctions, eigenvalues, and Hermitian operators

An eigenfunction satisfies

$$
\hat A\phi_a=a\phi_a.
$$

Hermiticity means

$$
\langle\phi\vert\hat A\psi\rangle
=\langle\hat A\phi\vert\psi\rangle
$$

for functions obeying the operator's boundary conditions. If $\hat A\phi_a=a\phi_a$, then

The integration-by-parts equality is a statement about the operator **and its domain**. Vanishing boundary terms make a differential operator symmetric on that domain; a quantum observable requires the corresponding self-adjoint domain so that its spectrum and time evolution have the required physical properties.

$$
a\langle\phi_a\vert\phi_a\rangle
=\langle\phi_a\vert\hat A\phi_a\rangle
=\langle\hat A\phi_a\vert\phi_a\rangle
=a^{\ast}\langle\phi_a\vert\phi_a\rangle,
$$

so $a=a^{\ast}$: an observable eigenvalue is real. For two eigenfunctions with $a\neq b$,

$$
b\langle\phi_a\vert\phi_b\rangle
=a\langle\phi_a\vert\phi_b\rangle,
$$

which implies $\langle\phi_a\vert\phi_b\rangle=0$. Distinct eigenvalues of a Hermitian operator therefore have orthogonal eigenfunctions.

## Position, momentum, and energy operators

Acting on the plane-wave phase gives

$$
-i\hbar\nabla e^{i(\mathbf p\cdot\mathbf r-Et)/\hbar}
=\mathbf p\,e^{i(\mathbf p\cdot\mathbf r-Et)/\hbar},
$$

$$
i\hbar\partial_t e^{i(\mathbf p\cdot\mathbf r-Et)/\hbar}
=E\,e^{i(\mathbf p\cdot\mathbf r-Et)/\hbar}.
$$

Thus the position representation uses

$$
\boxed{\hat{\mathbf r}=\mathbf r},\qquad
\boxed{\hat{\mathbf p}=-i\hbar\nabla},\qquad
\boxed{\hat E=i\hbar\frac{\partial}{\partial t}}.
$$

For one Cartesian component and any differentiable test function $f$,

$$
\begin{aligned}
[\hat x,\hat p_x]f
&=x(-i\hbar f^{\prime})-(-i\hbar)(xf)^{\prime}\\
&=-i\hbar xf^{\prime}+i\hbar(f+xf^{\prime})=i\hbar f.
\end{aligned}
$$

Hence

$$
\boxed{[\hat x,\hat p_x]=i\hbar}.
$$

Position and momentum are non-commuting operators and cannot have a complete common eigenbasis. Commuting Hermitian operators, $[\hat A,\hat B]=0$, can be simultaneously diagonalized after resolving any degeneracy.

Finally, for a normalized wavefunction,

$$
\boxed{\langle\mathbf r\rangle
=\int\psi^{\ast}\mathbf r\psi\,d^3r},
$$

$$
\boxed{\langle\mathbf p\rangle
=\int\psi^{\ast}(-i\hbar\nabla)\psi\,d^3r}.
$$

Integration by parts makes $-i\hbar\nabla$ symmetric when the surface term vanishes. On the full line, its standard self-adjoint domain consists of square-integrable, absolutely continuous states whose first derivative is also square-integrable; on a finite interval, an appropriate periodic or phase-periodic boundary domain gives a self-adjoint momentum operator.

## Solved Problems

### 1. Normalizing a localized exponential state

In one dimension let $\psi(x)=N e^{-a\lvert x\rvert}$, where $a>0$. Normalize the state, find $\langle\lvert x\rvert\rangle$, and evaluate the probability of $\lvert x\rvert<0.500\ \mathrm{nm}$ when $a=2.00\ \mathrm{nm^{-1}}$.

**Solution.** Choose $N$ real and positive; any constant phase would be physically irrelevant. Evenness gives

$$
1=2N^2\int_0^\infty e^{-2ax}dx
=2N^2\left(\frac1{2a}\right),
$$

so

$$
\boxed{N=\sqrt a}.
$$

This has units $\mathrm{m^{-1/2}}$, as a one-dimensional wavefunction must. The mean absolute position is

$$
\begin{aligned}
\langle\lvert x\rvert\rangle
&=2a\int_0^\infty x e^{-2ax}dx\\
&=\frac1{2a}
=\boxed{0.250\ \mathrm{nm}}.
\end{aligned}
$$

For $b=0.500\ \mathrm{nm}$,

$$
\begin{aligned}
P(\lvert x\rvert<b)
&=2a\int_0^b e^{-2ax}dx\\
&=1-e^{-2ab}
=1-e^{-2}
=\boxed{0.8647}.
\end{aligned}
$$

The state is real, so its probability current is zero; there is no preferred direction of flow. As $a$ increases, the normalization amplitude grows while the length $1/a$ and $\langle\lvert x\rvert\rangle$ shrink, consistently describing stronger localization. The probability tends to zero as $b\to0$ and to one as $b\to\infty$.

### 2. Expectation values for a polynomial trial wavefunction

On $0<x<L$, let $\psi(x)=N x(L-x)$ and let it vanish at the endpoints. Normalize it and find $\langle x\rangle$ and $\langle p_x\rangle$.

**Solution.** The polynomial is real and symmetric about $L/2$. Direct normalization gives

$$
\int_0^L x^2(L-x)^2dx=\frac{L^5}{30},
$$

and hence

$$
\boxed{N=\frac{\sqrt{30}}{L^{5/2}}}.
$$

The factor $Nx(L-x)$ has units $L^{-1/2}$, as required. For position,

$$
\langle x\rangle
=N^2\int_0^L x^3(L-x)^2dx
=\boxed{\frac L2}.
$$

For momentum, keep the operator sign $-i\hbar\,d/dx$:

$$
\begin{aligned}
\langle p_x\rangle
&=-i\hbar\int_0^L\psi\frac{d\psi}{dx}dx\\
&=-\frac{i\hbar}{2}\left[\psi^2(x)\right]_0^L
=\boxed{0}.
\end{aligned}
$$

The zero integral is real and reflects equal positive- and negative-momentum content rather than absence of kinetic energy. It does not by itself assert that $-i\hbar,d/dx$ is self-adjoint on the rigid-wall Dirichlet domain; self-adjointness depends on the operator domain. The midpoint value follows independently from reflection symmetry $x\mapsto L-x$ and remains $L/2$ under any overall phase choice.

## Descriptive Questions

1. State the quantum postulates used to predict possible measurement results, their probabilities, and subsequent time evolution.
2. Why must a physical bound-state wavefunction be square-integrable, and under what circumstances can its first derivative be discontinuous?
3. Derive the three-dimensional probability-current density and explain the sign of each term in the continuity equation.
4. How do Hermiticity and commutation determine real eigenvalues, orthogonality, and the possibility of simultaneous eigenstates?

## Numerical Problems

1. An observable has eigenvalues $3.00$ and $7.00$ with probabilities $1/5$ and $4/5$. Find its mean and standard deviation.<br>
   **Final answer:** $\boxed{\langle A\rangle=6.20,\quad\Delta A=1.60}$.
2. A one-dimensional plane wave has density $\rho=4.00\times10^6\ \mathrm{m^{-1}}$ and positive momentum $2.00\times10^{-24}\ \mathrm{kg\,m\,s^{-1}}$. Find its electron probability current.<br>
   **Final answer:** $\boxed{j=+8.78\times10^{12}\ \mathrm{s^{-1}}}$.
3. A constant wavefunction is normalized only on an interval of length $2.00\ \mathrm{nm}$. Find its amplitude magnitude.<br>
   **Final answer:** $\boxed{\lvert A\rvert=L^{-1/2}=2.24\times10^4\ \mathrm{m^{-1/2}}}$.

Every added normalization, expectation value, and probability-current value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Wave function](https://en.wikipedia.org/wiki/Wave_function)
2. [OpenStax, *University Physics Volume 3*, Section 7.1: Wave Functions](https://openstax.org/books/university-physics-volume-3/pages/7-1-wave-functions)
3. [MIT OpenCourseWare 8.04, Lecture Note 6: Probability density and current](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/resources/mit8_04s16_lecnotes6/)
4. [The Feynman Lectures on Physics, Vol. III, Chapter 20: Operators](https://www.feynmanlectures.caltech.edu/III_20.html)

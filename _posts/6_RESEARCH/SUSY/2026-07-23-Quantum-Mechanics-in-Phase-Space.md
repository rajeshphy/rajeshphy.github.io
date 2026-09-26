---
title: "Quantum Mechanics in Phase Space"
description: "Develops the Wigner formulation as a complete representation of quantum mechanics, translates every standard postulate into phase space, and compares it directly with Schrödinger evolution."
date: 2026-07-23 12:00:00 +0530
categories: research
tags:
  - wigner function
  - phase-space quantum mechanics
  - Weyl transform
  - Moyal bracket
  - harmonic oscillator
permalink: "/quantum-mechanics-in-phase-space/"
---

The Wigner function is sometimes introduced merely as a way to draw a
quantum state in phase space. That description is incomplete. When it is
combined with Weyl symbols, the star product, and the Moyal equation, it
becomes a complete formulation of quantum mechanics.

The central statement is

$$
\boxed{
\text{density operator }\rho
\quad\longleftrightarrow\quad
\text{Wigner function }W(x,p)
}
$$

The correspondence is invertible. Therefore, knowing the entire Wigner
function means knowing the entire physical quantum state. For a pure state,
this is equivalent to knowing its wavefunction up to an unobservable global
phase.

This chapter builds that statement from first principles, translates the
postulates of quantum mechanics into phase-space language, and then applies
the formulation to the simple harmonic oscillator.

## 1. Why another formulation of quantum mechanics is possible

A physical theory should not depend on the mathematical coordinates used to
describe it. A vector, for example, may be represented by its components in
the position basis, momentum basis, or energy basis without becoming a
different vector.

The same freedom exists for a quantum state. In the usual Hilbert-space
description, a general state is represented by a density operator

$$
\rho\geq 0,
\qquad
\operatorname{Tr}\rho=1.
$$

A pure state is the special case

$$
\rho=\lvert\psi\rangle\langle\psi\rvert,
\qquad
\rho^2=\rho.
$$

In the position representation, its density-matrix kernel is

$$
\rho(x_1,x_2)
=
\langle x_1\lvert\rho\rvert x_2\rangle.
$$

For a pure state,

$$
\rho(x_1,x_2)=\psi(x_1)\psi^*(x_2).
$$

The kernel depends on two position variables. Introduce their midpoint and
separation,

$$
x=\frac{x_1+x_2}{2},
\qquad
y=x_1-x_2.
$$

Fourier transforming the separation variable $y$ into its conjugate momentum
$p$ produces the Wigner function. Thus, the Wigner representation is not an
extra assumption about nature. It is a particular transform of the same
density operator used in ordinary quantum mechanics.

## 2. Definition of the Wigner function

For one spatial degree of freedom, define

$$
W(x,p)
=
\frac{1}{2\pi\hbar}
\int_{-\infty}^{\infty}
e^{-\mathrm i p y/\hbar}
\left\langle
x+\frac{y}{2}
\middle\lvert\rho\middle\rvert
x-\frac{y}{2}
\right\rangle
\,dy.
$$

For a pure state this becomes

$$
W(x,p)
=
\frac{1}{2\pi\hbar}
\int_{-\infty}^{\infty}
e^{-\mathrm i p y/\hbar}
\psi\left(x+\frac y2\right)
\psi^*\left(x-\frac y2\right)
\,dy.
$$

The Wigner function is real:

$$
W^*(x,p)=W(x,p),
$$

and normalized:

$$
\int_{-\infty}^{\infty}
\int_{-\infty}^{\infty}
W(x,p)\,dx\,dp=1.
$$

Its marginals are the measurable position and momentum probability
densities:

$$
\int_{-\infty}^{\infty}W(x,p)\,dp
=
\langle x\lvert\rho\rvert x\rangle,
$$

$$
\int_{-\infty}^{\infty}W(x,p)\,dx
=
\langle p\lvert\rho\rvert p\rangle.
$$

Nevertheless, $W(x,p)$ is not a joint probability density for simultaneously
sharp position and momentum. It can be negative, and those negative regions
encode quantum interference that has no classical probability
interpretation. It is therefore called a **quasiprobability distribution**.

## 3. Why the entire Wigner function determines the state

The defining Fourier transform can be inverted:

$$
\boxed{
\left\langle x_1\middle\lvert\rho\middle\rvert x_2\right\rangle
=
\int_{-\infty}^{\infty}
e^{\mathrm i p(x_1-x_2)/\hbar}
W\left(\frac{x_1+x_2}{2},p\right)
\,dp
}
$$

The right-hand side reconstructs every diagonal and off-diagonal element of
the density matrix.

The diagonal part,

$$
\rho(x,x)=\int W(x,p)\,dp,
$$

gives position probabilities. The off-diagonal parts describe coherence
between different positions. Because the full Wigner function reconstructs
both, it retains more information than either the position distribution or
the momentum distribution alone.

Therefore,

$$
W_1(x,p)=W_2(x,p)
\quad\Longrightarrow\quad
\rho_1=\rho_2.
$$

The Wigner function and the density operator contain precisely the same
physical information.

## 4. From operators to phase-space functions

Translating the state is not enough. Observables and operator products must
also be translated.

The Weyl symbol of an operator $\hat A$ is

$$
A_{\mathrm W}(x,p)
=
\int_{-\infty}^{\infty}
e^{-\mathrm i p y/\hbar}
\left\langle
x+\frac y2
\middle\lvert\hat A\middle\rvert
x-\frac y2
\right\rangle
\,dy.
$$

For familiar operators,

$$
\hat x\longleftrightarrow x,
\qquad
\hat p\longleftrightarrow p,
$$

and, for a standard Hamiltonian,

$$
\frac{\hat p^2}{2m}+V(\hat x)
\longleftrightarrow
\frac{p^2}{2m}+V(x).
$$

Expectation values are then calculated as

$$
\boxed{
\langle\hat A\rangle
=
\operatorname{Tr}(\rho\hat A)
=
\int\!\!\int
W(x,p)A_{\mathrm W}(x,p)\,dx\,dp
}
$$

This formula looks classical, but quantum mechanics has not disappeared.
Its noncommutative structure is carried by the rule for multiplying symbols.

## 5. The star product: where noncommutativity goes

Ordinary multiplication of phase-space functions is commutative:

$$
xp=px.
$$

Quantum operators are not:

$$
[\hat x,\hat p]=\mathrm i\hbar.
$$

Consequently, the Weyl symbol of $\hat A\hat B$ cannot generally be the
ordinary product $A_{\mathrm W}B_{\mathrm W}$. The correct multiplication law
is the **star product**

$$
A\star B
=
A
\exp\left[
\frac{\mathrm i\hbar}{2}
\left(
\overleftarrow{\partial_x}\overrightarrow{\partial_p}
-
\overleftarrow{\partial_p}\overrightarrow{\partial_x}
\right)
\right]
B.
$$

It satisfies

$$
(\hat A\hat B)_{\mathrm W}
=
A_{\mathrm W}\star B_{\mathrm W}.
$$

For position and momentum,

$$
x\star p=xp+\frac{\mathrm i\hbar}{2},
$$

$$
p\star x=xp-\frac{\mathrm i\hbar}{2}.
$$

Hence,

$$
x\star p-p\star x=\mathrm i\hbar,
$$

which is exactly the canonical commutator.

The ordinary phase-space moment

$$
\int\!\!\int xp\,W(x,p)\,dx\,dp
$$

therefore represents the symmetrically ordered operator,

$$
\frac12\langle\hat x\hat p+\hat p\hat x\rangle,
$$

not $\langle\hat x\hat p\rangle$ by itself. Operator ordering has been moved
into the star product.

## 6. The postulates of quantum mechanics in Wigner form

The Wigner formulation does not introduce new physical postulates. It
expresses the usual postulates in different mathematical language.

### Postulate 1: states

In Hilbert-space language, a state is a positive, unit-trace density operator:

$$
\rho\geq0,
\qquad
\operatorname{Tr}\rho=1.
$$

In phase-space language, a state is a real, normalized function $W(x,p)$ that
is the Wigner transform of such an operator.

Reality and normalization alone are not sufficient. An arbitrary real
normalized function need not correspond to a positive density operator. A
physical one-mode state must, for example, produce a covariance matrix
satisfying

$$
\det\sigma\geq\frac{\hbar^2}{4}.
$$

Even this uncertainty condition is necessary but not sufficient for an
arbitrary non-Gaussian function. The complete physicality requirement is
that the inverse transform of $W$ be a positive operator.

For a pure state,

$$
\operatorname{Tr}(\rho^2)=1.
$$

In Wigner language this becomes

$$
2\pi\hbar\int\!\!\int W^2(x,p)\,dx\,dp=1.
$$

For a mixed state the same expression is smaller than one.

The superposition principle remains present, but it must not be confused
with statistical mixing. For

$$
\lvert\psi\rangle
=
c_1\lvert\psi_1\rangle+c_2\lvert\psi_2\rangle,
$$

the Wigner function has the structure

$$
W_\psi
=
\lvert c_1\rvert^2W_1
+
\lvert c_2\rvert^2W_2
+
W_{\mathrm{int}},
$$

where $W_{\mathrm{int}}$ contains phase-dependent interference terms. These
terms may oscillate and become negative. By contrast, an incoherent mixture

$$
\rho_{\mathrm{mix}}
=
p\rho_1+(1-p)\rho_2
$$

has

$$
W_{\mathrm{mix}}
=
pW_1+(1-p)W_2
$$

with no coherent cross term. The difference between superposition and
mixture is therefore visible directly in phase space.

### Postulate 2: observables

In Hilbert-space language, a measurable quantity is represented by a
self-adjoint operator $\hat A$.

In Wigner language, it is represented by the real Weyl symbol
$A_{\mathrm W}(x,p)$. Its possible measurement outcomes remain the
eigenvalues of $\hat A$; they are not simply the range of numerical values
taken by $A_{\mathrm W}$.

Algebraic operations must be performed with the star product:

$$
\hat A\hat B
\longleftrightarrow
A_{\mathrm W}\star B_{\mathrm W}.
$$

Thus, phase-space quantum mechanics uses ordinary variables $x$ and $p$ but
an extraordinary multiplication rule.

### Postulate 3: probabilities and the Born rule

Suppose $\Pi_a$ is the projector associated with the outcome $a$. In the
operator formulation,

$$
\Pr(a)=\operatorname{Tr}(\rho\Pi_a).
$$

If $(\Pi_a)_{\mathrm W}$ is its Weyl symbol, the same rule becomes

$$
\boxed{
\Pr(a)
=
\int\!\!\int
W(x,p)(\Pi_a)_{\mathrm W}(x,p)\,dx\,dp
}
$$

Neither factor must be pointwise nonnegative, but the integral is a valid
probability because it is exactly the operator Born rule written in another
representation.

More generally, a positive-operator-valued measurement has effects $E_k$
satisfying

$$
E_k\geq0,
\qquad
\sum_k E_k=I.
$$

Its outcome probabilities are

$$
\Pr(k)
=
\int\!\!\int
W(x,p)(E_k)_{\mathrm W}(x,p)\,dx\,dp.
$$

### Postulate 4: state change under measurement

For an ideal projective measurement with recorded outcome $a$,

$$
\rho\longmapsto
\rho_a
=
\frac{\Pi_a\rho\Pi_a}{\Pr(a)}.
$$

Its phase-space form is

$$
W\longmapsto W_a
=
\frac{
(\Pi_a)_{\mathrm W}\star W\star(\Pi_a)_{\mathrm W}
}{
\Pr(a)
}.
$$

For a general measurement operation with Kraus operator $M_k$,

$$
\rho_k
=
\frac{M_k\rho M_k^\dagger}{\Pr(k)}
$$

becomes

$$
W_k
=
\frac{
(M_k)_{\mathrm W}\star W\star(M_k^\dagger)_{\mathrm W}
}{
\Pr(k)
}.
$$

Measurement is therefore not classical Bayesian conditioning of an ordinary
distribution. The star products encode the physical disturbance of the
quantum state.

### Postulate 5: time evolution

In the Schrödinger picture, a pure state obeys

$$
\mathrm i\hbar\frac{\partial}{\partial t}
\lvert\psi(t)\rangle
=
\hat H\lvert\psi(t)\rangle.
$$

A pure or mixed state obeys the von Neumann equation

$$
\frac{\partial\rho}{\partial t}
=
\frac{1}{\mathrm i\hbar}[\hat H,\rho].
$$

Under the Wigner transform, this becomes the **Moyal equation**

$$
\boxed{
\frac{\partial W}{\partial t}
=
\{H_{\mathrm W},W\}_{\mathrm M}
}
$$

where the Moyal bracket is

$$
\{A,B\}_{\mathrm M}
=
\frac{1}{\mathrm i\hbar}
\left(A\star B-B\star A\right).
$$

Thus,

$$
\text{operator commutator}
\quad\longleftrightarrow\quad
\text{Moyal bracket}.
$$

For

$$
H_{\mathrm W}(x,p)=\frac{p^2}{2m}+V(x),
$$

the equation expands as

$$
\frac{\partial W}{\partial t}
=
-\frac{p}{m}\frac{\partial W}{\partial x}
+
\sum_{\ell=0}^{\infty}
\frac{(-1)^\ell}{(2\ell+1)!}
\left(\frac{\hbar}{2}\right)^{2\ell}
\frac{d^{\,2\ell+1}V}{dx^{2\ell+1}}
\frac{\partial^{\,2\ell+1}W}{\partial p^{2\ell+1}}.
$$

The term with $\ell=0$ gives classical Hamiltonian flow:

$$
\frac{\partial W}{\partial t}
=
-\frac{p}{m}\frac{\partial W}{\partial x}
+
\frac{dV}{dx}\frac{\partial W}{\partial p}
+
\text{quantum corrections}.
$$

The corrections begin at order $\hbar^2$ and involve higher derivatives of
the potential and the Wigner function.

### Postulate 6: composite systems

For two continuous-variable systems $A$ and $B$, the Hilbert space is

$$
\mathcal H_{AB}=\mathcal H_A\otimes\mathcal H_B.
$$

The joint state has a Wigner function

$$
W_{AB}(x_A,p_A,x_B,p_B).
$$

The reduced state of subsystem $A$ is obtained by integrating over the phase
space of $B$:

$$
W_A(x_A,p_A)
=
\int\!\!\int
W_{AB}(x_A,p_A,x_B,p_B)\,dx_B\,dp_B.
$$

This is the phase-space version of the partial trace,

$$
\rho_A=\operatorname{Tr}_B\rho_{AB}.
$$

Entanglement has not been removed. It appears through joint Wigner functions
that cannot be written as mixtures of products of local physical Wigner
functions:

$$
W_{AB}\neq
\sum_j p_j W_A^{(j)}W_B^{(j)}
$$

for any probabilities $p_j$ and physical subsystem states in the entangled
case.

## 7. Schrödinger mechanics and Wigner mechanics compared

The two formulations answer the same physical questions but organize the
calculation differently.

In the wavefunction formulation, a pure state is represented by the complex
amplitude $\psi(x,t)$. Its evolution is governed by

$$
\mathrm i\hbar\partial_t\psi=\hat H\psi.
$$

Position probabilities are obtained directly from

$$
\lvert\psi(x,t)\rvert^2,
$$

whereas momentum information requires a Fourier transform. Mixed states
require replacing $\psi$ by a density operator.

In the Wigner formulation, pure and mixed states are both represented by a
real function $W(x,p,t)$. Position and momentum marginals are available in a
single representation, and evolution is governed by

$$
\partial_t W=\{H_{\mathrm W},W\}_{\mathrm M}.
$$

The price of using familiar phase-space variables is that $W$ may be
negative and products must be evaluated using $\star$ rather than ordinary
multiplication.

The exact dictionary is

$$
\begin{aligned}
\rho
&\longleftrightarrow W,\\
\hat A
&\longleftrightarrow A_{\mathrm W},\\
\hat A\hat B
&\longleftrightarrow A_{\mathrm W}\star B_{\mathrm W},\\
\frac{1}{\mathrm i\hbar}[\hat A,\hat B]
&\longleftrightarrow \{A_{\mathrm W},B_{\mathrm W}\}_{\mathrm M},\\
\operatorname{Tr}(\rho\hat A)
&\longleftrightarrow
\int\!\!\int W A_{\mathrm W}\,dx\,dp.
\end{aligned}
$$

No experiment can distinguish the two descriptions because they produce the
same probabilities for every measurement.

## 8. The simple harmonic oscillator as the basic example

Consider

$$
\hat H
=
\frac{\hat p^2}{2m}
+
\frac12m\omega^2\hat x^2.
$$

Its Weyl symbol is

$$
H_{\mathrm W}(x,p)
=
\frac{p^2}{2m}
+
\frac12m\omega^2x^2.
$$

Since the potential is quadratic,

$$
\frac{d^3V}{dx^3}
=
\frac{d^5V}{dx^5}
=\cdots=0.
$$

Every quantum-correction term in the Moyal series vanishes. The exact
quantum evolution is therefore

$$
\boxed{
\frac{\partial W}{\partial t}
=
-\frac{p}{m}\frac{\partial W}{\partial x}
+
m\omega^2x\frac{\partial W}{\partial p}
}
$$

This equation moves the Wigner function along the classical oscillator
orbits. Its solution is

$$
W(x,p,t)=W(x_0,p_0,0),
$$

where

$$
x_0
=
x\cos\omega t
-
\frac{p}{m\omega}\sin\omega t,
$$

$$
p_0
=
p\cos\omega t
+
m\omega x\sin\omega t.
$$

The entire Wigner function rotates rigidly in the scaled phase-space plane.
This classical-looking flow is exact for every oscillator state, including
non-Gaussian states. A quadratic Hamiltonian preserves Gaussianity if it is
present initially, but it does not make an initially non-Gaussian state
Gaussian.

<figure class="diagram-figure">
  <picture>
    <source media="(max-width: 640px)" srcset="{{ '/assets/images/research/wigner-phase-space/sho-wigner-phase-space-mobile.png' | relative_url }}">
    <img src="{{ '/assets/images/research/wigner-phase-space/sho-wigner-phase-space.png' | relative_url }}" alt="Three phase-space panels comparing the positive Gaussian Wigner function of the harmonic-oscillator ground state, the negative central region and positive ring of the first excited state, and the exact rotational evolution of a displaced wave packet">
  </picture>
  <figcaption>The ground state is a positive Gaussian, whereas the first excited state contains a negative core bounded by \(q^2+P^2=1/2\). A quadratic SHO Hamiltonian rotates any initial Wigner function by classical phase-space flow; it does not erase non-Gaussian structure.</figcaption>
</figure>

## 9. Ground and excited SHO states

Define the dimensionless phase-space radius

$$
R
=
\frac{m\omega x^2}{\hbar}
+
\frac{p^2}{m\hbar\omega}.
$$

The ground-state Wigner function is

$$
W_0(x,p)
=
\frac{1}{\pi\hbar}e^{-R}.
$$

It is a positive Gaussian centred at the origin. Its first moments vanish,

$$
\langle x\rangle=\langle p\rangle=0,
$$

and its covariance matrix is

$$
\sigma_0
=
\begin{pmatrix}
\dfrac{\hbar}{2m\omega} & 0\\[6pt]
0 & \dfrac{m\hbar\omega}{2}
\end{pmatrix}.
$$

The determinant saturates the uncertainty relation:

$$
\det\sigma_0=\frac{\hbar^2}{4}.
$$

For the number state $\lvert n\rangle$,

$$
W_n(x,p)
=
\frac{(-1)^n}{\pi\hbar}
e^{-R}L_n(2R),
$$

where $L_n$ is a Laguerre polynomial. In particular,

$$
W_1(x,p)
=
\frac{1}{\pi\hbar}(2R-1)e^{-R}.
$$

At the origin,

$$
W_1(0,0)=-\frac{1}{\pi\hbar}.
$$

The negative central region records information that cannot be contained in
an ordinary probability density.

## 10. What moments retain and what they discard

Collect the phase-space variables into

$$
\boldsymbol r=
\begin{pmatrix}x\\p\end{pmatrix}.
$$

The first-moment vector and covariance matrix are

$$
\boldsymbol d=\langle\boldsymbol r\rangle,
$$

$$
\sigma_{jk}
=
\frac12
\left\langle
\Delta r_j\Delta r_k+\Delta r_k\Delta r_j
\right\rangle.
$$

For a Gaussian state,

$$
W_{\mathrm G}(\boldsymbol r)
=
\frac{1}{2\pi\sqrt{\det\sigma}}
\exp\left[
-\frac12
(\boldsymbol r-\boldsymbol d)^{\mathsf T}
\sigma^{-1}
(\boldsymbol r-\boldsymbol d)
\right].
$$

Once Gaussianity is known, $\boldsymbol d$ and $\sigma$ determine the entire
Wigner function and hence the entire state.

For a non-Gaussian state, the same quantities determine only its centre and
covariance ellipse. They do not determine rings, nodes, oscillations,
interference fringes, or negative regions.

For example, the state $\lvert1\rangle$ and a thermal oscillator state with
mean occupation number $\bar n=1$ both have zero first moments and

$$
\langle q^2\rangle
=
\langle P^2\rangle
=
\frac32,
$$

where

$$
q=\sqrt{\frac{m\omega}{\hbar}}\,x,
\qquad
P=\frac{p}{\sqrt{m\hbar\omega}}.
$$

Their Wigner functions are nevertheless different:

$$
W_1(q,P)
=
\frac1\pi
\left[2(q^2+P^2)-1\right]
e^{-(q^2+P^2)},
$$

$$
W_{\mathrm{th}}(q,P)
=
\frac{1}{3\pi}
\exp\left[-\frac{q^2+P^2}{3}\right].
$$

The fourth moment separates them:

$$
\langle q^4\rangle_{\lvert1\rangle}
=
\frac{15}{4},
\qquad
\langle q^4\rangle_{\mathrm{th}}
=
\frac{27}{4}.
$$

Thus,

$$
\boxed{
\text{complete }W
\Longleftrightarrow
\text{complete state},
\qquad
\text{first and second moments alone}
\not\Longleftrightarrow
\text{complete non-Gaussian state}
}
$$

## 11. Symbolic verification with Maxima

The preceding oscillator moments can be checked directly in dimensionless
variables. The time unit is chosen so that $\omega=1$.

```maxima
/* Ground-state Wigner function */
W0 : exp(-(q^2 + P^2))/%pi$

integrate(integrate(W0, P, minf, inf), q, minf, inf);
integrate(integrate(q*W0, P, minf, inf), q, minf, inf);
integrate(integrate(P*W0, P, minf, inf), q, minf, inf);
integrate(integrate(q^2*W0, P, minf, inf), q, minf, inf);
integrate(integrate(P^2*W0, P, minf, inf), q, minf, inf);

/* Exact SHO flow leaves the ground state stationary */
ratsimp(-P*diff(W0,q) + q*diff(W0,P));

/* First excited state */
W1 : (2*(q^2 + P^2) - 1)*exp(-(q^2 + P^2))/%pi$
integrate(integrate(W1, P, minf, inf), q, minf, inf);
integrate(integrate(q^2*W1, P, minf, inf), q, minf, inf);
integrate(integrate(q^4*W1, P, minf, inf), q, minf, inf);

/* Thermal state with mean occupation number one */
Wth : exp(-(q^2 + P^2)/3)/(3*%pi)$
integrate(integrate(Wth, P, minf, inf), q, minf, inf);
integrate(integrate(q^2*Wth, P, minf, inf), q, minf, inf);
integrate(integrate(q^4*Wth, P, minf, inf), q, minf, inf);
```

The respective outputs are

$$
1,\ 0,\ 0,\ \frac12,\ \frac12,\ 0,
$$

$$
1,\ \frac32,\ \frac{15}{4},
$$

and

$$
1,\ \frac32,\ \frac{27}{4}.
$$

The two nonidentical states share their first and second moments but differ
at fourth order.

## 12. The classical limit

Expanding the star product in powers of $\hbar$ gives

$$
A\star B
=
AB
+
\frac{\mathrm i\hbar}{2}\{A,B\}_{\mathrm{PB}}
+
O(\hbar^2),
$$

where

$$
\{A,B\}_{\mathrm{PB}}
=
\frac{\partial A}{\partial x}\frac{\partial B}{\partial p}
-
\frac{\partial A}{\partial p}\frac{\partial B}{\partial x}
$$

is the Poisson bracket. Therefore,

$$
\{A,B\}_{\mathrm M}
=
\{A,B\}_{\mathrm{PB}}+O(\hbar^2).
$$

As quantum corrections become negligible, the Moyal equation approaches the
classical Liouville equation.

This limit must be interpreted with care. Merely writing $\hbar\to0$ does not
guarantee that a highly oscillatory Wigner function becomes a smooth
classical probability distribution. Decoherence, coarse graining, or an
appropriate semiclassical family of states may also be required.

## 13. What the Wigner function does and does not mean

The phase-space labels $(x,p)$ do not assign simultaneously sharp position
and momentum to a particle. They label arguments of a quasiprobability
representation.

Wigner negativity is sufficient evidence of nonclassical phase-space
structure, but its absence does not mean that a state is necessarily
Gaussian. Mixed non-Gaussian states can have nonnegative Wigner functions.

The Wigner method does not approximate Schrödinger quantum mechanics unless
the Moyal series is truncated or another approximation is introduced. With
the complete star product and exact Moyal evolution, it is an equivalent
formulation.

The essential contrast can therefore be stated in one line:

$$
\boxed{
\begin{array}{c}
\text{Schrödinger/Hilbert-space mechanics:}\\
\text{noncommuting operators acting on states}
\end{array}
\quad\longleftrightarrow\quad
\begin{array}{c}
\text{Wigner phase-space mechanics:}\\
\text{functions multiplied by the noncommutative star product}
\end{array}
}
$$

The physical content is unchanged. What changes is where the quantum
structure is stored.

## 14. Connection to non-Gaussian quench research

For a Gaussian state, the complete Wigner function is fixed by its first
moments and covariance matrix. Exceptional-Hermite states contain additional
phase-space structure, so their higher moments cannot generally be recovered
from the covariance matrix.

This distinction leads directly to two later problems. The chapter
[IV: Exact First-Order Covariance Response Without Gaussian
Closure]({{ '/exact-covariance-response/' | relative_url }}) identifies which
initial derivatives can still be obtained without solving the full
non-Gaussian hierarchy. The chapter
[VII: Non-Gaussian Mutual Information: Exact Entropy and Covariance
Bounds]({{ '/non-gaussian-mutual-information/' | relative_url }}) then shows
why covariance data can bound, but need not equal, the complete correlation
content of the evolved state.

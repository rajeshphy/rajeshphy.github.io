---
title: "Covariance, Gaussian Completeness, and Moment Closure"
description: "Derives the covariance matrix from quantum fluctuations, proves why it completely specifies Gaussian states, and shows with harmonic-oscillator states why it is insufficient for non-Gaussian physics."
date: 2026-07-23 22:45:00 +0530
categories: research
tags:
  - covariance matrix
  - gaussian states
  - non-gaussian states
  - harmonic oscillator
  - moment hierarchy
permalink: "/covariance-gaussian-completeness/"
---

The covariance matrix is one of the most useful compressed descriptions of a
continuous-variable quantum state. It records the widths and correlations of
the position and momentum distributions. For a Gaussian state this
compression is lossless: the first moments and covariance matrix determine
the complete state. For a non-Gaussian state the same compression generally
discards higher-order structure.

This chapter derives that distinction from basic quantum mechanics. The
simple harmonic oscillator supplies three exact examples:

$$
\text{ground state }\lvert0\rangle,
\qquad
\text{first excited state }\lvert1\rangle,
\qquad
\text{thermal state with }\bar n=1.
$$

The first state shows Gaussian completeness. The last two show covariance
incompleteness: they possess exactly the same first and second moments but
are physically different states.

The phase-space language used below is developed independently in
[Quantum Mechanics in Phase Space]({{ '/quantum-mechanics-in-phase-space/' |
relative_url }}). Only the definitions needed here are repeated.

## 1. Begin with measurable fluctuations

For one particle in one dimension,

$$
[\hat x,\hat p]=\mathrm i\hbar.
$$

In a state $\rho$, the expectation value of an observable $\hat A$ is

$$
\langle\hat A\rangle=\operatorname{Tr}(\rho\hat A).
$$

The mean position and momentum are

$$
\langle\hat x\rangle,
\qquad
\langle\hat p\rangle.
$$

They locate the centre of the state, but they say nothing about its spread.
Define the fluctuation operators

$$
\Delta\hat x=\hat x-\langle\hat x\rangle,
\qquad
\Delta\hat p=\hat p-\langle\hat p\rangle.
$$

The position and momentum variances are

$$
(\Delta x)^2=\langle(\Delta\hat x)^2\rangle,
\qquad
(\Delta p)^2=\langle(\Delta\hat p)^2\rangle.
$$

A state may also contain an $x$--$p$ correlation. Because
$\Delta\hat x\Delta\hat p$ is not Hermitian, the real measurable correlation
is represented by the symmetrized product

$$
\operatorname{Cov}(x,p)
=
\frac12
\left\langle
\Delta\hat x\Delta\hat p+\Delta\hat p\Delta\hat x
\right\rangle.
$$

These quantities are collected into the covariance matrix

$$
\boxed{
\sigma
=
\begin{pmatrix}
\langle(\Delta\hat x)^2\rangle
&
\dfrac12
\langle
\Delta\hat x\Delta\hat p+\Delta\hat p\Delta\hat x
\rangle
\\[8pt]
\dfrac12
\langle
\Delta\hat x\Delta\hat p+\Delta\hat p\Delta\hat x
\rangle
&
\langle(\Delta\hat p)^2\rangle
\end{pmatrix}
}
$$

The first-moment vector is

$$
\boldsymbol d
=
\begin{pmatrix}
\langle\hat x\rangle\\
\langle\hat p\rangle
\end{pmatrix}.
$$

Thus, $\boldsymbol d$ gives the centre of the state and $\sigma$ gives its
second-order shape.

## 2. The uncertainty principle in matrix form

The covariance matrix cannot be an arbitrary positive matrix. Define

$$
\Omega
=
\begin{pmatrix}
0&1\\
-1&0
\end{pmatrix}.
$$

The canonical commutator and positivity of the density operator imply

$$
\boxed{
\sigma+\frac{\mathrm i\hbar}{2}\Omega\geq0
}
$$

For one mode this condition reduces to the
Robertson--Schrödinger uncertainty relation

$$
\boxed{
\det\sigma
\geq
\frac{\hbar^2}{4}
}
$$

or

$$
(\Delta x)^2(\Delta p)^2
-
\operatorname{Cov}(x,p)^2
\geq
\frac{\hbar^2}{4}.
$$

When the correlation vanishes, this becomes the familiar relation

$$
\Delta x\,\Delta p\geq\frac{\hbar}{2}.
$$

This inequality is a necessary condition on any physical state. It does not
mean that every matrix satisfying it determines a unique arbitrary state.
Uniqueness requires additional information about the form of the state.

## 3. Use dimensionless SHO quadratures

For the simple harmonic oscillator,

$$
\hat H
=
\frac{\hat p^2}{2m}
+
\frac12m\omega^2\hat x^2.
$$

Define dimensionless quadratures

$$
\hat q
=
\sqrt{\frac{m\omega}{\hbar}}\,\hat x,
\qquad
\hat P
=
\frac{\hat p}{\sqrt{m\hbar\omega}}.
$$

They satisfy

$$
[\hat q,\hat P]=\mathrm i.
$$

Introduce the annihilation and creation operators

$$
\hat a
=
\frac{\hat q+\mathrm i\hat P}{\sqrt2},
\qquad
\hat a^\dagger
=
\frac{\hat q-\mathrm i\hat P}{\sqrt2},
$$

so that

$$
[\hat a,\hat a^\dagger]=1.
$$

The inverse relations are

$$
\hat q
=
\frac{\hat a+\hat a^\dagger}{\sqrt2},
\qquad
\hat P
=
\frac{\hat a-\hat a^\dagger}{\mathrm i\sqrt2}.
$$

In terms of the number operator

$$
\hat N=\hat a^\dagger\hat a,
$$

the Hamiltonian is

$$
\hat H
=
\hbar\omega
\left(\hat N+\frac12\right).
$$

The covariance matrix in the dimensionless basis

$$
\hat{\boldsymbol R}
=
\begin{pmatrix}
\hat q\\
\hat P
\end{pmatrix}
$$

will also be denoted by $\sigma$. In these units its uncertainty condition is

$$
\det\sigma\geq\frac14.
$$

## 4. What makes a state Gaussian?

A Wigner function is a complete phase-space representation of the density
operator. For one mode, a Gaussian Wigner function has the form

$$
\boxed{
W_{\mathrm G}(\boldsymbol R)
=
\frac{1}{2\pi\sqrt{\det\sigma}}
\exp\left[
-\frac12
(\boldsymbol R-\boldsymbol d)^{\mathsf T}
\sigma^{-1}
(\boldsymbol R-\boldsymbol d)
\right]
}
$$

where

$$
\boldsymbol R=
\begin{pmatrix}q\\P\end{pmatrix}.
$$

Every symbol on the right-hand side is fixed by $\boldsymbol d$ and $\sigma$.
Consequently,

$$
\boxed{
\text{Gaussianity known}
+
\boldsymbol d
+
\sigma
\quad\Longrightarrow\quad
\text{complete quantum state}
}
$$

The first moments specify the centre of the Gaussian. The eigenvectors of
$\sigma$ specify its principal axes, and its eigenvalues specify the squared
widths along those axes.

This is a statement of **Gaussian completeness**. It does not say that every
quantum state is Gaussian.

## 5. The characteristic-function proof of completeness

The result can be made more precise. Define the Fourier transform of the
Wigner function,

$$
\chi(\boldsymbol k)
=
\int_{\mathbb R^2}
W(\boldsymbol R)
e^{\mathrm i\boldsymbol k^{\mathsf T}\boldsymbol R}
\,d^2\boldsymbol R.
$$

This characteristic function is another complete representation of the
state. Its derivatives at the origin generate symmetrically ordered moments.
For example,

$$
\left.
\frac{1}{\mathrm i}
\frac{\partial\chi}{\partial k_j}
\right|_{\boldsymbol k=0}
=
\langle R_j\rangle.
$$

For a Gaussian state,

$$
\boxed{
\chi_{\mathrm G}(\boldsymbol k)
=
\exp\left[
\mathrm i\boldsymbol k^{\mathsf T}\boldsymbol d
-
\frac12
\boldsymbol k^{\mathsf T}\sigma\boldsymbol k
\right]
}
$$

The exponent contains only first- and second-order terms. All cumulants above
second order vanish. Therefore, every higher moment follows from the
covariance matrix.

For a zero-mean Gaussian state, the fourth-order moment is

$$
\left\langle
R_iR_jR_kR_l
\right\rangle_{\mathrm{sym}}
=
\sigma_{ij}\sigma_{kl}
+
\sigma_{ik}\sigma_{jl}
+
\sigma_{il}\sigma_{jk}.
$$

In particular,

$$
\langle q^4\rangle_{\mathrm G}
=
3\langle q^2\rangle_{\mathrm G}^{\,2}.
$$

This factorization is the continuous-variable form of Wick's theorem.

For a non-Gaussian state, the logarithm of the characteristic function
contains additional cumulants:

$$
\ln\chi
=
\mathrm i k_i d_i
-
\frac12 k_i\sigma_{ij}k_j
+
\text{third-, fourth-, and higher-order terms}.
$$

The covariance matrix contains no record of those additional terms. That is
the mathematical origin of its incompleteness.

## 6. SHO ground state: covariance is complete

The ground state obeys

$$
\hat a\lvert0\rangle=0.
$$

Its first moments vanish:

$$
\langle\hat q\rangle_0
=
\langle\hat P\rangle_0
=0.
$$

Using

$$
\hat a\hat a^\dagger
=
\hat a^\dagger\hat a+1,
$$

one obtains

$$
\langle\hat q^2\rangle_0
=
\frac12,
\qquad
\langle\hat P^2\rangle_0
=
\frac12,
$$

and

$$
\frac12
\langle\hat q\hat P+\hat P\hat q\rangle_0
=0.
$$

Therefore,

$$
\boxed{
\boldsymbol d_0=0,
\qquad
\sigma_0
=
\frac12
\begin{pmatrix}
1&0\\
0&1
\end{pmatrix}
}
$$

Its Wigner function is

$$
W_0(q,P)
=
\frac1\pi e^{-(q^2+P^2)}.
$$

Substituting $\boldsymbol d_0$ and $\sigma_0$ into the general Gaussian
formula reproduces this complete Wigner function.

There is an additional physical reason why this particular covariance is
unique. Since

$$
\frac{\hat H}{\hbar\omega}
=
\frac12(\hat q^2+\hat P^2),
$$

zero first moments and $\sigma_0=I/2$ give

$$
\langle\hat H\rangle
=
\frac{\hbar\omega}{2}.
$$

This is the lowest possible oscillator energy. Because
$\hat N\geq0$, the condition

$$
\langle\hat N\rangle=0
$$

forces the state to have support only on $\lvert0\rangle$. Thus, the
minimum isotropic covariance identifies the ground state even before one
explicitly assumes Gaussianity.

## 7. SHO excited states are non-Gaussian

The number states satisfy

$$
\hat N\lvert n\rangle=n\lvert n\rangle.
$$

Their first moments vanish. Directly expanding $\hat q^2$ and $\hat P^2$ in
ladder operators gives

$$
\langle\hat q^2\rangle_n
=
\langle\hat P^2\rangle_n
=
n+\frac12,
$$

and

$$
\frac12
\langle\hat q\hat P+\hat P\hat q\rangle_n
=0.
$$

Hence,

$$
\boxed{
\sigma_n
=
\left(n+\frac12\right)I
}
$$

For the first excited state,

$$
\sigma_1=\frac32I.
$$

Its Wigner function is

$$
W_1(q,P)
=
\frac1\pi
\left[2(q^2+P^2)-1\right]
e^{-(q^2+P^2)}.
$$

The polynomial factor produces a negative central region and a positive
outer ring. Therefore, $\lvert1\rangle$ is non-Gaussian.

The covariance of $\lvert1\rangle$ tells us its centre, its isotropic
second-order width, and its mean SHO energy. It does not reproduce the
polynomial factor in $W_1$.

## 8. Why the ground--excited comparison is not enough

The two covariances

$$
\sigma_0=\frac12I,
\qquad
\sigma_1=\frac32I
$$

are different. Therefore, covariance measurements can distinguish the
ground state from the first excited state.

That comparison alone does **not** prove that covariance is incomplete. To
prove incompleteness, one must exhibit two different physical states with
the same first moments and the same covariance matrix.

The correct comparison is between $\lvert1\rangle$ and a thermal state whose
mean occupation number is one.

## 9. A Gaussian thermal state with the same covariance

The thermal state of an oscillator can be written as

$$
\rho_{\mathrm{th}}
=
\sum_{n=0}^{\infty}
\frac{\bar n^n}{(\bar n+1)^{n+1}}
\lvert n\rangle\langle n\rvert.
$$

For $\bar n=1$,

$$
\rho_{\mathrm{th}}
=
\sum_{n=0}^{\infty}
\frac{1}{2^{n+1}}
\lvert n\rangle\langle n\rvert.
$$

Its first moments vanish and

$$
\langle\hat q^2\rangle_{\mathrm{th}}
=
\langle\hat P^2\rangle_{\mathrm{th}}
=
\bar n+\frac12
=
\frac32.
$$

Therefore,

$$
\boxed{
\boldsymbol d_{\lvert1\rangle}
=
\boldsymbol d_{\mathrm{th}}
=0,
\qquad
\sigma_{\lvert1\rangle}
=
\sigma_{\mathrm{th}}
=
\frac32I
}
$$

The thermal Wigner function is

$$
W_{\mathrm{th}}(q,P)
=
\frac{1}{3\pi}
\exp\left[
-\frac{q^2+P^2}{3}
\right].
$$

It is a positive Gaussian. The covariance ellipse inferred from
$\sigma=3I/2$ is exactly the same for the thermal state and
$\lvert1\rangle$, but their complete Wigner functions are different.

<figure class="diagram-figure" style="max-width: 760px;">
  <picture>
    <source media="(max-width: 640px)" srcset="{{ '/assets/images/research/covariance-closure/same-covariance-different-states-mobile.png' | relative_url }}">
    <img src="{{ '/assets/images/research/covariance-closure/same-covariance-different-states.png' | relative_url }}" alt="The non-Gaussian first excited oscillator state and a Gaussian thermal state have different Wigner functions but both map to the same zero first moments and covariance matrix three halves times the identity">
  </picture>
  <figcaption>Covariance is a many-to-one compression outside the Gaussian family. The first excited state and the thermal state have the same centre and covariance ellipse, while their fourth moments and purities remain different.</figcaption>
</figure>

## 10. Higher moments expose the missing information

For a number state,

$$
\langle\hat q^4\rangle_n
=
\frac34
\left(2n^2+2n+1\right).
$$

Consequently,

$$
\langle\hat q^4\rangle_{\lvert1\rangle}
=
\frac{15}{4}.
$$

The thermal state is Gaussian, so Wick factorization gives

$$
\langle\hat q^4\rangle_{\mathrm{th}}
=
3\langle\hat q^2\rangle_{\mathrm{th}}^2
=
3\left(\frac32\right)^2
=
\frac{27}{4}.
$$

Thus, the second moments agree but the fourth moments do not:

$$
\boxed{
\sigma_{\lvert1\rangle}
=
\sigma_{\mathrm{th}},
\qquad
\langle q^4\rangle_{\lvert1\rangle}
\neq
\langle q^4\rangle_{\mathrm{th}}
}
$$

The two states also have different purities:

$$
\operatorname{Tr}
\left[
(\lvert1\rangle\langle1\rvert)^2
\right]
=1,
$$

whereas

$$
\operatorname{Tr}(\rho_{\mathrm{th}}^2)
=
\frac{1}{2\bar n+1}
=
\frac13.
$$

Their von Neumann entropies are correspondingly

$$
S(\lvert1\rangle\langle1\rvert)=0,
$$

and

$$
S(\rho_{\mathrm{th}})
=
(\bar n+1)\ln(\bar n+1)-\bar n\ln\bar n
=
2\ln2.
$$

Covariance therefore does not determine purity, entropy, Wigner negativity,
or higher moments for a general state.

## 11. Even the mean energy is not the energy distribution

For zero first moments,

$$
\langle\hat H\rangle
=
\frac{\hbar\omega}{2}
\operatorname{Tr}\sigma.
$$

Both states with $\sigma=3I/2$ have

$$
\langle\hat H\rangle
=
\frac32\hbar\omega.
$$

For $\lvert1\rangle$, however, an energy measurement always gives

$$
E_1=\frac32\hbar\omega.
$$

The thermal state has a distribution over every number state:

$$
\Pr(n)=\frac{1}{2^{n+1}}.
$$

For $\bar n=1$,

$$
\operatorname{Var}(N)
=
\bar n(\bar n+1)=2,
$$

so

$$
\operatorname{Var}(H)
=
2(\hbar\omega)^2.
$$

Thus, covariance fixes the mean of a quadratic Hamiltonian, but it does not
generally fix the probability distribution of its measurement outcomes.

## 12. What “closure” means

Two different ideas are often called covariance closure.

### 12.1 Reconstructive or Gaussian closure

If the state is known to be Gaussian, every higher moment is generated from
$\boldsymbol d$ and $\sigma$. The moment hierarchy terminates at second
order because all higher cumulants vanish.

This is a property of the **state**.

### 12.2 Dynamical closure

The equations of motion for the first and second moments are dynamically
closed if their time derivatives depend only on first and second moments.

This is primarily a property of the **Hamiltonian or dynamical generator**.

The two meanings are related but not identical.

## 13. Deriving the second-moment equations

For

$$
\hat H
=
\frac{\hat p^2}{2m}
+
V(\hat x),
$$

the Heisenberg equation is

$$
\frac{d}{dt}\langle\hat A\rangle
=
\frac{1}{\mathrm i\hbar}
\langle[\hat A,\hat H]\rangle.
$$

For a parity-symmetric zero-mean state, define

$$
X=\langle\hat x^2\rangle,
\qquad
C=\frac12
\langle\hat x\hat p+\hat p\hat x\rangle,
\qquad
P_2=\langle\hat p^2\rangle.
$$

Using

$$
[\hat x^2,\hat p^2]
=
2\mathrm i\hbar
(\hat x\hat p+\hat p\hat x),
$$

one obtains

$$
\boxed{
\dot X=\frac{2}{m}C
}
$$

The remaining equations are

$$
\boxed{
\dot C
=
\frac{P_2}{m}
-
\langle\hat xV'(\hat x)\rangle
}
$$

and

$$
\boxed{
\dot P_2
=
-
\left\langle
\hat pV'(\hat x)+V'(\hat x)\hat p
\right\rangle
}
$$

The force $-V'(\hat x)$ decides whether the hierarchy closes.

## 14. Exact closure for a quadratic SHO Hamiltonian

For

$$
V(\hat x)=\frac12m\omega^2\hat x^2,
$$

the force is linear:

$$
V'(\hat x)=m\omega^2\hat x.
$$

Therefore,

$$
\dot X=\frac{2C}{m},
$$

$$
\dot C
=
\frac{P_2}{m}
-
m\omega^2X,
$$

$$
\dot P_2
=
-2m\omega^2C.
$$

These three equations contain only $X$, $C$, and $P_2$. They close exactly.

An important point follows:

> A quadratic Hamiltonian gives closed first- and second-moment dynamics for
> every state, including non-Gaussian states.

The first excited state remains non-Gaussian even though its covariance
obeys a closed equation. In fact, both $\lvert1\rangle\langle1\rvert$ and the
thermal state commute with the SHO Hamiltonian. Their identical covariance
matrices remain identical and constant for all time, while the complete
states remain different.

Thus, dynamically closed covariance equations do not imply that covariance
determines the state.

## 15. Failure of closure for a nonlinear force

Now add a quartic interaction:

$$
V(\hat x)
=
\frac12m\omega^2\hat x^2
+
\lambda\hat x^4.
$$

Then

$$
V'(\hat x)
=
m\omega^2\hat x
+
4\lambda\hat x^3.
$$

The covariance equation becomes

$$
\dot C
=
\frac{P_2}{m}
-
m\omega^2X
-
4\lambda\langle\hat x^4\rangle.
$$

A second-order quantity now depends on a fourth-order moment. Similarly,

$$
\dot P_2
=
-2m\omega^2C
-
4\lambda
\left\langle
\hat p\hat x^3+\hat x^3\hat p
\right\rangle.
$$

The evolution of the fourth moments generates sixth moments, and so on:

$$
\text{second moments}
\longrightarrow
\text{fourth moments}
\longrightarrow
\text{sixth moments}
\longrightarrow\cdots
$$

This is the **moment hierarchy**.

For a Gaussian state at one initial instant, one may use

$$
\langle x^4\rangle=3\langle x^2\rangle^2.
$$

But nonlinear unitary evolution generally generates nonzero higher
cumulants. Reimposing the Gaussian factorization at every later time is then
an approximation, not an exact consequence of quantum mechanics.

For the non-Gaussian state $\lvert1\rangle$, Gaussian factorization would
incorrectly predict

$$
\langle q^4\rangle
\stackrel{\mathrm{Gaussian\ closure}}{\longrightarrow}
3\left(\frac32\right)^2
=
\frac{27}{4},
$$

instead of the exact result

$$
\langle q^4\rangle_{\lvert1\rangle}
=
\frac{15}{4}.
$$

## 16. The logical possibilities

Gaussian completeness and dynamical moment closure must be assessed
separately:

| State and dynamics | Does covariance determine the state? | Do covariance equations close exactly? |
|---|---:|---:|
| Gaussian state, quadratic Hamiltonian | Yes | Yes |
| Non-Gaussian state, quadratic Hamiltonian | No | Yes |
| Initially Gaussian state, nonlinear Hamiltonian | Only initially | Generally no |
| Non-Gaussian state, nonlinear Hamiltonian | No | Generally no |

The second row is especially important. The SHO number state
$\lvert1\rangle$ has exact closed covariance dynamics, but its covariance
does not contain its full state information.

## 17. What covariance can and cannot determine

For an arbitrary state, first moments and covariance determine expectation
values of observables that are at most quadratic in the quadratures. They
therefore determine the mean energy of a quadratic Hamiltonian.

They do not generally determine:

- third- and higher-order moments;
- Wigner-function oscillations or negativity;
- purity or von Neumann entropy;
- the full density matrix;
- the complete outcome distribution of a quadratic observable;
- non-Gaussian correlations or entanglement.

For a Gaussian state, these apparent omissions disappear because the higher
moments and the complete density operator are already fixed by
$\boldsymbol d$ and $\sigma$.

## 18. Maxima verification

The SHO examples can be verified directly from their dimensionless Wigner
functions:

```maxima
kill(all)$

W0  : exp(-(q^2 + P^2))/%pi$
W1  : (2*(q^2 + P^2) - 1)*exp(-(q^2 + P^2))/%pi$
Wth : exp(-(q^2 + P^2)/3)/(3*%pi)$

moment_q(W,k) :=
  integrate(integrate(q^k*W, P, minf, inf), q, minf, inf)$

norm(W) :=
  integrate(integrate(W, P, minf, inf), q, minf, inf)$

purity(W) :=
  2*%pi*integrate(integrate(W^2, P, minf, inf), q, minf, inf)$

[norm(W0), moment_q(W0,2), moment_q(W0,4), purity(W0)];
[norm(W1), moment_q(W1,2), moment_q(W1,4), purity(W1)];
[norm(Wth), moment_q(Wth,2), moment_q(Wth,4), purity(Wth)];
```

Maxima returns

$$
\left[1,\frac12,\frac34,1\right]
$$

for the ground state,

$$
\left[1,\frac32,\frac{15}{4},1\right]
$$

for $\lvert1\rangle$, and

$$
\left[1,\frac32,\frac{27}{4},\frac13\right]
$$

for the thermal state.

The last two outputs contain the central result in numerical form: the
second moments coincide, while the fourth moments and purities do not.

## 19. Research consequence

Exceptional-Hermite states are non-Gaussian. Their covariance matrices remain
valuable observables, but they are compressed summaries rather than complete
state descriptions.

When the Hamiltonian contains nonlinear or rational forces, covariance
derivatives may depend on moments not contained in $\sigma$. The chapter
[IV: Exact First-Order Covariance Response Without Gaussian
Closure]({{ '/exact-covariance-response/' | relative_url }}) shows how
symmetry and exact preparation data can nevertheless determine selected
initial derivatives without imposing a false Gaussian approximation.

For correlations, the same distinction continues in
[VII: Non-Gaussian Mutual Information: Exact Entropy and Covariance
Bounds]({{ '/non-gaussian-mutual-information/' | relative_url }}), where
covariance supplies Gaussian information but the complete reduced density
spectrum is required for the exact non-Gaussian mutual information.

The essential conclusion is

$$
\boxed{
\begin{aligned}
\text{Gaussian state:}\quad
&(\boldsymbol d,\sigma)
\Longleftrightarrow
\text{complete state},
\\[4pt]
\text{non-Gaussian state:}\quad
&(\boldsymbol d,\sigma)
\Longrightarrow
\text{only first- and second-order information}.
\end{aligned}
}
$$

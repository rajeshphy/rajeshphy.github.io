---
title: "IV: Exact First-Order Covariance Response Without Gaussian Closure"
description: "Derives the exact initial covariance response from the Heisenberg equations and exposes the higher moments hidden by Gaussian closure."
date: 2026-06-07 09:00:00 +0530
categories: research
tags:
  - covariance dynamics
  - moment hierarchy
  - exceptional Hermite states
  - quantum synchronization
  - non-Gaussian dynamics
permalink: "/exact-covariance-response/"
---

The angular quench creates dynamics in a state that was stationary before
$t=0$. The first experimentally accessible question is therefore local in
time: which means and covariances begin to change immediately, and which do
not?

The answer can be exact even though the state is non-Gaussian and its full
moment hierarchy is not closed. The reason is that a derivative at one
specified instant needs only the Hamiltonian and the moments of the state at
that instant; it does not require a solution for all later times.

## What is carried forward, and what is new

The [fixed-confinement angular quench](/fixed-confinement-angular-quench/)
provides the complete input:

$$
H_f=p_+^2+p_-^2+U_+(q_+)+U_-(q_-)
-\omega_c(q_+p_--q_-p_+),
$$

$$
|\Psi_0\rangle
=|m_+,\ell_+\rangle\otimes|m_-,\ell_-\rangle.
$$

The initial factors are normalized eigenstates of their separate
one-coordinate Hamiltonians. They are real and have definite parity, while
the regular potentials $U_\pm$ are even. Consequently,

$$
\langle q_\alpha\rangle_0
=\langle p_\alpha\rangle_0
=\langle U_\alpha'(q_\alpha)\rangle_0=0,
$$

$$
\frac12
\langle q_\alpha p_\alpha+p_\alpha q_\alpha\rangle_0=0.
$$

The product structure also factorizes every cross-coordinate expectation at
$t=0$. We continue to use

$$
[q_\alpha,p_\beta]=i\delta_{\alpha\beta},
\qquad
\hbar=2M=1.
$$

Nothing about the exceptional-Hermite construction needs to be repeated.
The new task is to derive the operator flow, expose the open moment
hierarchy, and isolate the complete first-order covariance response.

## Heisenberg evolution from the Hamiltonian

In the Schrödinger picture the state evolves. Equivalently, in the
Heisenberg picture an operator evolves as

$$
O(t)=e^{iH_ft}Oe^{-iH_ft},
$$

so

$$
\dot O(t)=i[H_f,O(t)].
$$

As one sign check, consider $q_+$ at $t=0$. The local kinetic term gives

$$
i[p_+^2,q_+]=2p_+,
$$

and the angular term gives

$$
i[-\omega_c(q_+p_--q_-p_+),q_+]
=\omega_cq_-.
$$

Repeating this calculation for the other three canonical operators yields

$$
\boxed{
\begin{aligned}
\dot q_+&=2p_++\omega_cq_-,
&
\dot q_-&=2p_--\omega_cq_+,\\
\dot p_+&=-U_+'(q_+)+\omega_cp_-,
&
\dot p_-&=-U_-'(q_-)-\omega_cp_+.
\end{aligned}
}
$$

The structure is physically transparent. The terms $2p_\alpha$ and
$-U_\alpha'$ are the local motion. The terms proportional to $\omega_c$
rotate the two coordinates and the two momenta. Reversing $\omega_c$
reverses only this angular part of the instantaneous flow.

## Why the moment hierarchy does not close

A moment is the expectation of a product of canonical operators, such as
$\langle q_+^2\rangle$ or $\langle q_+p_-\rangle$. Differentiating a moment
means differentiating each operator in that product. For example,

$$
\begin{aligned}
\frac{d}{dt}\langle q_+^2\rangle
&=\langle\dot q_+q_++q_+\dot q_+\rangle\\
&=2\langle p_+q_++q_+p_+\rangle
+2\omega_c\langle q_+q_-\rangle.
\end{aligned}
$$

The next equation already contains the force:

$$
\begin{aligned}
\frac{d}{dt}
\langle q_+p_++p_+q_+\rangle
={}&4\langle p_+^2\rangle\\
&-\langle q_+U_+'+U_+'q_+\rangle\\
&+2\omega_c
\langle q_+p_-+q_-p_+\rangle.
\end{aligned}
$$

For a quadratic potential,

$$
U_\alpha(q_\alpha)=a_\alpha q_\alpha^2+b_\alpha,
\qquad
U_\alpha'=2a_\alpha q_\alpha,
$$

and the force-weighted expression is another second moment. All means and
second moments then form a finite linear system.

For a rational extension, $U_\alpha'(q_\alpha)$ is not linear. The value of
$\langle q_\alpha U_\alpha'(q_\alpha)\rangle$ is not determined by
$\langle q_\alpha^2\rangle$ alone. Differentiating it generates expectations
containing $U_\alpha''$, momentum-force products, and further functions of
$q_\alpha$. This is the **open moment hierarchy**.

Open does not mean ill-defined. It means that a finite covariance matrix
does not contain enough information to predict its own exact evolution for
all times.

## Covariance for arbitrary quantum states

Collect the canonical operators in the fixed order

$$
R=(q_+,p_+,q_-,p_-)^{\mathsf T}.
$$

Let

$$
\mu_i=\langle R_i\rangle,
\qquad
\delta R_i=R_i-\mu_i.
$$

The quantum covariance matrix is the real symmetric matrix

$$
\sigma_{ij}
=\frac12\langle
\delta R_i\delta R_j+\delta R_j\delta R_i
\rangle.
$$

Symmetrization is essential when two operators do not commute: it makes each
entry real for Hermitian $R_i$. For operators belonging to different
coordinates, it changes nothing because they commute.

Define

$$
V_{q,\alpha}=\langle q_\alpha^2\rangle_0,
\qquad
V_{p,\alpha}=\langle p_\alpha^2\rangle_0.
$$

The initial means vanish. Product factorization removes all cross entries,
and reality removes the local symmetrized $qp$ entries. Thus

$$
\sigma(0)=
\begin{pmatrix}
V_{q,+}&0&0&0\\
0&V_{p,+}&0&0\\
0&0&V_{q,-}&0\\
0&0&0&V_{p,-}
\end{pmatrix}.
$$

This diagonal matrix does not make the state Gaussian. Covariance is defined
for every state, but it determines a state completely only within special
families such as Gaussian states.

## Initial means and local blocks

Taking expectations of the four Heisenberg equations gives

$$
\dot{\langle q_+\rangle}_0
=2\langle p_+\rangle_0+\omega_c\langle q_-\rangle_0=0,
$$

and similarly for the other three means. In the momentum equations, parity
also gives $\langle U_\alpha'\rangle_0=0$. Therefore the derivatives of
centered and uncentered second moments agree at $t=0$.

The local covariance blocks also have zero initial derivative. One way to
see this is to separate the two causes of motion. Each factor is an
eigenstate of its local $h_{m_\alpha}$, so its local expectations are
stationary under $H_0$. Every contribution from the angular term to a local
second moment contains a cross expectation, which factorizes to zero in the
initial product state.

For the local $qp$ entry, this includes the one-dimensional virial identity

$$
2V_{p,\alpha}
=\langle q_\alpha U_\alpha'(q_\alpha)\rangle_0,
$$

obtained by setting the local derivative of
$\langle q_\alpha p_\alpha+p_\alpha q_\alpha\rangle$ to zero. No quadratic
or Gaussian approximation is being used.

## Coordinate-coordinate covariance rate

Because the initial means and their derivatives vanish,

$$
\left.\dot\sigma_{q_+q_-}\right|_0
=\left.\frac{d}{dt}\langle q_+q_-\rangle\right|_0.
$$

Using the Heisenberg equations,

$$
\begin{aligned}
\frac{d}{dt}\langle q_+q_-\rangle
={}&2\langle p_+q_-\rangle
+2\langle q_+p_-\rangle\\
&+\omega_c
\left(\langle q_-^2\rangle-\langle q_+^2\rangle\right).
\end{aligned}
$$

The two cross moments vanish initially by product factorization. Therefore

$$
\boxed{
\left.\dot\sigma_{q_+q_-}\right|_0
=\omega_c(V_{q,-}-V_{q,+}).
}
$$

The angular flow immediately creates coordinate correlation only when the
two initial coordinate widths differ.

## Momentum-momentum covariance rate

The same calculation for $\langle p_+p_-\rangle$ gives

$$
\begin{aligned}
\frac{d}{dt}\langle p_+p_-\rangle
={}&-\langle U_+'(q_+)p_-\rangle
-\langle p_+U_-'(q_-)\rangle\\
&+\omega_c
\left(\langle p_-^2\rangle-\langle p_+^2\rangle\right).
\end{aligned}
$$

At $t=0$, the force terms factorize:

$$
\langle U_+'p_-\rangle_0
=\langle U_+'\rangle_0\langle p_-\rangle_0=0,
$$

and likewise for the other term. Hence

$$
\boxed{
\left.\dot\sigma_{p_+p_-}\right|_0
=\omega_c(V_{p,-}-V_{p,+}).
}
$$

The nonlinear force does not disappear from the dynamics. Parity and product
factorization remove it only from this particular derivative at this
particular instant.

## Why both mixed rates vanish

Since $q_+$ commutes with $p_-$,
$\sigma_{q_+p_-}=\langle q_+p_-\rangle$ at the initial instant. Its
derivative is

$$
\begin{aligned}
\frac{d}{dt}\langle q_+p_-\rangle
={}&2\langle p_+p_-\rangle
+\omega_c\langle q_-p_-\rangle\\
&-\langle q_+U_-'(q_-)\rangle
-\omega_c\langle q_+p_+\rangle.
\end{aligned}
$$

Product factorization removes the first and third terms at $t=0$. Reality
and the canonical commutator give

$$
\langle q_\alpha p_\alpha\rangle_0=\frac{i}{2}.
$$

The remaining two terms cancel:

$$
\omega_c\frac{i}{2}-\omega_c\frac{i}{2}=0.
$$

Interchanging $+$ and $-$ gives the other mixed rate. Thus

$$
\boxed{
\left.\dot\sigma_{q_+p_-}\right|_0
=\left.\dot\sigma_{p_+q_-}\right|_0=0.
}
$$

The cancellation is a genuinely quantum operator check. Replacing
$q_\alpha p_\alpha$ by an unjustified real classical product would obscure
it.

## The complete first-order covariance theorem

In the order $R=(q_+,p_+,q_-,p_-)$, all results combine into

$$
\boxed{
\dot\sigma(0)=
\omega_c
\begin{pmatrix}
0&0&V_{q,-}-V_{q,+}&0\\
0&0&0&V_{p,-}-V_{p,+}\\
V_{q,-}-V_{q,+}&0&0&0\\
0&V_{p,-}-V_{p,+}&0&0
\end{pmatrix}.
}
$$

This theorem assumes:

- a sudden fixed-confinement Hamiltonian $H_f$;
- a product of local eigenstates at $t=0$;
- real, definite-parity factors in even local potentials; and
- finite second moments and force expectations.

It does **not** assume Gaussianity or close the later-time hierarchy.

Several conclusions should be kept separate. Field reversal changes the
sign of each nonzero rate. Equality of the coordinate variances removes only
the coordinate-coordinate rate; equality of the momentum variances removes
only the momentum-momentum rate. If both pairs agree, then
$\dot\sigma(0)=0$, but second and higher derivatives may still be nonzero.

A nonzero cross covariance is evidence of correlation in the selected
quadratures. By itself it is not an entanglement criterion and not evidence
of persistent synchronization.

## Worked control: unequal Gaussian widths

For the undeformed ground factor at scale $\Omega$,

$$
V_q=\frac1{\Omega},
\qquad
V_p=\frac{\Omega}{4}.
$$

Use the same stable control values

$$
\Omega_+=2,\qquad
\Omega_-=1,\qquad
\omega_c=\frac12.
$$

Then

$$
\left.\dot\sigma_{q_+q_-}\right|_0
=\frac12\left(1-\frac12\right)=\frac14,
$$

$$
\left.\dot\sigma_{p_+p_-}\right|_0
=\frac12\left(\frac14-\frac12\right)=-\frac18.
$$

Therefore

$$
\sigma_{q_+q_-}(t)=\frac14t+O(t^2),
\qquad
\sigma_{p_+p_-}(t)=-\frac18t+O(t^2),
$$

while both mixed cross entries start at $O(t^2)$. Coordinate and momentum
correlations initially acquire opposite signs because the narrower
coordinate distribution has the broader conjugate momentum distribution.

## Exact derivatives do not imply a closed solution

For any observable $O$ whose required expectations exist,

$$
\left.
\frac{d^n}{dt^n}\langle O(t)\rangle
\right|_{t=0}
=i^n
\left\langle
\operatorname{ad}_{H_f}^{\,n}(O)
\right\rangle_0,
\qquad
\operatorname{ad}_{H_f}(O)=[H_f,O].
$$

This identity is exact. It permits a systematic calculation of second and
higher derivatives even when the moment hierarchy is open. A Taylor
polynomial made from finitely many such derivatives is still only a
short-time approximation.

This distinction suggests a useful research comparison. Two non-Gaussian
states can be chosen with the same initial covariance matrix. The theorem
then gives them the same $\dot\sigma(0)$, but force-weighted moments entering
higher derivatives can separate their dynamics. The earliest separating
order quantifies how much information covariance misses for the chosen
potential and states.

## Relative-noise response and the synchronization numerator

To compare the fluctuations of the two modes on the same dimensionless
scale, choose a reference frequency $\omega_0>0$ and define

$$
Q_\alpha=\sqrt{\frac{\omega_0}{2}}\,q_\alpha,
\qquad
P_\alpha=\sqrt{\frac{2}{\omega_0}}\,p_\alpha.
$$

Then $[Q_\alpha,P_\beta]=i\delta_{\alpha\beta}$. Define the relative-noise
operator

$$
\mathcal D_c
=\frac12\left[
(\delta Q_+-\delta Q_-)^2
+(\delta P_+-\delta P_-)^2
\right],
$$

and

$$
S_c=\langle\mathcal D_c\rangle^{-1}.
$$

The relative quadratures obey

$$
[Q_+-Q_-,P_+-P_-]=2i.
$$

The uncertainty relation and the arithmetic-geometric mean inequality give
$\langle\mathcal D_c\rangle\geq1$, so $0<S_c\leq1$ for states with finite
variances. An equal-time value of $S_c$ measures relative noise. It is not,
by itself, proof of phase locking or a stationary synchronized regime.

Let

$$
A_\alpha=V_{Q,\alpha}+V_{P,\alpha}.
$$

At the quench, the local variance rates vanish and the initial cross entries
are zero. The covariance theorem therefore gives

$$
\langle\mathcal D_c\rangle_0
=\frac12(A_++A_-),
$$

$$
\left.
\frac{d}{dt}\langle\mathcal D_c\rangle
\right|_0
=\omega_c(A_+-A_-).
$$

The difference

$$
\mathcal N_{\mathrm{sync}}=A_+-A_-
$$

is the synchronization numerator: it fixes the signed linear response of
the relative noise. Expanding the reciprocal gives

$$
\boxed{
S_c(t)
=\frac{2}{A_++A_-}
-\frac{4\omega_c(A_+-A_-)}
{(A_++A_-)^2}\,t
+O(t^2).
}
$$

This is a local response formula, not a finite-time synchronization law.

## Non-Gaussian codimension-two example

For a codimension-two ground factor, direct integration of the normalized
state gives

$$
\mathcal M
=\sqrt{\frac{\pi}{2}}e^{1/2}
\operatorname{erfc}\!\left(\frac1{\sqrt2}\right),
$$

$$
V_q=\frac{2(\mathcal M-1/2)}{\Omega},
\qquad
V_p=\frac{\Omega}{2}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

The dimensionless sum at an arbitrary reference scale is therefore

$$
A^{(2)}(\Omega;\omega_0)
=\frac{\omega_0(\mathcal M-1/2)}{\Omega}
+\frac{\Omega}{\omega_0}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

Set $\omega_0=1$ and choose the stable values

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34.
$$

They give

$$
A_+^{(2)}=2.2727434432762048\ldots,
\qquad
A_-^{(2)}=1.6439282731976381\ldots,
$$

and hence

$$
\boxed{
S_c(0)=0.5106376395008639\ldots,
\qquad
\dot S_c(0)=-0.1229730434570357\ldots.
}
$$

The following compact Maxima calculation evaluates the closed forms directly:

```maxima
kill(all)$
fpprec : 25$
M : sqrt(%pi/2)*exp(1/2)*erfc(1/sqrt(2))$
A(O) := (M-1/2)/O + O*(3/2+M/3)$
Op : 5/4$  Om : 17/20$  wc : 3/4$
S0  : ratsimp(2/(A(Op)+A(Om)))$
dS0 : ratsimp(-4*wc*(A(Op)-A(Om))/(A(Op)+A(Om))^2)$
bfloat([A(Op),A(Om),S0,dS0]);
```

The expected output is

```text
[2.272743443276204807045043b0,
 1.643928273197638160910612b0,
 5.106376395008638874009324b-1,
 -1.229730434570356467813996b-1]
```

The two coefficients are exact consequences of the stated moments and
parameters. A later finite-basis propagation may be compared with them, but
agreement must improve as the basis and time-step errors are reduced.

## Scope and useful generalizations

The derivation identifies precisely where each assumption enters. Product
factorization removes initial cross expectations. Parity removes mean forces.
Reality fixes the local symmetrized $qp$ expectation. Local stationarity
removes the initial derivatives of the local covariance blocks.

Relaxing any of these assumptions is possible, but the omitted terms must
then be restored. A displaced state has nonzero means; a current-carrying
state can have nonzero symmetrized $qp$ covariance; an indefinite-parity
state can have a nonzero mean force. The four Heisenberg equations remain
valid, while the boxed first-order matrix must be recomputed from the general
covariance definition.

The main result is deliberately local and exact: it provides a benchmark for
symbolic algebra, numerical propagation, and experimental finite-difference
estimates without pretending that second moments close the rational
dynamics.

## Series navigation

1. [Magnetic oscillator stability and reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/fixed-confinement-angular-quench/)
4. **Exact covariance response — current chapter**
5. [Survival curvature](/survival-curvature/)
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

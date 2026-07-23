---
title: "VI: Exceptional-Basis Spectral Propagation and Synchronization"
description: "Constructs parity-resolved exceptional-basis propagation, observable-level cutoff tests, and a precise synchronization measure."
date: 2026-06-09 09:00:00 +0530
categories: research
tags:
  - exceptional Hermite
  - angular-momentum quench
  - spectral propagation
  - quantum synchronization
  - cutoff convergence
  - non-Gaussian dynamics
permalink: "/spectral-propagation-synchronization/"
---

The preceding chapters produced exact initial states and exact derivatives at
the quench. A derivative is not a trajectory. To investigate oscillations,
recurrences, transient relative fluctuations, or entanglement at finite time,
we must solve the time-dependent Schrödinger equation.

This chapter is the computational bridge. It projects the infinite
exceptional-Hermite expansion onto successively larger spaces, propagates each
projected state spectrally, and accepts a finite-time statement only after
observable-level convergence tests. No Gaussian closure is introduced, and no
finite basis is presented as an exact replacement for the original Hilbert
space.

## 1. Exact inputs carried forward

The calculation begins with the normalized, complete one-mode basis
$$\lvert m_\alpha,r\rangle$$ constructed in
[Chapter II](/exceptional-hermite-preparation/). The fixed-confinement quench
from [Chapter III](/fixed-confinement-angular-quench/) is

$$
H_f=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z,
\qquad
L_z=q_+p_- -q_-p_+.
$$

The synchronization observable and its exact initial slope come from
[Chapter IV](/exact-covariance-response/). The independent survival test from
[Chapter V](/survival-curvature/) is

$$
\mathcal S(t)
=1-\omega_c^2\Lambda_0t^2+O(t^4).
$$

These results are used as analytic inputs and validation targets; their
derivations are not repeated here.

We keep $\hbar=2M=1$, use a signed $\omega_c$, and require the fixed dressed
scales to satisfy

$$
\Omega_+^2>\omega_c^2,
\qquad
\Omega_-^2>\omega_c^2.
$$

The initial state is one basis product,

$$
|\Psi(0)\rangle
=|m_+,r_0\rangle\otimes|m_-,s_0\rangle.
$$

For the benchmark, $r_0=s_0=0$ and $m_+=m_-=2$.

## 2. From the Schrödinger equation to coefficient equations

For fixed even codimensions

$$
\boldsymbol m=(m_+,m_-),
$$

expand the evolving state in the complete product basis:

$$
|\Psi(t)\rangle
=\sum_{r,s=0}^{\infty}c_{rs}(t)
|m_+,r\rangle\otimes|m_-,s\rangle.
$$

Completeness makes this an exact infinite expansion. The initial coefficients
are especially simple:

$$
c_{rs}(0)=\delta_{r,r_0}\delta_{s,s_0}.
$$

The separable Hamiltonian is diagonal in this basis. With the energy
convention of Chapter II,

$$
\varepsilon_{m,r}(\Omega)
=
\begin{cases}
0, & r=0,\\
\Omega(m+r), & r\ge1,
\end{cases}
$$

and

$$
E_{rs}^{\mathrm{sep}}
=\varepsilon_{m_+,r}(\Omega_+)
+\varepsilon_{m_-,s}(\Omega_-).
$$

Insert the expansion into

$$
i\frac{d}{dt}|\Psi(t)\rangle=H_f|\Psi(t)\rangle
$$

and project with
$$\langle m_+,r\rvert\langle m_-,s\rvert$$. The result is

$$
\boxed{
i\dot c_{rs}
=E_{rs}^{\mathrm{sep}}c_{rs}
-\omega_c\sum_{u,v=0}^{\infty}
\mathsf L_{rs,uv}c_{uv}.
}
$$

The diagonal energy term only advances the phase of a preparation-basis
amplitude. The angular matrix transfers amplitude between basis products.
Finite-time dynamics arise from interference among all of those coupled phase
paths, which is why an initial derivative cannot replace propagation.

The two-dimensional angular matrix requires only one-dimensional integrals:

$$
\boxed{
\begin{aligned}
\mathsf L_{rs,uv}
={}&q^{(+)}_{ru}p^{(-)}_{sv}
-p^{(+)}_{ru}q^{(-)}_{sv},\\
q^{(\alpha)}_{ru}
={}&\langle m_\alpha,r|q_\alpha|m_\alpha,u\rangle,\\
p^{(\alpha)}_{ru}
={}&\langle m_\alpha,r|p_\alpha|m_\alpha,u\rangle.
\end{aligned}
}
$$

In coordinate space,

$$
q^{(\alpha)}_{ru}
=\int_{-\infty}^{\infty}
\phi_{m_\alpha,r}(q;\Omega_\alpha)^*
q\,
\phi_{m_\alpha,u}(q;\Omega_\alpha)\,dq,
$$

$$
p^{(\alpha)}_{ru}
=-i\int_{-\infty}^{\infty}
\phi_{m_\alpha,r}(q;\Omega_\alpha)^*
\frac{d}{dq}
\phi_{m_\alpha,u}(q;\Omega_\alpha)\,dq.
$$

The derivative in the second integral acts on the exceptional polynomial
ratio **and** its Gaussian envelope. A calculation that merely reweights a
Gaussian probability density can produce coordinate moments, but it cannot
produce the momentum matrix correctly.

## 3. Parity gives a structural reduction

For even codimension, the state
$$\lvert m_\alpha,r\rangle$$ has parity $(-1)^r$.
Both $q_\alpha$ and $p_\alpha$ reverse parity, so

$$
q^{(\alpha)}_{ru}
=p^{(\alpha)}_{ru}=0
\quad\text{when }r\text{ and }u\text{ have the same parity}.
$$

Every nonzero term in $L_z$ flips both one-mode parities. It therefore
preserves the product parity

$$
\Pi=(-1)^{r+s}.
$$

The Hamiltonian separates into even- and odd-total-parity blocks. This fact
has two uses:

- it reduces memory and diagonalization cost if the blocks are assembled
  separately; and
- it is a stringent debugging test—amplitude leaking into the wrong
  total-parity sector signals an indexing or matrix-element error.

Parity is a true selection rule. In contrast, an apparently small high-energy
population is only a numerical diagnostic and must be tested against a larger
cutoff.

## 4. Projection and the meaning of a cutoff

Choose an inclusive square cutoff

$$
0\le r,s\le N.
$$

The retained dimension is $(N+1)^2$ before parity reduction. Define

$$
P_N
=\sum_{r,s=0}^{N}|r,s\rangle\langle r,s|
$$

and the projected Hamiltonian

$$
H_N=P_NH_fP_N.
$$

This is a Rayleigh-Ritz projection. In general,

$$
e^{-iH_Nt}P_N
\ne
P_Ne^{-iH_ft}P_N,
$$

because the exact evolution can visit omitted levels and later return. The
cutoff is therefore an approximation even when the initial state lies exactly
inside the retained space.

Using the flattened index

$$
k=r(N+1)+s,
$$

the matrix can be assembled as

$$
H_N
=\operatorname{diag}(E_{rs}^{\mathrm{sep}})
-\omega_c
\left(
q_+\otimes p_-
-p_+\otimes q_-
\right).
$$

In exact arithmetic, $q_\alpha$, $p_\alpha$, $L_z$, and $H_N$ are Hermitian.
Before applying any numerical symmetrization, record the relative residual

$$
\epsilon_H
=\frac{\|H_N-H_N^\dagger\|}{\|H_N\|}.
$$

If $\epsilon_H$ is not at the expected quadrature and floating-point level,
stop and find the error. Only after this check is it appropriate to remove
round-off asymmetry with

$$
H_N\leftarrow\frac{H_N+H_N^\dagger}{2}.
$$

Blind Hermitization can otherwise hide a wrong momentum sign, insufficient
quadrature, or an inconsistent basis ordering.

## 5. Spectral propagation

Diagonalize the finite Hermitian matrix:

$$
H_N=V_ND_NV_N^\dagger,
$$

where $D_N$ is real diagonal and $V_N$ is unitary. Then

$$
\boxed{
\boldsymbol c_N(t)
=V_Ne^{-iD_Nt}V_N^\dagger\boldsymbol c_N(0).
}
$$

This is called spectral propagation because time dependence is applied to
the eigenvalues through phase factors. Once the eigendecomposition is
available, many time points are inexpensive and introduce no time-stepping
error. Physically, each eigenvector is a post-quench stationary component and
each diagonal entry of $D_N$ is its angular frequency in the chosen units.
The selected time grid still matters for locating extrema and fast
oscillations.

For much larger sparse matrices, a Krylov action
$e^{-iH_Nt}\boldsymbol c_N(0)$ can replace dense diagonalization. It adds a
Krylov tolerance that must be converged independently of $N$. The dense
spectral method is appropriate for the benchmark dimension.

The projected evolution is unitary:

$$
\|\boldsymbol c_N(t)\|_2=1
$$

up to floating-point error. This verifies the finite-matrix propagation, not
the adequacy of the finite basis.

## 6. Extracting physical observables

For any projected operator $O_N$,

$$
\langle O\rangle_N(t)
=\boldsymbol c_N(t)^\dagger O_N\boldsymbol c_N(t).
$$

For a quadratic observable, $P_NO^2P_N$ is not exactly the same finite matrix
as $(P_NOP_N)^2$: the latter forbids intermediate excursions outside the
retained space. Directly integrating the quadratic operator avoids that
boundary convention. If matrices are squared for efficiency, their results
must be included in the same cutoff comparison as the state.

Means, variances, and symmetrized covariances should be formed from these
expectations:

$$
\operatorname{Var}(A)
=\langle A^2\rangle-\langle A\rangle^2,
$$

$$
\operatorname{Cov}(A,B)
=\frac12\langle AB+BA\rangle
-\langle A\rangle\langle B\rangle.
$$

Do not assume that first moments remain zero merely because they vanish at the
quench; compute them.

### Survival probability

The survival probability is

$$
\mathcal S_N(t)
=\left|
\boldsymbol c_N(0)^\dagger\boldsymbol c_N(t)
\right|^2.
$$

For a single initial product basis state this is simply
$$\lvert c_{r_0s_0}(t)\rvert^2$$.

### Relative-fluctuation synchronization contrast

The dimensionless laboratory quadratures are

$$
Q_j=\sqrt{\frac{\omega_0}{2}}\,x_j,
\qquad
P_j=\sqrt{\frac{2}{\omega_0}}\,p_j,
\qquad j\in\{x,y\}.
$$

Chapter IV defined

$$
S_c(t)=\frac{1}{\langle\mathcal D_c(t)\rangle},
$$

$$
\mathcal D_c
=\frac12\left[
(\delta Q_x-\delta Q_y)^2
+(\delta P_x-\delta P_y)^2
\right],
$$

where $\delta A=A-\langle A\rangle$. For implementation,

$$
\begin{aligned}
\langle\mathcal D_c\rangle
=\frac12\bigl[
&\operatorname{Var}(Q_x)+\operatorname{Var}(Q_y)
-2\operatorname{Cov}(Q_x,Q_y)\\
&+\operatorname{Var}(P_x)+\operatorname{Var}(P_y)
-2\operatorname{Cov}(P_x,P_y)
\bigr].
\end{aligned}
$$

Because
$[Q_x-Q_y,P_x-P_y]=2i$, the uncertainty relation implies

$$
\langle\mathcal D_c\rangle\ge1,
\qquad
0<S_c\le1.
$$

A value outside this range is a useful implementation alarm.

When $g=0$, the $+,-$ axes coincide with $x,y$ up to a permutation. For a
nonzero coordinate-mixing angle $\theta$, transform the operators before
forming $S_c$:

$$
\begin{pmatrix}x\\y\end{pmatrix}
=
\begin{pmatrix}
\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta
\end{pmatrix}
\begin{pmatrix}q_+\\q_-\end{pmatrix},
$$

with the same rotation for momenta. Synchronization is defined relative to
chosen physical observables; silently substituting rotated modes changes the
question.

### Pure-state mutual information

The convergence table below also monitors the mutual information between the
$+$ and $-$ modes. Reshape the coefficient vector into the matrix

$$
C_{rs}(t)=c_{rs}(t).
$$

For a normalized pure state,

$$
\rho_+=CC^\dagger,
\qquad
\rho_-=C^\dagger C,
$$

and the mutual information in nats is

$$
I(+:-)
=S(\rho_+)+S(\rho_-)
=-2\sum_k\lambda_k\ln\lambda_k,
$$

where $\lambda_k$ are the eigenvalues of $\rho_+$ and zero terms are omitted.
Equivalently, $\lambda_k$ are the squared singular values of $C$. This is
exact for the normalized projected pure state, but it inherits the basis
cutoff error of that state.

## 7. Convergence is an observable-level question

Quadrature error in the one-mode matrices, algebra error in the tensor
assembly, eigensolver error, finite-$N$ projection error, and time-grid
sampling error are independent. A small value of one does not bound the
others. Overlap and Hermiticity residuals diagnose the first two; norm
conservation diagnoses propagation inside the finite space; only cutoff
comparisons diagnose projection error; and only time-grid refinement
establishes reported extrema.

### Boundary and guard-shell populations

The population on the outer square boundary is

$$
\boxed{
P_{\partial}(t)
=\sum_{s=0}^{N}|c_{Ns}(t)|^2
+\sum_{r=0}^{N}|c_{rN}(t)|^2
-|c_{NN}(t)|^2.
}
$$

The corner is subtracted once because it appears in both sums. A more
conservative diagnostic monitors the last $k$ shells:

$$
P_{\mathrm{guard}}^{(k)}(t)
=\sum_{\substack{0\le r,s\le N\\
r>N-k\ \text{or}\ s>N-k}}
|c_{rs}(t)|^2.
$$

Small boundary population is necessary but not sufficient: omitted levels
can affect retained amplitudes through virtual excursions without becoming
strongly populated.

### Observable differences

For every claimed observable $O$, compare entire curves:

$$
\delta_O(N,N')
=\max_{t\in[0,T]}
|O_N(t)-O_{N'}(t)|.
$$

Use at least three increasing cutoffs. Consecutive differences should decrease,
and the conclusion should survive a comparison with the largest available
reference cutoff. A single pair can exhibit accidental agreement.

Convergence is always tied to

- the initial state,
- the quench strength,
- the observable,
- the time interval $[0,T]$, and
- a declared tolerance.

Increasing $$\lvert\omega_c\rvert$$, increasing the excitation, or extending $T$ can
invalidate an otherwise adequate cutoff.

## 8. Analytic targets for the propagation

Exact short-time results are most valuable here as unit tests.

### Survival-curvature target from Chapter V

Let

$$
\Lambda_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12.
$$

Then a converged propagation must satisfy

$$
\lim_{t\to0}
\frac{1-\mathcal S_N(t)}{t^2}
\longrightarrow\omega_c^2\Lambda_0
$$

as both the time window is shrunk and the basis is enlarged. A fit including
$t^2$ and $t^4$ is more stable than a quotient at extremely small $t$.

### Synchronization target from Chapter IV

For the $m=2$, $r=0$ factor, define

$$
\mathcal M
=\sqrt{\frac{\pi}{2}}e^{1/2}
\operatorname{erfc}\!\left(\frac{1}{\sqrt2}\right).
$$

At general reference scale $\omega_0$,

$$
A_\alpha^{(2)}
=\frac{\omega_0(\mathcal M-1/2)}{\Omega_\alpha}
+\frac{\Omega_\alpha}{\omega_0}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

This is the dimensionless sum
$V_{Q,\alpha}+V_{P,\alpha}$. The exact initial coefficients are

$$
\boxed{
S_c(0)
=\frac{2}{A_+^{(2)}+A_-^{(2)}},
}
$$

$$
\boxed{
\dot S_c(0)
=-\frac{
4\omega_c\left(A_+^{(2)}-A_-^{(2)}\right)
}{
\left(A_+^{(2)}+A_-^{(2)}\right)^2
}.
}
$$

These are imported validation targets, not fit parameters. The slope is odd
under $\omega_c\mapsto-\omega_c$, while the survival curvature is even. A
field-reversal run should display both symmetries.

If $A_+^{(2)}=A_-^{(2)}$, the synchronization slope is zero. Chapter V shows
why this does not imply a stationary state: survival can still have nonzero
quadratic curvature.

For the benchmark parameters below, the exact input values can be reproduced
in Maxima 5.49.0:

```maxima
kill(all)$
display2d : false$
fpprec : 40$

MM : sqrt(%pi/2)*exp(1/2)*erfc(1/sqrt(2))$
Op : 5/4$  Om : 17/20$  wc : 3/4$  w0 : 1$

A(O) := w0*(MM-1/2)/O
        + (O/w0)*(3/2 + MM/3)$
S0  : 2/(A(Op) + A(Om))$
Sd0 : -4*wc*(A(Op)-A(Om))/(A(Op)+A(Om))^2$

print("S0 =", bfloat(S0))$
print("Sdot0 =", bfloat(Sd0))$
print("margin+ =", ratsimp(Op^2-wc^2))$
print("margin- =", ratsimp(Om^2-wc^2))$
```

The output is

```text
S0 = 5.106376395008638874009323948612110658936b-1
Sdot0 = -1.229730434570356467813995881179966541898b-1
margin+ = 1
margin- = 4/25
```

These values test the finite-time propagation without being inferred from it.
The basis calculation must separately report the overlap residual, Hamiltonian
Hermiticity residual, norm error, cutoff convention, quadrature order, time
window, and time sampling used for any stated extremum.

## 9. Cutoff-tested benchmark

Use

$$
g=0,
\qquad
m_+=m_-=2,
\qquad
r_0=s_0=0,
$$

and

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
\qquad
\omega_0=1.
$$

The stability margins are

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

The one-mode matrices were evaluated with 360-point Gauss-Hermite quadrature.
The interval $0\le t\le12$ was propagated at square cutoffs
$N=30,34,38,42$. At $N=42$, the maximum one-mode overlap error was
$1.71\times10^{-12}$ and the maximum norm error during propagation was
$5.77\times10^{-15}$.

Observable-level differences from the $N=42$ reference curves are:

| $N$ | $$\max\lvert\Delta\mathcal S\rvert$$ | $$\max\lvert\Delta S_c\rvert$$ | $$\max\lvert\Delta I\rvert$$ | $\max P_\partial$ |
|---:|---:|---:|---:|---:|
| 30 | $1.69\times10^{-5}$ | $9.60\times10^{-4}$ | $3.49\times10^{-4}$ | $1.01\times10^{-6}$ |
| 34 | $1.25\times10^{-5}$ | $7.25\times10^{-4}$ | $2.39\times10^{-4}$ | $5.15\times10^{-7}$ |
| 38 | $9.83\times10^{-6}$ | $3.70\times10^{-4}$ | $1.58\times10^{-4}$ | $1.59\times10^{-7}$ |
| 42 | reference | reference | reference | $1.04\times10^{-7}$ |

Here every $\Delta$ is the largest absolute difference from the $N=42$ curve
over the stated interval. The table supports a finite-window numerical
reference; it does not certify the $N\to\infty$ limit.

The propagated initial value is

$$
S_c(0)=0.5106376395002\ldots.
$$

Using the first positive sample, $t=10^{-3}$, gives

$$
\dot S_c(0)\big|_{\mathrm{one\,step}}
=-0.1229306242038\ldots.
$$

Its difference from the exact Maxima value above has the expected one-sided
finite-difference remainder.

At the $N=42$ reference cutoff:

- $\mathcal S(t)$ reaches $0.996300824942$ near $t=9.188$, confirming
  nonstationary evolution;
- $S_c(t)$ ranges from $0.4935354$ to $0.5232898$ on $0\le t\le12$; and
- the rotated-mode mutual information reaches $0.0433166$ nats.

These are bounded-window results. They do not establish equilibration,
asymptotic synchronization, or convergence uniform in time.

## 10. What the synchronization curve means

$S_c$ is an equal-time relative-fluctuation contrast. A larger value means
that the difference quadratures fluctuate less, in the chosen scaling, at
that instant. It does not by itself establish

- phase locking,
- frequency entrainment,
- a stationary synchronized state,
- robustness to initial conditions, or
- persistence as $t\to\infty$.

A serious synchronization study should therefore supplement $S_c(t)$ with a
time-window criterion, comparison against an uncoupled baseline, a phase or
frequency diagnostic suited to the system, cutoff tests over that same
window, and an explicit statement of the laboratory quadratures being
compared.

For the benchmark, the modest oscillatory range of $S_c$ is evidence of
time-dependent relative fluctuations. Calling it permanent synchronization
would go beyond the calculation.

## What has been established

The exceptional-product basis converts the infinite Schrödinger equation into
a systematically improvable sequence of finite matrix problems. Spectral
propagation is exact for each projected matrix, while agreement across
quadrature orders and cutoffs supplies evidence for the finite-window
infinite-dimensional dynamics.

The preparation is analytic and exact; the initial covariance slope and
survival curvature are exact local coefficients; a finite Taylor polynomial
is a short-time approximation; and finite-$N$ propagation is a
cutoff-tested numerical approximation. Keeping those statements distinct is
essential. No second-moment closure is used: the state amplitudes, rather than
a presumed Gaussian covariance model, carry the non-Gaussian dynamics.

## Transition to information beyond covariance

Spectral propagation provides the coefficient matrix $C_{rs}(t)$, so reduced
density matrices and exact-within-cutoff entropies are now accessible.
[Chapter VII](/non-gaussian-mutual-information/) uses them to distinguish
true non-Gaussian mutual information from covariance-based Gaussian
comparisons.

## Series navigation

1. [Magnetic oscillator stability and rotated-coordinate reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/fixed-confinement-angular-quench/)
4. [Exact covariance response](/exact-covariance-response/)
5. [Survival curvature](/survival-curvature/)
6. **Spectral propagation and synchronization**
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

---
title: "V: Survival Curvature Beyond the Linear Covariance Response"
description: "Derives survival-probability curvature from energy variance and detects nonstationary evolution invisible to first-order covariance."
date: 2026-06-08 09:00:00 +0530
categories: research
tags:
  - survival probability
  - energy variance
  - exceptional Hermite states
  - non-Gaussian dynamics
  - covariance limitations
permalink: "/survival-curvature/"
---

Covariances describe widths and pairwise correlations. They do **not** describe
an entire non-Gaussian wavefunction. A state can therefore have no linear
change in any cross covariance and still begin moving away from its initial
quantum ray. Survival probability supplies the cleanest test.

This chapter develops that new test from the Schrödinger equation. It uses the
preparation and quench already constructed in
[Chapter III](/fixed-confinement-angular-quench/) and the exact covariance
response derived in [Chapter IV](/exact-covariance-response/); neither
derivation is repeated here. The new physics is the relation between departure
from the full state, energy uncertainty, and a quadratic response invisible to
linear covariance.

## 1. Prerequisites carried forward

Use $\hbar=2M=1$ and
$[q_\alpha,p_\beta]=i\delta_{\alpha\beta}$. The complete input from the
preparation and quench chapters is

$$
\begin{gathered}
H_0=h_+(q_+,p_+)+h_-(q_-,p_-),\\
|\Psi_0\rangle
=|m_+,\ell_+\rangle\otimes|m_-,\ell_-\rangle,
\qquad
H_0|\Psi_0\rangle=E_0|\Psi_0\rangle,\\
H_f=H_0-\omega_cL_z,
\qquad
L_z=q_+p_- -q_-p_+.
\end{gathered}
$$

The one-mode factors are normalized, real, definite-parity
exceptional-Hermite eigenstates. Consequently,

$$
\langle q_\alpha\rangle_0
=\langle p_\alpha\rangle_0=0,
\qquad
\left\langle
\frac{q_\alpha p_\alpha+p_\alpha q_\alpha}{2}
\right\rangle_0=0.
$$

The confinement scales $\Omega_\pm$ remain fixed while the signed angular
coupling $\omega_c$ is activated. For the magnetic realization, stability
requires $\Omega_\pm^2>\omega_c^2$.

Chapter IV established, without Gaussian closure,

$$
\left.\frac{d}{dt}\operatorname{Cov}(q_+,q_-)\right|_0
=\omega_c(V_{q,-}-V_{q,+}),
$$

$$
\left.\frac{d}{dt}\operatorname{Cov}(p_+,p_-)\right|_0
=\omega_c(V_{p,-}-V_{p,+}),
$$

with both mixed position-momentum cross rates zero. These formulas are the
motivation for the present question: if the two modes have matching local
variances, all these first derivatives vanish, but is the state actually
stationary?

## 2. Survival amplitude, probability, and curvature

The time-evolved state is

$$
|\Psi(t)\rangle=e^{-iH_ft}|\Psi_0\rangle.
$$

The **survival amplitude**

$$
\mathcal A(t)=\langle\Psi_0|\Psi(t)\rangle
$$

is a complex overlap. Its modulus squared,

$$
\boxed{
\mathcal S(t)=|\mathcal A(t)|^2,
}
$$

is the **survival probability**. It answers a precise experimental question:
if the system is projected onto the initially prepared state at time $t$,
what is the probability of obtaining that state again? It does not ask
whether a selected observable happens to retain its initial value. Taking the
modulus also removes an overall phase, because vectors that differ only by a
global phase represent the same physical quantum ray.

Assume that $H_f$ is self-adjoint and

$$
|\Psi_0\rangle\in D(H_f^2).
$$

This condition gives a finite fourth energy moment and controls the remainder
used below. Expanding the exponential,

$$
\mathcal A(t)
=1-i\langle H_f\rangle_0t
-\frac12\langle H_f^2\rangle_0t^2+\cdots .
$$

Multiplying by its complex conjugate gives

$$
\begin{aligned}
\mathcal S(t)
&=\left(1-i\langle H_f\rangle_0t
-\frac12\langle H_f^2\rangle_0t^2+\cdots\right)\\
&\quad\times
\left(1+i\langle H_f\rangle_0t
-\frac12\langle H_f^2\rangle_0t^2+\cdots\right)\\
&=1-
\left(\langle H_f^2\rangle_0-\langle H_f\rangle_0^2\right)t^2
+O(t^4).
\end{aligned}
$$

The odd powers vanish because
$\mathcal A(-t)=\mathcal A(t)^*$ and hence
$\mathcal S(-t)=\mathcal S(t)$. Define the energy variance

$$
(\Delta H_f)^2
=\operatorname{Var}_0(H_f)
=\langle H_f^2\rangle_0-\langle H_f\rangle_0^2.
$$

Then

$$
\boxed{
\mathcal S(t)=1-(\Delta H_f)^2t^2+O(t^4).
}
$$

Two curvature conventions occur in the literature. To avoid ambiguity, we
will use the positive initial-loss coefficient

$$
\boxed{
\kappa_{\mathcal S}
=\lim_{t\to0}\frac{1-\mathcal S(t)}{t^2}
=(\Delta H_f)^2.
}
$$

The ordinary second derivative is

$$
\mathcal S''(0)=-2\kappa_{\mathcal S}.
$$

The associated Zeno time is

$$
\tau_Z=\frac{1}{\Delta H_f},
$$

provided $\Delta H_f\ne0$. This is a local time scale, not a predicted
oscillation period. The reason energy variance appears is physical as well as
algebraic: different post-quench energy components acquire different phases.
An exact energy eigenstate has no relative dephasing, whereas a broader energy
distribution leaves its initial ray more rapidly.

## 3. Why only the quenched term contributes

Because $$\lvert\Psi_0\rangle$$ is an eigenstate of $H_0$,

$$
(H_0-E_0)|\Psi_0\rangle=0.
$$

Moreover, the product structure and vanishing one-mode means imply

$$
\langle L_z\rangle_0
=\langle q_+\rangle_0\langle p_-\rangle_0
-\langle q_-\rangle_0\langle p_+\rangle_0
=0.
$$

Therefore

$$
\begin{aligned}
\left(H_f-\langle H_f\rangle_0\right)|\Psi_0\rangle
&=\left(H_0-E_0-\omega_cL_z\right)|\Psi_0\rangle\\
&=-\omega_cL_z|\Psi_0\rangle.
\end{aligned}
$$

Taking the squared norm yields

$$
\boxed{
\operatorname{Var}_0(H_f)
=\omega_c^2\langle L_z^2\rangle_0.
}
$$

This step does not require $H_0$ to commute with $L_z$. It uses only the fact
that the initial state is an eigenstate of $H_0$.

## 4. Deriving the angular-momentum variance

Introduce the local variances

$$
V_{q,\alpha}=\langle q_\alpha^2\rangle_0,
\qquad
V_{p,\alpha}=\langle p_\alpha^2\rangle_0.
$$

Since the means vanish, these second moments are the variances. Square the
angular generator without treating the operators as commuting numbers:

$$
\begin{aligned}
L_z^2
={}&q_+^2p_-^2+q_-^2p_+^2\\
&-q_+p_-q_-p_+
-q_-p_+q_+p_-.
\end{aligned}
$$

The first two expectations factor across the product state:

$$
\langle q_+^2p_-^2\rangle_0=V_{q,+}V_{p,-},
\qquad
\langle q_-^2p_+^2\rangle_0=V_{q,-}V_{p,+}.
$$

For a real state with zero symmetrized $qp$ covariance,

$$
\langle q_\alpha p_\alpha+p_\alpha q_\alpha\rangle_0=0.
$$

Combining this with $[q_\alpha,p_\alpha]=i$ gives

$$
\langle q_\alpha p_\alpha\rangle_0=\frac{i}{2},
\qquad
\langle p_\alpha q_\alpha\rangle_0=-\frac{i}{2}.
$$

Now reorder only operators belonging to different modes:

$$
\begin{aligned}
\langle q_+p_-q_-p_+\rangle_0
&=\langle q_+p_+\rangle_0
  \langle p_-q_-\rangle_0
=\frac14,\\
\langle q_-p_+q_+p_-\rangle_0
&=\langle p_+q_+\rangle_0
  \langle q_-p_-\rangle_0
=\frac14.
\end{aligned}
$$

Thus

$$
\boxed{
\langle L_z^2\rangle_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12.
}
$$

The $-1/2$ is not an optional correction. It is the sum of two canonical
ordering contributions. Replacing $q$ and $p$ by commuting random variables
would miss it.

Define

$$
\boxed{
\Lambda_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12.
}
$$

The exact local result is therefore

$$
\boxed{
\mathcal S(t)
=1-\omega_c^2\Lambda_0t^2+O(t^4),
\qquad
\kappa_{\mathcal S}=\omega_c^2\Lambda_0.
}
$$

Since $L_z$ generates rotations in the $q_+:q_-$ plane, $\Lambda_0$ measures
how strongly an infinitesimal rotation changes the prepared wavefunction. If
$$L_z\lvert\Psi_0\rangle=0$$, the angular quench initially has no direction in which
to move the ray; otherwise the squared norm of that direction is precisely
$\Lambda_0$.

The coefficient must be nonnegative because
$$\Lambda_0=\lVert L_z\lvert\Psi_0\rangle\rVert^2$$. It can also be checked directly:

$$
\begin{aligned}
V_{q,+}V_{p,-}+V_{q,-}V_{p,+}
&\ge
2\sqrt{V_{q,+}V_{p,+}V_{q,-}V_{p,-}}\\
&\ge\frac12,
\end{aligned}
$$

where the second line uses
$V_{q,\alpha}V_{p,\alpha}\ge1/4$. A computed negative $\Lambda_0$ is therefore
an immediate sign of a normalization, derivative, or operator-ordering error.

## 5. What field reversal can and cannot change

The short-time loss depends on $\omega_c^2$, so

$$
\mathcal S(t;\omega_c)
=\mathcal S(t;-\omega_c)+O(t^4).
$$

By contrast, linear cross-covariance rates generated by the angular term are
proportional to $\omega_c$. Field reversal can reverse a covariance flow while
leaving the survival curvature unchanged. This even-versus-odd distinction is
a useful diagnostic in both symbolic calculations and code.

## 6. A symmetric state that defeats covariance intuition

Suppose the two prepared factors are identical:

$$
V_{q,+}=V_{q,-}=V_q,
\qquad
V_{p,+}=V_{p,-}=V_p.
$$

The angular contribution to every first-order cross-covariance rate then
vanishes because each such rate contains a difference of like variances.
Define the one-mode uncertainty product

$$
U=\Delta q\,\Delta p=\sqrt{V_qV_p}.
$$

The survival coefficient becomes

$$
\boxed{
\Lambda_0=2U^2-\frac12.
}
$$

For two equal ordinary oscillator vacua, $U=1/2$ and $\Lambda_0=0$. Their
isotropic product wavefunction is rotationally invariant, so $L_z$ annihilates
it.

For two equal codimension-two added states,

$$
U_2=0.5172471466\ldots,
$$

and therefore

$$
\Lambda_0
=2(0.5172471466\ldots)^2-\frac12
=0.03508922135\ldots>0.
$$

The non-Gaussian product begins leaving its initial ray even though the entire
linear cross-covariance channel is silent. The correct implication is

$$
\text{zero linear covariance response}
\quad\not\Rightarrow\quad
\text{stationary state}.
$$

Covariance symmetry removes one diagnostic; it does not turn covariance into
a complete description of a non-Gaussian state.

## 7. Closed-form moments for the codimension-two state

For $\phi_{2,0}$, define

$$
\mathcal M
=\sqrt{\frac{\pi}{2}}e^{1/2}
\operatorname{erfc}\!\left(\frac{1}{\sqrt2}\right).
$$

Direct integration gives

$$
V_q(\Omega)
=\frac{2(\mathcal M-1/2)}{\Omega},
$$

and

$$
V_p(\Omega)
=\frac{\Omega}{2}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

Set

$$
a=\mathcal M-\frac12,
\qquad
b=\frac32+\frac{\mathcal M}{3}.
$$

For codimension-two factors at two different scales,

$$
\boxed{
\Lambda_0
=ab\left(\frac{\Omega_-}{\Omega_+}
+\frac{\Omega_+}{\Omega_-}\right)-\frac12.
}
$$

This form shows two sources of survival loss: the non-minimum uncertainty
product $ab>1/4$ and the scale mismatch
$\Omega_-/\Omega_++\Omega_+/\Omega_-\ge2$.

For

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
$$

the stability margins are

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25},
$$

and the exact-moment evaluation gives

$$
\Lambda_0=0.07537829213164765\ldots.
$$

Consequently,

$$
\kappa_{\mathcal S}
=\omega_c^2\Lambda_0
=0.0424002893240518\ldots,
$$

so the local prediction is

$$
\mathcal S(t)
=1-0.0424002893240518\ldots\,t^2+O(t^4).
$$

The direct Maxima calculation below reproduces the same coefficient from the
wavefunction rather than assuming these closed-form moments.

## 8. Reproducing the curvature

The coefficient can be recovered without propagating the two-mode state.
Write a real one-mode factor as

$$
\phi(q)
=\left(\frac{\Omega}{2}\right)^{1/4}
\mathcal N R(z)e^{-z^2/2},
\qquad
z=\sqrt{\frac{\Omega}{2}}q.
$$

For an exceptional state, Chapter II's exact construction gives
$R(z)=\mathcal P_{m,\ell}(z)/\mathcal H_m(z)$. Let $z_i$ and $w_i$ denote
the nodes and weights of a Gauss-Hermite rule for
$\int e^{-z^2}f(z)\,dz$. Then

$$
\begin{aligned}
\langle1\rangle
&\approx\mathcal N^2\sum_iw_iR(z_i)^2,\\
V_q
&\approx\frac{2\mathcal N^2}{\Omega}
\sum_iw_i z_i^2R(z_i)^2,\\
V_p
&\approx\frac{\Omega\mathcal N^2}{2}
\sum_iw_i\left[R'(z_i)-z_iR(z_i)\right]^2.
\end{aligned}
$$

The last line follows from $p=-i\,d/dq$. It is crucial to differentiate the
rational factor $R$; reweighting the coordinate probability density does not
produce a momentum variance.

For $m=2$, $\mathcal H_2=4z^2+2$ and
$\mathcal N_2=(8/\sqrt\pi)^{1/2}$. The following Maxima 5.49.0 calculation
integrates the normalized wavefunction directly rather than inserting the
closed-form moments:

```maxima
kill(all)$
display2d : false$

H2 : 4*z^2 + 2$
N2 : sqrt(8/sqrt(%pi))$
R  : 1/H2$

norm : quad_qagi(N2^2*R^2*exp(-z^2), z, minf, inf)[1]$
vq(O) := (2/O)*quad_qagi(
    N2^2*z^2*R^2*exp(-z^2), z, minf, inf)[1]$
vp(O) := (O/2)*quad_qagi(
    N2^2*(diff(R,z)-z*R)^2*exp(-z^2), z, minf, inf)[1]$

Op : 5/4$  Om : 17/20$  wc : 3/4$
Lambda : vq(Op)*vp(Om) + vq(Om)*vp(Op) - 1/2$
kappa  : wc^2*Lambda$

print("norm =", norm)$
print("Vq+ =", vq(Op), "  Vp+ =", vp(Op))$
print("Vq- =", vq(Om), "  Vp- =", vp(Om))$
print("Lambda =", Lambda, "  kappa =", kappa)$
```

It returns

```text
norm = 1.0
Vq+ = 0.24908726787007765   Vp+ = 1.074099904670583
Vq- = 0.36630480569129065   Vp- = 0.7303879351759964
Lambda = 0.07537829213164804
kappa = 0.04240028932405202
```

The normalization, uncertainty inequalities, and $\Lambda_0\ge0$ are physical
consistency checks on the same calculation. For a new exceptional state,
increase the quadrature accuracy until the desired digits of all three are
stable.

An independent finite-time check expands the state in successively larger
product bases, propagates the projected Hermitian Hamiltonian, and computes

$$
\mathcal S_N(t)
=|\langle\Psi_0|\Psi_N(t)\rangle|^2.
$$

For each cutoff $N$, evaluate

$$
K_N(t)=\frac{1-\mathcal S_N(t)}{t^2}.
$$

The two relevant limits are

$$
K_N(t)\longrightarrow\omega_c^2\Lambda_0
\quad(t\to0),
$$

and the resulting curve must also stop changing when $N$ is increased.
Extremely small $t$ causes subtractive cancellation in
$1-\mathcal S_N(t)$; fitting it to $a_2t^2+a_4t^4$ over a shrinking window is
usually more reliable. Norm conservation is not enough, because every
Hermitian truncation is unitary within its own incomplete space.

## What has been established

For a real, definite-parity product eigenstate and a fixed-confinement angular
quench,

$$
\mathcal S(t)
=1-\omega_c^2
\left(
V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12
\right)t^2+O(t^4)
$$

is exact at the stated order. It tests departure from the complete initial
state, whereas covariance tests selected quadratic observables. Their
disagreement is not a paradox; it is evidence that a non-Gaussian state
contains dynamical information beyond its covariance matrix.

## Transition to finite-time dynamics

Curvature answers what happens as $t\to0$; it does not draw the later
trajectory. [Chapter VI](/spectral-propagation-synchronization/) now takes the
exact exceptional basis from Chapter II, the quench from Chapter III, the
synchronization observable from Chapter IV, and the survival coefficient just
derived, and turns them into a cutoff-tested finite-time propagation.

## Series navigation

1. [Magnetic oscillator: stability and coordinate reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite state preparation](/exceptional-hermite-preparation/)
3. [A fixed-confinement angular-momentum quench](/fixed-confinement-angular-quench/)
4. [Exact first-order covariance response](/exact-covariance-response/)
5. **Survival curvature beyond covariance**
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

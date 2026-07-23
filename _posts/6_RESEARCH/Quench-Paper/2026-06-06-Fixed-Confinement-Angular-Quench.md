---
title: "III: A Fixed-Confinement Angular-Momentum Quench"
description: "Defines a physically consistent sudden angular-momentum quench in which the prepared state and coordinate confinement remain fixed."
date: 2026-06-06 09:00:00 +0530
categories: research
tags:
  - angular-momentum quench
  - exceptional Hermite states
  - magnetic oscillator
  - non-Gaussian dynamics
  - fixed confinement
permalink: "/fixed-confinement-angular-quench/"
---

A quantum quench is a rapid, controlled change of a Hamiltonian parameter.
The state is continuous through an ideal sudden switch, but from that instant
onward it evolves with a different Hamiltonian. This chapter turns the
stable trap and exact product states already constructed in the first two
chapters into one precise nonequilibrium protocol.

The new physics is deliberately narrow: the confining potential is held
fixed while a signed angular-momentum coupling is switched on. This lets us
identify exactly which part of the Hamiltonian causes the two preparation
coordinates to interact.

## What is carried forward

The [stability and coordinate reduction](/magnetic-oscillator-stability-reduction/)
fix the units, coordinates, and stable parameter domain. We use
$\hbar=2M=1$ and

$$
[q_\alpha,p_\beta]=i\delta_{\alpha\beta},
\qquad
[q_\alpha,q_\beta]=[p_\alpha,p_\beta]=0,
\qquad
\alpha,\beta\in\{+,-\}.
$$

The labels $+$ and $-$ are fixed coordinate directions, not creation and
annihilation operators. Their confining scales already contain the intended
diamagnetic dressing:

$$
\Omega_\pm^2
=\frac{\omega_x^2+\omega_y^2+2\omega_c^2}{2}
\pm\frac12\sqrt{(\omega_x^2-\omega_y^2)^2+4g^2}.
$$

The stable regime is

$$
\omega_x^2>0,\qquad
\omega_y^2>0,\qquad
\omega_x^2\omega_y^2-g^2>0,
$$

or, equivalently in the rotated coordinates,

$$
\Omega_+^2>\omega_c^2,
\qquad
\Omega_-^2>\omega_c^2.
$$

The [exceptional-Hermite preparation](/exceptional-hermite-preparation/)
supplies the one-coordinate Hamiltonians and their exact eigenstates:

$$
h_{m_\alpha}=p_\alpha^2+U_\alpha(q_\alpha),
\qquad
U_\alpha
=V^-_{m_\alpha}(q_\alpha;\Omega_\alpha)
-\epsilon_{m_\alpha}(\Omega_\alpha).
$$

Here $m_\alpha$ is even, so the rational potential is regular on the real
line. Before the quench the Hamiltonian and state are

$$
H_0=h_{m_+}+h_{m_-},
$$

$$
|\Psi_0\rangle
=|m_+,\ell_+\rangle\otimes|m_-,\ell_-\rangle,
\qquad
H_0|\Psi_0\rangle=E_0|\Psi_0\rangle.
$$

Each factor is real and has definite parity. The only initial-state
identities needed in this chapter are

$$
\langle q_\alpha\rangle_0
=\langle p_\alpha\rangle_0=0,
\qquad
\frac12\langle q_\alpha p_\alpha+p_\alpha q_\alpha\rangle_0=0.
$$

These compact equations are the complete input. The construction and
normalization of $U_\alpha$ and
$$\lvert m_\alpha,\ell_\alpha\rangle$$ are not repeated here.

## The new task: define the sudden angular quench

In the fixed coordinates, the angular-momentum generator is

$$
L_z=q_+p_- -q_-p_+.
$$

It is Hermitian because operators from different coordinates commute. The
quench protocol is

$$
H(t)=
\begin{cases}
H_0, & t<0,\\[2pt]
H_f=H_0-\omega_cL_z, & t\geq0.
\end{cases}
$$

The coupling

$$
\omega_c=\frac{q_{\mathrm e}B}{2Mc}
$$

is signed: reversing the charge or the field sends
$\omega_c\mapsto-\omega_c$. In a synthetic rotating trap, $\omega_c$ can
instead be regarded directly as an engineered rotation strength.

For an ideal sudden quench,

$$
|\Psi(0^+)\rangle=|\Psi(0^-)\rangle=|\Psi_0\rangle,
\qquad
|\Psi(t)\rangle=e^{-iH_ft}|\Psi_0\rangle
\quad(t>0).
$$

The state does not jump. Its generator of time evolution does.

Only $-\omega_cL_z$ is switched. The functions $U_\pm$, their scales
$\Omega_\pm$, and hence the coordinate confinement are identical on the two
sides of $t=0$. A literal magnetic-field switch would generally change both
the signed angular term and a term proportional to $B^2$. The present
protocol is therefore most naturally a synthetic angular coupling added to a
trap that has already been prepared with its target confinement.

A finite experimental ramp of duration $\tau_{\mathrm{ramp}}$ approaches the
sudden idealization when it is short compared with the internal periods
$\Omega_\pm^{-1}$. That statement is a scale criterion, not an assertion
that any nonzero ramp is exactly sudden.

## Stability is retained across the quench

The stability conditions carried forward above remain the correct ones after
activation. A compact check is obtained by completing the kinetic squares:

$$
\begin{aligned}
H_f={}&
\left(p_++\frac{\omega_c}{2}q_-\right)^2
+\left(p_--\frac{\omega_c}{2}q_+\right)^2\\
&+\left[U_+(q_+)-\frac{\omega_c^2q_+^2}{4}\right]
+\left[U_-(q_-)-\frac{\omega_c^2q_-^2}{4}\right].
\end{aligned}
$$

For a regular exceptional-Hermite extension,

$$
U_\alpha(q_\alpha)
=\frac{\Omega_\alpha^2q_\alpha^2}{4}+O(1)
\qquad(|q_\alpha|\to\infty).
$$

Thus $\Omega_\alpha^2>\omega_c^2$ leaves positive asymptotic confinement
along both axes. The equality boundary is excluded because the bounded
rational correction alone does not supply the same quadratic control.

## Why the preparation coordinates become coupled

The statement “the final Hamiltonian is coupled” should be proved rather
than inferred from its appearance. We use

$$
[p_\alpha^2,q_\alpha]=-2ip_\alpha,
\qquad
[f(q_\alpha),p_\alpha]=if'(q_\alpha).
$$

The two kinetic contributions cancel:

$$
[p_+^2,q_+p_-]=-2ip_+p_-,
\qquad
[p_-^2,-q_-p_+]=+2ip_-p_+.
$$

The potential contributions are

$$
[U_+(q_+),L_z]=-iq_-U_+'(q_+),
$$

$$
[U_-(q_-),L_z]=+iq_+U_-'(q_-).
$$

Adding them gives the fixed-coordinate result

$$
\boxed{
[H_0,L_z]
=i\left[q_+U_-'(q_-)-q_-U_+'(q_+)\right].
}
$$

For unequal or rationally deformed $U_+$ and $U_-$, the right-hand side is
generically nonzero. Therefore $H_0$ and $L_z$ do not share a complete
eigenbasis, and $H_f$ is not additive on the fixed preparation split
$\mathcal H_+\otimes\mathcal H_-$.

The scope of this conclusion matters. It does not rule out every possible
canonical transformation, and a nonzero operator commutator does not prove
that every individual eigenstate of $H_0$ evolves. A state-specific test is
needed.

## The state-specific stationarity test

A normalized state is an eigenstate of a time-independent Hamiltonian if and
only if its energy variance vanishes. Because
$$H_0\lvert\Psi_0\rangle=E_0\lvert\Psi_0\rangle$$,

$$
\operatorname{Var}_0(H_f)
=\omega_c^2\operatorname{Var}_0(L_z).
$$

For the real definite-parity product preparation,
$\langle L_z\rangle_0=0$. Define the local variances

$$
V_{q,\alpha}=\langle q_\alpha^2\rangle_0,
\qquad
V_{p,\alpha}=\langle p_\alpha^2\rangle_0.
$$

The canonical commutator and the vanishing symmetrized $qp$ expectation give

$$
\langle q_\alpha p_\alpha\rangle_0=\frac{i}{2},
\qquad
\langle p_\alpha q_\alpha\rangle_0=-\frac{i}{2}.
$$

Now expand

$$
L_z^2
=q_+^2p_-^2+q_-^2p_+^2
-q_+p_+p_-q_-
-p_+q_+q_-p_-.
$$

Expectations factorize between the two initial factors, producing

$$
\boxed{
\langle L_z^2\rangle_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12.
}
$$

Hence

$$
\boxed{
\operatorname{Var}_0(H_f)
=\omega_c^2
\left(
V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12
\right).
}
$$

A positive value proves that the selected preparation is not stationary
under $H_f$. A zero value means that this particular state is unchanged
apart from a phase; it does not make the full operator additive.

## Worked control: an undeformed anisotropic ground state

Before using rational states, every implementation should pass a Gaussian
control. Set $m_+=m_-=0$. The one-coordinate potential, ground state, and
variances are

$$
U_0(q;\Omega)=\frac{\Omega^2q^2}{4}-\frac{\Omega}{2},
$$

$$
\phi_{0,0}(q;\Omega)
=\left(\frac{\Omega}{2\pi}\right)^{1/4}e^{-\Omega q^2/4},
$$

$$
V_q=\frac1{\Omega},
\qquad
V_p=\frac{\Omega}{4}.
$$

Choose

$$
\Omega_+=2,\qquad
\Omega_-=1,\qquad
\omega_c=\frac12.
$$

The stability margins are

$$
\Omega_+^2-\omega_c^2=\frac{15}{4},
\qquad
\Omega_-^2-\omega_c^2=\frac34,
$$

and

$$
\begin{aligned}
\langle L_z^2\rangle_0
&=\frac14\left(
\frac{\Omega_-}{\Omega_+}
+\frac{\Omega_+}{\Omega_-}-2
\right)\\
&=\frac18.
\end{aligned}
$$

Therefore

$$
\operatorname{Var}_0(H_f)=\frac1{32}>0.
$$

The anisotropic ground state must evolve. In contrast, if
$\Omega_+=\Omega_-$, the product is the rotationally symmetric
two-dimensional Gaussian ground state and
$$L_z\lvert\Psi_0\rangle=0$$. That isotropic case is a useful null test for signs
and numerical propagation.

## What is exact, and what still requires approximation

Three logically different claims now coexist:

1. $$\lvert\Psi_0\rangle$$ is an exact eigenstate of the additive $H_0$.
2. The definition of $H_f$, its stability test, the commutator, and the
   stationarity variance above are operator-level results with no basis
   truncation.
3. A finite-time calculation of
   $$e^{-iH_ft}\lvert\Psi_0\rangle$$ generally
   requires either a controlled short-time expansion or a converged
   numerical representation.

Knowing the spectrum of $H_0$ does not give the spectrum of $H_f$. Likewise,
representing $H_f$ in finitely many product eigenstates is useful but is not
an exact finite-dimensional reduction.

## Compact symbolic check of the control case

The Gaussian calculation also exposes the anisotropy dependence in closed
form:

$$
\langle L_z^2\rangle_0
=\frac{(\Omega_+-\Omega_-)^2}
{4\Omega_+\Omega_-}.
$$

The following Maxima input reduces the variance and evaluates the stated
control parameters:

```maxima
kill(all)$
L2 : Om/(4*Op) + Op/(4*Om) - 1/2$
factor(L2);

ev([L2, wc^2*L2, Op^2-wc^2, Om^2-wc^2],
   Op=2, Om=1, wc=1/2);
```

It returns

```text
(Om-Op)^2/(4*Om*Op)
[1/8, 1/32, 15/4, 3/4]
```

The first line proves non-negativity for positive scales and makes the
isotropic null case explicit. In a numerical study, normalization, final
energy conservation, convergence with representation size, and the limits
$\omega_c=0$ and $\Omega_+=\Omega_-$ are the most informative accompanying
checks; they follow directly from the physics above rather than from an
assumed finite-dimensional model.

The quench is now fully specified. The next chapter derives the initial
observable response from $H_f$ instead of assuming a closed dynamics.

## Series navigation

1. [Magnetic oscillator stability and reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/)
3. **Fixed-confinement angular quench — current chapter**
4. [Exact covariance response](/exact-covariance-response/)
5. [Survival curvature](/survival-curvature/)
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

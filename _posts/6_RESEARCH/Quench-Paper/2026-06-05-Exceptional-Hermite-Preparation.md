---
title: "II: Exact exceptional-Hermite preparation before the angular quench"
description: "Builds normalized exceptional-Hermite preparation states from Darboux factorization and derives their spectrum, parity, moments, and operator matrix elements."
date: 2026-06-05 09:00:00 +0530
categories: research
tags:
  - exceptional Hermite polynomials
  - rational oscillator
  - non-Gaussian states
  - parity
  - quantum quench
permalink: "/exceptional-hermite-preparation/"
---

This chapter constructs exact non-Gaussian preparation states from the
one-dimensional Schrödinger equation. The construction is algebraic: a
non-normalizable oscillator solution is used to factor the Hamiltonian and
produce a regular rational potential with explicitly normalized
eigenfunctions.

The derivation fixes the energy shift, normalization, parity, and scale
dependence needed to use these states as controlled initial data rather than
as a formal ansatz.

## Prerequisite and result carried forward

The [magnetic-oscillator reduction](/magnetic-oscillator-stability-reduction/)
established the following ingredients; they are taken as input here rather
than rederived:

- fixed canonical pairs $(q_+,p_+)$ and $(q_-,p_-)$;
- the unit convention $\hbar=2M=1$;
- positive coordinate scales $\Omega_+\geq\Omega_->0$; and
- for a stable magnetic realization,
  $\Omega_\pm^2>\omega_c^2$.

This chapter addresses only **state preparation**. The angular quench and its
post-quench dynamics belong to the next stage.

## 1. Why go beyond an ordinary oscillator?

A harmonic-oscillator eigenstate is analytically convenient, but its ground
state is Gaussian. To study dynamics whose initial non-Gaussianity is known
exactly, one wants a potential that satisfies four requirements:

1. it is nonsingular for every real coordinate;
2. its bound states are available in closed form;
3. those states can be normalized exactly; and
4. the harmonic scale $\Omega$ remains adjustable.

A one-step Darboux factorization of the oscillator meets all four. The
resulting wavefunctions contain exceptional-Hermite polynomials divided by a
nodeless pseudo-Hermite polynomial. “Exceptional” here does not mean
approximate or anomalous: it means that the polynomial sequence is complete
with some low polynomial degrees absent.

## 2. Ordinary oscillator in the present convention

Start with one canonical pair,

$$
[q,p_q]=\mathrm i,
\qquad
p_q=-\mathrm i\frac{\mathrm d}{\mathrm dq},
$$

and a positive scale $\Omega$. The ordinary Hamiltonian is

$$
H_{\mathrm{osc}}=p_q^2+\frac{\Omega^2q^2}{4}.
$$

Introduce the dimensionless coordinate

$$
z=\sqrt{\frac{\Omega}{2}}\,q.
$$

Then

$$
\frac{\mathrm d}{\mathrm dq}
=\sqrt{\frac{\Omega}{2}}\frac{\mathrm d}{\mathrm dz},
\qquad
H_{\mathrm{osc}}
=\frac{\Omega}{2}
\left(-\frac{\mathrm d^2}{\mathrm dz^2}+z^2\right).
$$

The physicists' Hermite polynomials are defined by

$$
H_n(z)=(-1)^ne^{z^2}
\frac{\mathrm d^n}{\mathrm dz^n}e^{-z^2},
$$

and satisfy

$$
H_n''-2zH_n'+2nH_n=0.
$$

The normalized oscillator eigenfunctions and energies are

$$
\psi_n(q;\Omega)
=\left(\frac{\Omega}{2}\right)^{1/4}
\frac{H_n(z)e^{-z^2/2}}
{\sqrt{\sqrt\pi\,2^n n!}},
$$

$$
H_{\mathrm{osc}}\psi_n
=E_n^{\mathrm{osc}}\psi_n,
\qquad
E_n^{\mathrm{osc}}=\Omega\left(n+\frac12\right).
$$

The factor $(\Omega/2)^{1/4}$ is required because
$\mathrm dq=\sqrt{2/\Omega}\,\mathrm dz$. Leaving it out normalizes the
function in $z$, not in the physical coordinate $q$.

## 3. Constructing a nodeless seed

Define the pseudo-Hermite polynomial

$$
\mathcal H_m(z)=(-\mathrm i)^mH_m(\mathrm iz).
$$

It obeys

$$
\mathcal H_m''+2z\mathcal H_m'-2m\mathcal H_m=0.
$$

Consequently,

$$
u_m(q)=\mathcal H_m(z)e^{z^2/2}
$$

solves the ordinary oscillator equation at the negative factorization
energy

$$
H_{\mathrm{osc}}u_m=\epsilon_m u_m,
\qquad
\boxed{
\epsilon_m(\Omega)
=-\left(m+\frac12\right)\Omega.
}
$$

The seed grows at infinity and is not a physical oscillator state. That is
intentional: its reciprocal will decay.

### Why $m$ must be even

For $m=2r$, the explicit Hermite sum gives

$$
\mathcal H_{2r}(z)
=(2r)!\sum_{k=0}^{r}
\frac{(2z)^{2r-2k}}{k!(2r-2k)!}.
$$

Every coefficient is positive, including the constant term. Therefore

$$
\mathcal H_{2r}(z)>0
\qquad\text{for all real }z.
$$

Its reciprocal has no real pole. For odd $m$, $\mathcal H_m$ is odd and
vanishes at $z=0$, producing a singular potential. We therefore use

$$
m=0,2,4,\ldots.
$$

This is a regularity condition, not a cosmetic restriction.

## 4. Darboux factorization step by step

Let

$$
f_m(q)=\frac{\mathrm d}{\mathrm dq}\ln u_m(q),
$$

and define

$$
A_m=\frac{\mathrm d}{\mathrm dq}-f_m(q),
\qquad
A_m^\dagger=-\frac{\mathrm d}{\mathrm dq}-f_m(q).
$$

Because $u_m$ solves the Schrödinger equation,

$$
H_{\mathrm{osc}}=A_m^\dagger A_m+\epsilon_m.
$$

Reverse the operator order to define the partner:

$$
H_m^-=A_mA_m^\dagger+\epsilon_m
=p_q^2+V_m^-(q;\Omega).
$$

The partner potential differs by a logarithmic second derivative,

$$
V_m^-= \frac{\Omega^2q^2}{4}
-2\frac{\mathrm d^2}{\mathrm dq^2}\ln u_m.
$$

Since

$$
\frac{\mathrm d^2}{\mathrm dq^2}\ln u_m
=\frac{\Omega}{2}
\left[
1+\frac{\mathcal H_m''}{\mathcal H_m}
-\left(\frac{\mathcal H_m'}{\mathcal H_m}\right)^2
\right],
$$

where primes now mean derivatives with respect to $z$, the regular rational
extension is

$$
\boxed{
V_m^-(q;\Omega)
=\frac{\Omega^2q^2}{4}
-\Omega\left[
1+\frac{\mathcal H_m''(z)}{\mathcal H_m(z)}
-\left(\frac{\mathcal H_m'(z)}
{\mathcal H_m(z)}\right)^2
\right].
}
$$

It is convenient to shift the factorization energy to zero:

$$
h_m(q;\Omega)
=H_m^--\epsilon_m
=A_mA_m^\dagger.
$$

This identity immediately proves

$$
\langle\chi|h_m|\chi\rangle
=\|A_m^\dagger\chi\|^2\geq0.
$$

Thus the shifted Hamiltonian is nonnegative without requiring a numerical
spectrum.

## 5. Deriving the exceptional eigenfunctions

### The added ground state

The zero-energy equation is

$$
A_m^\dagger\phi_{m,0}=0.
$$

It has the solution

$$
\phi_{m,0}\propto\frac{1}{u_m}
=\frac{e^{-z^2/2}}{\mathcal H_m(z)}.
$$

For even $m$ it is regular and square-integrable. This state was absent from
the original oscillator spectrum because the seed $u_m$ itself was not
normalizable.

### The excited states

The intertwining identity

$$
H_m^-A_m=A_mH_{\mathrm{osc}}
$$

maps each oscillator state $\psi_{\ell-1}$, $\ell\geq1$, into a partner
state. Applying $A_m$ and using

$$
H_n'=2nH_{n-1},
\qquad
H_{n+1}=2zH_n-2nH_{n-1},
$$

produces the numerator

$$
\mathcal P_{m,\ell}(z)=
\begin{cases}
1, & \ell=0,\\[4pt]
\mathcal H_m(z)H_\ell(z)
+\mathcal H_m'(z)H_{\ell-1}(z), & \ell\geq1.
\end{cases}
$$

The overall minus sign generated by $A_m$ is an irrelevant phase and has
been dropped. The normalized eigenfunction is

$$
\boxed{
\phi_{m,\ell}(q;\Omega)
=\left(\frac{\Omega}{2}\right)^{1/4}
\mathcal N_{m,\ell}
\frac{\mathcal P_{m,\ell}(z)}{\mathcal H_m(z)}
e^{-z^2/2},
}
$$

where

$$
\mathcal N_{m,\ell}=
\begin{cases}
\left(\dfrac{2^m m!}{\sqrt\pi}\right)^{1/2},
&\ell=0,\\[9pt]
\left[\sqrt\pi\,2^\ell(\ell-1)!(m+\ell)\right]^{-1/2},
&\ell\geq1.
\end{cases}
$$

The excited-state normalization can be checked without doing a new rational
integral:

$$
\|A_m\psi_{\ell-1}\|^2
=\langle\psi_{\ell-1}|
A_m^\dagger A_m|\psi_{\ell-1}\rangle
=E_{\ell-1}^{\mathrm{osc}}-\epsilon_m
=\Omega(m+\ell).
$$

The shifted spectrum is

$$
\boxed{
\varepsilon_{m,\ell}(\Omega)=
\begin{cases}
0, & \ell=0,\\
\Omega(m+\ell), & \ell\geq1.
\end{cases}
}
$$

The isolated zero-energy state followed by the level
$\Omega(m+1)$ is a characteristic state-adding spectrum.

### The undeformed limit

Setting $m=0$ gives $\mathcal H_0=1$. The rational term disappears,
$h_0=H_{\mathrm{osc}}-\Omega/2$, and

$$
\phi_{0,\ell}=\psi_\ell,
\qquad
\varepsilon_{0,\ell}=\Omega\ell.
$$

This limit is a powerful convention check: every factor, index, and energy
shift returns to the familiar oscillator.

## 6. Parity and exact selection rules

For even $m$, $\mathcal H_m$ is even and $\mathcal H_m'$ is odd. Both terms
in $\mathcal P_{m,\ell}$ have parity $(-1)^\ell$, hence

$$
\boxed{
\phi_{m,\ell}(-q;\Omega)
=(-1)^\ell\phi_{m,\ell}(q;\Omega).
}
$$

The eigenfunctions may be chosen real. Parity and reality then imply

$$
\langle q\rangle=0,
\qquad
\langle p_q\rangle=0,
\qquad
\frac12\langle qp_q+p_qq\rangle=0.
$$

They also give matrix-element selection rules:

$$
\langle m,r|q|m,s\rangle
=\langle m,r|p_q|m,s\rangle=0
\quad\text{when }r+s\text{ is even}.
$$

Both $q$ and $p_q$ are odd under parity, so they connect only states of
opposite parity. This halves the number of entries that need numerical
quadrature and provides a stringent check on a computed basis.

## 7. Fully explicit example: $m=2$

The first nontrivial regular seed is

$$
\mathcal H_2(z)=4z^2+2=2(2z^2+1).
$$

It is positive on the real line. Its rational potential is

$$
\boxed{
V_2^-(q;\Omega)
=\frac{\Omega z^2}{2}
-\Omega\left[
1+\frac{4(1-2z^2)}{(2z^2+1)^2}
\right],
\qquad
z=\sqrt{\frac{\Omega}{2}}q.
}
$$

The factorization energy is

$$
\epsilon_2=-\frac52\Omega.
$$

The first three exceptional numerators are

$$
\begin{aligned}
\mathcal P_{2,0}(z)&=1,\\
\mathcal P_{2,1}(z)&=4z(2z^2+3),\\
\mathcal P_{2,2}(z)&=4(4z^4+4z^2-1).
\end{aligned}
$$

Their shifted energies are

$$
0,\qquad 3\Omega,\qquad 4\Omega.
$$

For example, the normalized ground state is

$$
\boxed{
\phi_{2,0}(q;\Omega)
=\left(\frac{\Omega}{2}\right)^{1/4}
\sqrt{\frac{2}{\sqrt\pi}}\,
\frac{e^{-z^2/2}}{2z^2+1}.
}
$$

It is visibly a rationally dressed Gaussian and has no node or pole.

### Symbolic Schrödinger check in Maxima

```maxima
kill(all)$
Hcal:4*z^2+2$
eps:-5*Omega/2$
Vminus:Omega*z^2/2-Omega*(1+diff(log(Hcal),z,2))$

P0:1$
P1:Hcal*(2*z)+diff(Hcal,z)$
phi(P):=P/Hcal*exp(-z^2/2)$
residual(P,E):=radcan(
  (-Omega/2*diff(phi(P),z,2)
   +(Vminus-eps-E)*phi(P))*exp(z^2/2)
)$

[residual(P0,0),residual(P1,3*Omega)];
```

The verified output is `[0, 0]`. Multiplication by $e^{z^2/2}$ in the
definition of `residual` merely exposes the rational factor to exact
simplification; it does not change whether the residual vanishes.

## 8. Exact moments of the $m=2$, $\ell=0$ state

The state is even and real, so its means and symmetrized $qp$ covariance
vanish. Define

$$
\mathcal M=
\sqrt{\frac\pi2}\,e^{1/2}
\operatorname{erfc}\!\left(\frac1{\sqrt2}\right)
=0.6556795424\ldots.
$$

The needed rational Gaussian integrals follow from

$$
\int_{-\infty}^{\infty}
\frac{e^{-z^2}}{z^2+a^2}\,\mathrm dz
=\frac{\pi}{a}e^{a^2}\operatorname{erfc}(a),
\qquad a>0,
$$

and differentiation with respect to $a$. Substituting $a=1/\sqrt2$ gives

$$
\boxed{
V_q=\langle q^2\rangle
=\frac{2(\mathcal M-1/2)}{\Omega}
=\frac{0.3113590848\ldots}{\Omega},
}
$$

and direct differentiation of $\phi_{2,0}$ gives

$$
\boxed{
V_p=\langle p_q^2\rangle
=\frac{\Omega}{2}
\left(\frac32+\frac{\mathcal M}{3}\right)
=0.8592799237\ldots\,\Omega.
}
$$

The scale cancels from their product:

$$
\Delta q\,\Delta p_q
=\sqrt{V_qV_p}
=0.5172471466\ldots>\frac12.
$$

This is consistent with the uncertainty principle. Since the state is pure,
the value above the minimum also rules out a pure minimum-uncertainty
Gaussian. The rational factor has changed the state in a measurable way even
before any dynamics begins.

### A warning about momentum moments

It is often useful to write a rationally extended state schematically as

$$
|\Psi_{\mathrm{RE}}\rangle
=\frac{\mathcal R|\Psi_G\rangle}
{\sqrt{\langle\Psi_G|\mathcal R^\dagger\mathcal R|\Psi_G\rangle}}.
$$

For an operator $\mathcal O$,

$$
\langle\mathcal O\rangle_{\mathrm{RE}}
=\frac{
\langle\Psi_G|\mathcal R^\dagger\mathcal O\mathcal R|\Psi_G\rangle
}{
\langle\Psi_G|\mathcal R^\dagger\mathcal R|\Psi_G\rangle
}.
$$

Coordinate moments reduce to rationally weighted Gaussian integrals.
Momentum operators, however, differentiate $\mathcal R$ as well as the
Gaussian. Reweighting only $$\lvert\Psi_G\rvert^2$$ gives an incorrect momentum variance.

## 9. Exact two-axis preparation

Apply the one-dimensional construction independently to the two canonical
coordinates carried forward from Chapter I:

$$
H_{\mathrm{sep}}^{\mathrm{RE}}
=h_{m_+}(q_+;\Omega_+)
+h_{m_-}(q_-;\Omega_-).
$$

For even $m_\pm$ and $\ell_\pm=0,1,2,\ldots$, the normalized product state is

$$
\boxed{
\Phi_{\boldsymbol m,\boldsymbol\ell}^{\mathrm{RE}}(q_+,q_-)
=\phi_{m_+,\ell_+}(q_+;\Omega_+)
\phi_{m_-,\ell_-}(q_-;\Omega_-).
}
$$

Its exact preparation energy is

$$
\boxed{
E_{\boldsymbol m,\boldsymbol\ell}^{\mathrm{sep}}
=\varepsilon_{m_+,\ell_+}(\Omega_+)
+\varepsilon_{m_-,\ell_-}(\Omega_-).
}
$$

For a concrete mixed preparation, choose

$$
(m_+,\ell_+)=(2,0),
\qquad
(m_-,\ell_-)=(0,1),
$$

with

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20}.
$$

The $+$ factor is a rationally extended non-Gaussian ground state, while the
$-$ factor is the first ordinary oscillator excitation. Their total shifted
energy is

$$
E^{\mathrm{sep}}=0+\Omega_-=\frac{17}{20}.
$$

The state is exactly separable at preparation; no finite basis or
optimization is involved in defining it.

## 10. Operator matrices for later dynamics

For later operator calculations, choose cutoffs
$0\leq r<N_+$ and $0\leq s<N_-$ and compute the one-axis matrices

$$
(Q_\alpha)_{rs}
=\int_{-\infty}^{\infty}
\phi_{m_\alpha,r}(q;\Omega_\alpha)\,
q\,
\phi_{m_\alpha,s}(q;\Omega_\alpha)\,\mathrm dq,
$$

$$
(P_\alpha)_{rs}
=-\mathrm i\int_{-\infty}^{\infty}
\phi_{m_\alpha,r}(q;\Omega_\alpha)
\frac{\mathrm d}{\mathrm dq}
\phi_{m_\alpha,s}(q;\Omega_\alpha)\,\mathrm dq.
$$

Use parity to set forbidden entries to exact zero before numerical
quadrature. Then verify

$$
Q_\alpha^\dagger=Q_\alpha,
\qquad
P_\alpha^\dagger=P_\alpha.
$$

At finite cutoff, the canonical commutator cannot equal
$\mathrm iI$ in every matrix element because the trace of a finite
commutator is zero. Convergence should therefore be tested in the low-energy
block actually used, while increasing the total cutoff. Parity-forbidden
entries, Hermiticity, normalization, orthogonality, and exact low-level
Schrödinger residuals provide independent diagnostics.

## Result passed to the next chapter

The preparation stage supplies:

- an exact additive Hamiltonian $H_{\mathrm{sep}}^{\mathrm{RE}}$;
- an exact normalized product eigenstate
  $\Phi_{\boldsymbol m,\boldsymbol\ell}^{\mathrm{RE}}$;
- its exact energy, parity, and low moments; and
- converged one-axis coordinate and momentum matrices.

Nothing in this construction assumes that the product remains stationary
after a coupling is applied. The
[fixed-confinement angular quench](/fixed-confinement-angular-quench/) starts
from precisely these prepared data.

## Research pathway

1. [Magnetic oscillator stability and reduction](/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/) — current chapter
3. [Fixed-confinement angular quench](/fixed-confinement-angular-quench/)
4. [Exact covariance response](/exact-covariance-response/)
5. [Survival curvature](/survival-curvature/)
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

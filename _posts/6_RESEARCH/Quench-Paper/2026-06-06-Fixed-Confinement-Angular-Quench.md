---
title: "III: A Fixed-Confinement Angular-Momentum Quench"
date: 2026-06-06 09:00:00 +05:30
categories: research
tags: [angular-momentum quench, exceptional Hermite states, magnetic oscillator, non-Gaussian dynamics, fixed confinement]
permalink: /research/fixed-confinement-angular-quench/
description: "An exact exceptional-Hermite preparation followed by a signed angular-momentum quench, with the diamagnetically dressed confinement held fixed."
series: exceptional-hermite-angular-quench
part: 3
authors: [Rajesh Kumar, Rajesh Kumar Yadav]
status: manuscript
---

The quench studied here changes one term of the Hamiltonian, not the complete magnetic field. An exceptional-Hermite product state is first prepared exactly in two rotated coordinates. At $t=0$, a signed angular coupling is activated while the coordinate confinement—including its diamagnetic dressing—is held fixed.

## Conventions and preparation coordinates

We use

$$
\hbar=2M=1,
$$

and retain the charge sign in the half-cyclotron frequency

$$
\omega_c=\frac{q_{\mathrm{el}}B}{2Mc}.
$$

Thus reversing the field or the charge sends $\omega_c\mapsto-\omega_c$. The two preparation coordinates are assigned once and kept fixed:

$$
A\equiv +,\qquad B\equiv -,
\qquad
\mathcal H_A\otimes\mathcal H_B
=\mathcal H_+\otimes\mathcal H_-.
$$

They arise from an orthogonal rotation of the laboratory coordinates. The corresponding coordinate scales are

$$
\Omega_\pm^2
=\frac{\omega_x^2+\omega_y^2+2\omega_c^2}{2}
\pm\frac12\sqrt{(\omega_x^2-\omega_y^2)^2+4g^2}.
$$

The $\omega_c^2$ contribution is already included in these scales during preparation. The labels $+$ and $-$ describe coordinate directions, not the full phase-space normal modes of the magnetic oscillator.

The rotation preserves the angular generator,

$$
L_z=q_+p_- -q_-p_+.
$$

This invariance lets us state the quench directly in the preparation coordinates.

## Exact exceptional-Hermite factors

For an even nonnegative codimension $m$, define

$$
z=\sqrt{\frac{\Omega}{2}}q,
\qquad
\mathcal H_m(z)=(-i)^mH_m(iz),
$$

where $\mathcal H_m$ is the pseudo-Hermite seed. Its absence of real zeros for even $m$ makes the rational extension regular on the full line. The one-dimensional potential is

$$
V_m^-(q;\Omega)
=\frac{\Omega^2q^2}{4}
-\Omega\left[
1+\frac{\mathcal H_m''}{\mathcal H_m}
-\left(\frac{\mathcal H_m'}{\mathcal H_m}\right)^2
\right],
$$

with factorization energy

$$
\epsilon_m(\Omega)=-\left(m+\frac12\right)\Omega.
$$

It is convenient to write

$$
U_\alpha(q_\alpha)
=V^-_{m_\alpha}(q_\alpha;\Omega_\alpha)
-\epsilon_{m_\alpha}(\Omega_\alpha),
\qquad
h_{m_\alpha}=p_\alpha^2+U_\alpha(q_\alpha).
$$

The preparatory Hamiltonian is exactly additive:

$$
H_{\mathrm{sep}}^{\mathrm{RE}}
=h_{m_+}(q_+;\Omega_+)+h_{m_-}(q_-;\Omega_-).
$$

Its real, definite-parity product eigenstates are

$$
\lvert\Psi_0\rangle
=\lvert m_+,\ell_+\rangle_A
\otimes\lvert m_-,\ell_-\rangle_B,
$$

with one-factor parity $(-1)^{\ell_\alpha}$. This is an exact preparation statement: no Gaussian approximation and no finite basis cutoff is used to define $\lvert\Psi_0\rangle$.

## What is quenched

At $t=0$, the post-quench Hamiltonian becomes

$$
H_f=H_{\mathrm{RE},B}
=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z,
$$

and the state evolves as

$$
\lvert\Psi(t)\rangle=e^{-iH_ft}\lvert\Psi_0\rangle.
$$

Only the angular generator $-\omega_cL_z$ is switched on. The scales $\Omega_\pm$, and therefore the diamagnetically dressed coordinate confinement, are unchanged across the quench.

This distinction is physical. Switching a real magnetic field would generally change both the angular term and the $B^2$-dependent diamagnetic term. That is a different protocol. The present construction is naturally interpreted as a synthetic rotation or engineered angular coupling added to a fixed trap.

For the underlying magnetic oscillator, lower boundedness requires the bare-trap conditions

$$
\omega_x^2>0,
\qquad
\omega_y^2>0,
\qquad
\omega_x^2\omega_y^2-g^2>0.
$$

With these conditions and regular even seeds, the rational terms are bounded relative to the confining oscillator and $H_f$ has the standard self-adjoint, lower-bounded realization on the oscillator domain.

## The fixed-coordinate commutator

The decisive algebraic test is

$$
\boxed{
[H_{\mathrm{sep}}^{\mathrm{RE}},L_z]
=i\left[q_+U_-'(q_-)-q_-U_+'(q_+)\right].
}
$$

For a generic anisotropic or rationally deformed preparation, the right-hand side does not vanish. Consequently,

1. $H_f$ is not additive as an operator on the fixed preparation tensor product $\mathcal H_+\otimes\mathcal H_-$; and
2. the product eigenbasis of $H_{\mathrm{sep}}^{\mathrm{RE}}$ is not stationary under $H_f$.

These are coordinate-specific conclusions. The commutator does **not** prove generic nonseparability under every possible canonical transformation, and it does not rule out all diagonalizations. In the purely quadratic limit, a symplectic transformation can diagonalize the magnetic oscillator. With rational local potentials, however, such a transformation generally sacrifices locality in the original $q_+:q_-$ preparation split.

## Exact preparation is not exact post-quench propagation

Three levels of description must remain separate:

- The exceptional-Hermite factors and their product preparation are exact.
- Nested commutators give exact derivatives at $t=0$, but truncating the resulting Taylor series is only a short-time approximation.
- Expanding the evolving state in an exceptional-product basis provides a numerical finite-time method. Any finite cutoff is an approximation that must be tested for convergence; there is no claim of an exact finite truncation.

This separation prevents the known spectrum of $H_{\mathrm{sep}}^{\mathrm{RE}}$ from being mistaken for the spectrum or dynamics of $H_f$.

## Series navigation

1. [Magnetic oscillator: stability and coordinate reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite state preparation](/research/exceptional-hermite-preparation/)
3. **A fixed-confinement angular-momentum quench**
4. [Exact covariance response](/research/exact-covariance-response/)
5. [Survival curvature beyond covariance](/research/survival-curvature/)
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

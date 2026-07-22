---
title: "II: Exact exceptional-Hermite preparation before the angular quench"
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

The angular quench begins from a state that is known exactly, not from a
Gaussian approximation or a numerically optimized ansatz. This article
constructs that initial state from regular exceptional-Hermite factors and
separates two stages that must not be conflated:

1. exact, additive state preparation before $t=0$; and
2. non-additive post-quench evolution after the angular term is activated.

We retain the conventions $\hbar=2M=1$ and the signed half-cyclotron
frequency $\omega_c=qB/(2Mc)$. The preparation scales $\Omega_\pm$ already
contain the target diamagnetic dressing and satisfy

$$
\Omega_+^2>\omega_c^2,
\qquad
\Omega_-^2>\omega_c^2.
$$

The confinement is held fixed when the angular coupling is switched on.

## Regular even pseudo-Hermite seeds

For one rotated coordinate $q_\alpha$, where $\alpha\in\{+,-\}$, define the
dimensionless variable

$$
z_\alpha=\sqrt{\frac{\Omega_\alpha}{2}}\,q_\alpha.
$$

The pseudo-Hermite polynomial of degree $m$ is

$$
\mathcal H_m(z)=(-\mathrm i)^m H_m(\mathrm i z),
$$

with $H_m$ the physicists' Hermite polynomial. We restrict $m$ to a
nonnegative even integer. For this choice, $\mathcal H_m$ has no real zeros,
so its reciprocal introduces no singularity on the physical line.

The corresponding regular rationally extended potential is

$$
V_m^-(q;\Omega)=\frac{\Omega^2q^2}{4}
-\Omega\left[
1+\frac{\mathcal H_m''(z)}{\mathcal H_m(z)}
-\left(\frac{\mathcal H_m'(z)}{\mathcal H_m(z)}\right)^2
\right],
$$

where primes denote derivatives with respect to $z$ and
$z=\sqrt{\Omega/2}\,q$. The factorization energy is

$$
\epsilon_m(\Omega)=-\left(m+\frac12\right)\Omega.
$$

It is useful to absorb that shift into the one-mode Hamiltonian,

$$
h_m(q;\Omega)=p_q^2+V_m^-(q;\Omega)-\epsilon_m(\Omega).
$$

## Normalized exceptional-Hermite eigenfunctions

For $\ell=0,1,2,\ldots$, define the exceptional numerator

$$
\mathcal P_{m,\ell}(z)=
\begin{cases}
1, & \ell=0,\\[4pt]
\mathcal H_m(z)H_\ell(z)
+\mathcal H_m'(z)H_{\ell-1}(z), & \ell\ge 1.
\end{cases}
$$

The normalized eigenfunction is

$$
\phi_{m,\ell}(q;\Omega)=
\left(\frac{\Omega}{2}\right)^{1/4}
\mathcal N_{m,\ell}
\frac{\mathcal P_{m,\ell}(z)}{\mathcal H_m(z)}
e^{-z^2/2},
$$

with

$$
\mathcal N_{m,\ell}=
\begin{cases}
\left(\dfrac{2^m m!}{\sqrt\pi}\right)^{1/2},
& \ell=0,\\[8pt]
\left[\sqrt\pi\,2^\ell(\ell-1)!(m+\ell)\right]^{-1/2},
& \ell\ge1.
\end{cases}
$$

The prefactor $(\Omega/2)^{1/4}$ accounts for the change from $z$ to the
physical coordinate $q$. With the stated $\mathcal N_{m,\ell}$,

$$
\int_{-\infty}^{\infty}
|\phi_{m,\ell}(q;\Omega)|^2\,\mathrm dq=1.
$$

The shifted one-mode energies are

$$
\varepsilon_{m,\ell}(\Omega)=
\begin{cases}
0, & \ell=0,\\
\Omega(m+\ell), & \ell\ge1.
\end{cases}
$$

For the codimension-two case $m=2$, the manuscript's Maxima checks substitute
the explicit wavefunctions into the Schrödinger equation. The residuals for
$\ell=0,1,2$ are all exactly zero, with shifted energies $0$, $3\Omega$, and
$4\Omega$.

## Parity and the moments available at the quench

For even $m$, $\mathcal H_m$ is even. The two terms in
$\mathcal P_{m,\ell}$ have the same parity, so

$$
\phi_{m,\ell}(-q;\Omega)=(-1)^\ell
\phi_{m,\ell}(q;\Omega).
$$

The functions can be chosen real. Definite parity and reality imply

$$
\langle q\rangle=\langle p_q\rangle=0,
\qquad
\frac12\langle qp_q+p_qq\rangle=0.
$$

These are exact properties of the prepared factor. They later remove the
initial odd moments and local $qp$ covariances from the first-order response;
they do not close the nonlinear post-quench moment hierarchy.

A compact way to evaluate more general initial expectations is to write the
exceptional state as a rational dressing of a Gaussian reference,

$$
|\Psi_{\mathrm{RE}}\rangle
=\frac{\mathcal R|\Psi_G\rangle}{\sqrt{Z_{\mathcal R}}}.
$$

Then

$$
\langle\mathcal O\rangle_{\mathrm{RE}}
=\frac{
\langle\Psi_G|\mathcal R^\dagger\mathcal O\mathcal R|\Psi_G\rangle
}{
\langle\Psi_G|\mathcal R^\dagger\mathcal R|\Psi_G\rangle
}.
$$

Coordinate moments become rationally weighted Gaussian integrals. Momentum
moments require additional care because derivatives act on the dressing
$\mathcal R$; they cannot be recovered by reweighting the probability density
alone.

For the $m=2$, $\ell=0$ factor, define

$$
\mathcal M=\sqrt{\frac\pi2}\,e^{1/2}
\operatorname{erfc}\!\left(\frac1{\sqrt2}\right).
$$

The exact variances are

$$
V_q=\langle q^2\rangle
=\frac{2(\mathcal M-1/2)}{\Omega},
$$

and

$$
V_p=\langle p_q^2\rangle
=\frac{\Omega}{2}
\left(\frac32+\frac{\mathcal M}{3}\right).
$$

Their product is independent of the scale $\Omega$. The corresponding
uncertainty product is

$$
\Delta q\,\Delta p_q
=\sqrt{(\mathcal M-1/2)
\left(\frac32+\frac{\mathcal M}{3}\right)}
=0.5172471466\ldots .
$$

This value and the underlying coordinate and momentum integrals were checked
independently in Maxima. The result is already different from the minimum
$1/2$ of a pure Gaussian oscillator vacuum, which is one concrete covariance
signature of the non-Gaussian preparation.

## Exact product preparation

Using one exceptional factor on each rotated axis, define

$$
H_{\mathrm{sep}}^{\mathrm{RE}}
=h_{m_+}(q_+;\Omega_+)+h_{m_-}(q_-;\Omega_-).
$$

Its normalized product eigenstate is

$$
\Phi_{\boldsymbol m,\boldsymbol\ell}^{\mathrm{RE}}
=\phi_{m_+,\ell_+}(q_+;\Omega_+)
\phi_{m_-,\ell_-}(q_-;\Omega_-),
$$

with exact separable energy

$$
E_{\boldsymbol m,\boldsymbol\ell}^{\mathrm{sep}}
=\varepsilon_{m_+,\ell_+}(\Omega_+)
+\varepsilon_{m_-,\ell_-}(\Omega_-).
$$

At this stage the tensor-product structure is exact. The two scales
$\Omega_\pm$ are the fixed, diamagnetically dressed confinement scales from
the coordinate reduction, and the stability requirements
$\Omega_\pm^2>\omega_c^2$ remain in force.

## The post-quench state is a different problem

At $t=0$, the signed angular term is activated while that confinement is held
fixed:

$$
H_{\mathrm{RE},B}=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z,
\qquad
L_z=q_+p_- - q_-p_+.
$$

The protocol is

$$
|\Psi(0)\rangle
=|m_+,\ell_+\rangle\otimes|m_-,\ell_-\rangle,
\qquad
|\Psi(t)\rangle=e^{-\mathrm iH_{\mathrm{RE},B}t}|\Psi(0)\rangle.
$$

This is an angular-momentum quench at fixed confinement, not a sudden switch
of the complete magnetic field. A literal field switch would also alter the
diamagnetic contribution proportional to $\omega_c^2$.

To see why the prepared product is generally not stationary, write
$U_\alpha=V_{m_\alpha}^-(q_\alpha;\Omega_\alpha)
-\epsilon_{m_\alpha}(\Omega_\alpha)$. Then

$$
[H_{\mathrm{sep}}^{\mathrm{RE}},L_z]
=\mathrm i\left[
q_+U_-'(q_-)-q_-U_+'(q_+)
\right].
$$

For generic anisotropy or rational deformation, this commutator is nonzero.
Its precise conclusion is that the post-quench Hamiltonian is non-additive
and the preparation eigenbasis is nonstationary in the fixed
$\mathcal H_+\otimes\mathcal H_-$ coordinate representation. It is **not** a
standalone proof of entanglement or generic nonseparability, and it does not
exclude every possible canonical diagonalization.

Accordingly, the exceptional functions above remain exact initial data, but
they are not inserted as a stationary product ansatz after the quench.
Short-time observables are obtained from nested commutators, while finite-time
results require the converged exceptional-basis propagation developed later
in this series.

## Series navigation

1. [Magnetic oscillator stability and reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite preparation](/research/exceptional-hermite-preparation/) — current article
3. [Fixed-confinement angular quench](/research/fixed-confinement-angular-quench/)
4. [Exact covariance response](/research/exact-covariance-response/)
5. [Survival curvature](/research/survival-curvature/)
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

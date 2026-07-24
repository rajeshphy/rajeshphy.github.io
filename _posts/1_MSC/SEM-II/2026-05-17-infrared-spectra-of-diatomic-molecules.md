---
title: "Infrared Spectra of Diatomic Molecules"
summary: "Electric-dipole absorption, infrared activity, vibration–rotation selection rules, and the structure of a diatomic infrared band."
date: 2026-05-17 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - infrared-spectra
  - infrared-activity
  - rovibrational-bands
permalink: /msc/sem-ii/molecular-spectra/infrared-spectra-of-diatomic-molecules/
hidden: true
---

Infrared absorption occurs when the oscillating electric field of light drives
an allowed molecular electric-dipole transition. Let

$$
\mathbf E(t)=E_0\boldsymbol\epsilon\cos\omega t.
$$

In the electric-dipole approximation the interaction Hamiltonian is

$$
\widehat H'(t)
=-\widehat{\boldsymbol\mu}\cdot\mathbf E(t).
$$

If the molecule begins in $|i\rangle$, first-order time-dependent
perturbation theory gives the amplitude for reaching $|f\rangle$:

$$
c_f^{(1)}(t)
=-\frac{i}{\hbar}
\int_0^t
\langle f|\widehat H'(t')|i\rangle
e^{i\omega_{fi}t'}\,dt',
$$

where $\omega_{fi}=(E_f-E_i)/\hbar$. Since

$$
\cos\omega t'
=\frac12\left(e^{i\omega t'}+e^{-i\omega t'}\right),
$$

the absorption part contains

$$
\int_0^t e^{i(\omega_{fi}-\omega)t'}dt'
=e^{i(\omega_{fi}-\omega)t/2}
\frac{2\sin[(\omega_{fi}-\omega)t/2]}
{\omega_{fi}-\omega}.
$$

For a long interaction time this function is sharply peaked at
$\omega=\omega_{fi}$. The corresponding transition rate has the form

$$
W_{i\rightarrow f}
\propto
\left|
\left\langle f\middle|
\widehat{\boldsymbol\mu}\cdot\boldsymbol\epsilon
\middle|i\right\rangle
\right|^2
\delta(E_f-E_i-\hbar\omega).
$$

An infrared line therefore requires both energy conservation and a nonzero
transition-dipole matrix element.

## Vibrational infrared activity

Let $Q=R-R_e$ be the bond-stretching coordinate. Expand the body-fixed dipole
moment about equilibrium:

$$
\mu(Q)
=\mu_0+\mu_0'Q+\frac12\mu_0''Q^2+\cdots,
$$

where

$$
\mu_0'
=\left(\frac{d\mu}{dQ}\right)_0.
$$

For harmonic vibration,

$$
Q=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega_e}}\,(a+a^\dagger).
$$

Here

$$
\mu_{\mathrm r}=\frac{m_1m_2}{m_1+m_2}
$$

is the nuclear reduced mass and
$\omega_e=\sqrt{k/\mu_{\mathrm r}}$ is the angular vibrational frequency.

The constant term gives

$$
\langle v'|\mu_0|v\rangle
=\mu_0\delta_{v'v}
$$

and cannot change the vibrational state. The linear term gives

$$
\begin{aligned}
\langle v'|Q|v\rangle
=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega_e}}
\left(
\langle v'|a|v\rangle
+\langle v'|a^\dagger|v\rangle
\right).
\end{aligned}
$$

Using

$$
a|v\rangle=\sqrt v\,|v-1\rangle,
\qquad
a^\dagger|v\rangle=\sqrt{v+1}\,|v+1\rangle,
$$

one obtains

$$
\langle v'|Q|v\rangle
=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega_e}}
\left[
\sqrt v\,\delta_{v',v-1}
+\sqrt{v+1}\,\delta_{v',v+1}
\right].
$$

Consequently, the harmonic fundamental obeys

$$
\boxed{\Delta v=\pm1}
$$

and is infrared active only when

$$
\boxed{\left(\frac{d\mu}{dQ}\right)_0\ne0.}
$$

This derivative criterion, rather than merely the value of the permanent
dipole, governs a pure vibrational transition. A homonuclear diatomic molecule
has $\mu(Q)=0$ for every bond length by inversion symmetry and is therefore
inactive in electric-dipole vibrational absorption.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/infrared-active-vibration.png' | relative_url }}" alt="Harmonic vibrational potential with a fundamental transition from v equals zero to v equals one, paired with a molecular dipole function having nonzero slope at equilibrium" loading="lazy">
  <figcaption>A fundamental vibration absorbs infrared radiation when the vibrational motion changes the molecular dipole, represented by \((d\mu/dQ)_0\ne0\).</figcaption>
</figure>

## Rotational structure of the fundamental

For a linear diatomic molecule in a $\Sigma$ electronic state, the
space-fixed dipole operator contains the angular factor $\cos\theta$. The
exact recurrence relation

$$
\begin{aligned}
\cos\theta\,Y_J^M
={}&
\sqrt{\frac{(J+1)^2-M^2}{(2J+1)(2J+3)}}Y_{J+1}^M\\
&+
\sqrt{\frac{J^2-M^2}{(2J-1)(2J+1)}}Y_{J-1}^M
\end{aligned}
$$

contains no $Y_J^M$ term. Orthogonality therefore gives

$$
\Delta J=\pm1.
$$

For a pure rotational infrared transition the radial factor is the permanent
dipole $\mu_0$, so $\mu_0\ne0$ is also required.

Combining this with $v''=0\rightarrow v'=1$ produces a $P$ branch with
$J'=J''-1$ and an $R$ branch with $J'=J''+1$. There is no $Q$ branch for a
$\Sigma\leftrightarrow\Sigma$ vibration–rotation band.

Write

$$
\frac{E(v,J)}{hc}
=G(v)+B_vJ(J+1)
$$

and let $\widetilde\nu_0=G(1)-G(0)$. For a line originating from $J=J''$,

$$
\widetilde\nu
=\widetilde\nu_0+B'J'(J'+1)-B''J(J+1).
$$

Substitution of $J'=J+1$ gives

$$
\boxed{
\widetilde\nu_R(J)
=\widetilde\nu_0+(B'+B'')(J+1)
+(B'-B'')(J+1)^2.
}
$$

Substitution of $J'=J-1$ gives

$$
\boxed{
\widetilde\nu_P(J)
=\widetilde\nu_0-(B'+B'')J
+(B'-B'')J^2.
}
$$

Usually vibration increases the mean bond length, so $B'<B''$. The $R$-branch
spacing is

$$
\widetilde\nu_R(J+1)-\widetilde\nu_R(J)
=B'+B''+(B'-B'')(2J+3),
$$

and therefore contracts with $J$. Measured in the direction of decreasing
wavenumber, the positive $P$-branch spacing is

$$
\widetilde\nu_P(J)-\widetilde\nu_P(J+1)
=B'+B''-(B'-B'')(2J+1),
$$

and therefore expands when $B'<B''$.

The population of the absorbing lower rotational level is approximately

$$
N_J\propto(2J+1)
\exp\left[-\frac{hcB''J(J+1)}{k_{\mathrm B}T}\right].
$$

Together with the rotational transition moment, this population creates the
intensity envelope across the $P$ and $R$ branches.

## Overtones and hot bands

For an anharmonic oscillator,

$$
G(v)
=\widetilde\nu_e\left(v+\frac12\right)
-\widetilde\nu_ex_e\left(v+\frac12\right)^2.
$$

The adjacent vibrational interval is

$$
G(v+1)-G(v)
=\widetilde\nu_e-2\widetilde\nu_ex_e(v+1).
$$

At elevated temperature, transitions beginning at $v>0$ produce hot bands at
slightly lower wavenumber than the $0\rightarrow1$ fundamental.

The quadratic dipole term contains $Q^2\propto
a^2+(a^\dagger)^2+aa^\dagger+a^\dagger a$ and can connect
$\Delta v=\pm2$. Anharmonic wavefunctions also mix harmonic basis states.
These two mechanisms give weak overtone intensity. Anharmonic level spacing
alone does not make all overtones allowed.

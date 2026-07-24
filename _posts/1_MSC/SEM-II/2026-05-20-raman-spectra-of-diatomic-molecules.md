---
title: "Raman Spectra of Diatomic Molecules"
summary: "Induced-dipole scattering, vibrational and rotational Raman selection rules, and Stokes–anti-Stokes spectra of diatomic molecules."
date: 2026-05-20 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - raman-spectra
  - polarizability
  - stokes-scattering
permalink: /msc/sem-ii/molecular-spectra/raman-spectra-of-diatomic-molecules/
hidden: true
---

Raman spectroscopy measures inelastic scattering rather than direct
absorption. An incident photon polarizes the molecule; the oscillating induced
dipole radiates a photon whose frequency may differ from that of the incident
light.

## Induced dipole and Raman frequencies

Let the incident electric field be

$$
E(t)=E_0\cos(2\pi\nu_0t).
$$

For one molecular vibration,

$$
Q(t)=Q_0\cos(2\pi\nu_vt).
$$

Expand the polarizability along the chosen polarization direction:

$$
\alpha(Q)
=\alpha_0+\alpha_0'Q+\cdots,
\qquad
\alpha_0'
=\left(\frac{d\alpha}{dQ}\right)_0.
$$

The induced dipole is

$$
\begin{aligned}
p(t)
&=\alpha(Q)E(t)\\
&=\alpha_0E_0\cos(2\pi\nu_0t)\\
&\quad
+\alpha_0'Q_0E_0
\cos(2\pi\nu_vt)\cos(2\pi\nu_0t).
\end{aligned}
$$

Using

$$
\cos A\cos B
=\frac12\left[\cos(A+B)+\cos(A-B)\right],
$$

one obtains

$$
\begin{aligned}
p(t)
={}&\alpha_0E_0\cos(2\pi\nu_0t)\\
&+\frac12\alpha_0'Q_0E_0
\cos\!\left[2\pi(\nu_0+\nu_v)t\right]\\
&+\frac12\alpha_0'Q_0E_0
\cos\!\left[2\pi(\nu_0-\nu_v)t\right].
\end{aligned}
$$

The three radiated frequencies are therefore

$$
\begin{array}{lll}
\nu_0&:&\text{Rayleigh scattering},\\
\nu_0-\nu_v&:&\text{Stokes Raman scattering},\\
\nu_0+\nu_v&:&\text{anti-Stokes Raman scattering}.
\end{array}
$$

The sideband amplitudes vanish unless

$$
\boxed{\left(\frac{d\alpha}{dQ}\right)_0\ne0.}
$$

This is the vibrational Raman activity criterion.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/raman-stokes-antistokes-spectrum.png' | relative_url }}" alt="Raman spectrum with a strong central Rayleigh line, lower-frequency Stokes lines, higher-frequency anti-Stokes lines, and rotational Raman spacing of four B" loading="lazy">
  <figcaption>Stokes scattering leaves energy in the molecule; anti-Stokes scattering removes energy from an initially excited molecule. Pure rotational Raman lines begin at a shift of \(6B\) and are spaced by \(4B\).</figcaption>
</figure>

## Quantum interpretation

For Stokes scattering the molecule gains energy:

$$
h\nu_0-h\nu_s=E_f-E_i>0,
$$

so

$$
\nu_s=\nu_0-\frac{E_f-E_i}{h}.
$$

For anti-Stokes scattering the molecule loses energy:

$$
\nu_{as}=\nu_0+\frac{E_i-E_f}{h}.
$$

The polarizability is an operator in the molecular coordinates. For harmonic
vibration,

$$
\widehat\alpha
\simeq\alpha_0+\alpha_0'\widehat Q,
\qquad
\widehat Q
=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega_v}}(a+a^\dagger).
$$

Here

$$
\mu_{\mathrm r}=\frac{m_1m_2}{m_1+m_2}
$$

is the nuclear reduced mass and $\omega_v=2\pi\nu_v$ is the angular
vibrational frequency.

Therefore

$$
\begin{aligned}
\langle v'|\widehat Q|v\rangle
=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega_v}}
\left[
\sqrt v\,\delta_{v',v-1}
+\sqrt{v+1}\,\delta_{v',v+1}
\right],
\end{aligned}
$$

and the harmonic vibrational Raman rule is

$$
\Delta v=\pm1.
$$

The transition is present only when $\alpha_0'\ne0$, because the constant
term $\alpha_0$ is diagonal in $v$.

The first anti-Stokes line requires a molecule initially in $v=1$, whereas
the first Stokes line may begin in $v=0$. Since

$$
\frac{N_1}{N_0}
=\exp\left(-\frac{h\nu_v}{k_{\mathrm B}T}\right),
$$

anti-Stokes scattering is normally weaker. Including the fourth-power
frequency dependence of dipole radiation gives approximately

$$
\frac{I_{\mathrm{AS}}}{I_{\mathrm S}}
=
\left(\frac{\nu_0+\nu_v}{\nu_0-\nu_v}\right)^4
\exp\left(-\frac{h\nu_v}{k_{\mathrm B}T}\right).
$$

## Pure rotational Raman spectrum

For a linear molecule with unit vector $\widehat{\mathbf n}$ along its axis,
the polarizability tensor is

$$
\boldsymbol\alpha
=\alpha_\perp\mathbf 1
+(\alpha_\parallel-\alpha_\perp)
\widehat{\mathbf n}\widehat{\mathbf n}.
$$

With the field along $z$,

$$
\begin{aligned}
\alpha_{zz}
&=\alpha_\perp
+(\alpha_\parallel-\alpha_\perp)\cos^2\theta\\
&=\frac{\alpha_\parallel+2\alpha_\perp}{3}
+\frac{2(\alpha_\parallel-\alpha_\perp)}{3}
P_2(\cos\theta),
\end{aligned}
$$

because $\cos^2\theta=[1+2P_2(\cos\theta)]/3$. The angular matrix element
contains three spherical harmonics,

$$
\int
Y_{J'M'}^*Y_2^0Y_J^M\,d\Omega.
$$

It can be nonzero only when the angular momenta satisfy

$$
|J'-J|\le2\le J'+J
$$

and $J'+J+2$ is even. Together these conditions give

$$
\Delta J=0,\pm2.
$$

For a pure rotational Raman shift, $\Delta J=0$ is elastic Rayleigh
scattering. Stokes lines have $J\rightarrow J+2$. With

$$
B=\frac{h}{8\pi^2cI}
$$

the rotational constant in wavenumber units, $F(J)=BJ(J+1)$ and

$$
\begin{aligned}
\Delta\widetilde\nu_J
&=F(J+2)-F(J)\\
&=B\left[(J+2)(J+3)-J(J+1)\right]\\
&=\boxed{2B(2J+3)}.
\end{aligned}
$$

For $J=0,1,2,\ldots$, the Raman shifts are

$$
6B,\;10B,\;14B,\ldots,
$$

and successive lines are separated by

$$
\Delta\widetilde\nu_{J+1}-\Delta\widetilde\nu_J=4B.
$$

Rotational Raman scattering requires anisotropic polarizability,
$\alpha_\parallel-\alpha_\perp\ne0$, but not a permanent electric dipole.
Homonuclear diatomic molecules can therefore possess rotational Raman spectra
even though their pure rotational electric-dipole spectra are absent.

## Vibration–rotation Raman branches

When vibration and rotation both change, the vibrational rule is
$\Delta v=\pm1$ and the rotational rules are

$$
\Delta J=-2,0,+2.
$$

They form the $O$, $Q$, and $S$ branches, respectively. The $Q$ branch
can receive a rank-zero scalar contribution as well as a rank-two anisotropic
contribution. The scalar part contributes only to $Q$, whereas the $O$ and
$S$ branches necessarily arise from the anisotropic part.

For a centrosymmetric molecule, an infrared-active normal coordinate must
transform like the odd dipole operator, whereas a Raman-active coordinate
must transform like the even polarizability tensor. This gives the mutual
exclusion rule: a centrosymmetric normal mode cannot be both infrared and
Raman active in the electric-dipole approximation. The symmetric stretch of a
homonuclear diatomic molecule is the simplest Raman-active, infrared-inactive
example.

The sideband identity, rotational Raman shifts and spacing, anharmonic
hot-band interval, and quadratic-coordinate coefficient are checked in the
[Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-2/infrared-raman-selection.mac' | relative_url }}).

---
title: "Electron Spin Resonance"
summary: "Electron Zeeman splitting, magnetic-dipole transitions, resonance, populations, hyperfine structure, and linewidth."
date: 2026-05-26 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - electron-spin-resonance
  - zeeman-effect
  - magnetic-resonance
permalink: /msc/sem-ii/molecular-spectra/electron-spin-resonance/
hidden: true
---

Electron spin resonance (ESR), also called electron paramagnetic resonance, measures transitions between magnetic energy levels of an unpaired electron. The electron must be unpaired because a closed shell has zero resultant electronic magnetic moment.

## Spin magnetic moment

For a spin-$1/2$ electron,

$$
\hat{\mathbf S}=\frac{\hbar}{2}\boldsymbol{\sigma},
$$

where $\boldsymbol{\sigma}$ denotes the three Pauli matrices. The magnetic moment associated with spin is

$$
\boxed{
\hat{\boldsymbol{\mu}}_{\mathrm e}
=-g_{\mathrm e}\mu_B\frac{\hat{\mathbf S}}{\hbar}
},
$$

with

$$
\mu_B=\frac{e\hbar}{2m_{\mathrm e}}.
$$

Here $e$ is the positive elementary-charge magnitude. The minus sign follows from the negative electron charge: the electron magnetic moment is antiparallel to its spin. For a free electron, $g_{\mathrm e}\simeq2.0023$; in an atom, molecule, or solid, spin--orbit coupling and the local electronic environment generally make the measured effective $g$ different from the free-electron value.

Apply a static magnetic field

$$
\mathbf B_0=B_0\hat{\mathbf z}.
$$

The magnetic interaction energy is

$$
\hat H_0=-\hat{\boldsymbol{\mu}}_{\mathrm e}\cdot\mathbf B_0.
$$

Substituting the magnetic moment,

$$
\hat H_0
=g_{\mathrm e}\mu_BB_0\frac{\hat S_z}{\hbar}.
$$

The spin eigenvalue equation is

$$
\hat S_z\lvert m_s\rangle
=m_s\hbar\lvert m_s\rangle,
\qquad
m_s=\pm\frac12.
$$

Therefore

$$
\hat H_0\lvert m_s\rangle
=g_{\mathrm e}\mu_BB_0m_s\lvert m_s\rangle,
$$

and the two energies are

$$
E_{+1/2}=+\frac12g_{\mathrm e}\mu_BB_0,
\qquad
E_{-1/2}=-\frac12g_{\mathrm e}\mu_BB_0.
$$

Their separation is

$$
\boxed{
\Delta E
=E_{+1/2}-E_{-1/2}
=g_{\mathrm e}\mu_BB_0
}.
$$

The $m_s=-1/2$ state is lower in energy for $B_0>0$ because its magnetic moment is parallel to the field.

## Why the oscillating field must be transverse

Let a microwave magnetic field be applied along $x$:

$$
\mathbf B_1(t)=B_1\cos\omega t\,\hat{\mathbf x}.
$$

Its interaction with the electron is

$$
\hat H_1(t)
=-\hat{\boldsymbol{\mu}}_{\mathrm e}\cdot\mathbf B_1(t)
=g_{\mathrm e}\mu_BB_1
\frac{\hat S_x}{\hbar}\cos\omega t.
$$

In the $\hat S_z$ basis,

$$
\hat S_x
=\frac{\hbar}{2}
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix}.
$$

The diagonal matrix elements vanish:

$$
\langle +\tfrac12\lvert\hat S_x\rvert+\tfrac12\rangle=0,
\qquad
\langle -\tfrac12\lvert\hat S_x\rvert-\tfrac12\rangle=0.
$$

The off-diagonal matrix element is nonzero:

$$
\langle +\tfrac12\lvert\hat S_x\rvert-\tfrac12\rangle
=\frac{\hbar}{2}.
$$

Thus the transverse field couples the two Zeeman states and gives the magnetic-dipole selection rule

$$
\boxed{\Delta m_s=\pm1}.
$$

A field parallel to $z$ would be proportional to $\hat S_z$, whose off-diagonal elements vanish, so it would shift the levels without driving this transition.

## Resonance condition

Absorption is largest when the microwave photon energy equals the Zeeman separation:

$$
\hbar\omega=\Delta E.
$$

Using $\omega=2\pi\nu$ and $\hbar\omega=h\nu$,

$$
h\nu=g_{\mathrm e}\mu_BB_0.
$$

Hence

$$
\boxed{
\nu=\frac{g_{\mathrm e}\mu_B}{h}B_0
}.
$$

An ESR spectrometer commonly holds $\nu$ fixed and sweeps $B_0$. The resonance field is then

$$
\boxed{
B_{\mathrm{res}}=\frac{h\nu}{g_{\mathrm e}\mu_B}
}.
$$

Consequently, a measured resonance field determines

$$
g_{\mathrm e}=\frac{h\nu}{\mu_BB_{\mathrm{res}}}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-3/esr-zeeman-resonance.png' | relative_url }}" alt="Electron spin Zeeman energies as functions of magnetic field, a transverse microwave transition at the resonance field, and the corresponding absorption line" loading="lazy">
  <figcaption>The electron levels separate linearly with \(B_0\); a transverse microwave drives the transition when \(h\nu=g_{\mathrm e}\mu_BB_0\).</figcaption>
</figure>

## Thermal population and net absorption

Write the two energies as

$$
E_{\mathrm{upper}}=+\frac{\Delta E}{2},
\qquad
E_{\mathrm{lower}}=-\frac{\Delta E}{2}.
$$

The Boltzmann populations obey

$$
\frac{N_{\mathrm{upper}}}{N_{\mathrm{lower}}}
=\exp\left[
-\frac{E_{\mathrm{upper}}-E_{\mathrm{lower}}}{k_BT}
\right]
=e^{-\Delta E/(k_BT)}.
$$

If $N=N_{\mathrm{lower}}+N_{\mathrm{upper}}$, direct substitution of the two Boltzmann weights gives

$$
\frac{N_{\mathrm{lower}}-N_{\mathrm{upper}}}{N}
=
\frac{e^{\Delta E/(2k_BT)}-e^{-\Delta E/(2k_BT)}}
{e^{\Delta E/(2k_BT)}+e^{-\Delta E/(2k_BT)}}
=\tanh\left(\frac{\Delta E}{2k_BT}\right).
$$

For $\Delta E\ll k_BT$, $\tanh x\simeq x$, so

$$
N_{\mathrm{lower}}-N_{\mathrm{upper}}
\simeq
N\frac{g_{\mathrm e}\mu_BB_0}{2k_BT}.
$$

There are therefore slightly more absorptive upward transitions than stimulated downward transitions. This small population excess produces the observed net ESR absorption.

## Hyperfine splitting

If the electron spin interacts with a nucleus of spin $I$, an isotropic hyperfine Hamiltonian can be written

$$
\hat H_{\mathrm{hf}}
=\frac{A}{\hbar^2}\hat{\mathbf I}\cdot\hat{\mathbf S},
$$

where $A$ has dimensions of energy. In a strong field, the Zeeman direction defines the quantization axis and the nonsecular terms are neglected to first order:

$$
\hat H_{\mathrm{hf}}
\simeq\frac{A}{\hbar^2}\hat I_z\hat S_z.
$$

Since

$$
\hat I_z\lvert m_I,m_s\rangle
=m_I\hbar\lvert m_I,m_s\rangle,
\qquad
\hat S_z\lvert m_I,m_s\rangle
=m_s\hbar\lvert m_I,m_s\rangle,
$$

the approximate energy is

$$
E(m_s,m_I)
=g_{\mathrm e}\mu_BB_0m_s+Am_Im_s.
$$

For an allowed ESR transition, $m_s$ changes from $-1/2$ to $+1/2$ while $m_I$ is unchanged. Therefore

$$
\Delta E(m_I)
=g_{\mathrm e}\mu_BB_0+Am_I.
$$

The resonance field at fixed frequency becomes

$$
\boxed{
B_{\mathrm{res}}(m_I)
=\frac{h\nu-Am_I}{g_{\mathrm e}\mu_B}
}.
$$

Because $m_I=-I,-I+1,\ldots,I$, one equivalent nucleus produces $2I+1$ hyperfine lines.

## Linewidth and spin relaxation

After excitation, transverse spin coherence decays approximately as

$$
M_\perp(t)=M_\perp(0)e^{-t/T_2}e^{-i\omega_0t}.
$$

Its frequency response is obtained from

$$
\int_0^\infty
e^{-t/T_2}e^{i(\omega-\omega_0)t}\,dt
=
\left[
\frac{-e^{-[1/T_2-i(\omega-\omega_0)]t}}
{1/T_2-i(\omega-\omega_0)}
\right]_0^\infty,
$$

which gives

$$
\frac{1}{1/T_2-i(\omega-\omega_0)}.
$$

The absorbed intensity is therefore Lorentzian:

$$
\mathcal I(\omega)\propto
\frac{1/T_2}
{(\omega-\omega_0)^2+(1/T_2)^2}.
$$

At half maximum,

$$
\lvert\omega-\omega_0\rvert=\frac1{T_2}.
$$

Since the electron resonance angular frequency satisfies

$$
\omega_0=\frac{g_{\mathrm e}\mu_B}{\hbar}B_{\mathrm{res}},
$$

the field half-width at half maximum is

$$
\boxed{
\Delta B_{\mathrm{HWHM}}
=\frac{\hbar}{g_{\mathrm e}\mu_BT_2}
}.
$$

Thus a shorter transverse relaxation time $T_2$ produces a broader resonance line. Longitudinal relaxation, characterized by $T_1$, restores the equilibrium population difference required for continued absorption.

The spin-matrix, resonance, hyperfine, and linewidth identities are checked in
the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-3/electron-spin-resonance.mac' | relative_url }}).

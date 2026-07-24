---
title: "Nuclear Magnetic Resonance"
summary: "Nuclear Zeeman levels, Larmor precession, radio-frequency transitions, equilibrium magnetization, shielding, and relaxation."
date: 2026-05-29 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - nuclear-magnetic-resonance
  - larmor-precession
  - magnetic-resonance
permalink: /msc/sem-ii/molecular-spectra/nuclear-magnetic-resonance/
hidden: true
---

Nuclear magnetic resonance (NMR) is the resonant response of a nuclear magnetic moment to a radio-frequency field in the presence of a static magnetic field. A nucleus can show NMR only when its spin quantum number is nonzero, because then it possesses angular momentum and a magnetic moment.

## Nuclear moment and Zeeman energy

For a particular nucleus, angular momentum and magnetic moment are related by

$$
\boxed{
\hat{\boldsymbol{\mu}}=\gamma\hat{\mathbf I}
},
$$

where $\gamma$ is the nuclear gyromagnetic ratio. Apply

$$
\mathbf B_0=B_0\hat{\mathbf z}.
$$

The magnetic Hamiltonian is

$$
\hat H_0
=-\hat{\boldsymbol{\mu}}\cdot\mathbf B_0
=-\gamma B_0\hat I_z.
$$

The angular-momentum eigenvalue equation is

$$
\hat I_z\lvert I,m\rangle
=m\hbar\lvert I,m\rangle,
\qquad
m=-I,-I+1,\ldots,I.
$$

It follows that

$$
\hat H_0\lvert I,m\rangle
=-\gamma\hbar B_0m\lvert I,m\rangle.
$$

Thus

$$
\boxed{
E_m=-\gamma\hbar B_0m
}.
$$

For a spin-$1/2$ nucleus with $\gamma>0$,

$$
E_{+1/2}=-\frac12\gamma\hbar B_0,
\qquad
E_{-1/2}=+\frac12\gamma\hbar B_0.
$$

Thus $m=+1/2$ is the lower state when $\gamma>0$. If $\gamma<0$, this ordering reverses; the resonance frequency remains positive and is therefore written using $\lvert\gamma\rvert$.

The adjacent-level separation is

$$
\Delta E
=E_{m-1}-E_m
=\gamma\hbar B_0.
$$

For either sign of $\gamma$, its magnitude is

$$
\boxed{
\lvert\Delta E\rvert
=\hbar\lvert\gamma\rvert B_0
}.
$$

## Larmor precession from the torque equation

The magnetic torque on a moment is

$$
\boldsymbol{\tau}
=\boldsymbol{\mu}\times\mathbf B_0.
$$

Torque is the rate of change of angular momentum:

$$
\frac{d\mathbf I}{dt}
=\boldsymbol{\mu}\times\mathbf B_0.
$$

Since $\boldsymbol{\mu}=\gamma\mathbf I$,

$$
\frac{d\boldsymbol{\mu}}{dt}
=\gamma\frac{d\mathbf I}{dt}
=\gamma\boldsymbol{\mu}\times\mathbf B_0.
$$

For $\mathbf B_0=B_0\hat{\mathbf z}$,

$$
\boldsymbol{\mu}\times\mathbf B_0
=
\begin{vmatrix}
\hat{\mathbf x}&\hat{\mathbf y}&\hat{\mathbf z}\\
\mu_x&\mu_y&\mu_z\\
0&0&B_0
\end{vmatrix}
=B_0\mu_y\hat{\mathbf x}
-B_0\mu_x\hat{\mathbf y}.
$$

Therefore

$$
\frac{d\mu_x}{dt}=\gamma B_0\mu_y,
\qquad
\frac{d\mu_y}{dt}=-\gamma B_0\mu_x,
\qquad
\frac{d\mu_z}{dt}=0.
$$

Define the transverse complex component

$$
\mu_+=\mu_x+i\mu_y.
$$

Then

$$
\frac{d\mu_+}{dt}
=\gamma B_0\mu_y-i\gamma B_0\mu_x
=-i\gamma B_0(\mu_x+i\mu_y),
$$

so

$$
\frac{d\mu_+}{dt}=-i\gamma B_0\mu_+.
$$

Separating variables and integrating,

$$
\frac{d\mu_+}{\mu_+}=-i\gamma B_0\,dt,
$$

$$
\ln\frac{\mu_+(t)}{\mu_+(0)}
=-i\gamma B_0t,
$$

and hence

$$
\mu_+(t)=\mu_+(0)e^{-i\gamma B_0t}.
$$

Define the signed Larmor angular velocity and its positive resonance magnitude by

$$
\omega_L=\gamma B_0,
\qquad
\omega_0=\lvert\omega_L\rvert=\lvert\gamma\rvert B_0.
$$

The sign of $\omega_L$ determines the sense of precession, whereas the resonance angular frequency is

$$
\boxed{
\omega_0=\lvert\gamma\rvert B_0
}.
$$

The constancy of $\mu_z$ and $\mu_x^2+\mu_y^2$ means that the tip of the moment traces a circle at a fixed polar angle about $\mathbf B_0$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-3/nmr-precession-levels.png' | relative_url }}" alt="A nuclear magnetic moment precessing at a fixed angle around a static magnetic field and spin one-half nuclear Zeeman levels connected by a transverse radio-frequency transition" loading="lazy">
  <figcaption>The classical precession frequency and the quantum transition frequency are the same: \(\omega_0=\lvert\gamma\rvert B_0\).</figcaption>
</figure>

## Radio-frequency excitation and selection rule

Add a weak field perpendicular to $\mathbf B_0$:

$$
\mathbf B_1(t)=B_1\cos\omega t\,\hat{\mathbf x}.
$$

The time-dependent interaction is

$$
\hat H_1(t)=-\gamma B_1\hat I_x\cos\omega t.
$$

Using the ladder operators,

$$
\hat I_x=\frac12(\hat I_++\hat I_-),
$$

with

$$
\hat I_\pm\lvert I,m\rangle
=\hbar
\sqrt{I(I+1)-m(m\pm1)}
\lvert I,m\pm1\rangle,
$$

shows that $\hat I_x$ connects only states for which

$$
\boxed{\Delta m=\pm1}.
$$

Resonant absorption requires the photon energy to equal the adjacent-level separation:

$$
\hbar\omega=\hbar\lvert\gamma\rvert B_0.
$$

Cancelling $\hbar$,

$$
\omega=\lvert\gamma\rvert B_0.
$$

Since $\omega=2\pi\nu$,

$$
\boxed{
\nu=\frac{\lvert\gamma\rvert}{2\pi}B_0
}.
$$

The same frequency has therefore appeared in two ways: as the classical Larmor precession frequency and as the Bohr frequency between quantum Zeeman levels.

## Equilibrium population and magnetization

For $I=1/2$ and $\gamma>0$, let

$$
\Delta E=\hbar\gamma B_0.
$$

The lower and upper energies are $-\Delta E/2$ and $+\Delta E/2$. Their population ratio is

$$
\frac{N_{\mathrm{upper}}}{N_{\mathrm{lower}}}
=e^{-\Delta E/(k_BT)}.
$$

The fractional population difference is

$$
\frac{N_{\mathrm{lower}}-N_{\mathrm{upper}}}{N}
=\tanh\left(\frac{\Delta E}{2k_BT}\right).
$$

If $\Delta E\ll k_BT$,

$$
\tanh\left(\frac{\Delta E}{2k_BT}\right)
\simeq\frac{\Delta E}{2k_BT}
=\frac{\hbar\gamma B_0}{2k_BT}.
$$

For number density $n$, each spin-$1/2$ nucleus contributes a field-directed moment of magnitude $\gamma\hbar/2$ with a sign set by its state. The equilibrium magnetization is therefore

$$
M_0
=n\frac{\gamma\hbar}{2}
\tanh\left(\frac{\hbar\gamma B_0}{2k_BT}\right).
$$

In the high-temperature limit,

$$
\boxed{
M_0\simeq
\frac{n\gamma^2\hbar^2}{4k_BT}B_0
}.
$$

The NMR signal grows with magnetic field and decreases with temperature because both effects change the small population imbalance.

## Shielding and resonance position

Electrons circulate in the applied field and produce a local field at the nucleus. For an isotropic environment, define the shielding constant $\sigma$ by

$$
B_{\mathrm{loc}}=(1-\sigma)B_0.
$$

Replacing $B_0$ by the field actually experienced by the nucleus gives

$$
\boxed{
\nu=\frac{\lvert\gamma\rvert}{2\pi}(1-\sigma)B_0
}.
$$

Chemically different electronic environments have different $\sigma$ and hence different resonance frequencies. Relative to a reference frequency $\nu_{\mathrm{ref}}$, the chemical shift is written

$$
\boxed{
\delta=
\frac{\nu-\nu_{\mathrm{ref}}}{\nu_{\mathrm{ref}}}
\times10^6\ \mathrm{ppm}
}.
$$

Because both frequencies scale approximately with $B_0$, the dimensionless chemical shift is essentially independent of the spectrometer field.

## Relaxation and detection

A radio-frequency pulse can tip the macroscopic magnetization away from its equilibrium direction. After the pulse, longitudinal relaxation is described by

$$
\frac{dM_z}{dt}
=-\frac{M_z-M_0}{T_1}.
$$

Let $Y=M_z-M_0$. Then

$$
\frac{dY}{Y}=-\frac{dt}{T_1}.
$$

Integrating from $0$ to $t$ gives

$$
\ln\frac{Y(t)}{Y(0)}=-\frac{t}{T_1},
$$

so

$$
\boxed{
M_z(t)=M_0+[M_z(0)-M_0]e^{-t/T_1}
}.
$$

Transverse dephasing and precession obey

$$
\frac{dM_+}{dt}
=-\left(\frac1{T_2}+i\omega_L\right)M_+,
\qquad
M_+=M_x+iM_y.
$$

Separation and integration give

$$
\boxed{
M_+(t)=M_+(0)e^{-t/T_2}e^{-i\omega_Lt}
}.
$$

The rotating transverse magnetization changes the magnetic flux through a receiver coil. Faraday's law,

$$
\mathcal E(t)=-\frac{d\Phi(t)}{dt},
$$

then produces an oscillating, exponentially decaying voltage called the free-induction decay. Its frequencies reveal the NMR resonance positions, while its decay contains the transverse relaxation information.

The spin-matrix, signed-precession, magnetization, shielding, and relaxation
identities are checked in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-3/nuclear-magnetic-resonance.mac' | relative_url }}).

---
title: "Neutron Scattering by Phonons"
summary: "Coherent one-phonon scattering, energy and reciprocal-lattice selection rules, polarization factors, detailed balance, and neutron kinematics."
date: 2026-05-20 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - phonons
  - neutron-scattering
  - dynamic-structure-factor
  - one-phonon-scattering
  - detailed-balance
  - reciprocal-lattice
permalink: /msc/sem-iv/neutron-scattering-by-phonons/
hidden: true
---

Thermal and cold neutrons have wavelengths comparable with interatomic distances and energies comparable with phonon energies. Inelastic neutron scattering can therefore determine both the wavevector and frequency of a lattice vibration throughout the Brillouin zone. The result is not merely a frequency spectrum: energy conservation, reciprocal-lattice momentum selection and the phonon polarization all enter the measured intensity.

The convention used below is

$$
\mathbf Q=\mathbf k_i-\mathbf k_f,
\qquad
E=E_i-E_f.
$$

Thus $\mathbf Q$ and $E$ are momentum and energy transferred **from the neutron to the sample**. Positive $E$ denotes neutron energy loss and sample excitation.

## Neutron kinematics

For a free neutron of mass $m_n$,

$$
E_i=\frac{\hbar^2k_i^2}{2m_n},
\qquad
E_f=\frac{\hbar^2k_f^2}{2m_n}.
$$

If $\phi$ is the angle between $\mathbf k_i$ and $\mathbf k_f$, then

$$
\boxed{
Q^2=k_i^2+k_f^2-2k_ik_f\cos\phi.
}
$$

In practical units,

$$
\boxed{
E_n^{\mathrm{kin}}(\mathrm{meV})
=2.072\,k^2(\mathrm{\mathring A^{-2}}).
}
$$

For elastic scattering $k_i=k_f=k$ and

$$
Q=2k\sin\frac{\phi}{2}.
$$

For inelastic scattering $k_i\ne k_f$, so both the magnitude and direction of $\mathbf Q$ must be obtained from the full scattering triangle.

## Neutron--nucleus interaction and scattering law

At energies used for lattice spectroscopy, the strong neutron--nucleus interaction is represented by the Fermi pseudopotential

$$
V(\mathbf r)
=\frac{2\pi\hbar^2}{m_n}
\sum_j b_j\,
\delta(\mathbf r-\mathbf r_j),
$$

where $b_j$ is the nuclear scattering length. Unlike an x-ray atomic form factor, a nuclear scattering length does not decrease systematically with atomic number and is essentially independent of $Q$ over ordinary diffraction ranges. Isotopes of the same element can have very different scattering lengths.

Define the scattering-length-weighted density operator

$$
\rho_b(\mathbf Q)
=\sum_j b_j e^{i\mathbf Q\cdot\mathbf r_j}.
$$

A sign-unambiguous spectral definition of the weighted dynamic structure factor is

$$
\boxed{
S_b(\mathbf Q,E)
=\sum_{I,F}p_I
\left\lvert
\langle F\lvert\rho_b(\mathbf Q)\rvert I\rangle
\right\rvert^2
\delta\!\left[
E-(E_F-E_I)
\right],
}
$$

where $I$ and $F$ are sample states and $p_I$ is the equilibrium probability of $I$. In the first Born approximation,

$$
\boxed{
\frac{d^2\sigma}{d\Omega\,dE_f}
=\frac{k_f}{k_i}S_b(\mathbf Q,E).
}
$$

With this definition $S_b$ already includes the scattering lengths and has units of area per energy. Textbooks often factor out a cross section such as $\sigma_{\mathrm{coh}}/(4\pi)$ and define a dimensionless $S$; their displayed prefactor then differs, while the phonon selection rules and relative intensities are unchanged.

## Coherent and incoherent scattering

Write the scattering length at a crystallographically equivalent site as

$$
b_j=\overline b+\Delta b_j,
\qquad
\langle\Delta b_j\rangle=0.
$$

The coherent cross section is

$$
\sigma_{\mathrm{coh}}=4\pi\left\lvert\overline b\right\rvert^2,
$$

whereas isotopic and nuclear-spin fluctuations give

$$
\sigma_{\mathrm{inc}}
=4\pi\left(
\overline{\left\lvert b\right\rvert^2}
-\left\lvert\overline b\right\rvert^2
\right).
$$

**Coherent** one-phonon scattering contains interference between different unit cells and therefore obeys a reciprocal-lattice wavevector selection rule. It is used to map $\omega_{\mathbf q s}$. **Incoherent** scattering lacks this long-range interference; after suitable averaging, it is more closely related to a scattering-weighted phonon density of states.

## Expansion in atomic displacements

For atom $\kappa$ in cell $l$,

$$
\mathbf r_{l\kappa}
=\mathbf R_l+\boldsymbol\tau_\kappa
+\mathbf u_{l\kappa}.
$$

The scattering operator contains

$$
e^{i\mathbf Q\cdot\mathbf r_{l\kappa}}
=e^{i\mathbf Q\cdot
(\mathbf R_l+\boldsymbol\tau_\kappa)}
e^{i\mathbf Q\cdot\mathbf u_{l\kappa}}.
$$

The displacement exponential itself has the series

$$
e^{i\mathbf Q\cdot\mathbf u}
\simeq
\left[
1+i\mathbf Q\cdot\mathbf u
-\frac12(\mathbf Q\cdot\mathbf u)^2+\cdots
\right].
$$

Here

$$
W_\kappa(\mathbf Q)
=\frac12
\left\langle
(\mathbf Q\cdot\mathbf u_{l\kappa})^2
\right\rangle.
$$

Evaluation of harmonic matrix elements supplies a Debye--Waller amplitude factor $e^{-W_\kappa}$ to each term. The constant term gives elastic Bragg scattering. The term linear in $\mathbf u$ creates or annihilates one phonon. Quadratic and higher terms generate two-phonon and multiphonon scattering. Since a one-phonon amplitude contains $\mathbf Q\cdot\mathbf u$, neutron scattering directly probes the component of atomic motion parallel to $\mathbf Q$.

## One-phonon coherent structure factor

Use the quantized displacement

$$
\mathbf u_{l\kappa}
=\frac{1}{\sqrt{NM_\kappa}}
\sum_{\mathbf q s}
\sqrt{\frac{\hbar}{2\omega_{\mathbf q s}}}
\left[
\mathbf e_\kappa(\mathbf q,s)
a_{\mathbf q s}
e^{i\mathbf q\cdot\mathbf R_l}
+\mathbf e_\kappa^{*}(\mathbf q,s)
a_{\mathbf q s}^{\dagger}
e^{-i\mathbf q\cdot\mathbf R_l}
\right].
$$

The phonon-creation structure amplitude is

$$
\boxed{
F_s^{\mathrm{cr}}(\mathbf Q,\mathbf q)
=\sum_{\kappa}
\frac{b_\kappa e^{-W_\kappa(\mathbf Q)}}
{\sqrt{M_\kappa}}\,
\left[
\mathbf Q\cdot
\mathbf e_\kappa^{*}(\mathbf q,s)
\right]
e^{i\mathbf Q\cdot\boldsymbol\tau_\kappa}.
}
$$

The annihilation amplitude is

$$
\boxed{
F_s^{\mathrm{an}}(\mathbf Q,\mathbf q)
=\sum_{\kappa}
\frac{b_\kappa e^{-W_\kappa(\mathbf Q)}}
{\sqrt{M_\kappa}}\,
\left[
\mathbf Q\cdot
\mathbf e_\kappa(\mathbf q,s)
\right]
e^{i\mathbf Q\cdot\boldsymbol\tau_\kappa}.
}
$$

For an ideal crystal, the coherent lattice sum is non-zero only when the scattering vector differs from the phonon wavevector by a reciprocal-lattice vector. Apart from the conventional normalization of reciprocal-space delta functions, the coherent one-phonon scattering law is

$$
\boxed{
\begin{aligned}
S_b^{(1)}(\mathbf Q,E)
=\frac{N\hbar}{2}
\sum_{\mathbf q s}
\frac{1}{\omega_{\mathbf q s}}
\sum_{\mathbf G}
\Big\{&
(\bar n_{\mathbf q s}+1)
\left\lvert
F_s^{\mathrm{cr}}(\mathbf Q,\mathbf q)
\right\rvert^2
\Delta(\mathbf Q-\mathbf G-\mathbf q)
\delta(E-\hbar\omega_{\mathbf q s})
\\
&+\bar n_{\mathbf q s}
\left\lvert
F_s^{\mathrm{an}}(\mathbf Q,\mathbf q)
\right\rvert^2
\Delta(\mathbf Q-\mathbf G+\mathbf q)
\delta(E+\hbar\omega_{\mathbf q s})
\Big\}.
\end{aligned}
}
$$

$\Delta$ denotes the reciprocal-space selection function: a Kronecker delta for a finite periodic crystal and a reciprocal-space Dirac delta, with the corresponding volume normalization, in the infinite-crystal limit. The two contributions contain the experimentally invariant content:

### Phonon creation

The neutron loses energy and creates a phonon:

$$
\boxed{
E=+\hbar\omega_{\mathbf q s},
\qquad
\mathbf Q=\mathbf G+\mathbf q.
}
$$

The oscillator matrix element is

$$
\left\lvert
\langle n+1\lvert a^\dagger\rvert n\rangle
\right\rvert^2=n+1,
$$

so the thermal intensity factor is $\bar n+1$. Creation remains possible at $T=0$ because of the unity term.

### Phonon annihilation

The neutron gains energy by destroying a thermally occupied phonon:

$$
\boxed{
E=-\hbar\omega_{\mathbf q s},
\qquad
\mathbf Q=\mathbf G-\mathbf q.
}
$$

Since

$$
\left\lvert
\langle n-1\lvert a\rvert n\rangle
\right\rvert^2=n,
$$

the intensity factor is $\bar n$. Annihilation vanishes as $T\to0$. In optical-spectroscopy language, creation is the Stokes side and annihilation the anti-Stokes side.

The reduced phonon wavevector is obtained by subtracting a reciprocal vector:

$$
\mathbf q=\mathbf Q-\mathbf G
$$

for creation, and it is conventionally folded into the first Brillouin zone. Momentum is conserved as crystal momentum modulo $\mathbf G$, not as unrestricted continuum momentum.

## Bose factors and detailed balance

The equilibrium occupation is

$$
\bar n(\omega)
=\frac{1}{e^{\beta\hbar\omega}-1}.
$$

It obeys

$$
\frac{\bar n}{\bar n+1}
=e^{-\beta\hbar\omega}.
$$

Consequently, after comparing equivalent wavevectors and correcting the kinematic factor $k_f/k_i$,

$$
\boxed{
\frac{I_{\mathrm{ann}}}{I_{\mathrm{cre}}}
=e^{-\hbar\omega/(k_{\mathrm B}T)}.
}
$$

The general detailed-balance relation is

$$
\boxed{
S_b(\mathbf Q,-E)
=e^{-E/(k_{\mathrm B}T)}
S_b(-\mathbf Q,E).
}
$$

For a reciprocal system with
$S_b(-\mathbf Q,E)=S_b(\mathbf Q,E)$, this reduces to the familiar relation between negative- and positive-energy sides at the same $\mathbf Q$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/neutron-phonon-scattering.png' | relative_url }}" alt="Inelastic neutron-scattering wavevector geometry, phonon creation and annihilation peaks, and detailed-balance relation">
  <figcaption>The momentum transfer is the tip-to-tip difference $\mathbf Q=\mathbf k_i-\mathbf k_f$. Creation and annihilation obey $\mathbf Q=\mathbf G+\mathbf q$ and $\mathbf Q=\mathbf G-\mathbf q$, respectively; their thermal weights are $\bar n+1$ and $\bar n$, subject to detailed balance and the experimental flux factor.</figcaption>
</figure>

## Polarization and basis selection rules

The factor

$$
\left\lvert
\mathbf Q\cdot\mathbf e_\kappa(\mathbf q,s)
\right\rvert^2
$$

suppresses a mode whose displacement is perpendicular to $\mathbf Q$. It is therefore incorrect to say that neutrons detect only longitudinal phonons. A transverse phonon relative to $\mathbf q$ can be strong whenever its polarization has a component along the total scattering vector $\mathbf Q=\mathbf G+\mathbf q$.

For a multi-atom basis, amplitudes from different atoms add before their modulus is squared:

$$
\left\lvert
\sum_\kappa
\frac{b_\kappa}{\sqrt{M_\kappa}}
(\mathbf Q\cdot\mathbf e_\kappa)
e^{i\mathbf Q\cdot\boldsymbol\tau_\kappa}
\right\rvert^2.
$$

Relative phases can cause constructive or destructive interference. Hence a phonon can be absent near one reciprocal-lattice point and intense near another even though its frequency is unchanged. To select a mode experimentally, one chooses a Brillouin zone where both the polarization factor and basis structure factor are favourable.

The remaining one-phonon factors have clear origins:

$$
\frac{1}{\omega_{\mathbf q s}}
$$

comes from the squared quantum displacement amplitude.

The Debye--Waller amplitude $e^{-W_\kappa}$ suppresses scattering at large $Q$ and high temperature. For a monatomic crystal, or for an individual diagonal term in an incoherent sum, squaring this amplitude gives the intensity factor

$$
e^{-2W_\kappa}.
$$

For a coherent multi-atom basis, $e^{-W_\kappa}$ must remain inside the sum over $\kappa$; an interference term involving atoms $\kappa$ and $\kappa'$ contains $e^{-(W_\kappa+W_{\kappa'})}$. Finally,

$$
\frac{k_f}{k_i}
$$

is the final-to-initial neutron phase-space factor.

## Experimental scanning geometry

In a triple-axis experiment, monochromator and analyser crystals select $k_i$ and $k_f$, while sample and detector angles set $\mathbf Q$. The four conservation variables are related by

$$
\mathbf Q=\mathbf k_i-\mathbf k_f,
\qquad
E=\frac{\hbar^2}{2m_n}(k_i^2-k_f^2).
$$

A constant-$\mathbf Q$ scan varies energy transfer while maintaining a chosen scattering vector. A phonon appears as a peak at
$E=\pm\hbar\omega_{\mathbf q s}$. A constant-energy scan moves through reciprocal space at fixed energy transfer and locates wavevectors satisfying the dispersion relation. Time-of-flight instruments record a broad range of final energies and detector angles simultaneously and reconstruct $S(\mathbf Q,E)$ over a multi-dimensional region.

The conservation equations are necessary but not sufficient for measurable intensity. A proposed point must also satisfy the instrument's incident-energy range, accessible scattering angles, polarization factor, structure factor and energy--momentum resolution.

## Worked kinematic example

Suppose a neutron with

$$
E_i=30.0\,\mathrm{meV}
$$

creates a phonon of energy

$$
\hbar\omega=8.00\,\mathrm{meV}.
$$

Then

$$
E_f=22.0\,\mathrm{meV},
$$

and

$$
k_i=\sqrt{\frac{30.0}{2.072}}
=3.805\,\mathrm{\mathring A^{-1}},
$$

$$
k_f=\sqrt{\frac{22.0}{2.072}}
=3.258\,\mathrm{\mathring A^{-1}}.
$$

Let $\mathbf k_i$ define the $x$ axis and let the scattering angle be
$\phi=40.0^\circ$. Then

$$
\mathbf Q
=\left(
k_i-k_f\cos\phi,\,
-k_f\sin\phi
\right)
=(1.309,-2.094)\,\mathrm{\mathring A^{-1}},
$$

so

$$
Q=2.470\,\mathrm{\mathring A^{-1}}.
$$

For a cubic lattice with $a=4.00\,\mathrm{\mathring A}$, one reciprocal-lattice spacing is

$$
\frac{2\pi}{a}
=1.571\,\mathrm{\mathring A^{-1}}.
$$

Choosing

$$
\mathbf G
=\frac{2\pi}{a}(1,-1)
=(1.571,-1.571)\,\mathrm{\mathring A^{-1}},
$$

the creation selection rule gives the reduced wavevector

$$
\mathbf q=\mathbf Q-\mathbf G
=(-0.262,-0.524)\,\mathrm{\mathring A^{-1}}.
$$

Both components lie inside the first-zone interval
$-\pi/a$ to $\pi/a$, and

$$
q=0.585\,\mathrm{\mathring A^{-1}}.
$$

A scattering peak occurs only if a phonon branch at this reduced wavevector has energy $8.00\,\mathrm{meV}$ and a non-zero structure factor.

At $300\,\mathrm K$,

$$
\bar n
=\frac{1}
{\exp\!\left[\dfrac{8.00\,\mathrm{meV}}
{k_{\mathrm B}(300\,\mathrm K)}\right]-1}
=2.76,
$$

so the creation and annihilation population factors are

$$
\bar n+1=3.76,
\qquad
\bar n=2.76.
$$

Their corrected intensity ratio is

$$
\frac{I_{\mathrm{ann}}}{I_{\mathrm{cre}}}
=\exp\!\left[-\frac{8.00\,\mathrm{meV}}{25.85\,\mathrm{meV}}\right]
=0.734.
$$

At $50.0\,\mathrm K$, the same ratio falls to

$$
\exp\!\left[-\frac{8.00\,\mathrm{meV}}{4.309\,\mathrm{meV}}\right]
=0.156.
$$

The disappearance of the energy-gain side on cooling is a direct consequence of the declining thermal phonon population.

## Preparation questions

1. Derive the neutron energy- and momentum-transfer equations and construct the inelastic scattering triangle.
2. Starting from the Fermi pseudopotential, define the scattering-length-weighted dynamic structure factor and state its relation to the double-differential cross section.
3. Expand the nuclear scattering operator in atomic displacements and identify the elastic, one-phonon and multiphonon terms.
4. Derive the coherent one-phonon creation and annihilation terms, including their energy and reciprocal-lattice selection rules.
5. Explain the origins of the polarization factor, basis structure factor, Debye--Waller factor and $1/\omega$ factor.
6. Derive the detailed-balance relation between phonon creation and annihilation intensities.
7. Distinguish coherent and incoherent neutron scattering and explain how each is used in phonon measurements.
8. Given $E_i$, energy transfer, scattering angle and lattice constant, calculate $\mathbf Q$, choose an appropriate $\mathbf G$, and obtain the reduced phonon wavevector.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/neutron-scattering-by-phonons.mac' | relative_url }})

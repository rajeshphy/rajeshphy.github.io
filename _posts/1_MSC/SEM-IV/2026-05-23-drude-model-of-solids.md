---
title: "Drude Model of Solids"
summary: "Classical carrier dynamics, dc and optical conductivity, complex permittivity, plasma edge, spectral weight and the limits of the Drude description."
date: 2026-05-23 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - drude-model
  - optical-conductivity
  - complex-permittivity
  - plasma-edge
  - sum-rule
permalink: /msc/sem-iv/drude-model-of-solids/
hidden: true
---

The Drude model describes the mobile electrons of a solid as a classical gas moving through a stationary ionic background. Between collisions an electron accelerates according to Newton's law; collisions randomize its drift momentum and are represented by a single relaxation time $\tau$. Although this picture omits quantum statistics and the periodic crystal potential, it establishes the relations among electrical conductivity, optical conductivity, dielectric response, reflectance and the plasma edge.

The derivations below use SI units, carrier charge $-e$ with $e>0$, carrier density $n$, optical effective mass $m^*$, collision rate $\gamma=1/\tau$, and harmonic time dependence $e^{-i\omega t}$.

## Relaxation-time equation of motion

Let $\mathbf v$ denote the ensemble-averaged drift velocity. In the absence of an applied field, collisions remove the directed momentum at the rate $\mathbf p/\tau$. The equation of motion in an electric field is therefore

$$
m^*\frac{d\mathbf v}{dt}
+\frac{m^*}{\tau}\mathbf v=-e\mathbf E(t),
$$

or

$$
\boxed{
\frac{d\mathbf v}{dt}+\gamma\mathbf v
=-\frac{e}{m^*}\mathbf E(t)
}.
$$

This equation is an equation for the average velocity, not for the irregular instantaneous velocity of one electron. The collision term preserves the equilibrium random motion while relaxing only the field-induced part of the distribution.

For a constant field switched on at $t=0$, with $\mathbf v(0)=0$,

$$
\mathbf v(t)=-\frac{e\tau}{m^*}\mathbf E
\left(1-e^{-t/\tau}\right).
$$

At long times the drift velocity is

$$
\boxed{\mathbf v_d=-\mu\mathbf E,
\qquad \mu=\frac{e\tau}{m^*}},
$$

where $\mu$ is the magnitude of the electron mobility. Since the conventional current density is $\mathbf J=-ne\mathbf v_d$,

$$
\boxed{
\mathbf J=\sigma_0\mathbf E,
\qquad
\sigma_0=\frac{ne^2\tau}{m^*}
=\frac{ne^2}{m^*\gamma}
}.
$$

Thus the dc resistivity is

$$
\boxed{\rho_0=\frac{1}{\sigma_0}
=\frac{m^*}{ne^2\tau}}.
$$

The mean free path associated with carriers of characteristic speed $v$ is $\ell=v\tau$. In a degenerate metal the relevant speed for transport estimates is ordinarily the Fermi velocity rather than the classical thermal speed.

## Frequency-dependent conductivity

For a monochromatic field

$$
\mathbf E(t)=\operatorname{Re}\!\left[\mathbf E_0e^{-i\omega t}\right],
\qquad
\mathbf v(t)=\operatorname{Re}\!\left[\mathbf v_0e^{-i\omega t}\right],
$$

the equation of motion gives

$$
(\gamma-i\omega)\mathbf v_0
=-\frac{e}{m^*}\mathbf E_0.
$$

Consequently,

$$
\mathbf J_0=-ne\mathbf v_0
=\frac{ne^2}{m^*(\gamma-i\omega)}\mathbf E_0,
$$

and the complex Drude conductivity is

$$
\boxed{
\sigma(\omega)=\frac{ne^2}{m^*(\gamma-i\omega)}
=\frac{\sigma_0}{1-i\omega\tau}
}.
$$

Writing $\sigma=\sigma_1+i\sigma_2$,

$$
\boxed{
\sigma_1(\omega)
=\frac{\sigma_0}{1+\omega^2\tau^2}
=\frac{ne^2\gamma}{m^*(\gamma^2+\omega^2)}
},
$$

$$
\boxed{
\sigma_2(\omega)
=\frac{\sigma_0\omega\tau}{1+\omega^2\tau^2}
=\frac{ne^2\omega}{m^*(\gamma^2+\omega^2)}
}.
$$

The real part is dissipative. The mean power converted into heat per unit volume is

$$
\boxed{
\langle p\rangle
=\frac12\sigma_1(\omega)\lvert\mathbf E_0\rvert^2
}.
$$

The imaginary part represents reversible storage of kinetic energy in the carrier motion. For $\omega\tau\ll1$, the carriers follow the field and $\sigma\simeq\sigma_0$. For $\omega\tau\gg1$,

$$
\sigma_1\simeq\frac{ne^2\gamma}{m^*\omega^2},
\qquad
\sigma_2\simeq\frac{ne^2}{m^*\omega}.
$$

Collisions then dissipate little energy during one optical cycle, while the current is nearly $90^\circ$ out of phase with the field.

## Drude dielectric function

Separate the response of the mobile carriers from the more rapid bound-charge polarization, represented over the frequency range of interest by a real background permittivity $\varepsilon_\infty$. Ampere's law contains

$$
\mathbf J-i\omega\varepsilon_0\varepsilon_\infty\mathbf E
=-i\omega\varepsilon_0\varepsilon(\omega)\mathbf E.
$$

It follows that

$$
\varepsilon(\omega)
=\varepsilon_\infty+\frac{i\sigma(\omega)}{\varepsilon_0\omega}.
$$

Define the unscreened plasma frequency

$$
\boxed{
\omega_p^2=\frac{ne^2}{\varepsilon_0m^*}
}.
$$

Substitution of the Drude conductivity gives

$$
\boxed{
\varepsilon(\omega)
=\varepsilon_\infty
-\frac{\omega_p^2}{\omega(\omega+i\gamma)}
}.
$$

For the adopted $e^{-i\omega t}$ convention, write $\varepsilon=\varepsilon'+i\varepsilon''$ with $\varepsilon''>0$ in a passive medium. Rationalizing the denominator yields

$$
\boxed{
\varepsilon'(\omega)
=\varepsilon_\infty-
\frac{\omega_p^2}{\omega^2+\gamma^2}
},
$$

$$
\boxed{
\varepsilon''(\omega)
=\frac{\omega_p^2\gamma}
{\omega(\omega^2+\gamma^2)}
}.
$$

These expressions obey

$$
\varepsilon''=\frac{\sigma_1}{\varepsilon_0\omega},
\qquad
\varepsilon'-\varepsilon_\infty
=-\frac{\sigma_2}{\varepsilon_0\omega}.
$$

The $1/\omega$ divergence of $\varepsilon''$ at low frequency is the dielectric representation of dc conduction; it is not a resonance of bound dipoles.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-2/drude-optical-response.png' | relative_url }}" alt="Real and imaginary Drude conductivity and dielectric response as functions of frequency">
  <figcaption>The dissipative conductivity $\sigma_1$ rolls off above the collision rate while $\sigma_2$ peaks near $\omega\tau=1$. For the illustrated $\varepsilon_\infty=1$ parameters, the damping-shifted zero of $\varepsilon_1$ defines the plasma edge; finite $\varepsilon_2$ broadens the optical crossover.</figcaption>
</figure>

## Plasma edge and optical behaviour

For weak damping, the sign of $\varepsilon'$ separates two optical regimes. The zero of its real part occurs at

$$
\boxed{
\omega_{\mathrm{edge}}
=\left(\frac{\omega_p^2}{\varepsilon_\infty}-\gamma^2\right)^{1/2}
},
$$

provided $\omega_p^2/\varepsilon_\infty>\gamma^2$. In the collisionless limit,

$$
\omega_{\mathrm{edge}}
=\frac{\omega_p}{\sqrt{\varepsilon_\infty}}.
$$

Below this frequency, $\varepsilon'$ is negative over a substantial range. A low-loss, nonmagnetic medium then has a mainly imaginary refractive index, so a transverse electromagnetic wave is evanescent and the surface is strongly reflecting. Above the edge, $\varepsilon'$ becomes positive and propagation is possible unless interband absorption intervenes. The abrupt decrease in reflectance near the screened plasma frequency is called the **plasma edge**.

The zero of the full complex dielectric function also identifies a self-sustained longitudinal collective mode. In a lossless Drude medium,

$$
\varepsilon(\omega_L)=0
\quad\Longrightarrow\quad
\omega_L=\frac{\omega_p}{\sqrt{\varepsilon_\infty}}.
$$

With damping, the complex roots are

$$
\omega=-\frac{i\gamma}{2}
\mathbin{\pm}
\sqrt{\frac{\omega_p^2}{\varepsilon_\infty}
-\frac{\gamma^2}{4}}.
$$

The optical edge defined by $\varepsilon'=0$ and the pole of the loss function $\operatorname{Im}[-1/\varepsilon]$ are therefore closely related but are not identical when damping or interband structure is appreciable.

## Conductivity spectral weight and the sum rule

The area under the dissipative Drude peak is independent of the relaxation rate:

$$
\int_0^\infty\sigma_1(\omega)\,d\omega
=\frac{ne^2}{m^*}
\int_0^\infty\frac{\gamma\,d\omega}
{\gamma^2+\omega^2}.
$$

Since the integral equals $\pi/2$,

$$
\boxed{
\int_0^\infty\sigma_1(\omega)\,d\omega
=\frac{\pi ne^2}{2m^*}
=\frac{\pi}{2}\varepsilon_0\omega_p^2
}.
$$

Changing $\gamma$ broadens or narrows the Drude peak but does not change its total spectral weight. In the ideal limit $\gamma\to0^+$, $\sigma_1$ becomes a delta function at zero frequency with the same integrated area. For all electrons with their bare mass, the exact longitudinal optical $f$-sum rule is

$$
\int_0^\infty\sigma_1(\omega)\,d\omega
=\frac{\pi n_{\mathrm{tot}}e^2}{2m_e}.
$$

In a solid, a partial integral restricted to an intraband band is commonly expressed through a band optical mass; interband transitions carry the remaining spectral weight required by the full sum rule.

## Hall response in the elementary Drude model

For static crossed fields, the equation of motion becomes

$$
m^*\frac{d\mathbf v}{dt}
=-e\left(\mathbf E+\mathbf v\times\mathbf B\right)
-\frac{m^*\mathbf v}{\tau}.
$$

Take $\mathbf B=B\hat{\mathbf z}$ and impose an open-circuit condition $J_y=0$. Then $v_y=0$, and the transverse force balance gives

$$
-e(E_y-v_xB)=0,
\qquad E_y=v_xB.
$$

Because $J_x=-nev_x$,

$$
\boxed{
R_H=\frac{E_y}{J_xB}=-\frac{1}{ne}
}.
$$

This single-band result correctly identifies electron-like carriers but fails in multiband conductors and in bands whose transport is not represented by an isotropic parabolic dispersion.

## Worked calculation: metallic Drude parameters

Consider a metal with

$$
n=8.50\times10^{28}\ \mathrm{m^{-3}},
\qquad
m^*=m_e,
\qquad
\tau=2.50\times10^{-14}\ \mathrm s,
\qquad
\varepsilon_\infty=1.
$$

The dc conductivity and resistivity are

$$
\sigma_0=\frac{ne^2\tau}{m_e}
=5.99\times10^7\ \mathrm{S\,m^{-1}},
$$

$$
\rho_0=1.67\times10^{-8}\ \Omega\,\mathrm m.
$$

The collision rate and plasma frequency are

$$
\gamma=\frac1\tau=4.00\times10^{13}\ \mathrm{s^{-1}},
$$

$$
\omega_p
=\sqrt{\frac{ne^2}{\varepsilon_0m_e}}
=1.64\times10^{16}\ \mathrm{s^{-1}}.
$$

Thus

$$
f_p=\frac{\omega_p}{2\pi}
=2.62\times10^{15}\ \mathrm{Hz},
\qquad
\hbar\omega_p=10.8\ \mathrm{eV}.
$$

At $\omega=2.00\times10^{15}\ \mathrm{s^{-1}}$, $\omega\tau=50.0$, so

$$
\sigma_1=2.40\times10^4\ \mathrm{S\,m^{-1}},
\qquad
\sigma_2=1.20\times10^6\ \mathrm{S\,m^{-1}},
$$

and

$$
\varepsilon'=-66.6,
\qquad
\varepsilon''=1.35.
$$

The large negative real permittivity explains the strongly reflecting character predicted by the free-electron model at this frequency.

## Domain of validity

The classical Drude model successfully relates the low-frequency conductivity to $n$, $m^*$ and $\tau$, and it captures the broad intraband optical response of many metals and doped semiconductors. Its microscopic assumptions nevertheless impose definite restrictions.

Classical Maxwell--Boltzmann statistics gives an incorrect electronic heat capacity and an incorrect characteristic carrier speed for an ordinary metal. The Sommerfeld theory retains the relaxation-time transport equation but uses Fermi--Dirac statistics; only electrons within an energy range of order $k_{\mathrm B}T$ around the Fermi surface change their occupations appreciably.

A real crystal has energy bands. The optical mass can differ from $m_e$, can depend on direction, and can vary over the Fermi surface. Multiple electron and hole bands invalidate the single value $R_H=-1/(ne)$. The collision rate generally depends on energy, temperature and frequency because phonons, impurities, defects and electron--electron scattering are distinct processes.

The Drude term describes intraband motion but not interband transitions. A practical optical dielectric function consequently combines it with bound-electron oscillators,

$$
\varepsilon(\omega)
=\varepsilon_\infty
-\frac{\omega_{p,D}^2}{\omega(\omega+i\gamma_D)}
+\sum_j
\frac{S_j}{\omega_j^2-\omega^2-i\gamma_j\omega}.
$$

This Drude--Lorentz form distinguishes the zero-frequency carrier response from finite-frequency absorption bands while remaining consistent with causality and optical sum rules.

## Preparation questions

1. Starting from the relaxation-time equation, derive the dc mobility, conductivity and resistivity of an electron gas.
2. Derive the real and imaginary parts of the complex Drude conductivity for the $e^{-i\omega t}$ convention.
3. Obtain the Drude dielectric function and show explicitly how $\varepsilon'$ and $\varepsilon''$ are related to $\sigma_2$ and $\sigma_1$.
4. Explain the low- and high-frequency limits of the Drude conductivity in terms of $\omega\tau$.
5. Derive the screened plasma-edge frequency and discuss the role of $\varepsilon_\infty$ and $\gamma$.
6. Show that the integrated area under $\sigma_1(\omega)$ is independent of the collision rate.
7. Derive the single-carrier Hall coefficient and state why it can fail in a multiband solid.
8. Distinguish an optical plasma edge, a zero of the complex dielectric function and a maximum of the loss function.
9. For specified $n$, $m^*$ and $\tau$, calculate $\sigma_0$, $\rho_0$, $\omega_p$, $\sigma_1(\omega)$ and $\sigma_2(\omega)$.
10. Discuss which predictions of the Drude model survive after Fermi statistics and band structure are included.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-2/drude-model-of-solids.mac' | relative_url }})

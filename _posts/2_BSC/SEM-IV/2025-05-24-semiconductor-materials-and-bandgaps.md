---
title: "Semiconductor Materials, Carriers, and Band Gaps"
summary: "Semiconductor classification, electron and hole carriers, direct and indirect gaps, and heavy doping."
date: 2025-05-24 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, semiconductor-materials]
permalink: /bsc/sem-iv/mj-7/semiconductor-materials-and-bandgaps/
hidden: true
---

A crystalline semiconductor is described by allowed electron-energy bands. The highest band occupied at absolute zero is the valence band; the next allowed band is the conduction band. Their edge energies $E_v$ and $E_c$ define

$$E_g=E_c-E_v.$$

An insulator has a gap too large for appreciable thermal excitation, a metal has a partly filled band or overlapping bands, and a semiconductor has an intermediate gap whose carrier population can be controlled by temperature and impurities. Silicon, germanium, and gallium arsenide are standard semiconductor materials.

## Electrons and holes

An electron promoted from the valence band to the conduction band leaves one missing valence electron. If a neighbouring valence electron fills that vacancy, the vacancy moves oppositely. The vacancy is therefore represented as a hole of charge $+q$. For an electric field $\mathbf E$,

$$\mathbf F_e=-q\mathbf E,\qquad \mathbf F_h=+q\mathbf E.$$

Both carriers contribute to conventional current in the field direction. If $n$ and $p$ are their number densities and $\mu_n,\mu_p$ their mobilities, the drift velocities are $\mathbf v_n=-\mu_n\mathbf E$ and $\mathbf v_p=\mu_p\mathbf E$. Hence

$$
\mathbf J_n=(-qn)\mathbf v_n=qn\mu_n\mathbf E,
\qquad
\mathbf J_p=(qp)\mathbf v_p=qp\mu_p\mathbf E,
$$

and

$$\boxed{\sigma=q(n\mu_n+p\mu_p)},\qquad \rho=\sigma^{-1}.$$

Here $n,p$ have units $\mathrm{m^{-3}}$, mobility has units $\mathrm{m^2\,V^{-1}s^{-1}}$, and conductivity has units $\mathrm{S\,m^{-1}}$.

## Intrinsic and extrinsic material

In a pure, thermally equilibrated semiconductor every excitation produces one electron-hole pair, so

$$n=p=n_i.$$

Intentional impurity atoms create an extrinsic semiconductor. A shallow donor supplies an electron and produces n-type material; a shallow acceptor captures a valence electron and leaves a hole, producing p-type material. Charge neutrality is not lost: the mobile carrier is balanced by a fixed ionized impurity.

## Direct and indirect gaps

Crystal momentum is $\hbar\mathbf k$. In a direct-gap semiconductor, the conduction-band minimum and valence-band maximum occur at the same $\mathbf k$. A vertical transition can conserve momentum while a photon supplies energy $h\nu\ge E_g$, so radiative recombination is efficient.

In an indirect-gap semiconductor, those extrema occur at different wavevectors. A photon carries negligible crystal momentum on the Brillouin-zone scale, so a phonon must supply the momentum difference. For an absorption transition, the two possibilities are

$$
\begin{aligned}
\text{phonon absorbed:}\quad
&h\nu=E_g-\hbar\Omega_{\rm ph},
&\mathbf k_c-\mathbf k_v&=+\mathbf q_{\rm ph},\\
\text{phonon emitted:}\quad
&h\nu=E_g+\hbar\Omega_{\rm ph},
&\mathbf k_c-\mathbf k_v&=-\mathbf q_{\rm ph}.
\end{aligned}
$$

The extra phonon requirement makes light emission less probable. GaAs is direct-gap; Si is indirect-gap.

## Heavy doping

At moderate doping, donor or acceptor states are discrete and the carriers remain non-degenerate. With heavy doping the impurity wavefunctions overlap, impurity levels broaden into an impurity band, and the Fermi level may enter a principal band. Maxwell-Boltzmann statistics then fail and the full Fermi-Dirac distribution is required. Heavy doping also narrows a junction depletion region, making field-assisted tunnelling possible; it does not change the sign of the electron or hole charge.

---
title: "Doping, Carrier Concentration, and Mobility"
summary: "Charge neutrality, donor and acceptor doping, Fermi-level displacement, mobility, and conductivity."
date: 2025-05-29 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, doping, mobility]
permalink: /bsc/sem-iv/mj-7/doping-carrier-concentration-and-mobility/
hidden: true
---

Let $N_D^+$ and $N_A^-$ be ionized donor and acceptor densities. Local electrical neutrality requires total positive and negative charge densities to agree:

$$\boxed{p+N_D^+=n+N_A^-}.$$

When donors and acceptors are fully ionized, $N_D^+=N_D$ and $N_A^-=N_A$. Together with $np=n_i^2$, this determines the equilibrium carriers.

## n-type material

For $N_D>N_A$, neutrality becomes $n-p=N_D-N_A\equiv N$. Since $p=n_i^2/n$,

$$n-\frac{n_i^2}{n}=N,$$

so

$$
n^2-Nn-n_i^2=0,
\qquad
\boxed{n=\frac{N+\sqrt{N^2+4n_i^2}}2},
\qquad p=\frac{n_i^2}{n}.
$$

If $N\gg n_i$, then $n\simeq N_D-N_A$ and $p\simeq n_i^2/n$. Using $n=n_i\exp[(E_F-E_i)/(k_BT)]$,

$$\boxed{E_F-E_i=k_BT\ln(n/n_i)}.$$

Thus donor doping raises the Fermi level.

## p-type material

For $N_A>N_D$, put $P=N_A-N_D$. Then $p-n=P$ and

$$
\boxed{p=\frac{P+\sqrt{P^2+4n_i^2}}2},
\qquad n=\frac{n_i^2}{p},
$$

with

$$\boxed{E_i-E_F=k_BT\ln(p/n_i)}.$$

Acceptor doping therefore lowers the Fermi level. In heavily doped material $E_F$ approaches or enters a band, and these non-degenerate exponential formulas must be replaced by Fermi-Dirac integrals.

## Temperature dependence of carrier concentration

For shallow dopants there are three useful temperature ranges. At low temperature, dopants are only partly ionized (freeze-out), so the majority-carrier density rises rapidly as dopant atoms ionize. In the intermediate extrinsic range, ionization is nearly complete and the majority density is approximately the net dopant density; for example, $n\simeq N_D-N_A$ in compensated n-type material. At sufficiently high temperature, thermal pair generation dominates the dopants and

$$
n\simeq p\simeq n_i
=\sqrt{N_cN_v}\exp\!\left[-\frac{E_g}{2k_BT}\right].
$$

Because $N_c,N_v\propto T^{3/2}$ for temperature-independent effective masses, $n_i\propto T^{3/2}e^{-E_g/(2k_BT)}$. The minority density in the extrinsic range follows $p=n_i^2/n$ or $n=n_i^2/p$, so it remains strongly temperature dependent even when the majority density is nearly fixed.

## Mobility and its dependence

In the relaxation-time model, a carrier with effective mass $m^*$ obeys

$$m^*\frac{d\mathbf v}{dt}=q_c\mathbf E-\frac{m^*\mathbf v}{\tau}.$$

In steady state,

$$\mathbf v_d=\frac{q_c\tau}{m^*}\mathbf E,$$

so the positive mobility magnitude is

$$\boxed{\mu=\frac{\lvert q_c\rvert\tau}{m^*}}.$$

Lattice vibrations shorten $\tau$ as temperature rises, while ionized impurities shorten it as doping rises. If the two scattering mechanisms are independent, their rates add:

$$\boxed{\frac1\mu=\frac1{\mu_{\rm lattice}}+\frac1{\mu_{\rm impurity}}}.$$

Carrier concentration and mobility therefore affect conductivity separately:

$$\sigma=q(n\mu_n+p\mu_p).$$

Doping normally increases $n$ or $p$ by many orders of magnitude even though impurity scattering reduces mobility; the net conductivity consequently rises.

The mobility laws are material- and temperature-range dependent. In simple three-dimensional models, lattice-limited mobility often varies approximately as $T^{-3/2}$, whereas ionized-impurity-limited mobility varies approximately as $T^{3/2}/N_{\rm ion}$. These powers are approximations, not universal constants.

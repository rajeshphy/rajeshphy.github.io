---
title: "Fermi-Dirac Distribution and Carrier Equilibrium"
summary: "Fermi occupation, equilibrium electron and hole concentrations, and the mass-action law."
date: 2025-05-22 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, fermi-level, carrier-concentration]
permalink: /bsc/sem-iv/mj-7/fermi-dirac-distribution-and-carrier-equilibrium/
hidden: true
---

The Fermi level $E_F$ is the chemical potential for electrons. Thermal equilibrium gives the occupation probability

$$\boxed{f(E)=\frac{1}{1+\exp[(E-E_F)/(k_BT)]}}.$$

At $E=E_F$, $f=1/2$. At $T=0$, every state below $E_F$ is occupied and every state above it is empty. Holes require an empty valence state, so their probability is

$$1-f(E)=\frac{1}{1+\exp[(E_F-E)/(k_BT)]}.$$

## Electron concentration

The electron density is

$$n=\int_{E_c}^{\infty}g_c(E)f(E)\,dE.$$

For a non-degenerate semiconductor, $E_c-E_F\gtrsim3k_BT$, and

$$f(E)\simeq\exp[-(E-E_F)/(k_BT)].$$

Substituting the parabolic-band density of states and setting $\epsilon=E-E_c$ gives

$$
n=\frac{1}{2\pi^2}\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}
e^{-(E_c-E_F)/(k_BT)}
\int_0^\infty\epsilon^{1/2}e^{-\epsilon/(k_BT)}d\epsilon.
$$

With $u=\epsilon/(k_BT)$ and $\Gamma(3/2)=\sqrt\pi/2$,

$$
n=2\left(\frac{2\pi m_n^*k_BT}{h^2}\right)^{3/2}
e^{-(E_c-E_F)/(k_BT)}.
$$

Defining $N_c=2(2\pi m_n^*k_BT/h^2)^{3/2}$,

$$\boxed{n=N_c e^{-(E_c-E_F)/(k_BT)}}.$$

An identical calculation for empty valence states gives

$$\boxed{p=N_v e^{-(E_F-E_v)/(k_BT)}},\qquad
N_v=2\left(\frac{2\pi m_p^*k_BT}{h^2}\right)^{3/2}.
$$

Multiplication eliminates $E_F$:

$$
\boxed{np=N_cN_v e^{-E_g/(k_BT)}=n_i^2}.
$$

This mass-action law applies at thermal equilibrium. For an intrinsic semiconductor, $n=p=n_i$, hence

$$
n_i=\sqrt{N_cN_v}\,e^{-E_g/(2k_BT)},
$$

and

$$
\boxed{E_i=\frac{E_c+E_v}{2}+\frac{k_BT}{2}\ln\frac{N_v}{N_c}}.
$$

The symbolic derivation is checked in [carrier-statistics-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/carrier-statistics-check.mac' | relative_url }}); its mass-action and intrinsic-neutrality residuals are both zero.

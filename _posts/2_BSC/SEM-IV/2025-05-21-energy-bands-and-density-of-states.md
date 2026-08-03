---
title: "Energy Bands and Density of States"
summary: "Band formation and the three-dimensional conduction- and valence-band densities of states."
date: 2025-05-21 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, energy-bands, density-of-states]
permalink: /bsc/sem-iv/mj-7/energy-bands-and-density-of-states/
hidden: true
---

When $N$ identical atoms form a crystal, overlap between atomic orbitals removes their $N$-fold degeneracy and produces closely spaced allowed levels. In a macroscopic crystal these appear as bands separated by forbidden gaps. At $T=0$, the valence band of an intrinsic semiconductor is full and its conduction band is empty.

## Parabolic band edges

Near a conduction-band minimum, the band energy may be expanded about its minimum wavevector. For one isotropic parabolic valley, retaining the first nonzero term gives

$$E(\mathbf k)=E_c+\frac{\hbar^2k^2}{2m_n^*}.$$

Near a valence-band maximum,

$$E(\mathbf k)=E_v-\frac{\hbar^2k^2}{2m_p^*}.$$

The effective masses $m_n^{\ast},m_p^{\ast}$ encode the band curvature and need not equal the free-electron mass.

## Counting states

For a cubic crystal of volume $V=L^3$ with periodic boundary conditions, adjacent allowed wavevectors differ by $2\pi/L$. One state occupies $k$-space volume $(2\pi)^3/V$. Including spin two, the number of states inside a sphere of radius $k$ is

$$
N(k)=2\frac{V}{(2\pi)^3}\frac{4\pi k^3}{3}
=\frac{Vk^3}{3\pi^2}.
$$

For the conduction band,

$$k=\frac{\sqrt{2m_n^*(E-E_c)}}{\hbar}.$$

Therefore the number per unit volume below energy $E$ is

$$
\frac{N(E)}V=\frac{1}{3\pi^2}
\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}(E-E_c)^{3/2}.
$$

Differentiating with respect to energy gives the conduction-band density of states,

$$
\boxed{g_c(E)=\frac{1}{2\pi^2}
\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}\sqrt{E-E_c}},
\quad E\ge E_c.
$$

Similarly,

$$
\boxed{g_v(E)=\frac{1}{2\pi^2}
\left(\frac{2m_p^*}{\hbar^2}\right)^{3/2}\sqrt{E_v-E}},
\quad E\le E_v.
$$

Both have units $\mathrm{J^{-1}m^{-3}}$ when energy is measured in joules. Equivalent valleys multiply the density of states by their valley degeneracy; in an effective-density-of-states mass that factor is already included. The density of allowed states vanishes at a parabolic band edge, but occupation is decided separately by the Fermi function.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/bands-dos-fermi.png' | relative_url }}" alt="Equation-generated valence and conduction densities of states with a Fermi-Dirac occupation curve">
  <figcaption>The square-root densities of states and the Fermi-Dirac occupation are distinct: allowed states are supplied by the bands, while $f(E)$ supplies their occupation probability.</figcaption>
</figure>

The editable source is [bands-dos-fermi.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/bands-dos-fermi.tex' | relative_url }}).

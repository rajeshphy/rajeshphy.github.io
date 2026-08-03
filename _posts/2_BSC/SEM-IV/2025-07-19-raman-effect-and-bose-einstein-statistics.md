---
title: "C. V. Raman and S. N. Bose"
summary: "Inelastic light scattering and the statistical mechanics of indistinguishable bosons."
date: 2025-07-19 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-scientists, raman-effect, bose-einstein-statistics]
permalink: /bsc/sem-iv/mj-5/raman-effect-and-bose-einstein-statistics/
hidden: true
---

## C. V. Raman and inelastic light scattering

Raman and his collaborators, notably K. S. Krishnan, established in 1928 that monochromatic light scattered by a material contains weak lines at frequencies different from the incident frequency. Raman received the 1930 Nobel Prize in Physics for work on light scattering and discovery of the effect.

Let the incident photon frequency be $\nu_0$ and a molecular vibrational frequency be $\nu_m$. Energy conservation gives three possibilities:

- Rayleigh scattering: $\nu_s=\nu_0$;
- Stokes Raman scattering: $\nu_s=\nu_0-\nu_m$ as the molecule gains $h\nu_m$;
- anti-Stokes Raman scattering: $\nu_s=\nu_0+\nu_m$ as an initially excited molecule loses $h\nu_m$.

Thus the Raman shift

$$\Delta\tilde\nu=\frac{\nu_0-\nu_s}{c}$$

measures a molecular rotational or vibrational energy difference and is largely independent of the chosen excitation frequency.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-5/raman-levels.png' | relative_url }}" alt="Energy-level diagram for Stokes and anti-Stokes Raman scattering through virtual states">
  <figcaption>Photon energy bookkeeping for Stokes and anti-Stokes Raman lines. A dashed virtual level is not a stationary molecular eigenstate.</figcaption>
</figure>

The editable source is [raman-levels.tex]({{ '/assets/tikz/bsc/sem-iv/mj-5/raman-levels.tex' | relative_url }}). The discovery record is summarized by the [Nobel Prize archive](https://www.nobelprize.org/prizes/physics/1930/ceremony-speech/).

## S. N. Bose and indistinguishable quanta

In 1924 Bose derived Planck's radiation law by counting photon states without treating identical photons as individually labelled classical particles. Einstein translated the paper and extended the method to an ideal gas of material particles.

For bosons, any number $n_i=0,1,2,\ldots$ may occupy a one-particle state $i$. Maximizing entropy at fixed mean energy and particle number gives

$$
\boxed{\bar n_i=\frac{1}{\exp[(\epsilon_i-\mu)/(k_BT)]-1}}.
$$

This is the Bose-Einstein distribution. Photons have $\mu=0$ in thermal equilibrium because photon number is not fixed. Massive bosons can have conserved number; as $\mu$ approaches the ground-state energy, a macroscopic occupation of that state becomes possible, producing Bose-Einstein condensation.

Classical Maxwell-Boltzmann statistics is recovered when $\exp[(\epsilon_i-\mu)/(k_BT)]\gg1$. Fermions instead obey the Pauli restriction and the plus-sign distribution. Bose's decisive contribution was a new state-counting principle for indistinguishable quanta, not merely a correction to an old classical formula. The historical development is outlined by the [American Physical Society](https://www.aps.org/apsnews/2005/10/this-month-in-physics-history).

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/modern-physics-checks.mac' | relative_url }}) returns zero for Raman energy conservation and the algebraic Bose-factor identity.

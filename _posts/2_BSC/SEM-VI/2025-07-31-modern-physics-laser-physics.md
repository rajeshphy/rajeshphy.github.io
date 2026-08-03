---
title: "Laser Physics"
summary: "Einstein coefficients, laser rate equations, population inversion, three- and four-level lasers, Ruby and He-Ne systems, pulses, and Q-switching."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, modern-physics, laser-physics, rate-equations]
permalink: /bsc/sem-vi/modern-physics/laser-physics/
hidden: true
---

## Einstein coefficients

For two levels $E_2-E_1=h\nu$ in radiation of spectral energy density $\rho(\nu)$, absorption, stimulated emission, and spontaneous emission occur at rates

$$R_{12}=N_1B_{12}\rho,\qquad R_{21}^{st}=N_2B_{21}\rho,\qquad R_{21}^{sp}=N_2A_{21}.$$

Thermal equilibrium requires

$$N_1B_{12}\rho=N_2B_{21}\rho+N_2A_{21}.$$

With $N_2/N_1=(g_2/g_1)e^{-h\nu/k_BT}$,

$$\rho=\frac{A_{21}/B_{21}}{(g_2B_{12}/g_1B_{21})e^{h\nu/k_BT}-1}.$$

Comparison with Planck's law gives

$$g_1B_{12}=g_2B_{21},\qquad \frac{A_{21}}{B_{21}}=\frac{8\pi h\nu^3}{c^3}.$$

Stimulated emission duplicates the incident photon's frequency, phase, polarization, and direction. This coherence distinguishes laser amplification from ordinary spontaneous light.

## Gain, inversion, and threshold

For equal degeneracies, the net stimulated rate is proportional to $N_2-N_1$. A medium amplifies only when

$$\Delta N=N_2-N_1>0,$$

the population-inversion condition. Optical pumping transfers energy into the active medium. A metastable upper laser level is useful because its long lifetime permits population to accumulate.

If $I(z)$ is resonant intensity,

$$\frac{dI}{dz}=gI\quad\Rightarrow\quad I(z)=I(0)e^{gz}.$$

For a resonator of length $L$, mirror reflectivities $R_1,R_2$, and distributed loss $\alpha$, one round trip multiplies intensity by $R_1R_2e^{2(g-\alpha)L}$. Threshold is therefore

$$g_{th}=\alpha+\frac1{2L}\ln\frac1{R_1R_2}.$$

## Two- and three-level rate equations

In a true two-level system the same resonant radiation drives absorption and stimulated emission at rate $W=B\rho$. With $A=1/\tau$ and $N=N_1+N_2$,

$$
\frac{dN_2}{dt}=WN_1-WN_2-AN_2
=WN-(2W+A)N_2.
$$

For $N_2(0)=0$, separation or the integrating-factor method gives

$$
N_2(t)=\frac{WN}{2W+A}\left[1-e^{-(2W+A)t}\right].
$$

Consequently

$$
\frac{N_2(\infty)}N=\frac{W}{2W+A}<\frac12,
$$

and even infinitely strong resonant pumping only equalizes the populations. A separate pump route is needed for inversion.

For a three-level laser, pumping $1\to3$ is followed by rapid nonradiative decay $3\to2$, while $2\to1$ is the laser transition. A minimal set of rate equations is

$$
\begin{aligned}
\dot N_3&=W_pN_1-\frac{N_3}{\tau_{32}},\\
\dot N_2&=\frac{N_3}{\tau_{32}}-\frac{N_2}{\tau_{21}}
-W_l(N_2-N_1),\\
\dot N_1&=\frac{N_2}{\tau_{21}}+W_l(N_2-N_1)-W_pN_1.
\end{aligned}
$$

Adding them gives $d(N_1+N_2+N_3)/dt=0$. If $\tau_{32}\ll\tau_{21}$ and the laser field is initially absent, $N_3\simeq W_p\tau_{32}N_1$ and $N_2\simeq W_p\tau_{21}N_1$. Thus inversion requires $W_p\tau_{21}>1$, so more than half the active atoms must leave the ground state. A four-level laser terminates on a level 1 that rapidly empties to the ground level 0; since $N_1\simeq0$, inversion is easier.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/modern/unit-3/laser-levels-rate.png' | relative_url }}" alt="Three and four level laser schemes with population inversion buildup">
  </div>
  <figcaption>Three- and four-level schemes and the exact two-level solution $N_2/N=[W/(2W+A)](1-e^{-(2W+A)t})$, which remains below $1/2$ for every finite $W$.</figcaption>
</figure>

## Ruby and helium-neon lasers

Ruby is $\mathrm{Al_2O_3}$ doped with $\mathrm{Cr^{3+}}$. Broad optical pumping bands feed a metastable level by rapid nonradiative decay; the red $694.3\ \mathrm{nm}$ transition returns to the ground manifold. It is a three-level laser and therefore normally operates in pulses.

In a He-Ne discharge, electron collisions excite helium metastable states. Near-resonant collisions transfer energy to neon, producing inversion between neon levels. The common $632.8\ \mathrm{nm}$ line is a four-level transition; rapid depletion of the lower laser level enables continuous operation.

## Pulsed operation and Q-switching

The resonator quality factor is

$$Q=\omega\frac{\text{stored energy}}{\text{power loss}}.$$

In Q-switching the cavity is initially held at low $Q$, suppressing oscillation while pumping stores energy in the inversion. Switching rapidly to high $Q$ reduces loss below gain, and the stored inversion is released as a short, intense pulse. The pulse energy is supplied by the previously stored excitation; Q-switching compresses that energy in time rather than creating additional energy.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/modern/unit-3/laser-rate-equations.mac' | relative_url }})

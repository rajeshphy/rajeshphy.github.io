---
title: "Laser Physics"
summary: "Einstein coefficients, laser rate equations, population inversion, three- and four-level lasers, Ruby and He-Ne systems, pulses, and Q-switching."
date: 2025-07-25 09:00:00 +0530
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

The longitudinal resonance condition is $2nL=q\lambda_q$, or

$$\nu_q=\frac{qc}{2nL},\qquad \Delta\nu_{long}=\frac{c}{2nL}.$$

Only resonances lying inside the gain profile can oscillate. A narrow selected linewidth $\Delta\nu$ corresponds approximately to coherence time $\tau_c\sim1/\Delta\nu$ and coherence length $l_c\sim c\tau_c$; these relations state the Fourier limit and do not imply perfectly monochromatic light.

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

## Solved Problems

### 1. Threshold gain of a lossy resonator

A laser has $L=0.400\ \mathrm m$, $R_1=0.990$, $R_2=0.950$, and distributed intensity loss $\alpha=0.0200\ \mathrm{m^{-1}}$. Find its threshold gain coefficient.

At threshold the round-trip intensity multiplier is unity:

$$R_1R_2e^{2(g_{th}-\alpha)L}=1.$$

Taking a natural logarithm without changing the sign convention,

$$
g_{th}=\alpha+\frac1{2L}\ln\left(\frac1{R_1R_2}\right).
$$

Substitution gives

$$
g_{th}=0.0200+\frac1{0.800}
\ln\left(\frac1{(0.990)(0.950)}\right)
=0.0966795\ \mathrm{m^{-1}}.
$$

Both terms have units $\mathrm{m^{-1}}$. Increasing either reflectivity lowers the threshold, and the limiting case $R_1R_2\to1$ gives $g_{th}\to\alpha$.

### 2. Transient saturation of a two-level system

A two-level ensemble starts in its ground state. Let $W=4.00\times10^6\ \mathrm{s^{-1}}$, $A=1.00\times10^7\ \mathrm{s^{-1}}$, and $t=100\ \mathrm{ns}$. Find $N_2/N$ and compare it with the steady value.

The exact rate-equation solution gives

$$
\frac{N_2(t)}N=\frac{W}{2W+A}
\left[1-e^{-(2W+A)t}\right].
$$

Here $(2W+A)t=(1.80\times10^7)(1.00\times10^{-7})=1.80$, so

$$
\frac{N_2}{N}=\frac4{18}(1-e^{-1.8})=0.185489.
$$

The steady fraction is

$$\left(\frac{N_2}{N}\right)_{ss}=\frac4{18}=0.222222.$$

Both values are below $1/2$, so neither the transient nor steady resonant drive creates inversion. As $t\to\infty$ the exponential vanishes; as $t\to0$, the excited fraction tends to zero.

## Descriptive Questions

1. Derive the Einstein relations from detailed balance, explicitly including the level degeneracies, and state the physical distinction between stimulated and spontaneous emission.
2. Compare the population-flow requirements and threshold behavior of three-level and four-level lasers.
3. Trace the pumping, upper-laser-level population, laser transition, and lower-level depopulation in ruby and helium-neon lasers.
4. Explain how stimulated emission produces temporal and spatial coherence, and why a real laser still has a finite linewidth.

## Numerical Problems

1. Calculate the frequency and photon energy of the $632.8\ \mathrm{nm}$ helium-neon line.

   **Answer:** $\nu=4.73755\times10^{14}\ \mathrm{Hz}$ and $E_\gamma=1.95930\ \mathrm{eV}$.

2. An air-filled linear resonator is $0.500\ \mathrm m$ long. Find its longitudinal-mode spacing and estimate the number of mode intervals in a $1.50\ \mathrm{GHz}$ gain bandwidth.

   **Answer:** $\Delta\nu_{long}=2.99792\times10^8\ \mathrm{Hz}\approx300\ \mathrm{MHz}$; the bandwidth spans $5.00$ mode intervals.

3. A Q-switched laser releases $0.800\ \mathrm J$ in a nearly rectangular $8.00\ \mathrm{ns}$ pulse. Find the average power during the pulse.

   **Answer:** $P=1.00\times10^8\ \mathrm W=100\ \mathrm{MW}$.

4. An upper laser state has spontaneous lifetime $\tau=230\ \mathrm{ns}$. Find $A_{21}$ and the lifetime-limited linewidth $\Delta\nu=1/(2\pi\tau)$.

   **Answer:** $A_{21}=4.34783\times10^6\ \mathrm{s^{-1}}$ and $\Delta\nu=6.91978\times10^5\ \mathrm{Hz}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/modern/unit-3/laser-rate-equations.mac' | relative_url }})

## References

1. [Laser — Wikipedia](https://en.wikipedia.org/wiki/Laser)
2. O. Svelto, *Principles of Lasers*, 5th ed., chapters 1–3 and 6 on stimulated emission, resonators, pumping, and pulsed operation.
3. A. E. Siegman, *Lasers*, chapters 7–13 and 25 on resonators, gain, rate equations, and Q-switching.
4. W. T. Silfvast, *Laser Fundamentals*, 2nd ed., chapters 3–7 on laser transitions, optical cavities, and representative laser systems.

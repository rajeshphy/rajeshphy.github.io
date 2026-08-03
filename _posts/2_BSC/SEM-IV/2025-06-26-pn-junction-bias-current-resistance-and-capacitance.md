---
title: "Junction Bias, Current, Resistance, and Capacitance"
summary: "Forward and reverse bias, diode current mechanisms, V-I characteristic, small-signal resistance, and junction capacitance."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, diode-characteristic, junction-capacitance]
permalink: /bsc/sem-iv/mj-7/pn-junction-bias-current-resistance-and-capacitance/
hidden: true
---

Define the applied junction voltage by

$$V=V_p-V_n.$$

Forward bias means $V>0$: the p terminal is at the higher potential, so the barrier is reduced from $V_{bi}$ to $V_{bi}-V$. Reverse bias means $V<0$ and increases the barrier to $V_{bi}+\lvert V\rvert$. In the depletion approximation,

$$
\boxed{W(V)=\sqrt{\frac{2\varepsilon_s}{q}
\left(\frac1{N_A}+\frac1{N_D}\right)(V_{bi}-V)}}.
$$

This expression requires $V<V_{bi}$ and fails in strong forward injection or breakdown.

## Current-flow mechanism

Forward bias injects electrons from n into p and holes from p into n. At the depletion edges, the ideal low-injection boundary concentrations are

$$
n_p(0)=n_{p0}e^{V/V_T},
\qquad
p_n(0)=p_{n0}e^{V/V_T},
$$

where $n_{p0}=n_i^2/N_A$ and $p_{n0}=n_i^2/N_D$. The injected minority carriers diffuse through the neutral regions and recombine. For long quasi-neutral regions, $W_p\gg L_n$ and $W_n\gg L_p$, or equivalent remote-contact boundary conditions, solving their steady diffusion equations gives

$$
\boxed{I=I_S\!\left(e^{V/(\eta V_T)}-1\right)}.
$$

For the ideal diffusion model, $\eta=1$ and

$$
I_S=qA\left(\frac{D_n n_{p0}}{L_n}+\frac{D_p p_{n0}}{L_p}\right),
$$

where $A$ is junction area in $\mathrm{m^2}$, $D$ is diffusivity in $\mathrm{m^2\,s^{-1}}$, and $L$ is diffusion length in metres; $I_S$ is therefore in amperes. For finite neutral widths the corresponding terms acquire $\coth(W/L)$ factors. Depletion-region recombination commonly gives an effective $\eta$ approaching 2.

Under reverse bias with $\lvert V\rvert\gtrsim3\eta V_T$ but below breakdown, thermally generated minority carriers are swept across the depletion layer and $I\simeq-I_S$. At breakdown the reverse current is instead limited by the external circuit. At large forward current, series resistance and high-level injection cause departure from the exponential law.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/diode-characteristic.png' | relative_url }}" alt="Exact normalized Shockley p-n diode current-voltage characteristic">
  <figcaption>The ideal Shockley characteristic on normalized axes. Positive $I$ is conventional current from p to n; the graph excludes breakdown and series resistance.</figcaption>
</figure>

The editable source is [diode-characteristic.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/diode-characteristic.tex' | relative_url }}).

## Static and dynamic resistance

At a chosen operating point $(V,I)$, the dc or static resistance and the local small-signal resistance are different:

$$
\boxed{R_{\rm dc}=\frac VI},
\qquad
\boxed{r_d=\left(\frac{dI}{dV}\right)^{-1}
=\frac{\eta V_T}{I+I_S}
\simeq\frac{\eta V_T}{I}}.
$$

The last approximation requires strong forward bias, $I\gg I_S$. Both resistances have units ohms, but $r_d$ is the reciprocal slope at the operating point and governs only sufficiently small signal changes.

The exact dynamic-resistance identity is checked in [junction-and-mos-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/junction-and-mos-check.mac' | relative_url }}); its displayed residual is zero.

## Junction and diffusion capacitance

The magnitude of depletion charge is $Q=qAN_Ax_p=qAN_Dx_n$. The depletion or transition capacitance is

$$
\boxed{C_j=\left\lvert\frac{dQ}{dV}\right\rvert=\frac{\varepsilon_sA}{W}
=\frac{C_{j0}}{\sqrt{1-V/V_{bi}}}},
\qquad C_{j0}=\frac{\varepsilon_sA}{W_0}.
$$

Thus reverse bias widens the layer and reduces $C_j$. This square-root law is for an abrupt junction; a graded junction has a different exponent. Under appreciable forward bias, stored injected charge adds a diffusion capacitance. If the stored charge is approximately $Q_s\simeq\tau_T I$,

$$
\boxed{C_d=\frac{dQ_s}{dV}\simeq\frac{\tau_T I}{\eta V_T}},
$$

where $\tau_T$ is an effective carrier transit or storage time in seconds. The small-signal terminal capacitance is approximately $C_j+C_d$ before parasitic package capacitances are included.

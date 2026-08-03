---
title: "MOS Capacitors and MOSFET Characteristics"
summary: "Ideal and real MOS electrostatics, threshold voltage, and enhancement MOSFET output and transfer laws."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, mos-capacitor, mosfet]
permalink: /bsc/sem-iv/mj-7/mos-capacitors-and-mosfet-characteristics/
hidden: true
---

A MOS capacitor consists of a conducting gate, an insulating oxide, and a semiconductor. Its oxide capacitance per unit area is

$$\boxed{C_{ox}=\frac{\varepsilon_{ox}}{t_{ox}}},$$

in $\mathrm{F\,m^{-2}}$. The ideal oxide carries no dc current.

## Ideal and real MOS capacitors

For an ideal MOS capacitor, the metal-semiconductor work-function difference, oxide charge, and interface-state density are zero. With a p-type substrate:

- $V_G<0$ attracts holes to the surface: accumulation;
- a small $V_G>0$ repels holes and exposes fixed ionized acceptors: depletion;
- sufficiently positive $V_G$ attracts enough electrons to form an n-type inversion layer.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/mos-capacitor.png' | relative_url }}" alt="Accumulation, depletion, and inversion in an ideal p-substrate MOS capacitor">
  <figcaption>Surface-charge regimes of an ideal p-substrate MOS capacitor. Gate charge of the opposite sign balances the semiconductor charge through the oxide field.</figcaption>
</figure>

The editable source is [mos-capacitor.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/mos-capacitor.tex' | relative_url }}).

A real structure has a work-function difference $\phi_{ms}$ and may contain fixed oxide charge, mobile ionic charge, oxide traps, and interface traps. If a bias-independent effective oxide sheet charge $Q_{ox}$ is used, the flat-band voltage is

$$
\boxed{V_{FB}=\phi_{ms}-\frac{Q_{ox}}{C_{ox}}}.
$$

Here $\phi_{ms}$ is expressed in volts and $Q_{ox}$ in $\mathrm{C\,m^{-2}}$. Interface-trap charge can depend on surface potential and cannot always be represented by a constant $Q_{ox}$.

Let $\psi_s$ be surface potential relative to the neutral bulk and $Q_s$ the signed semiconductor sheet charge. The electrostatic balance is

$$
\boxed{V_G=V_{FB}+\psi_s-\frac{Q_s}{C_{ox}}}.
$$

For a uniformly doped p substrate under depletion,

$$Q_s\simeq Q_d=-\sqrt{2q\varepsilon_sN_A\psi_s}.$$

Define the positive bulk Fermi potential

$$\phi_F=V_T\ln\!\left(\frac{N_A}{n_i}\right).$$

Strong inversion is conventionally set at $\psi_s=2\phi_F$. With zero substrate-source bias and the depletion approximation, the n-channel threshold voltage is

$$
\boxed{V_{\rm th}=V_{FB}+2\phi_F
+\frac{\sqrt{4q\varepsilon_sN_A\phi_F}}{C_{ox}}}.
$$

Every term is in volts. This expression omits body bias, polysilicon depletion, quantum confinement, and short-channel effects.

## Enhancement nMOS operation

Two n$^+$ regions form source and drain in the p substrate. For $V_{GS}>V_{\rm th}$, the inverted surface connects them. Let

$$K=\mu_nC_{ox}\frac WL,$$

where $\mu_n$ is channel mobility, $W/L$ is dimensionless, and $K$ has units $\mathrm{A\,V^{-2}}$. The ideal long-channel output characteristic is

$$
I_D=
\begin{cases}
0,&V_{GS}\le V_{\rm th},\\[4pt]
K\!\left[(V_{GS}-V_{\rm th})V_{DS}-\dfrac{V_{DS}^2}{2}\right],
&V_{GS}>V_{\rm th},\ 0\le V_{DS}<V_{GS}-V_{\rm th},\\[8pt]
\dfrac K2(V_{GS}-V_{\rm th})^2,
&V_{GS}>V_{\rm th},\ V_{DS}\ge V_{GS}-V_{\rm th}.
\end{cases}
$$

The second line is the linear or triode region. Saturation begins when the channel pinches off at the drain, $V_{DS}=V_{GS}-V_{\rm th}$. As in a JFET, pinch-off does not mean zero current.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/mosfet-characteristics.png' | relative_url }}" alt="Ideal long-channel nMOS output and saturation transfer characteristics">
  <figcaption>Ideal long-channel nMOS characteristics. Each output curve changes continuously from the triode expression to saturation at $V_{DS}=V_{GS}-V_{\rm th}$.</figcaption>
</figure>

The editable source is [mosfet-characteristics.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/mosfet-characteristics.tex' | relative_url }}).

Current and slope continuity at $V_{DS}=V_{GS}-V_{\rm th}$ are checked in [junction-and-mos-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/junction-and-mos-check.mac' | relative_url }}); every displayed MOSFET residual is zero.

At fixed saturation $V_{DS}$, the transfer characteristic is quadratic above threshold. A real MOSFET has subthreshold current below $V_{\rm th}$ and a finite saturation slope. The common channel-length-modulation approximation is

$$
I_D\simeq\frac K2(V_{GS}-V_{\rm th})^2(1+\lambda V_{DS}),
$$

where $\lambda$ has units $\mathrm{V^{-1}}$. Mobility reduction, series resistance, and heating cause further departures. A pMOS device uses a p-channel and reversed voltage and current polarities; its magnitude equations follow after replacing overdrive by $V_{SG}-\lvert V_{\rm th}\rvert$.

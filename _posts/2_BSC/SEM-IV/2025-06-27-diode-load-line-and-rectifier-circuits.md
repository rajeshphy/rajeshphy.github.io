---
title: "Diode Load Line and Rectifier Circuits"
summary: "Diode operating point, half-wave rectification, and center-tapped and bridge full-wave rectifiers."
date: 2025-06-27 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, rectifier, load-line]
permalink: /bsc/sem-iv/mj-7/diode-load-line-and-rectifier-circuits/
hidden: true
---

For a diode in series with a resistance $R_L$ and an instantaneous source voltage $V_s$, Kirchhoff's voltage law gives

$$V_s=V_D+IR_L,$$

or

$$\boxed{I=\frac{V_s-V_D}{R_L}}.$$

This straight load line has slope $-1/R_L$ on an $I$ versus $V_D$ graph. Its intersection with the nonlinear diode characteristic is the operating or quiescent point $Q$. With an ac source the load line changes with time, so the operating point moves along the diode curve.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/diode-load-line.png' | relative_url }}" alt="Diode characteristic intersected by a series-resistor load line at the Q point">
  <figcaption>Equation-generated example. The plotted $Q=(0.664522\,\mathrm V,0.354783\,\mathrm{mA})$ satisfies both the diode equation and the $0.7\,\mathrm V$, $100\,\Omega$ load line.</figcaption>
</figure>

The editable source is [diode-load-line.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/diode-load-line.tex' | relative_url }}).

## Half-wave rectifier

Let the secondary voltage be $v_s=V_m\sin\theta$, where $\theta=\omega t$. With an ideal series diode and a resistive load,

$$
v_o(\theta)=
\begin{cases}
V_m\sin\theta,&0<\theta<\pi,\\
0,&\pi<\theta<2\pi,
\end{cases}
$$

repeated every $2\pi$. The diode conducts during the positive half-cycle and blocks during the negative half-cycle. With a constant forward drop $V_F$, conduction occurs only where $v_s>V_F$ and $v_o\simeq v_s-V_F$.

The ideal peak inverse voltage of the half-wave diode is $V_m$.

## Center-tapped full-wave rectifier

The two ends of a center-tapped secondary have opposite voltages relative to the centre tap. If the peak voltage of each half-secondary is called $V_m$, one diode conducts on each half-cycle while the other is reverse biased. Both paths drive load current in the same direction, giving ideally

$$\boxed{v_o=V_m\lvert\sin\theta\rvert}.$$

Only one diode drop lies in the conducting path. The ideal peak inverse voltage across the nonconducting diode is $2V_m$.

## Bridge full-wave rectifier

A bridge uses four diodes. One diagonal pair conducts for $v_s>0$ and the other for $v_s<0$, so the load polarity is unchanged:

$$\boxed{v_o=\lvert v_s\rvert=V_m\lvert\sin\theta\rvert}.$$

Two diode drops occur in series; the constant-drop model gives $v_o\simeq\max(\lvert v_s\rvert-2V_F,0)$. Here $V_m$ is the peak of the complete transformer secondary, and the ideal peak inverse voltage per diode is $V_m$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/rectifier-waveforms.png' | relative_url }}" alt="Source, ideal half-wave, and ideal full-wave rectifier waveforms">
  <figcaption>Ideal rectifier waveforms. Full-wave rectification doubles the ripple frequency but does not change the source frequency.</figcaption>
</figure>

The editable source is [rectifier-waveforms.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/rectifier-waveforms.tex' | relative_url }}).

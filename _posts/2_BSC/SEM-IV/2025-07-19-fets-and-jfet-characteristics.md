---
title: "FETs and JFET Characteristics"
summary: "Field-effect control, n- and p-channel JFET operation, output regions, transfer law, and device parameters."
date: 2025-07-19 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, fet, jfet]
permalink: /bsc/sem-iv/mj-7/fets-and-jfet-characteristics/
hidden: true
---

A field-effect transistor controls current in a semiconductor channel by an electric field. Conduction uses majority carriers, and the control terminal draws very little dc current. A JFET forms its gate from a reverse-biased p-n junction.

## n-channel JFET operation

An n-type channel joins source to drain and p-type gate regions contact its sides. Use

$$V_{DS}=V_D-V_S\ge0,
\qquad
V_{GS}=V_G-V_S\le0.$$

The reverse-biased gate depletion regions narrow the channel. For small $V_{DS}$ the channel behaves approximately as a voltage-controlled resistor. Because

$$V_{GD}=V_{GS}-V_{DS},$$

the gate-drain junction is most reverse biased near the drain, so depletion grows asymmetrically.

Let $V_P=V_{GS(off)}<0$. Pinch-off first occurs at the drain end when

$$V_{GD}=V_P,$$

or

$$\boxed{V_{DS,sat}=V_{GS}-V_P}.$$

Beyond this boundary the pinch-off point moves slightly toward the source and the added drain voltage falls mainly across the depleted region. Current therefore saturates; pinch-off does not mean zero drain current.

An ideal gradual-channel model gives, for $V_P\le V_{GS}\le0$,

$$
I_D=\frac{2I_{DSS}}{V_P^2}
\left[(V_{GS}-V_P)V_{DS}-\frac{V_{DS}^2}{2}\right],
\quad 0\le V_{DS}\le V_{GS}-V_P,
$$

and in saturation,

$$
\boxed{I_D=I_{DSS}\left(1-\frac{V_{GS}}{V_P}\right)^2},
\quad V_{DS}\ge V_{GS}-V_P.
$$

At $V_{GS}=0$, $I_D=I_{DSS}$ in saturation. At $V_{GS}\le V_P$, the channel is cut off apart from leakage. At sufficiently large $V_{DS}$, gate-junction breakdown ends the normal saturation region.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/fet-transfer.png' | relative_url }}" alt="Exact normalized JFET and ideal enhancement MOSFET saturation transfer characteristics">
  <figcaption>Normalized saturation transfer laws. The JFET current falls to zero at the negative cutoff voltage; the ideal enhancement nMOS current begins at positive threshold.</figcaption>
</figure>

The editable source is [fet-transfer.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/fet-transfer.tex' | relative_url }}).

## JFET parameters

At a bias point, the transconductance, drain resistance, and amplification factor are

$$
g_m=\left.\frac{\partial I_D}{\partial V_{GS}}\right|_{V_{DS}},
\qquad
r_d=\left.\frac{\partial V_{DS}}{\partial I_D}\right|_{V_{GS}},
$$

$$
\mu_F=-\left.\frac{\partial V_{DS}}{\partial V_{GS}}\right|_{I_D}
=g_mr_d.
$$

$g_m$ is in siemens, $r_d$ in ohms, and $\mu_F$ is dimensionless. From Shockley's transfer law,

$$
\boxed{g_m=-\frac{2I_{DSS}}{V_P}
\left(1-\frac{V_{GS}}{V_P}\right)
=g_{m0}\sqrt{\frac{I_D}{I_{DSS}}}},
\qquad
g_{m0}=-\frac{2I_{DSS}}{V_P}>0.
$$

The $g_m$ residual is verified as zero in [transistor-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/transistor-check.mac' | relative_url }}).

For a p-channel JFET, holes carry the channel current and all voltage and current polarities reverse. The magnitude characteristics have the same form after consistent sign reversal.

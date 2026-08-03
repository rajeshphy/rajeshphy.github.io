---
title: "BJT DC Load Line and Q-Point"
summary: "Collector-circuit constraint, characteristic intersection, bias point, and allowable signal swing."
date: 2025-07-29 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, bjt-load-line, q-point]
permalink: /bsc/sem-iv/mj-7/bjt-dc-load-line-and-q-point/
hidden: true
---

For a grounded-emitter CE circuit with collector resistance $R_C$ and dc supply $V_{CC}$,

$$V_{CC}=I_CR_C+V_{CE}.$$

Therefore every allowed dc state must lie on

$$
\boxed{I_C=\frac{V_{CC}-V_{CE}}{R_C}}.
$$

This is the dc load line. Its endpoints in the idealized model are

$$
(V_{CE},I_C)=(V_{CC},0)
\quad\text{and}\quad
(0,V_{CC}/R_C).
$$

The first is the cutoff endpoint; the second approximates saturation. A real saturated transistor instead has $V_{CE}=V_{CE(sat)}>0$, so the maximum current is approximately $(V_{CC}-V_{CE(sat)})/R_C$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/transistor-characteristics.png' | relative_url }}" alt="Family of common-emitter output characteristics with a dc load line and Q point">
  <figcaption>A CE output family and the load line $I_C=(12\,\mathrm V-V_{CE})/(2\,\mathrm{k\Omega})$. The marked point lies on both the load line and the middle output curve.</figcaption>
</figure>

The editable source is [transistor-characteristics.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/transistor-characteristics.tex' | relative_url }}).

The base-bias circuit selects one output curve. Its intersection with the load line is the quiescent point

$$Q=(V_{CEQ},I_{CQ}).$$

For a simple fixed base supply $V_{BB}$ and base resistance $R_B$,

$$I_{BQ}\simeq\frac{V_{BB}-V_{BEQ}}{R_B},$$

provided $V_{BB}>V_{BEQ}$. The transistor characteristic, not the approximation $I_C=\beta I_B$ alone, determines the final $Q$.

An ac input moves the instantaneous operating point along the same dc load line. To avoid clipping, it must remain between cutoff and saturation. In the idealized resistor-loaded circuit, a roughly symmetric voltage swing is obtained near

$$
V_{CEQ}\simeq\frac{V_{CC}}2,
\qquad
I_{CQ}\simeq\frac{V_{CC}}{2R_C}.
$$

These midpoint formulas are not universal: emitter resistance, transformer loading, finite $V_{CE(sat)}$, and nonlinear characteristic spacing shift the best bias point. If an emitter resistor $R_E$ is present,

$$
V_{CC}=I_CR_C+V_{CE}+I_ER_E,
$$

and $I_E\simeq I_C$ is an additional large-$\beta$ approximation. The load-line identity and ideal midpoint residual are checked in [transistor-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/transistor-check.mac' | relative_url }}); every displayed load-line residual is zero.

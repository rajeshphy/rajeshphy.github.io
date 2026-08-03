---
title: "Zener Breakdown and Voltage Regulation"
summary: "Zener and avalanche mechanisms, reverse characteristic, and the shunt voltage-regulator operating limits."
date: 2025-06-29 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, zener-diode, voltage-regulator]
permalink: /bsc/sem-iv/mj-7/zener-breakdown-and-voltage-regulation/
hidden: true
---

A Zener diode is designed to operate safely in reverse breakdown. Let $V_Z>0$ denote the magnitude of its specified reverse voltage. Below the knee the reverse current is small; near $V_R=V_Z$, current rises sharply while the terminal voltage changes only slightly. The external circuit must limit current because breakdown itself does not.

## Zener and avalanche mechanisms

In a heavily doped junction the depletion layer is narrow and the electric field can become large at a relatively low reverse voltage. Electrons then tunnel quantum mechanically between valence- and conduction-band states. This is Zener breakdown and normally has a negative temperature coefficient of $V_Z$.

In a more lightly doped, wider junction, carriers gain kinetic energy from the field and create new electron-hole pairs by impact ionization. Repeated multiplication produces avalanche breakdown, normally with a positive temperature coefficient. Both mechanisms can contribute near approximately $5$--$6\,\mathrm V$; the distinction is physical, not a different circuit symbol.

The incremental resistance in breakdown is

$$\boxed{r_Z=\frac{dV_Z}{dI_Z}},$$

measured in ohms. It is small but not zero, so a real Zener voltage varies with current and temperature.

## Shunt regulator

The diode is reverse connected across the load and fed through a series resistance $R_s$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/zener-regulator.png' | relative_url }}" alt="Zener shunt voltage regulator with source resistor and load">
  <figcaption>In regulation, the output is approximately $V_Z$ and the source current divides between the Zener diode and load.</figcaption>
</figure>

The editable source is [zener-regulator.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/zener-regulator.tex' | relative_url }}).

With $V_o\simeq V_Z$, Kirchhoff's laws give

$$
I_s=\frac{V_s-V_Z}{R_s},
\qquad
I_L=\frac{V_Z}{R_L},
\qquad
\boxed{I_Z=I_s-I_L}.
$$

Regulation requires

$$I_{Z,\min}\le I_Z\le I_{Z,\max},$$

where the lower bound keeps the diode beyond its knee and the upper bound satisfies both current and power ratings:

$$P_Z=V_ZI_Z\le P_{Z,\max}.$$

The worst-case input limits are therefore

$$
V_{s,\min}\ge V_Z+R_s(I_{L,\max}+I_{Z,\min}),
$$

$$
V_{s,\max}\le V_Z+R_s(I_{L,\min}+I_{Z,\max}).
$$

If either inequality is violated, the diode leaves regulation or overheats. In the small-signal model the Zener is $r_Z$, so

$$
\frac{\Delta V_o}{\Delta V_s}
=\frac{r_Z\parallel R_L}{R_s+(r_Z\parallel R_L)}.
$$

Good line regulation requires $r_Z\parallel R_L\ll R_s$, while load regulation also requires enough current margin for the change in $I_L$.

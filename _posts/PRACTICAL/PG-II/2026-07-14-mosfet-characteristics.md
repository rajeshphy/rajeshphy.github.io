---
layout: post
title: "Drain and Transfer Characteristics of an Enhancement MOSFET"
date: 2026-07-13 20:05:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, mosfet, characteristics]
permalink: /practical/pg-ii/mosfet-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To obtain the drain and transfer characteristics of an n-channel enhancement MOSFET and determine its threshold voltage and transconductance.

## Apparatus

Enhancement MOSFET, regulated gate and drain supplies, milliammeter, voltmeters, resistors, breadboard, and connecting leads.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="MOSFET drain and transfer characteristic circuit"><figcaption>The drain supply controls $V_{DS}$, the gate supply controls $V_{GS}$, and the drain current is measured in the device path.</figcaption></figure>

## Theory

In an enhancement MOSFET, no conducting channel exists at $V_{GS}=0$. A positive gate voltage attracts electrons towards the oxide-semiconductor interface and creates a channel between source and drain. Drain current begins only when $V_{GS}$ exceeds the threshold voltage $V_T$.

In the saturation region, the transfer characteristic is approximately

$$I_D=K(V_{GS}-V_T)^2,$$

where $K$ depends on the device construction. The transconductance is $g_m=\Delta I_D/\Delta V_{GS}$ at constant $V_{DS}$.

## Observations

| $V_{GS}$ (V) | $I_D$ (mA) at $V_{DS}=6$ V |
|---:|---:|
| 1.5 | 0.0 |
| 2.0 | 0.4 |
| 2.5 | 1.6 |
| 3.0 | 3.4 |
| 3.5 | 5.8 |

## Result

The threshold voltage from the onset of drain current is approximately $V_T=1.9$ V. The drain current increases quadratically with gate voltage in the saturation region.

## Viva Questions

1. **Why is gate current nearly zero?** The gate is insulated from the channel by a thin oxide layer.
2. **What is threshold voltage?** The minimum gate-source voltage needed to form a conducting channel.
3. **Why must the MOSFET be protected from static charge?** The thin gate oxide can be damaged by a large electrostatic voltage.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

---
layout: post
title: "Single-Stage RC-Coupled Transistor Amplifier in CE Mode"
date: 2026-07-13 20:15:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, transistor, amplifier, common-emitter]
permalink: /practical/pg-ii/ce-transistor-amplifier/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the voltage gain and frequency response of a single-stage RC-coupled transistor amplifier in common-emitter mode.

## Apparatus

NPN transistor, DC supply, bias resistors, collector resistor, coupling capacitors, function generator, CRO, and connecting leads.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Common-emitter RC-coupled amplifier circuit"><figcaption>The transistor is biased in the active region; the input is coupled to the base and the amplified output is observed at the collector.</figcaption></figure>

## Theory

The emitter is common to the input and output circuits. A small AC signal at the base changes the collector current. The changing collector current produces a larger voltage variation across the collector resistor. Coupling capacitors pass the AC signal while isolating the DC bias conditions.

The voltage gain is $A_v=V_o/V_i$. The lower and upper cutoff frequencies are the frequencies at which the gain falls to $0.707$ of its mid-band value. The bandwidth is $f_H-f_L$.

## Observations

| Frequency (kHz) | Input (mV) | Output (V) | Gain $A_v$ |
|---:|---:|---:|---:|
| 0.05 | 20 | 0.84 | 42.0 |
| 0.10 | 20 | 1.12 | 56.0 |
| 1.0 | 20 | 1.20 | 60.0 |
| 10 | 20 | 1.14 | 57.0 |
| 100 | 20 | 0.80 | 40.0 |

## Result

The amplifier gives a mid-band voltage gain of approximately $60$. The gain decreases at low and high frequencies because of coupling/bypass capacitors and transistor stray capacitances.

## Viva Questions

1. **Why is the output phase reversed?** An increase in collector current increases the voltage drop across the collector resistor and lowers the collector voltage.
2. **What is bandwidth?** The difference between upper and lower half-power frequencies.
3. **Why is the emitter bypassed in a practical amplifier?** To reduce AC negative feedback and increase voltage gain.

</div>

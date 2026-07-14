---
layout: post
title: "PG-II Electronics and Digital Circuit Practicals"
date: 2026-07-13 19:05:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, electronics, transistor, op-amp, digital]
permalink: /practical/pg-ii/electronics-digital/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Scope of the practical

This post covers Zener, FET, MOSFET, UJT, common-emitter amplifier, logic gates, op-amp differentiator and integrator, Hartley oscillator, SCR, adders, and AD/DA converters.

## Standard experiment titles used in this record

The conventional practical titles are: Zener-diode characteristic and stabilisation; drain characteristics and transfer characteristics of a FET and MOSFET; UJT characteristic and relaxation oscillator; common-emitter transistor amplifier; verification of basic and universal logic gates; op-amp differentiator and integrator; Hartley oscillator; SCR characteristic; half and full adder; and ADC/DAC study.

## Essential relations

Record device characteristics as $I$ versus $V$. For an op-amp, $V_o=-RC\,dV_i/dt$ for a differentiator and $V_o=-(1/RC)\int V_i,dt$ for an integrator. For a Hartley oscillator,

$$f=\frac{1}{2\pi\sqrt{(L_1+L_2+2M)C}}.$$

## Sample observations and results

| Experiment | Result |
|---|---:|
| Zener stabilisation | $V_o=5.10\,\text{V}$ |
| FET transconductance | $g_m=2.8\,\text{mS}$ |
| UJT peak voltage | $V_p=7.2\,\text{V}$ |
| CE amplifier gain | $A_v=48$ |
| Hartley oscillator | $f=12.1\,\text{kHz}$ |
| ADC resolution | $8$ bits |

## Viva Questions

1. **Why is a Zener used in reverse bias?** Its breakdown voltage remains nearly constant.
2. **What is transconductance?** The change in drain current per change in gate voltage.
3. **Why does an op-amp integrator require a feedback capacitor?** It makes the feedback impedance frequency dependent.
4. **What is quantisation?** Conversion of a continuous amplitude into discrete digital levels.
5. **What is the function of an SCR?** Controlled rectification and switching.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

---
layout: post
title: "Characteristics of a Unijunction Transistor and Relaxation Oscillator"
date: 2026-07-13 20:10:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, ujt, relaxation-oscillator]
permalink: /practical/pg-ii/ujt-characteristics-relaxation-oscillator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the emitter characteristic of a unijunction transistor and observe its use in a relaxation oscillator.

## Apparatus

UJT, regulated DC supply, variable emitter supply, resistors, capacitor, CRO, voltmeters, and milliammeter.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="UJT emitter characteristic and relaxation oscillator circuit"><figcaption>The UJT bases are biased from the DC supply; the emitter circuit contains the charging capacitor and the voltage is monitored across it.</figcaption></figure>

## Theory

A UJT has one emitter and a resistive bar with two base terminals. Before the emitter voltage reaches the peak voltage, the emitter junction is effectively off. At the peak point, emitter injection lowers the resistance of the region near the emitter and the emitter current rises while the emitter voltage falls. This is the negative-resistance region.

In a relaxation oscillator, the capacitor charges through a resistor until the peak voltage is reached. It then discharges rapidly through the UJT, producing a saw-tooth voltage across the capacitor and a sharp pulse in the emitter circuit.

## Observations

| Emitter voltage $V_E$ (V) | Emitter current $I_E$ (mA) |
|---:|---:|
| 0.5 | 0.0 |
| 1.0 | 0.0 |
| 1.5 | 0.2 |
| 2.0 | 1.4 |
| 1.7 | 3.0 |
| 1.4 | 5.0 |

The CRO shows a repeated saw-tooth waveform across the timing capacitor.

## Result

The UJT exhibits a negative-resistance region after the peak point and produces a saw-tooth relaxation waveform when connected with a timing resistor and capacitor.

## Viva Questions

1. **Why does the UJT show negative resistance?** Carrier injection lowers the inter-base resistance after the peak point.
2. **What determines the oscillator frequency?** Mainly the timing resistance, capacitance, and peak voltage.
3. **Why is the output saw-tooth shaped?** The capacitor charges slowly and discharges rapidly through the UJT.

</div>

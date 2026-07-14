---
layout: post
title: "Op-Amp Differentiator and Integrator"
date: 2026-07-13 20:25:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, op-amp, differentiator, integrator]
permalink: /practical/pg-ii/op-amp-differentiator-integrator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the waveforms produced by practical op-amp differentiator and integrator circuits.

## Apparatus

741 op-amp, dual DC supply, resistors, capacitors, function generator, CRO, breadboard, and connecting wires.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Operational amplifier waveform circuit"><figcaption>The op-amp circuit receives the function-generator signal at its input and the output waveform is compared with the input on the CRO.</figcaption></figure>

## Theory

With negative feedback, an ideal op-amp drives its output so that the two input terminals are at nearly the same potential. When the non-inverting input is grounded, the inverting input is therefore at virtual ground and the input current is set by the external impedance. With a resistor at the input and capacitor in feedback, $V_o=-RC\,dV_i/dt$, so the circuit differentiates the input. With a capacitor at the input and resistor in feedback, $V_o=-(1/RC)\int V_i\,dt$, so the circuit integrates the input.

## Observations

| Input waveform | Differentiator output | Integrator output |
|---|---|---|
| Square | Positive and negative spikes | Triangular waveform |
| Sine | Cosine-like waveform | Negative cosine-like waveform |
| Triangular | Square waveform | Parabolic segments |

## Result

The differentiator produces an output proportional to the rate of change of the input, while the integrator produces an output proportional to the time integral of the input.

## Viva Questions

1. **Why is the op-amp called inverting here?** The signal is applied to the inverting terminal and the non-inverting terminal is grounded.
2. **What limits a practical differentiator?** High-frequency noise and the finite bandwidth of the op-amp.
3. **Why is a capacitor used at the input of an integrator?** Its impedance causes the input current to be proportional to the time integral of voltage.

</div>

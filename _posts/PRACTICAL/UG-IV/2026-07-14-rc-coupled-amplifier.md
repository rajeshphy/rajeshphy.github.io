---
layout: post
title: "Frequency Response of an RC-Coupled Transistor Amplifier"
date: 2026-07-13 15:35:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, amplifier, frequency-response]
permalink: /practical/ug-iv/rc-coupled-amplifier/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the frequency response and bandwidth of a single-stage RC-coupled transistor amplifier.

## Apparatus

RC-coupled amplifier circuit, signal generator, CRO, DC supply, and connecting leads.

## Theory

The voltage gain of an amplifier depends on frequency. It is nearly constant in the mid-frequency region and decreases at low frequency because of coupling capacitors and at high frequency because of transistor and stray capacitances. The bandwidth is

$$\text{Bandwidth}=f_H-f_L,$$

where $f_L$ and $f_H$ are the lower and upper half-power frequencies.

## Observations

Input amplitude: $20\,\text{mV}$.

| Frequency (Hz) | Output amplitude (V) | Voltage gain |
|---:|---:|---:|
| 50 | 0.42 | 21 |
| 100 | 0.76 | 38 |
| 500 | 1.02 | 51 |
| 1000 | 1.05 | 52.5 |
| 5000 | 1.04 | 52 |
| 10000 | 0.98 | 49 |
| 20000 | 0.74 | 37 |
| 50000 | 0.43 | 21.5 |

The half-power gain is approximately $52.5/\sqrt2=37.1$.

## Result

From the response curve, $f_L\approx100\,\text{Hz}$ and $f_H\approx20\,\text{kHz}$. Therefore,

$$\boxed{\text{Bandwidth}\approx19.9\,\text{kHz}}.$$

## Precautions

1. Keep the input amplitude constant while changing frequency.
2. Avoid overloading the amplifier input.
3. Use a common ground for the generator and CRO.
4. Measure the output after the waveform becomes stable.

## Viva Questions

1. **Why is the coupling capacitor used?** It passes AC while blocking DC bias.
2. **Why does gain fall at low frequency?** The reactance of coupling and bypass capacitors becomes large.
3. **Why does gain fall at high frequency?** Transistor and stray capacitances become significant.
4. **What is the mid-band gain?** It is the nearly constant gain in the central frequency range.

</div>


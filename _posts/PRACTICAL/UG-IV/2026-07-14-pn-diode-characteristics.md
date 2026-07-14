---
layout: post
title: "V-I Characteristics of a PN Junction Diode"
date: 2026-07-13 15:20:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, pn-diode, vi-characteristics]
permalink: /practical/ug-iv/pn-diode-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To plot the forward and reverse V-I characteristics of a PN junction diode and determine its knee voltage.

## Apparatus

PN junction diode, regulated DC supply, milliammeter, microammeter, voltmeter, resistance, key, and connecting wires.

## Theory

In forward bias the depletion layer becomes narrower and current rises rapidly after the knee voltage. In reverse bias the depletion layer widens and only a small saturation current flows. The diode equation is

$$I=I_0\left(e^{V/(\eta V_T)}-1\right).$$

## Observations

| Forward voltage (V) | Forward current (mA) | Reverse voltage (V) | Reverse current ($\mu$A) |
|---:|---:|---:|---:|
| 0.20 | 0.00 | 2 | 1.2 |
| 0.40 | 0.02 | 4 | 1.3 |
| 0.50 | 0.12 | 6 | 1.4 |
| 0.60 | 0.82 | 8 | 1.5 |
| 0.65 | 2.10 | 10 | 1.6 |
| 0.70 | 5.20 | 12 | 1.7 |

Knee voltage from the forward characteristic: $V_k\approx0.58\,\text{V}$.

## Result

The diode conducts appreciably above approximately $0.58\,\text{V}$ in forward bias, while the reverse current remains nearly constant in the measured range.

## Precautions

1. Use the correct meter range for forward and reverse currents.
2. Do not exceed the rated reverse voltage.
3. Increase voltage gradually.
4. Observe the diode polarity before making connections.

## Viva Questions

1. **What is knee voltage?** It is the forward voltage beyond which current increases rapidly.
2. **Why is reverse current small?** It is due mainly to minority charge carriers.
3. **What is depletion width?** It is the carrier-depleted region near the junction.
4. **Why is a series resistor used?** It limits the forward current.

</div>


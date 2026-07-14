---
layout: post
title: "I-V Characteristics and Efficiency of a Solar Cell"
date: 2026-07-13 20:35:00 +0530
categories: [practical-pg-i]
tags: [practical, pg-i, solar-cell, photovoltaic]
permalink: /practical/pg-i/solar-cell-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To plot the illuminated I-V characteristic of a solar cell and determine its open-circuit voltage, short-circuit current, fill factor, and efficiency.

## Apparatus

Solar cell, lamp, variable load, voltmeter, ammeter, and lux or irradiance meter.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-i/solar-cell-characteristics/solar-cell-arrangement.png' | relative_url }}" alt="Labelled solar-cell measurement arrangement"><figcaption>Constant illumination, solar cell, variable load, and electrical meters.</figcaption></figure>

## Theory

Photons with sufficient energy create electron-hole pairs in the semiconductor. The built-in field of the junction separates these carriers and produces a photocurrent. The useful output power is $P=VI$. If $V_{oc}$ and $I_{sc}$ are the intercepts and $(V_m,I_m)$ is the maximum-power point,

$$FF=\frac{V_mI_m}{V_{oc}I_{sc}},\qquad \eta=\frac{V_mI_m}{P_{in}}\times100.$$

## Observations

| Voltage (V) | Current (mA) | Power (mW) |
|---:|---:|---:|
| 0.00 | 82.0 | 0.0 |
| 0.20 | 75.0 | 15.0 |
| 0.40 | 61.0 | 24.4 |
| 0.55 | 42.0 | 23.1 |
| 0.65 | 0.0 | 0.0 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-i/solar-cell-characteristics/solar-cell.png' | relative_url }}" alt="Solar-cell illuminated current voltage graph"><figcaption>Illuminated I-V characteristic of the solar cell.</figcaption></figure>

## Result

$V_{oc}=0.65\,\text{V}$, $I_{sc}=82\,\text{mA}$, and the maximum power is approximately $24.4\,\text{mW}$. With incident power $P_{in}=0.20\,\text{W}$, $\eta=12.2\%$.

## Viva Questions

1. **What is the photovoltaic effect?** Generation of emf when light creates and separates charge carriers in a junction.
2. **What is fill factor?** The ratio of maximum electrical power to $V_{oc}I_{sc}$.
3. **Why does current fall with load voltage?** The load extracts the photogenerated carriers and changes the operating point.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-i/solar-cell-characteristics/solar-cell-characteristics.mac' | relative_url }}).

</div>

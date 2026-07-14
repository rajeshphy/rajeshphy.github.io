---
layout: post
title: "Energy Gap of a Semiconductor Using a PN Junction"
date: 2026-07-13 17:00:00 +0530
categories: [practical-ug-vi]
tags: [practical, ug-vi, solid-state, semiconductor, energy-gap]
permalink: /practical/ug-vi/semiconductor-energy-gap/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/solid-state/solid-state-arrangement.png' | relative_url }}" alt="Temperature-controlled semiconductor energy-gap arrangement">
  <figcaption>The reverse-biased semiconductor junction is heated in a controlled bath and its reverse saturation current is measured.</figcaption>
</figure>

## Aim

To determine the energy gap of a semiconductor from the variation of reverse saturation current with temperature.

## Apparatus

PN junction diode, heating arrangement, thermometer, regulated supply, microammeter, and voltmeter.

## Theory

The reverse saturation current varies approximately as

$$I_s=I_0e^{-E_g/(kT)}.$$

Therefore, a plot of $\log_{10}I_s$ against $1/T$ is a straight line with slope $-E_g/(2.303k)$.

## Observations

| Temperature (K) | Reverse current ($\mu$A) | $1/T$ (K$^{-1}$) | $\log_{10}I_s$ |
|---:|---:|---:|---:|
| 303 | 2.1 | 0.003300 | 0.322 |
| 313 | 3.5 | 0.003195 | 0.544 |
| 323 | 5.8 | 0.003096 | 0.763 |
| 333 | 9.4 | 0.003003 | 0.973 |
| 343 | 15.1 | 0.002915 | 1.179 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vi/semiconductor-energy-gap/energy-gap.png' | relative_url }}" alt="Log reverse saturation current versus inverse temperature graph">
  <figcaption>Graph used to obtain the semiconductor energy gap from the slope.</figcaption>
</figure>

## Calculation

The slope of the $\log_{10}I_s$ versus $1/T$ graph is approximately $-2.28\times10^3\,\text{K}$. Hence,

$$E_g=2.303k(2.28\times10^3)=0.452\,\text{eV}.$$

## Result

$$\boxed{E_g=0.45\,\text{eV}}.$$

## Precautions

1. Keep the reverse voltage constant.
2. Allow the junction to reach thermal equilibrium.
3. Use a microammeter of suitable range.
4. Do not heat the diode beyond its rated temperature.

## Viva Questions

1. **What is energy gap?** It is the energy separation between the valence and conduction bands.
2. **Why is reverse saturation current measured?** Its temperature dependence contains the energy-gap information.
3. **Why is the reverse voltage kept constant?** To ensure that current changes are mainly due to temperature.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vi/semiconductor-energy-gap/semiconductor-energy-gap.mac' | relative_url }}).

</div>

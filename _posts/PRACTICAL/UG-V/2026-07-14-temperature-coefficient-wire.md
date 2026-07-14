---
layout: post
title: "Temperature Coefficient of Resistance of a Wire"
date: 2026-07-13 16:45:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, resistance, temperature-coefficient]
permalink: /practical/ug-v/temperature-coefficient-wire/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the temperature coefficient of resistance of the material of a wire.

## Apparatus

Resistance wire, Wheatstone bridge, galvanometer, resistance box, water bath, thermometer, and battery.

## Theory

For a conductor over a limited temperature interval,

$$R_t=R_0(1+\alpha t).$$

The slope of the $R$ versus $t$ graph gives $R_0\alpha$.

## Observations

| Temperature (°C) | Resistance (Ω) |
|---:|---:|
| 20 | 5.42 |
| 40 | 5.84 |
| 60 | 6.25 |
| 80 | 6.67 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-v/temperature-coefficient-wire/temperature-coefficient-wire.png' | relative_url }}" alt="Resistance versus temperature graph">
  <figcaption>Resistance-temperature graph for the experimental wire.</figcaption>
</figure>

Extrapolated resistance at $0^\circ\text{C}$: $R_0=5.00\,\Omega$.

## Calculation

Using the $20^\circ\text{C}$ reading,

$$\alpha=\frac{5.42-5.00}{5.00\times20}=4.20\times10^{-3}\, ^\circ\text{C}^{-1}.$$

## Result

$$\boxed{\alpha=4.2\times10^{-3}\, ^\circ\text{C}^{-1}}.$$

## Precautions

1. Maintain uniform bath temperature.
2. Use a small bridge current.
3. Avoid loose electrical contacts.
4. Take readings only after thermal equilibrium.

## Viva Questions

1. **Why does metallic resistance increase with temperature?** Lattice vibrations increase scattering of conduction electrons.
2. **Why is a bridge used?** It permits accurate comparison of small resistance changes.
3. **What is $R_0$?** Resistance extrapolated to zero degree Celsius.

</div>

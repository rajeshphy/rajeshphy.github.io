---
layout: post
title: "Temperature Coefficient of Resistance by Platinum Resistance Thermometer"
date: 2026-07-13 16:10:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, resistance-thermometer, platinum]
permalink: /practical/ug-v/platinum-resistance-thermometer/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Aim

To determine the temperature coefficient of resistance of platinum using a platinum resistance thermometer.

## Apparatus

Platinum resistance coil, bridge circuit, galvanometer, resistance box, thermometer, water bath, and heater.

## Theory

For a moderate temperature range,

$$R_t=R_0(1+\alpha t),$$

where $R_0$ is the resistance at $0^\circ\text{C}$ and $\alpha$ is the temperature coefficient. Thus,

$$\alpha=\frac{R_t-R_0}{R_0t}.$$

## Observations

Resistance at $0^\circ\text{C}$: $R_0=10.00\,\Omega$.

| Temperature (°C) | Resistance (Ω) | Calculated $\alpha$ (°C$^{-1}$) |
|---:|---:|---:|
| 20 | 10.78 | 0.00390 |
| 40 | 11.57 | 0.00393 |
| 60 | 12.36 | 0.00393 |
| 80 | 13.14 | 0.00393 |

## Result

The temperature coefficient of platinum resistance is

$$\boxed{\alpha=3.92\times10^{-3}\, ^\circ\text{C}^{-1}}.$$

## Precautions

1. Stir the water bath to maintain uniform temperature.
2. Wait for thermal equilibrium before measuring resistance.
3. Use small bridge current to avoid self-heating.
4. Record temperature and resistance simultaneously.

## Viva Questions

1. **Why is platinum used?** It is stable, reproducible, and has a nearly linear resistance-temperature relation.
2. **What is self-heating?** It is the rise in thermometer temperature due to measuring current.
3. **Why is a water bath used?** It gives a uniform and controllable temperature.
4. **How does resistance of platinum vary with temperature?** It increases approximately linearly over a moderate range.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-v/platinum-resistance-thermometer/platinum-resistance-thermometer.mac' | relative_url }}).

</div>

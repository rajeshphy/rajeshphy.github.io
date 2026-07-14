---
layout: post
title: "Thermo-Emf of a Thermocouple for a Temperature Difference"
date: 2026-07-13 16:15:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, thermocouple, thermo-emf]
permalink: /practical/ug-v/thermocouple-thermoemf/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/thermal/thermal-arrangement.png' | relative_url }}" alt="Thermocouple hot and reference junction arrangement">
  <figcaption>One thermocouple junction is heated while the reference junction is maintained at a known temperature; the thermo-emf is read by the meter.</figcaption>
</figure>

## Aim

To study the variation of thermo-emf of a thermocouple with the temperature difference between its junctions.

## Apparatus

Copper-constantan thermocouple, galvanometer or millivoltmeter, hot-water bath, cold-water bath, thermometer, and connecting wires.

## Theory

When the two junctions of dissimilar metals are at different temperatures, a thermo-emf is produced. For a limited range,

$$E=a\Delta T+b(\Delta T)^2.$$

The emf is zero when both junctions are at the same temperature. The neutral temperature is the temperature at which the thermo-emf is maximum.

## Observations

Cold junction temperature: $20^\circ\text{C}$.

| Hot junction (°C) | $\Delta T$ (°C) | Thermo-emf (mV) |
|---:|---:|---:|
| 30 | 10 | 0.22 |
| 40 | 20 | 0.43 |
| 50 | 30 | 0.63 |
| 60 | 40 | 0.81 |
| 70 | 50 | 0.96 |

## Result

The thermo-emf increases with the temperature difference over the observed range. The mean sensitivity from the end readings is

$$\boxed{\frac{E}{\Delta T}=0.0192\,\text{mV K}^{-1}}.$$

## Precautions

1. Keep the cold junction at a fixed temperature.
2. Avoid direct contact between the two baths.
3. Use a sensitive millivoltmeter without disturbing the junctions.
4. Wait for thermal equilibrium at each temperature.

## Viva Questions

1. **What is the Seebeck effect?** It is the production of emf in a circuit of dissimilar metals when its junctions are at different temperatures.
2. **What is a reference junction?** It is the junction maintained at a known temperature.
3. **Why is the emf small?** Thermoelectric voltage per kelvin is small for ordinary metal pairs.
4. **What is neutral temperature?** It is the hot-junction temperature at which thermo-emf becomes maximum for a fixed cold junction.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-v/thermocouple-thermoemf/thermocouple-thermoemf.mac' | relative_url }}).

</div>

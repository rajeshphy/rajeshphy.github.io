---
layout: post
title: "Calibration of a Thermocouple and Unknown Temperature"
date: 2026-07-13 16:35:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, thermocouple, calibration]
permalink: /practical/ug-v/thermocouple-calibration/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To calibrate a thermocouple against a standard thermometer and determine an unknown temperature.

## Apparatus

Thermocouple, standard thermometer, constant-temperature baths, millivoltmeter, and heating arrangement.

## Theory

For a fixed reference junction, the thermo-emf is calibrated against known temperatures. The calibration relation in the working range is approximated by

$$E=a+bT.$$

The unknown temperature is obtained by substituting the measured emf in this equation.

## Observations

| Standard temperature (°C) | Thermo-emf (mV) |
|---:|---:|
| 20 | 0.00 |
| 40 | 0.43 |
| 60 | 0.81 |
| 80 | 1.15 |
| 100 | 1.44 |

## Calibration graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-v/thermocouple-calibration/thermocouple-calibration.png' | relative_url }}" alt="Thermocouple calibration graph">
  <figcaption>Thermo-emf plotted against the standard temperature.</figcaption>
</figure>

Unknown emf: $E=0.96\,\text{mV}$.

## Calculation

From the calibration graph, $E=0.96\,\text{mV}$ corresponds to

$$\boxed{T=68^\circ\text{C}}.$$

## Result

The temperature of the unknown bath is $68^\circ\text{C}$.

## Precautions

1. Keep the reference junction at a fixed temperature.
2. Wait for both junctions to reach thermal equilibrium.
3. Do not immerse the electrical joints in the bath.

## Viva Questions

1. **Why is calibration needed?** Thermo-emf depends on the metal pair and the reference temperature.
2. **What is interpolation?** It is estimating a value between two calibrated readings.
3. **Why should the reference junction be fixed?** Otherwise the emf would depend on two changing temperatures.

</div>

---
layout: post
title: "Determination of Planck's Constant Using LEDs"
date: 2026-07-13 20:10:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, planck-constant, led]
permalink: /practical/pg-iv/planck-constant-led/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine Planck's constant using the threshold voltages of LEDs of different colours.

## Apparatus
LED panel, regulated DC supply, series resistor, voltmeter, milliammeter, and connecting leads.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="LED threshold-voltage measurement circuit"><figcaption>Each LED is forward biased through a current-limiting resistor and its threshold voltage is measured.</figcaption></figure>

## Theory
An LED is a forward-biased p-n junction. Electrons and holes are injected into the active region and recombine there. The electrical energy supplied per carrier is approximately $eV$, while the emitted photon carries energy $h\nu$. At threshold, $eV\approx h\nu=hc/\lambda$. Therefore a graph of threshold voltage $V$ against frequency $\nu$ has slope $h/e$:

$$h=e\frac{\Delta V}{\Delta\nu}.$$

## Observations

| LED colour | Wavelength (nm) | Threshold voltage (V) |
|---|---:|---:|
| red | 650 | 1.82 |
| yellow | 590 | 2.05 |
| green | 565 | 2.18 |
| blue | 470 | 2.72 |

## Result
The slope of the $V$ versus $\nu$ graph gives an experimental value of Planck's constant close to $6.63\times10^{-34}$ J s.

## Viva Questions
1. **Why are LEDs of different colours used?** Their emission frequencies are different.
2. **Why is a series resistor used?** It limits current and protects the LED.
3. **What does the slope represent?** $h/e$.

## Maxima Code
[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).
</div>

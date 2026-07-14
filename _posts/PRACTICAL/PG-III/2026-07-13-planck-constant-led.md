---
layout: post
title: "Determination of Planck's Constant Using LEDs"
date: 2026-07-13 18:15:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, quantum-physics, led, planck-constant]
permalink: /practical/pg-iii/planck-constant-led/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine Planck's constant from the threshold voltages and emission wavelengths of LEDs of different colours.

## Apparatus

LED panel, regulated DC supply, series resistor, voltmeter, milliammeter, and connecting leads.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/planck-constant-led/led-circuit.png' | relative_url }}" alt="LED threshold voltage measurement circuit"><figcaption>Each LED is forward biased through a current-limiting resistor and its threshold voltage is measured.</figcaption></figure>

## Theory

An LED is a forward-biased p-n junction. Electrons and holes recombine in the active region and release energy as photons. If the threshold voltage is $V$, the electrical energy supplied to one charge is approximately $eV$. The emitted photon has energy $h\nu$. Therefore,

$$eV\approx h\nu=\frac{hc}{\lambda}.$$

For LEDs of different colours, a graph of threshold voltage $V$ against frequency $\nu$ is a straight line. Its slope is $h/e$ and the intercept represents contact and junction-potential effects.

## Observations

| LED colour | Wavelength (nm) | Frequency ($10^{14}$ Hz) | Threshold voltage (V) |
|---|---:|---:|---:|
| Red | 650 | 4.61 | 1.82 |
| Yellow | 590 | 5.08 | 2.00 |
| Green | 565 | 5.31 | 2.11 |
| Blue | 470 | 6.38 | 2.55 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/planck-constant-led/planck-led.png' | relative_url }}" alt="LED threshold voltage versus frequency graph"><figcaption>Threshold voltage plotted against LED emission frequency. The slope gives $h/e$.</figcaption></figure>

## Calculation

Using two well-separated readings,

$$\frac{\Delta V}{\Delta\nu}=\frac{2.55-1.82}{(6.38-4.61)\times10^{14}}=4.12\times10^{-15}\ \mathrm{V\,s}.$$

Hence

$$h=e\frac{\Delta V}{\Delta\nu}=(1.602\times10^{-19})(4.12\times10^{-15})=6.60\times10^{-34}\ \mathrm{J\,s}.$$

The straight-line fit to all readings gives the accepted value more closely than the two-point estimate.

## Result

The value of Planck's constant obtained from the best-fit slope is approximately

$$\boxed{h\approx6.6\times10^{-34}\ \mathrm{J\,s}}.$$

## Viva Questions

1. **Why are LEDs of different colours used?** Their emission frequencies are different, giving several points for the graph.
2. **Why is a series resistor connected?** It limits the current and prevents damage to the LED.
3. **What does the graph slope represent?** It represents $h/e$.

## Maxima Code

[Download the PG-III calculation file]({{ '/assets/tikz/practical/pg-iii/pg-iii-modern-physics.mac' | relative_url }}).

</div>

---
layout: post
title: "Determination of Planck's Constant Using LEDs"
date: 2026-07-13 20:10:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, planck-constant, led]
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
An LED is a forward-biased p-n junction. The forward bias lowers the junction barrier and injects electrons and holes into the active region, where they recombine. The electrical energy supplied per carrier is approximately $eV$, while the emitted photon carries energy $h\nu$. At threshold,

$$eV\approx h\nu=\frac{hc}{\lambda}.$$

The measured voltage also contains a nearly constant junction and contact contribution. It therefore affects the intercept but not the slope of a graph of threshold voltage $V$ against frequency $\nu$. The slope is $h/e$:

$$h=e\frac{\Delta V}{\Delta\nu}.$$

## Observations

| LED colour | Wavelength (nm) | Frequency ($10^{14}$ Hz) | Threshold voltage (V) |
|---|---:|---:|---:|
| red | 650 | 4.61 | 1.82 |
| yellow | 590 | 5.08 | 2.00 |
| green | 565 | 5.31 | 2.11 |
| blue | 470 | 6.38 | 2.55 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iv/planck-constant-led/planck-led.png' | relative_url }}" alt="LED threshold voltage versus frequency graph"><figcaption>Threshold voltage plotted against LED frequency; the slope gives $h/e$.</figcaption></figure>

## Calculation

Using the red and blue readings,

$$\frac{\Delta V}{\Delta\nu}=\frac{2.55-1.82}{(6.38-4.61)\times10^{14}}=4.12\times10^{-15}\,\text{V s}.$$

Therefore,

$$h=e\frac{\Delta V}{\Delta\nu}=(1.602\times10^{-19})(4.12\times10^{-15})=6.60\times10^{-34}\,\text{J s}.$$

The straight-line fit using all four observations reduces the effect of individual LED threshold uncertainty and gives the final value close to this endpoint estimate.

## Result
The value of Planck's constant obtained from the LED graph is approximately

$$\boxed{h\approx6.6\times10^{-34}\,\text{J s}}.$$

## Viva Questions
1. **Why are LEDs of different colours used?** Their emission frequencies are different.
2. **Why is a series resistor used?** It limits current and protects the LED.
3. **What does the slope represent?** $h/e$.

## Maxima Code
[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).
</div>

---
layout: post
title: "Four-Probe Resistance of a Semiconductor and Determination of Band Gap"
date: 2026-07-13 20:05:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, four-probe, semiconductor, band-gap]
permalink: /practical/pg-iv/four-probe-band-gap/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To measure the resistance of a semiconductor by the four-probe method at different temperatures and determine its energy gap.

## Apparatus

Four-probe semiconductor unit, constant-current source, microvoltmeter, heater, thermometer, and regulated power supply.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/solid-state/solid-state-arrangement.png' | relative_url }}" alt="Four-probe semiconductor resistance arrangement"><figcaption>Current is passed through the outer probes and the voltage drop is measured between the inner probes while the sample temperature is varied.</figcaption></figure>

## Theory

The four-probe method separates the current contacts from the voltage contacts. Therefore, contact resistance and lead resistance do not enter the measured voltage significantly. For a long thin sample, the resistivity is obtained from the measured voltage $V$, current $I$, and geometrical correction factor $G$:

$$\rho=G\frac{V}{I}.$$

For an intrinsic semiconductor, the conductivity varies approximately as $\sigma=\sigma_0e^{-E_g/(2kT)}$. Hence a plot of $\log_{10}\sigma$ against $1/T$ is linear and

$$E_g=-2.303k\frac{d(\log_{10}\sigma)}{d(1/T)}.$$

## Observations

| Temperature (K) | Current (mA) | Probe voltage (mV) | Resistivity (ohm m) |
|---:|---:|---:|---:|
| 303 | 2.0 | 18.2 | 0.91 |
| 313 | 2.0 | 15.0 | 0.75 |
| 323 | 2.0 | 12.4 | 0.62 |
| 333 | 2.0 | 10.2 | 0.51 |
| 343 | 2.0 | 8.5 | 0.43 |

## Result

The semiconductor shows decreasing resistance with increasing temperature. The slope of the $\log_{10}\sigma$ versus $1/T$ graph gives the band gap of the supplied sample.

## Viva Questions

1. **Why are four probes used?** The voltage contacts carry negligible current, so contact resistance has little effect.
2. **Why is the sample heated gradually?** To maintain thermal equilibrium and avoid temperature gradients.
3. **What indicates semiconductor behaviour?** Its resistance decreases as temperature increases.

## Maxima Code

[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

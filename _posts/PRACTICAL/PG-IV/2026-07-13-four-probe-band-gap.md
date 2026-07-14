---
layout: post
title: "Four-Probe Resistance of a Semiconductor and Determination of Band Gap"
date: 2026-07-13 20:05:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, four-probe, semiconductor, band-gap]
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

The four-probe method separates the current contacts from the voltage contacts. A known current enters through the outer probes and the inner probes draw negligible current, so contact resistance and lead resistance do not enter the measured voltage significantly. For a long thin sample, the resistivity is obtained from the measured voltage $V$, current $I$, and geometrical correction factor $G$:

$$\rho=G\frac{V}{I}.$$

For an intrinsic semiconductor, thermal excitation creates electron-hole pairs across the gap. The conductivity varies approximately as $\sigma=\sigma_0e^{-E_g/(2kT)}$. Hence a plot of $\log_{10}\sigma$ against $1/T$ is linear and

$$E_g=-2.303k\frac{d(\log_{10}\sigma)}{d(1/T)}.$$

## Observations

| Temperature (K) | Current (mA) | Probe voltage (mV) | Resistivity (ohm m) |
|---:|---:|---:|---:|
| 303 | 2.0 | 18.2 | 0.91 |
| 313 | 2.0 | 12.8 | 0.64 |
| 323 | 2.0 | 8.8 | 0.44 |
| 333 | 2.0 | 6.0 | 0.30 |
| 343 | 2.0 | 4.0 | 0.20 |

For this trial sheet, the geometrical correction factor is $G=0.10\,\text{m}$.

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iv/four-probe-band-gap/band-gap.png' | relative_url }}" alt="Log conductivity versus inverse temperature graph for band gap"><figcaption>The negative slope of $\log_{10}\sigma$ versus $1000/T$ gives the energy gap.</figcaption></figure>

## Calculation

For the first reading,

$$\rho=G\frac{V}{I}=0.10\frac{18.2\times10^{-3}}{2.0\times10^{-3}}=0.910\,\Omega\,\text{m}.$$

Therefore,

$$\sigma=\frac{1}{\rho}=\frac{1}{0.910}=1.10\,\text{S m}^{-1}.$$

The graph is plotted against $1000/T$. Its slope is approximately $-3.36$ per unit of $1000/T$, which corresponds to $-3360$ K when the horizontal variable is $1/T$. Hence

$$E_g=-2.303(8.617\times10^{-5})(-3360)=0.67\,\text{eV}.$$

## Result

The semiconductor shows decreasing resistivity with increasing temperature, and the energy gap obtained from the graph is

$$\boxed{E_g\approx0.67\,\text{eV}}.$$

## Viva Questions

1. **Why are four probes used?** The voltage contacts carry negligible current, so contact resistance has little effect.
2. **Why is the sample heated gradually?** To maintain thermal equilibrium and avoid temperature gradients.
3. **What indicates semiconductor behaviour?** Its resistance decreases as temperature increases.

## Maxima Code

[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

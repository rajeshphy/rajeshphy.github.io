---
layout: post
title: "Zener Diode Characteristics and Voltage Stabilisation"
date: 2026-07-13 20:00:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, zener-diode, voltage-stabiliser]
permalink: /practical/pg-ii/zener-diode-characteristics-stabilisation/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To plot the forward and reverse characteristics of a Zener diode and study its use as a shunt voltage stabiliser.

## Apparatus

Zener diode, regulated DC supply, series resistor, load resistor, milliammeter, voltmeters, patch cords, and breadboard or electronics trainer.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Zener diode characteristic and stabiliser circuit"><figcaption>The supply feeds the Zener through a current-limiting resistor; the output voltage is measured across the reverse-biased Zener and load.</figcaption></figure>

## Theory

A Zener diode is a heavily doped p-n junction designed to operate safely in reverse breakdown. In forward bias it behaves like an ordinary diode. In reverse bias the current remains small until the reverse voltage approaches the Zener voltage $V_Z$. Beyond this point the current increases sharply, while the voltage changes only slightly. This nearly constant voltage makes the diode useful as a shunt stabiliser.

For a stabiliser, the series current is

$$I_S=\frac{V_{in}-V_Z}{R_S},$$

and it divides as $I_S=I_L+I_Z$. The load voltage is approximately $V_L=V_Z$ provided $I_Z$ remains between its minimum regulating value and its safe maximum value.

## Observations

| Reverse voltage (V) | Zener current (mA) |
|---:|---:|
| 4.80 | 0.2 |
| 5.00 | 0.8 |
| 5.10 | 2.0 |
| 5.15 | 4.0 |
| 5.20 | 6.0 |

For $V_{in}=9$ V and $R_S=470\,\Omega$:

| Load current (mA) | Stabilised output (V) |
|---:|---:|
| 1.0 | 5.08 |
| 2.0 | 5.10 |
| 3.0 | 5.11 |

## Result

The Zener voltage is approximately $5.1$ V. The output remains close to $5.1$ V over the observed load-current range and hence the circuit acts as a voltage stabiliser.

## Viva Questions

1. **Why is a series resistor necessary?** It limits the Zener current during breakdown.
2. **What is dynamic resistance?** $r_Z=\Delta V_Z/\Delta I_Z$ in the breakdown region.
3. **What happens if the load current becomes too large?** The Zener current may fall below the regulating value and the output voltage will no longer remain constant.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

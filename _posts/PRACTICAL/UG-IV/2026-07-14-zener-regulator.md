---
layout: post
title: "V-I Characteristics of a Zener Diode and Voltage Regulation"
date: 2026-07-13 15:25:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, zener-diode, regulator]
permalink: /practical/ug-iv/zener-regulator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Zener diode regulator test circuit">
  <figcaption>Zener test connection: the series resistor limits current and the output voltage is measured directly across the Zener device.</figcaption>
</figure>

## Aim

To plot the V-I characteristics of a Zener diode and study its action as a voltage regulator.

## Apparatus

Zener diode, regulated DC supply, series resistor, voltmeter, milliammeter, load resistor, and connecting wires.

## Theory

A Zener diode is operated in reverse breakdown. In this region a large change in current produces only a small change in voltage. Hence it can maintain an approximately constant load voltage. The breakdown voltage obtained from the characteristic is the Zener voltage $V_Z$.

## Observations

| Reverse voltage (V) | Zener current (mA) |
|---:|---:|
| 4.8 | 0.2 |
| 5.0 | 0.8 |
| 5.1 | 2.0 |
| 5.15 | 4.0 |
| 5.20 | 6.0 |

At $V_{in}=9\,\text{V}$, $R_s=470\,\Omega$, and $R_L=1\,\text{k}\Omega$:

| Load current (mA) | Regulated output (V) |
|---:|---:|
| 1.0 | 5.08 |
| 2.0 | 5.10 |
| 3.0 | 5.11 |

## Result

The Zener voltage is approximately $V_Z=5.1\,\text{V}$, and the circuit maintains an output close to $5.1\,\text{V}$ over the measured load-current range.

## Precautions

1. Always use a series resistor to limit Zener current.
2. Do not exceed the rated power of the diode.
3. Increase reverse voltage slowly.
4. Check the polarity before switching on the supply.

## Viva Questions

1. **Why does a Zener diode regulate voltage?** Its reverse voltage changes very little in the breakdown region.
2. **What is the purpose of the series resistor?** It limits current and protects the diode.
3. **What is dynamic resistance?** It is the small-signal ratio $\Delta V_Z/\Delta I_Z$ in breakdown.
4. **Can a Zener diode be used without a resistor?** No, because the current may exceed its safe limit.

</div>

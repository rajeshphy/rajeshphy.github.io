---
layout: post
title: "V-I Characteristics and Holding Current of an SCR"
date: 2026-07-13 20:35:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, scr, thyristor]
permalink: /practical/pg-ii/scr-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To plot the anode characteristics of a silicon-controlled rectifier and determine its latching and holding currents.

## Apparatus

SCR, regulated DC supply, gate-pulse supply, series resistor, load resistor, voltmeters, milliammeter, and connecting leads.

## Experimental arrangement

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/scr-characteristics/scr-setup.png' | relative_url }}" alt="SCR static-characteristic circuit with separate gate and anode supplies"><figcaption>The anode circuit measures $I_A$ and $V_{AK}$, while the isolated gate circuit supplies and measures the trigger current $I_G$.</figcaption></figure>

## Theory

An SCR is a four-layer PNPN device with three junctions and terminals called anode, cathode, and gate. With the anode positive relative to the cathode, the outer junctions are forward biased but the central junction is reverse biased. The device therefore remains in the forward-blocking state and carries only leakage current.

The PNPN structure can be represented as mutually coupled PNP and NPN transistors. A positive gate current increases the NPN collector current, which drives the PNP transistor; the PNP collector current then reinforces the NPN base current. When the sum of current gains approaches unity, this regenerative feedback switches both transistor sections into conduction. The anode-cathode voltage collapses to the small on-state value.

After turn-on, the internal feedback supplies the required base currents and the gate no longer controls the device. The latching current $I_L$ is the minimum anode current required immediately after the gate signal is removed. The holding current $I_H$ is the lower current below which an already conducting SCR returns to the blocking state. A gate current reduces the required firing voltage but does not provide turn-off in a DC circuit.

## Observations

| Gate current (mA) | Breakover / firing voltage (V) | On-state current (mA) |
|---:|---:|---:|
| 0.0 | 42 | 0 |
| 0.5 | 28 | 12 |
| 1.0 | 18 | 18 |
| 1.5 | 12 | 24 |

The anode current falls to zero at approximately $I_H=8$ mA.

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/scr-characteristics/scr-gate-control.png' | relative_url }}" alt="SCR firing voltage versus gate current graph"><figcaption>Increasing gate current reduces the anode voltage required to trigger the SCR.</figcaption></figure>

## Calculation

Increasing the gate current from 0 to 1.5 mA reduces the firing voltage from 42 V to 12 V. The percentage reduction is

$$\frac{42-12}{42}\times100=71.4\%.$$

On decreasing the anode current after firing, turn-off occurs at approximately $I_H=8$ mA. This is the measured holding current of the device.

## Result

The SCR changes from forward blocking to conduction when triggered by the gate. The observed holding current is approximately $8$ mA.

## Viva Questions

1. **How is an SCR turned on?** By applying forward bias and a suitable gate pulse.
2. **How is it turned off in a DC circuit?** The anode current must be reduced below the holding current.
3. **What is the difference between latching and holding current?** Latching current maintains conduction just after triggering; holding current maintains an already established conduction state.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

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

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="SCR anode and gate characteristic circuit"><figcaption>The anode-cathode path carries the load current, while a separate gate pulse triggers conduction.</figcaption></figure>

## Theory

An SCR is a four-layer PNPN device with anode, cathode, and gate terminals. With forward anode voltage it remains in the forward-blocking state until a suitable gate pulse is applied. It then switches to the conducting state. After turn-on, the gate loses control and the SCR remains on while the anode current is above the holding current.

The latching current is the minimum anode current needed to remain on immediately after triggering. The holding current is the minimum current below which an already conducting SCR turns off.

## Observations

| Gate current (mA) | Breakover / firing voltage (V) | On-state current (mA) |
|---:|---:|---:|
| 0.0 | 42 | 0 |
| 0.5 | 28 | 12 |
| 1.0 | 18 | 18 |
| 1.5 | 12 | 24 |

The anode current falls to zero at approximately $I_H=8$ mA.

## Result

The SCR changes from forward blocking to conduction when triggered by the gate. The observed holding current is approximately $8$ mA.

## Viva Questions

1. **How is an SCR turned on?** By applying forward bias and a suitable gate pulse.
2. **How is it turned off in a DC circuit?** The anode current must be reduced below the holding current.
3. **What is the difference between latching and holding current?** Latching current maintains conduction just after triggering; holding current maintains an already established conduction state.

</div>

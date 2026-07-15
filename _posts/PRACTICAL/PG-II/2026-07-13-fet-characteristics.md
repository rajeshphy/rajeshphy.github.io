---
layout: post
title: "Drain and Transfer Characteristics of a JFET"
date: 2026-07-13 20:40:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, fet, transistor, characteristics]
permalink: /practical/pg-ii/fet-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the drain and transfer characteristics of a junction field-effect transistor and determine its transconductance.

## Apparatus

JFET, regulated DC supplies, milliammeter, voltmeters, bias resistors, and connecting leads.

## Figure

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/fet-characteristics/fet-arrangement.png' | relative_url }}" alt="Circuit for measuring JFET drain and transfer characteristics"><figcaption>The drain supply sets $V_{DS}$, the negative gate supply sets $V_{GS}$, and the meters measure $I_D$, $V_{DS}$, and $V_{GS}$ with the source common to both supplies.</figcaption></figure>

## Theory

An n-channel JFET consists of an n-type channel between source and drain and p-type gate regions forming reverse-biased p-n junctions with that channel. Electrons entering the source drift towards the drain when $V_{DS}$ is positive. Since the gate junction is reverse biased, its current is nearly zero; the device is controlled by the electric field of the depletion layers rather than by an input current.

For small $V_{DS}$ the channel behaves approximately as a voltage-controlled resistance, so $I_D$ initially rises with $V_{DS}$. The reverse bias is greatest near the drain, making the channel narrower there. When the depletion layers nearly meet, the channel is pinched near the drain. Further increase of $V_{DS}$ mainly extends the pinched region and $I_D$ becomes almost constant. This is the saturation or pinch-off region used for the transfer characteristic.

Making $V_{GS}$ more negative widens the depletion layers throughout the channel and reduces $I_D$. At $V_{GS}=V_P$ the channel is cut off. In saturation the transfer characteristic is approximated by Shockley's equation,

$$I_D=I_{DSS}\left(1-\frac{V_{GS}}{V_P}\right)^2.$$

Here $I_{DSS}$ is the saturation current at $V_{GS}=0$ and $V_P$ is the negative gate voltage at cutoff. The transconductance measures the control of drain current by gate voltage:

$$g_m=\left.\frac{\partial I_D}{\partial V_{GS}}\right|_{V_{DS}}.$$

It is obtained experimentally from the slope of the $I_D$-$V_{GS}$ graph at constant $V_{DS}$.

## Observations

| $V_{DS}$ (V) | $I_D$ at $V_{GS}=0$ (mA) | $I_D$ at $V_{GS}=-1$ V (mA) |
|---:|---:|---:|
| 2 | 4.1 | 2.8 |
| 4 | 5.0 | 3.1 |
| 6 | 5.2 | 3.2 |
| 8 | 5.3 | 3.2 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/fet-characteristics/fet.png' | relative_url }}" alt="JFET transfer characteristic graph"><figcaption>Drain current plotted against gate-source voltage.</figcaption></figure>

## Calculation

At $V_{DS}=6$ V, the table gives $I_D=5.2$ mA at $V_{GS}=0$ and $I_D=3.2$ mA at $V_{GS}=-1$ V. Therefore the mean transconductance over this interval is

$$g_m\approx\frac{5.2-3.2}{0-(-1)}=2.0\,\text{mA V}^{-1}=2.0\,\text{mS}.$$

## Result

The drain current becomes nearly constant after pinch-off. The transconductance over the measured interval near $V_{GS}=-1$ V is approximately $2.0$ mS.

## Viva Questions

1. **Why is gate current small?** The gate junction is reverse biased.
2. **What is pinch-off?** The condition in which the channel narrows enough for drain current to become nearly constant.
3. **What is transconductance?** $g_m=\Delta I_D/\Delta V_{GS}$ at constant $V_{DS}$.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-ii/fet-characteristics/fet-characteristics.mac' | relative_url }}).

</div>

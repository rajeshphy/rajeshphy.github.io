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

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-ii/fet-characteristics/fet-arrangement.png' | relative_url }}" alt="Labelled JFET characteristic measurement arrangement"><figcaption>Separate gate-bias and drain supplies connected to the JFET under test.</figcaption></figure>

## Theory

In a junction FET, the source and drain are connected by a semiconductor channel. A reverse-biased gate junction creates a depletion region inside the channel. Increasing the magnitude of the gate-source voltage widens this depletion region, reduces the conducting cross-section, and consequently reduces the drain current. Thus the gate controls the channel with negligible gate current.

At a sufficiently large drain-source voltage, the channel narrows near the drain and reaches pinch-off. In this region the transfer characteristic is approximated by Shockley's equation,

$$I_D=I_{DSS}\left(1-\frac{V_{GS}}{V_P}\right)^2.$$

Here $I_{DSS}$ is the drain current at $V_{GS}=0$ and $V_P$ is the pinch-off voltage.

## Observations

| $V_{DS}$ (V) | $I_D$ at $V_{GS}=0$ (mA) | $I_D$ at $V_{GS}=-1$ V (mA) |
|---:|---:|---:|
| 2 | 4.1 | 2.8 |
| 4 | 5.0 | 3.1 |
| 6 | 5.2 | 3.2 |
| 8 | 5.3 | 3.2 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/fet-characteristics/fet.png' | relative_url }}" alt="JFET transfer characteristic graph"><figcaption>Drain current plotted against gate-source voltage.</figcaption></figure>

## Result

The drain current becomes nearly constant after pinch-off. From the transfer data, the transconductance near $V_{GS}=-1\,\text{V}$ is approximately $2.8\,\text{mS}$.

## Viva Questions

1. **Why is gate current small?** The gate junction is reverse biased.
2. **What is pinch-off?** The condition in which the channel narrows enough for drain current to become nearly constant.
3. **What is transconductance?** $g_m=\Delta I_D/\Delta V_{GS}$ at constant $V_{DS}$.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-ii/fet-characteristics/fet-characteristics.mac' | relative_url }}).

</div>

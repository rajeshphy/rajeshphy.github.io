---
layout: post
title: "Characteristics of a BJT in Common-Emitter Configuration"
date: 2026-07-13 15:30:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, bjt, common-emitter]
permalink: /practical/ug-iv/bjt-common-emitter/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Common-emitter transistor characteristic circuit">
  <figcaption>Common-emitter test circuit: the base is biased, the collector current is measured, and the collector voltage is read across the transistor.</figcaption>
</figure>

## Aim

To study the input and output characteristics of an NPN transistor in common-emitter configuration and determine its current gain.

## Apparatus

NPN transistor, two DC supplies, microammeter, milliammeter, voltmeters, resistors, and connecting wires.

## Theory

In common-emitter configuration the emitter is common to the input and output circuits. The input characteristic is the relation between $I_B$ and $V_{BE}$ at constant $V_{CE}$. The output characteristic is the relation between $I_C$ and $V_{CE}$ at constant $I_B$. In the active region,

$$\beta=\frac{\Delta I_C}{\Delta I_B}.$$

## Observations

For $V_{CE}=5\,\text{V}$:

| $V_{BE}$ (V) | $I_B$ ($\mu$A) |
|---:|---:|
| 0.55 | 2 |
| 0.60 | 8 |
| 0.65 | 22 |
| 0.68 | 40 |
| 0.70 | 62 |

For $I_B=40\,\mu$A:

| $V_{CE}$ (V) | $I_C$ (mA) |
|---:|---:|
| 0.2 | 0.20 |
| 1 | 3.6 |
| 3 | 4.0 |
| 5 | 4.1 |
| 8 | 4.2 |

## Calculation

Using the active-region readings, $I_C$ changes from $3.6$ to $4.1\,\text{mA}$ when $I_B$ changes from $30$ to $40\,\mu$A. Hence,

$$\beta=\frac{4.1-3.6}{(40-30)\times10^{-3}}=50.$$

## Result

The transistor operates in cutoff, active, and saturation regions, and its current gain from the sample readings is

$$\boxed{\beta\approx50}.$$

## Precautions

1. Do not exceed the transistor's collector-current rating.
2. Keep the emitter common throughout the experiment.
3. Take output readings only after the meters become steady.
4. Use separate scales for microampere and milliampere currents.

## Viva Questions

1. **Why is the emitter called common?** It is common to both input and output circuits.
2. **What is the active region?** The emitter-base junction is forward biased and collector-base junction reverse biased.
3. **What is current gain?** It is the ratio of change in collector current to change in base current.
4. **Why does collector current become nearly constant?** In the active region it is controlled mainly by base current.

</div>

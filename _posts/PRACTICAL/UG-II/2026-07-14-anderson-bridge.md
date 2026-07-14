---
layout: post
title: "Self Inductance of a Coil by Anderson's Bridge"
date: 2026-07-14 13:20:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electricity
  - anderson-bridge
  - inductance
permalink: /practical/ug-ii/anderson-bridge/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the self inductance of a coil using Anderson's bridge.

## Apparatus

Anderson bridge setup, unknown inductor coil, standard capacitor, resistance boxes, AC source, detector, key, and connecting wires.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/anderson-bridge/anderson-bridge.png' | relative_url }}" alt="Anderson bridge circuit">
  <figcaption>Anderson bridge circuit for determining the self inductance of a coil.</figcaption>
</figure>

## Theory

Anderson's bridge is an AC bridge used to measure self inductance. At balance, the detector current is zero. For the arrangement shown, the self inductance is

$$
L=\frac{R_3}{R_4}\{R_2R_4+r(R_2+R_4)\}C.
$$

Here $C$ is the standard capacitor and $R_2$, $R_3$, $R_4$, and $r$ are the resistance arms used at balance.

## Observations

| Quantity | Value |
|---|---:|
| $R_2$ | $1000\,\Omega$ |
| $R_3$ | $500\,\Omega$ |
| $R_4$ | $1000\,\Omega$ |
| $r$ | $100\,\Omega$ |
| $C$ | $0.5\,\mu\text{F}$ |

## Calculation

$$
L=\frac{500}{1000}\{(1000)(1000)+100(1000+1000)\}(0.5\times10^{-6}).
$$

Thus,

$$
L=0.300\text{ H}.
$$

## Result

The self inductance of the given coil is

$$
\boxed{L=0.300\text{ H}}.
$$

## Precautions

1. Use an AC source of suitable frequency.
2. Keep the detector sensitivity low at first and increase it near balance.
3. Avoid loose contacts in resistance boxes.
4. Keep the bridge away from strong magnetic fields.
5. Do not allow the coil to heat during the experiment.

## Viva Questions

1. **What is self inductance?**  
   Self inductance is the property of a coil by which it opposes a change in current through it.

2. **Why is AC required in Anderson's bridge?**  
   Inductive and capacitive reactances appear only for changing current.

3. **What is bridge balance?**  
   It is the condition when the detector branch carries no current.

4. **Why is a standard capacitor used?**  
   The unknown inductance is determined in terms of known resistance and capacitance.

5. **What is the SI unit of inductance?**  
   The SI unit of inductance is henry.

## Maxima Code

The calculation can be checked with this file: [anderson-bridge-calculation.mac]({{ '/assets/tikz/practical/ug-ii/anderson-bridge/anderson-bridge-calculation.mac' | relative_url }}).

</div>

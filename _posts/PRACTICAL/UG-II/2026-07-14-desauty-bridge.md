---
layout: post
title: "Comparison of Capacitances by De Sauty's Bridge"
date: 2026-07-14 13:10:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electricity
  - desauty-bridge
  - capacitance
permalink: /practical/ug-ii/desauty-bridge/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To compare two capacitances using De Sauty's bridge and determine the value of an unknown capacitance.

## Apparatus

De Sauty's bridge arrangement, two capacitors, resistance boxes, AC source, detector or headphone, key, and connecting wires.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/desauty-bridge/desauty-bridge.png' | relative_url }}" alt="De Sauty's bridge circuit">
  <figcaption>De Sauty's bridge for comparison of two capacitances.</figcaption>
</figure>

## Theory

At balance, no current flows through the detector. For De Sauty's bridge, the balance condition is

$$
\frac{C_1}{C_2}=\frac{R_2}{R_1}.
$$

If $C_1$ is the unknown capacitance, then

$$
C_1=C_2\frac{R_2}{R_1}.
$$

## Observations

Known capacitance:

$$
C_2=0.50\,\mu\text{F}.
$$

| Trial | $R_1$ ($\Omega$) | $R_2$ ($\Omega$) | $C_1=C_2R_2/R_1$ ($\mu$F) |
|---:|---:|---:|---:|
| 1 | 1200 | 1780 | 0.742 |
| 2 | 1200 | 1800 | 0.750 |
| 3 | 1200 | 1820 | 0.758 |

Mean value:

$$
C_1=\frac{0.742+0.750+0.758}{3}=0.750\,\mu\text{F}.
$$

## Result

The value of the unknown capacitance is

$$
\boxed{C_1=0.750\,\mu\text{F}}.
$$

## Precautions

1. Use an AC source, not a DC source.
2. Keep all connections tight and clean.
3. Do not touch the circuit during balance adjustment.
4. Use non-leaky capacitors for better balance.
5. Take the balance point by minimum detector sound or zero detector deflection.

## Viva Questions

1. **Why is AC used in De Sauty's bridge?**  
   A capacitor does not pass steady DC, so an alternating source is required.

2. **What is the balance condition of De Sauty's bridge?**  
   The balance condition is $C_1/C_2=R_2/R_1$.

3. **Can this bridge compare leaky capacitors accurately?**  
   No. Leakage resistance affects the balance and reduces accuracy.

4. **What is meant by null point?**  
   It is the condition where the detector shows no signal.

5. **Why is a headphone sometimes used as detector?**  
   It can detect small AC signals by sound.

## Maxima Code

The calculation can be checked with this file: [desauty-bridge-calculation.mac]({{ '/assets/tikz/practical/ug-ii/desauty-bridge/desauty-bridge-calculation.mac' | relative_url }}).

</div>

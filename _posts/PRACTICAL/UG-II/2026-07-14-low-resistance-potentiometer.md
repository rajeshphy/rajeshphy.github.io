---
layout: post
title: "Low Resistance by Potentiometer"
date: 2026-07-14 12:50:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electricity
  - potentiometer
  - low-resistance
permalink: /practical/ug-ii/low-resistance-potentiometer/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine an unknown low resistance by comparing it with a standard resistance using a potentiometer.

## Apparatus

Potentiometer, battery, rheostat, galvanometer, jockey, unknown low resistance, standard resistance, key, and connecting wires.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/potentiometer-low-resistance/potentiometer-low-resistance.png' | relative_url }}" alt="Potentiometer circuit for measuring low resistance">
  <figcaption>Potentiometer arrangement for comparing unknown and standard low resistances.</figcaption>
</figure>

## Theory

If the same current passes through an unknown resistance $X$ and a standard resistance $S$, their potential drops are proportional to their resistances. In a potentiometer, potential drop is proportional to balancing length. Therefore,

$$
\frac{X}{S}=\frac{l_X}{l_S}.
$$

Hence,

$$
X=S\frac{l_X}{l_S}.
$$

## Observations

Standard resistance:

$$
S=2.00\,\Omega.
$$

| Trial | Balancing length for $X$, $l_X$ (cm) | Balancing length for $S$, $l_S$ (cm) | $X=S l_X/l_S$ ($\Omega$) |
|---:|---:|---:|---:|
| 1 | 46.3 | 50.0 | 1.852 |
| 2 | 46.5 | 50.0 | 1.860 |
| 3 | 46.7 | 50.0 | 1.868 |

Mean value:

$$
X=\frac{1.852+1.860+1.868}{3}=1.86\,\Omega.
$$

## Result

The value of the unknown low resistance is

$$
\boxed{X=1.86\,\Omega}.
$$

## Precautions

1. The potentiometer wire should have uniform cross-section.
2. Do not press the jockey hard on the wire.
3. Keep the current constant while comparing the two balancing lengths.
4. Close the key only while taking readings to avoid heating.
5. Use thick connecting wires for low-resistance measurements.

## Viva Questions

1. **Why is a potentiometer called a null method instrument?**  
   At balance no current flows through the galvanometer, so the measurement is made at null deflection.

2. **Why is the potentiometer suitable for low resistance?**  
   It compares potential drops without drawing current from the measured branch at balance.

3. **What is balancing length?**  
   It is the length of potentiometer wire from the zero end to the point where the galvanometer shows no deflection.

4. **Why should the jockey not be rubbed on the wire?**  
   Rubbing changes the wire surface and may make its resistance non-uniform.

5. **Why should current be kept constant?**  
   The comparison formula assumes the potential gradient remains unchanged.

## Maxima Code

The calculation can be checked with this file: [potentiometer-low-resistance-calculation.mac]({{ '/assets/tikz/practical/ug-ii/potentiometer-low-resistance/potentiometer-low-resistance-calculation.mac' | relative_url }}).

</div>

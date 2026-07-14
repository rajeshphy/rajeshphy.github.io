---
layout: post
title: "Magnetic Field Along the Axis of a Solenoid"
date: 2026-07-14 13:30:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - magnetism
  - solenoid
  - hall-probe
permalink: /practical/ug-ii/solenoid-field/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To measure the magnetic field along the axis of a solenoid and study its variation with distance.

## Apparatus

Solenoid, DC power supply, ammeter, rheostat, Hall probe or search coil, gaussmeter, metre scale, and connecting wires.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/solenoid-field/solenoid-field.png' | relative_url }}" alt="Solenoid field measurement arrangement">
  <figcaption>Arrangement for measuring magnetic field along the axis of a solenoid.</figcaption>
</figure>

## Theory

For a long solenoid, the magnetic field near the central region is approximately

$$
B=\mu_0 nI,
$$

where $n$ is the number of turns per unit length and $I$ is the current. The field is maximum near the centre and decreases near the ends.

The field gradient can be estimated from neighbouring readings:

$$
\frac{dB}{dx}\approx \frac{B_2-B_1}{x_2-x_1}.
$$

## Observations

Current through solenoid:

$$
I=1.60\text{ A}.
$$

Number of turns per metre:

$$
n=1550\text{ m}^{-1}.
$$

| Position from centre, $x$ (cm) | Magnetic field, $B$ (mT) |
|---:|---:|
| -10 | 0.78 |
| -8 | 1.05 |
| -6 | 1.52 |
| -4 | 2.18 |
| -2 | 2.83 |
| 0 | 3.10 |
| 2 | 2.84 |
| 4 | 2.19 |
| 6 | 1.54 |
| 8 | 1.06 |
| 10 | 0.79 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/solenoid-field/solenoid-field-graph.png' | relative_url }}" alt="Graph of magnetic field along solenoid axis">
  <figcaption>Magnetic field is maximum near the centre of the solenoid.</figcaption>
</figure>

## Calculation

The theoretical central field is

$$
B=\mu_0 nI=(4\pi\times10^{-7})(1550)(1.60).
$$

Thus,

$$
B=3.12\times10^{-3}\text{ T}=3.12\text{ mT}.
$$

This agrees well with the observed central field of about $3.10\text{ mT}$.

## Result

The magnetic field is maximum near the centre of the solenoid and decreases on both sides. The measured central field is approximately

$$
\boxed{B=3.10\text{ mT}}.
$$

## Precautions

1. Keep the current constant during the experiment.
2. Place the Hall probe along the axis of the solenoid.
3. Take readings at equal intervals.
4. Avoid heating of the solenoid by switching off the current when not taking readings.
5. Keep magnetic materials away from the apparatus.

## Viva Questions

1. **Where is the magnetic field maximum in a solenoid?**  
   It is maximum near the central region of the solenoid.

2. **What is the direction of magnetic field inside a solenoid?**  
   It is along the axis of the solenoid.

3. **How does field depend on current?**  
   The magnetic field is directly proportional to current.

4. **Why does the field decrease near the ends?**  
   The field lines spread out near the ends, so the field becomes weaker.

5. **What does a Hall probe measure?**  
   It measures magnetic field using the Hall effect.

## Maxima Code

The calculation can be checked with this file: [solenoid-field-calculation.mac]({{ '/assets/tikz/practical/ug-ii/solenoid-field/solenoid-field-calculation.mac' | relative_url }}).

</div>

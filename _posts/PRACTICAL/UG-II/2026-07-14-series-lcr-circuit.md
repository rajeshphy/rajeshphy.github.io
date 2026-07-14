---
layout: post
title: "Response Curve of a Series LCR Circuit"
date: 2026-07-14 12:05:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electronics
  - lcr-circuit
  - resonance
permalink: /practical/ug-ii/series-lcr-circuit/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the response curve of a series LCR circuit and determine resonant frequency, impedance at resonance, quality factor, and bandwidth.

## Apparatus

Inductor, capacitor, resistor, audio frequency oscillator, AC milliammeter, voltmeter, connecting wires, and circuit board.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/series-lcr/series-lcr.png' | relative_url }}" alt="Series LCR circuit diagram">
  <figcaption>Series LCR circuit used for resonance study.</figcaption>
</figure>

## Theory

In a series LCR circuit, resonance occurs when

$$
X_L=X_C.
$$

The resonant frequency is

$$
f_0=\frac{1}{2\pi\sqrt{LC}}.
$$

At resonance, impedance is minimum and current is maximum. The quality factor is

$$
Q=\frac{f_0}{f_2-f_1},
$$

where $f_1$ and $f_2$ are the half-power frequencies.

## Observations

| Frequency (Hz) | Current (mA) |
|---:|---:|
| 300 | 7 |
| 400 | 10 |
| 500 | 15 |
| 600 | 24 |
| 700 | 36 |
| 800 | 50 |
| 900 | 39 |
| 1000 | 28 |
| 1100 | 20 |
| 1200 | 15 |
| 1300 | 12 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/series-lcr/series-lcr-graph.png' | relative_url }}" alt="Series LCR resonance curve">
  <figcaption>Series LCR response curve showing maximum current at resonance.</figcaption>
</figure>

From the graph,

$$
f_0=800\text{ Hz}.
$$

If the input voltage is $5\text{ V}$ and the maximum current is $50\text{ mA}$,

$$
Z_0=\frac{V}{I_{\max}}=\frac{5}{0.050}=100\,\Omega.
$$

For the trial components $L=0.050\text{ H}$ and $C=0.80\,\mu\text{F}$,

$$
f_0=\frac{1}{2\pi\sqrt{LC}}=795.8\text{ Hz}.
$$

## Result

The resonant frequency of the series LCR circuit is approximately

$$
\boxed{f_0=800\text{ Hz}}.
$$

The impedance at resonance is

$$
\boxed{Z_0=100\,\Omega}.
$$

## Precautions

1. Keep the input voltage constant while varying frequency.
2. Take more readings near resonance.
3. Avoid loose connections in the circuit.
4. Do not heat the resistor by applying excessive voltage.
5. Read the meter only after the indication becomes steady.

## Viva Questions

1. **What is resonance in a series LCR circuit?**  
   It is the condition in which inductive reactance equals capacitive reactance.

2. **What happens to current at resonance?**  
   The current becomes maximum.

3. **Why is impedance minimum at resonance?**  
   The inductive and capacitive reactances cancel each other.

4. **What is bandwidth?**  
   Bandwidth is the difference between the two half-power frequencies.

5. **What does quality factor represent?**  
   It represents the sharpness of resonance.

## Maxima Code

The calculation can be checked with this file: [series-lcr-calculation.mac]({{ '/assets/tikz/practical/ug-ii/series-lcr/series-lcr-calculation.mac' | relative_url }}).

</div>

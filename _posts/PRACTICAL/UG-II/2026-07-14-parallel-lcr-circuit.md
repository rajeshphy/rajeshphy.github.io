---
layout: post
title: "Response Curve of a Parallel LCR Circuit"
date: 2026-07-14 12:15:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electronics
  - parallel-lcr
  - anti-resonance
permalink: /practical/ug-ii/parallel-lcr-circuit/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the response curve of a parallel LCR circuit and determine the anti-resonant frequency and quality factor.

## Apparatus

Inductor, capacitor, resistor, audio frequency oscillator, AC milliammeter, voltmeter, connecting wires, and circuit board.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/parallel-lcr/parallel-lcr.png' | relative_url }}" alt="Parallel LCR circuit diagram">
  <figcaption>Parallel LCR circuit used for anti-resonance study.</figcaption>
</figure>

## Theory

In a parallel LCR circuit, anti-resonance occurs when the inductive and capacitive branch currents cancel each other. At this frequency the supply current is minimum and the impedance is maximum.

The anti-resonant frequency is approximately

$$
f_0=\frac{1}{2\pi\sqrt{LC}}.
$$

For a practical parallel resonant circuit, the quality factor gives the sharpness of anti-resonance.

## Observations

| Frequency (Hz) | Supply current (mA) |
|---:|---:|
| 300 | 42 |
| 400 | 36 |
| 500 | 28 |
| 600 | 19 |
| 700 | 11 |
| 800 | 6 |
| 900 | 10 |
| 1000 | 17 |
| 1100 | 25 |
| 1200 | 32 |
| 1300 | 38 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/parallel-lcr/parallel-lcr-graph.png' | relative_url }}" alt="Parallel LCR anti-resonance curve">
  <figcaption>Parallel LCR response curve showing minimum supply current at anti-resonance.</figcaption>
</figure>

From the graph,

$$
f_0=800\text{ Hz}.
$$

For trial values $L=0.050\text{ H}$ and $C=0.80\,\mu\text{F}$,

$$
f_0=\frac{1}{2\pi\sqrt{LC}}=795.8\text{ Hz}.
$$

## Result

The anti-resonant frequency of the parallel LCR circuit is approximately

$$
\boxed{f_0=800\text{ Hz}}.
$$

## Precautions

1. Keep the input voltage constant throughout the experiment.
2. Take more readings near the minimum-current point.
3. Avoid loose contacts in the parallel branches.
4. Use components of proper voltage and current ratings.
5. Keep the inductor away from magnetic materials.

## Viva Questions

1. **What is anti-resonance?**  
   It is the condition in a parallel LCR circuit where the supply current is minimum.

2. **What happens to impedance at anti-resonance?**  
   The impedance becomes maximum.

3. **Why is the supply current minimum?**  
   The inductive and capacitive branch currents cancel each other partly.

4. **How is parallel resonance different from series resonance?**  
   In series resonance current is maximum, whereas in parallel resonance supply current is minimum.

5. **What is quality factor?**  
   It measures the sharpness of the resonance or anti-resonance curve.

## Maxima Code

The calculation can be checked with this file: [parallel-lcr-calculation.mac]({{ '/assets/tikz/practical/ug-ii/parallel-lcr/parallel-lcr-calculation.mac' | relative_url }}).

</div>

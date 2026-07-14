---
layout: post
title: "Characteristics of a Series RC Circuit"
date: 2026-07-14 12:40:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electronics
  - rc-circuit
permalink: /practical/ug-ii/series-rc-circuit/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study a series RC circuit and observe the variation of current with frequency.

## Apparatus

Resistor, capacitor, audio frequency oscillator, AC milliammeter, voltmeter, connecting wires, and breadboard or circuit board.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/series-rc/series-rc.png' | relative_url }}" alt="Series RC circuit diagram">
  <figcaption>Series RC circuit with AC source, resistor, capacitor, voltmeters, and ammeter.</figcaption>
</figure>

## Theory

In a series RC circuit, the capacitive reactance is

$$
X_C=\frac{1}{2\pi fC}.
$$

The impedance is

$$
Z=\sqrt{R^2+X_C^2}.
$$

Hence the current is

$$
I=\frac{V}{Z}.
$$

As frequency increases, $X_C$ decreases and the current increases.

## Observations

Given values:

$$
R=1.0\text{ k}\Omega,\qquad C=0.1\,\mu\text{F}.
$$

| Frequency (Hz) | Current (mA) |
|---:|---:|
| 100 | 0.31 |
| 200 | 0.62 |
| 500 | 1.50 |
| 1000 | 2.65 |
| 2000 | 3.91 |
| 5000 | 4.76 |
| 10000 | 4.94 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/series-rc/series-rc-graph.png' | relative_url }}" alt="Frequency response graph of a series RC circuit">
  <figcaption>Current increases with frequency in a series RC circuit.</figcaption>
</figure>

## Calculation

For $f=1000\text{ Hz}$ and $V=5\text{ V}$,

$$
X_C=\frac{1}{2\pi(1000)(0.1\times10^{-6})}=1591.55\,\Omega.
$$

Therefore,

$$
Z=\sqrt{(1000)^2+(1591.55)^2}=1879.64\,\Omega.
$$

The current is

$$
I=\frac{5}{1879.64}=2.66\text{ mA}.
$$

## Result

The current in a series RC circuit increases with frequency because the capacitive reactance decreases as frequency increases.

## Precautions

1. Keep the input voltage nearly constant while changing frequency.
2. Check capacitor polarity if an electrolytic capacitor is used.
3. Avoid loose connections on the circuit board.
4. Do not exceed the voltage rating of the capacitor.
5. Take readings only after the meter indication becomes steady.

## Viva Questions

1. **What is capacitive reactance?**  
   Capacitive reactance is the opposition offered by a capacitor to alternating current.

2. **How does $X_C$ vary with frequency?**  
   It decreases when frequency increases.

3. **Why does current increase with frequency in a series RC circuit?**  
   The impedance decreases because $X_C$ decreases.

4. **Does a capacitor pass DC in the steady state?**  
   No. A capacitor blocks steady DC after it is fully charged.

5. **What is the phase relation in a series RC circuit?**  
   The current leads the applied voltage.

## Maxima Code

The calculation can be checked with this file: [series-rc-calculation.mac]({{ '/assets/tikz/practical/ug-ii/series-rc/series-rc-calculation.mac' | relative_url }}).

</div>

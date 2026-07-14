---
layout: post
title: "Hall Coefficient of a Semiconductor Sample"
date: 2026-07-13 17:25:00 +0530
categories: [practical-ug-vi]
tags: [practical, ug-vi, semiconductor, hall-effect, hall-coefficient]
permalink: /practical/ug-vi/hall-coefficient/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Aim

To determine the Hall coefficient and carrier concentration of a semiconductor sample.

## Apparatus

Semiconductor Hall sample, electromagnet, constant-current source, microvoltmeter, Gauss meter, and micrometer.

## Theory

When current flows through a semiconductor in a perpendicular magnetic field, a transverse Hall voltage is produced. For sample thickness $t$,

$$R_H=\frac{V_Ht}{IB},\qquad n=\frac{1}{eR_H}.$$

The sign of $V_H$ identifies the dominant carrier type.

## Observations

Sample thickness $t=0.50\,\text{mm}$; current $I=5\,\text{mA}$.

| Magnetic field (T) | Hall voltage (mV) |
|---:|---:|
| 0.20 | 1.8 |
| 0.30 | 2.7 |
| 0.40 | 3.6 |
| 0.50 | 4.5 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vi/hall-coefficient/hall-coefficient.png' | relative_url }}" alt="Hall voltage versus magnetic field graph">
  <figcaption>Hall voltage plotted against magnetic field for constant sample current.</figcaption>
</figure>

## Calculation

For $B=0.40\,\text{T}$ and $V_H=3.6\,\text{mV}$,

$$R_H=\frac{3.6\times10^{-3}\times0.50\times10^{-3}}{5\times10^{-3}\times0.40}=2.25\times10^{-3}\,\text{m}^3\text{C}^{-1}.$$

Thus $n=1/(eR_H)=2.78\times10^{21}\,\text{m}^{-3}$.

## Result

$$\boxed{R_H=2.25\times10^{-3}\,\text{m}^3\text{C}^{-1}},\qquad \boxed{n=2.78\times10^{21}\,\text{m}^{-3}}.$$

## Precautions

1. Reverse the magnetic field and average the Hall readings.
2. Keep the sample current constant.
3. Ensure that the magnetic field is perpendicular to the current.

## Viva Questions

1. **What is the Hall effect?** It is the production of a transverse voltage in a current-carrying sample placed in a magnetic field.
2. **What determines the sign of Hall voltage?** The sign of the dominant charge carriers.
3. **Why is a thin sample preferred?** It gives a measurable Hall voltage for a given current and field.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vi/hall-coefficient/hall-coefficient.mac' | relative_url }}).

</div>

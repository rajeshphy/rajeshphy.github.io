---
layout: post
title: "UG-VII Electromagnetism Practicals: Fields, Induction and Capacitance"
date: 2026-07-13 18:05:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, electromagnetism, capacitance, induction]
permalink: /practical/ug-vii/electromagnetism-practicals/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Scope of the practical

This record covers the field of a current-carrying wire, electromagnetic induction, Ampere's law using a solenoid, and the capacitance of a parallel-plate capacitor.

## Standard experiment titles used in this record

The usual laboratory interpretations are: magnetic field of a straight current-carrying conductor using a Hall probe; Faraday's law using a coil and bar magnet; verification of Ampere's circuital law using a long solenoid; and determination of capacitance and the $Q$-$V$ relation for a parallel-plate capacitor.

## Apparatus

Current-carrying wire, Hall probe, electromagnet, search coil, solenoid, galvanometer, parallel-plate capacitor, DC supply, and voltmeter.

## Essential relations

For a long straight wire, $B=\mu_0I/(2\pi r)$. Faraday's law is $\mathcal E=-d\Phi/dt$. For a solenoid, $B=\mu_0nI$. For a parallel-plate capacitor,

$$Q=CV,\qquad C=\frac{\epsilon_0\epsilon_rA}{d}.$$

## Sample observations

| Practical | Variable relation | Sample result |
|---|---|---:|
| Hall-probe field | $B$ versus $I$ at fixed $r$ | $B/I=2.01\,\text{mT A}^{-1}$ |
| Induction | induced emf versus magnet speed | emf increases with speed |
| Ampere's law | $B$ versus solenoid current | $B/I=3.8\,\text{mT A}^{-1}$ |
| Capacitor | $Q$ versus $V$ | $C=101\,\text{pF}$ |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vii/electromagnetism-practicals/electromagnetism-field.png' | relative_url }}" alt="Magnetic field versus current graph for a solenoid">
  <figcaption>Magnetic field plotted against current for the solenoid experiment.</figcaption>
</figure>

## Calculation

For $A=0.010\,\text{m}^2$, plate spacing $d=1.0\,\text{mm}$, and measured $C=101\,\text{pF}$,

$$\epsilon_r=\frac{Cd}{\epsilon_0A}=1.14.$$

The measured charge-voltage relation is linear, confirming $Q\propto V$ for a fixed geometry.

## Results

The field and induction observations agree with the inverse-distance, current, and flux-change relations. The capacitor stores charge in direct proportion to voltage.

## Precautions

Keep the Hall probe perpendicular to the field, reverse current and average readings, avoid sudden coil heating, and discharge the capacitor before changing connections.

## Viva Questions

1. **Why is the negative sign present in Faraday's law?** It represents Lenz's law.
2. **What is the role of a Hall probe?** It measures magnetic field through its Hall voltage.
3. **What is capacitance?** It is charge stored per unit potential difference.
4. **Why does a solenoid produce a nearly uniform field?** Contributions from many turns add inside the long coil.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/electromagnetism-practicals/electromagnetism-practicals.mac' | relative_url }}).

</div>

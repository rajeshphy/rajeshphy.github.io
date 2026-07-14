---
layout: post
title: "Coupling Coefficient of a Piezoelectric Crystal"
date: 2026-07-13 17:15:00 +0530
categories: [practical-ug-vi]
tags: [practical, ug-vi, piezoelectricity, crystal, coupling]
permalink: /practical/ug-vi/piezoelectric-coupling/
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

To determine the electromechanical coupling coefficient of a piezoelectric crystal from its resonance and anti-resonance frequencies.

## Apparatus

Piezoelectric crystal, oscillator, frequency meter, electrodes, and CRO.

## Theory

The coupling coefficient measures conversion between electrical and mechanical energy. If $f_r$ and $f_a$ are the resonance and anti-resonance frequencies,

$$k^2=\frac{\pi^2}{8}\frac{f_a-f_r}{f_r}$$

for the standard small-coupling approximation used in the experiment.

## Observations

| Trial | Resonance $f_r$ (kHz) | Anti-resonance $f_a$ (kHz) |
|---:|---:|---:|
| 1 | 31.20 | 32.05 |
| 2 | 31.18 | 32.04 |
| 3 | 31.21 | 32.06 |

## Calculation

Using $f_r=31.20\,\text{kHz}$ and $f_a=32.05\,\text{kHz}$,

$$k=\sqrt{\frac{\pi^2}{8}\frac{32.05-31.20}{31.20}}=0.183.$$

## Result

$$\boxed{k=0.183}.$$

## Precautions

1. Keep the crystal firmly mounted but free from mechanical stress.
2. Sweep frequency slowly near resonance.
3. Avoid excessive drive voltage.

## Viva Questions

1. **What is piezoelectricity?** It is the coupling between mechanical strain and electric polarisation in certain crystals.
2. **What is resonance?** It is the condition of maximum response at a natural frequency.
3. **Why is anti-resonance observed?** Electrical and mechanical responses combine to give a minimum current at a nearby frequency.

</div>

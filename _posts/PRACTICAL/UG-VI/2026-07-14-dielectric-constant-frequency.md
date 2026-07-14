---
layout: post
title: "Dielectric Constant of a Material as a Function of Frequency"
date: 2026-07-13 17:20:00 +0530
categories: [practical-ug-vi]
tags: [practical, ug-vi, dielectric, frequency, capacitance]
permalink: /practical/ug-vi/dielectric-constant-frequency/
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

To determine the dielectric constant of a material at different frequencies.

## Apparatus

Parallel-plate capacitor, dielectric specimen, LCR meter, oscillator, and connecting leads.

## Theory

For a parallel-plate capacitor, insertion of a dielectric changes the capacitance from $C_0$ to $C$. The relative dielectric constant is

$$\epsilon_r=\frac{C}{C_0}.$$

At high frequency, orientational polarisation cannot follow the applied field and the dielectric constant generally decreases.

## Observations

| Frequency (kHz) | $C_0$ (pF) | $C$ (pF) | $\epsilon_r$ |
|---:|---:|---:|---:|
| 1 | 102 | 408 | 4.00 |
| 10 | 101 | 394 | 3.90 |
| 100 | 100 | 360 | 3.60 |
| 1000 | 99 | 322 | 3.25 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vi/dielectric-constant-frequency/dielectric-frequency.png' | relative_url }}" alt="Dielectric constant versus frequency graph">
  <figcaption>Frequency dependence of the measured relative dielectric constant.</figcaption>
</figure>

## Result

The dielectric constant decreases from approximately $4.0$ at low frequency to $3.25$ at $1\,\text{MHz}$ in the sample range.

## Precautions

1. Keep the dielectric specimen flat between the plates.
2. Remove stray capacitance by proper instrument zeroing.
3. Use screened leads at high frequency.

## Viva Questions

1. **What is dielectric polarisation?** It is the displacement or orientation of bound charges in an electric field.
2. **Why does dielectric constant fall with frequency?** Slow polarisation mechanisms cannot follow rapid field reversals.
3. **What is relative permittivity?** It is the ratio of the material permittivity to vacuum permittivity.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vi/dielectric-constant-frequency/dielectric-constant-frequency.mac' | relative_url }}).

</div>

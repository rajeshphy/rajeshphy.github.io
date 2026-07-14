---
layout: post
title: "PG-III Modern Physics and Instrumentation Practicals"
date: 2026-07-13 19:10:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, modern-physics, instrumentation]
permalink: /practical/pg-iii/modern-physics-instrumentation/
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

This post covers ESR, GM-counter operating voltage, four-probe energy gap, Hall coefficient and Hall angle, Planck's constant, dielectric constants, modulation index, hysteresis loss, free-running multivibrator, and lattice dynamics.

## Standard experiment titles used in this record

The usual interpretations are: ESR resonance and magnetic-field measurement; GM-counter plateau and operating voltage; semiconductor energy gap by four-probe method; Hall coefficient and Hall angle; Planck's constant by the photoelectric method; dielectric constant of solid and liquid samples; AM modulation index; hysteresis loss from a B-H loop; free-running astable multivibrator; and lattice-vibration or phonon-dispersion study.

## Essential relations

ESR follows $h\nu=g\mu_BB$. The four-probe method uses the measured resistivity and its temperature dependence to obtain $E_g$. For AM waves,

$$m=\frac{V_{max}-V_{min}}{V_{max}+V_{min}}.$$

## Sample observations and results

| Experiment | Result |
|---|---:|
| ESR | $g=2.00$ |
| GM plateau | operating voltage $=520\,\text{V}$ |
| Four-probe method | $E_g=0.68\,\text{eV}$ |
| Hall experiment | Hall angle $=4.2^\circ$ |
| Photoelectric method | $h=6.62\times10^{-34}\,\text{J s}$ |
| Modulation | $m=0.48$ |
| Hysteresis | loss $=1.8\,\text{J m}^{-3}\text{cycle}^{-1}$ |

## Viva Questions

1. **Why is a GM plateau selected?** The count rate is comparatively insensitive to small voltage changes there.
2. **What is Hall angle?** The angle whose tangent is the ratio of Hall field to longitudinal field.
3. **What is modulation index?** The ratio of modulation amplitude to carrier amplitude.
4. **What does hysteresis loss represent?** Energy dissipated during one complete magnetisation cycle.
5. **What is lattice dynamics?** The study of collective vibrational modes of a crystal lattice.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-iii/pg-iii-modern-physics.mac' | relative_url }}).

</div>

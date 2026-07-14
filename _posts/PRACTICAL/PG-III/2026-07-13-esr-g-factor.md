---
layout: post
title: "Determination of Magnetic Field Strength and Resonance Frequency Using ESR"
date: 2026-07-13 20:45:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, esr, g-factor, magnetic-resonance]
permalink: /practical/pg-iii/esr-field-resonance-frequency/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the resonance frequency and magnetic field strength of a paramagnetic sample using electron spin resonance, and to calculate the electron $g$-factor.

## Apparatus

ESR spectrometer, microwave source, Helmholtz coils, Hall probe, paramagnetic sample, and frequency meter.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/esr-g-factor/esr-arrangement.png' | relative_url }}" alt="Labelled ESR measurement arrangement"><figcaption>Microwave excitation of the paramagnetic sample while the magnetic field is swept and measured.</figcaption></figure>

## Theory

An atom or ion with an unpaired electron possesses a spin magnetic moment. In an applied magnetic field the two allowed orientations of the electron spin have different energies; this Zeeman splitting is

$$\Delta E=g\mu_BB.$$

When microwave radiation is applied, the spin can change orientation if one microwave quantum supplies exactly this energy. Resonance therefore occurs when

$$h\nu=g\mu_BB.$$

Measuring the resonant field at a known frequency gives

$$g=\frac{h\nu}{\mu_BB}.$$

The spectrometer sweeps the magnetic field through resonance and records the field at which the absorption peak occurs.

## Observations

| Microwave frequency (GHz) | Resonance field (mT) | $g$ |
|---:|---:|---:|
| 9.10 | 324.5 | 2.00 |
| 9.20 | 328.0 | 2.01 |
| 9.30 | 331.5 | 2.00 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/esr-g-factor/esr.png' | relative_url }}" alt="ESR resonance field versus microwave frequency graph"><figcaption>Resonance field plotted against microwave frequency.</figcaption></figure>

## Result

The resonance condition is observed by sweeping the magnetic field at each microwave frequency. The mean electron $g$-factor of the sample is

$$\boxed{g=2.00}.$$

## Viva Questions

1. **Why is a paramagnetic sample used?** It contains unpaired spins that can absorb microwave energy.
2. **What is resonance?** Absorption when the radiation energy equals the spin-level separation.
3. **Why is a Hall probe used?** To calibrate the magnetic field at the sample position.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-iii/esr-g-factor/esr-g-factor.mac' | relative_url }}).

</div>

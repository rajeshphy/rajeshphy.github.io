---
layout: post
title: "Electron Spin Resonance and Determination of the g-Factor"
date: 2026-07-13 20:45:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, esr, g-factor, magnetic-resonance]
permalink: /practical/pg-iii/esr-g-factor/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To observe electron spin resonance in a paramagnetic sample and determine the electron $g$-factor.

## Apparatus

ESR spectrometer, microwave source, Helmholtz coils, Hall probe, paramagnetic sample, and frequency meter.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/esr-g-factor/esr-arrangement.png' | relative_url }}" alt="Labelled ESR measurement arrangement"><figcaption>Microwave excitation of the paramagnetic sample while the magnetic field is swept and measured.</figcaption></figure>

## Theory

An unpaired electron has spin magnetic moment. In a magnetic field its two spin orientations have an energy separation $\Delta E=g\mu_BB$. Resonance occurs when microwave energy equals this separation:

$$h\nu=g\mu_BB.$$

Measuring the resonant field at known frequency therefore gives $g=h\nu/(\mu_BB)$.

## Observations

| Microwave frequency (GHz) | Resonance field (mT) | $g$ |
|---:|---:|---:|
| 9.10 | 324.5 | 2.00 |
| 9.20 | 328.0 | 2.01 |
| 9.30 | 331.5 | 2.00 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/esr-g-factor/esr.png' | relative_url }}" alt="ESR resonance field versus microwave frequency graph"><figcaption>Resonance field plotted against microwave frequency.</figcaption></figure>

## Result

The mean electron $g$-factor of the sample is

$$\boxed{g=2.00}.$$

## Viva Questions

1. **Why is a paramagnetic sample used?** It contains unpaired spins that can absorb microwave energy.
2. **What is resonance?** Absorption when the radiation energy equals the spin-level separation.
3. **Why is a Hall probe used?** To calibrate the magnetic field at the sample position.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-iii/esr-g-factor/esr-g-factor.mac' | relative_url }}).

</div>

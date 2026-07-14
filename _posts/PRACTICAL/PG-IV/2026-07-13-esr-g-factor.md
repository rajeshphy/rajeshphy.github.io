---
layout: post
title: "Electron Spin Resonance and Determination of the g-Factor"
date: 2026-07-13 20:45:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, esr, lande-g-factor, magnetic-resonance]
permalink: /practical/pg-iv/esr-lande-g-factor/
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

An atom or ion with an unpaired electron has a spin magnetic moment. In an applied magnetic field, the two allowed spin orientations have different Zeeman energies. Their separation is

$$\Delta E=g\mu_BB.$$

When the sample is exposed to microwave radiation, absorption occurs when one photon supplies exactly this energy:

$$h\nu=g\mu_BB.$$

Measuring the resonant field at known frequency therefore gives

$$g=\frac{h\nu}{\mu_BB}.$$

A plot of resonance field against frequency should pass nearly through the origin; its slope is $h/(g\mu_B)$.

## Observations

| Microwave frequency (GHz) | Resonance field (mT) | $g$ |
|---:|---:|---:|
| 9.10 | 324.5 | 2.00 |
| 9.20 | 328.0 | 2.01 |
| 9.30 | 331.5 | 2.00 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/esr-g-factor/esr.png' | relative_url }}" alt="ESR resonance field versus microwave frequency graph"><figcaption>Resonance field plotted against microwave frequency.</figcaption></figure>

## Calculation

For the 9.20 GHz reading, $\nu=9.20\times10^9$ Hz and $B=328.0$ mT $=0.3280$ T. Hence

$$g=\frac{h\nu}{\mu_BB}=\frac{(6.626\times10^{-34})(9.20\times10^9)}{(9.274\times10^{-24})(0.3280)}=2.00.$$

The three readings give values close to 2.00; their mean is used because field calibration and resonance-width uncertainty affect each reading slightly.

## Result

The mean electron $g$-factor of the sample is

$$\boxed{g=2.00}.$$

## Viva Questions

1. **Why is a paramagnetic sample used?** It contains unpaired spins that can absorb microwave energy.
2. **What is resonance?** Absorption when the radiation energy equals the spin-level separation.
3. **Why is a Hall probe used?** To calibrate the magnetic field at the sample position.

## Maxima Code

[Download the PG-IV ESR calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

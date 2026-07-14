---
layout: post
title: "Zeeman Effect in Mercury Using a Fabry-Perot Interferometer"
date: 2026-07-13 20:15:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, zeeman-effect, spectroscopy, fabry-perot]
permalink: /practical/ug-viii/zeeman-effect/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To observe the magnetic-field splitting of a mercury spectral line and determine the spectroscopic splitting parameter.

## Apparatus

Mercury vapour lamp, electromagnet, Fabry-Perot etalon, optical filters, spectrometer, and Gauss meter.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/ug-viii/zeeman-effect/zeeman-arrangement.png' | relative_url }}" alt="Labelled Zeeman spectroscopy arrangement"><figcaption>Mercury lamp, spectral filter, electromagnet, Fabry--Perot etalon, and observing telescope.</figcaption></figure>

## Theory

An atomic magnetic moment has an interaction energy with an applied field. Degenerate magnetic sublevels therefore separate, and a spectral line splits into components. For a measured wavenumber separation $\Delta\bar\nu$,

$$\Delta E=hc\Delta\bar\nu=g\mu_BB.$$

The Fabry-Perot etalon resolves the close components through interference of repeated transmitted beams.

## Observations

| Magnetic field (T) | Ring separation | Wavenumber splitting (m$^{-1}$) |
|---:|---:|---:|
| 0.20 | 2.1 | 11.6 |
| 0.30 | 3.2 | 17.4 |
| 0.40 | 4.3 | 23.2 |
| 0.50 | 5.4 | 29.0 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-viii/zeeman-effect/zeeman.png' | relative_url }}" alt="Zeeman splitting versus magnetic field graph"><figcaption>Wavenumber splitting plotted against magnetic field.</figcaption></figure>

## Result

The splitting increases linearly with magnetic field. The measured slope gives $g\approx2.00$ for the selected mercury line.

## Viva Questions

1. **Why is a Fabry-Perot etalon used?** It has high resolving power for closely spaced spectral components.
2. **What causes the splitting?** Interaction of the atomic magnetic moment with the applied field.
3. **What is hyperfine splitting?** Additional splitting due to interaction with nuclear angular momentum.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-viii/zeeman-effect/zeeman-effect.mac' | relative_url }}).

</div>

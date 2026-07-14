---
layout: post
title: "Refractive Index of a Dielectric Layer by Surface Plasmon Resonance"
date: 2026-07-13 20:30:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, surface-plasmon-resonance, refractive-index]
permalink: /practical/ug-viii/spr-refractive-index/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the refractive index of a dielectric layer from the resonance-angle shift in an SPR arrangement.

## Apparatus

Laser, prism coupler, metal-coated slide, dielectric layer, photodetector, rotation stage, and computer interface.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/spr/spr-arrangement.png' | relative_url }}" alt="Kretschmann surface-plasmon-resonance setup"><figcaption>In the Kretschmann arrangement, the p-polarised beam enters the prism, reflects from the metal film, and reaches the photodetector.</figcaption></figure>

## Theory

At a particular angle, the parallel component of the p-polarised wave vector matches the surface-plasmon wave vector. The reflected intensity then shows a minimum. A dielectric layer changes the interface optical environment and shifts the minimum from $\theta_0$ to $\theta_r$.

## Observations

| Sample | Resonance angle | Refractive index |
|---|---:|---:|
| Air reference | $44.2^\circ$ | 1.000 |
| Water | $51.6^\circ$ | 1.333 |
| Unknown dielectric layer | $56.1^\circ$ | 1.510 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-viii/spr-refractive-index/spr.png' | relative_url }}" alt="SPR reflectance versus angle graph"><figcaption>Reflectance minimum used to identify the SPR resonance angle.</figcaption></figure>

## Result

The refractive index of the unknown dielectric layer is

$$\boxed{n=1.510}.$$

## Viva Questions

1. **Why is p-polarised light used?** It has an electric-field component normal to the interface.
2. **What does the resonance angle indicate?** The phase-matching condition at the metal-dielectric interface.
3. **Why is air used as a reference?** It provides a known baseline for the resonance shift.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-viii/spr-refractive-index/spr-refractive-index.mac' | relative_url }}).

</div>

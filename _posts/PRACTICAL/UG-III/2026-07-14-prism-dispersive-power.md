---
layout: post
title: "Dispersive Power and Cauchy Constants of a Prism"
date: 2026-07-13 14:05:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, prism, dispersion]
permalink: /practical/ug-iii/prism-dispersive-power/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the dispersive power and the Cauchy constants of a prism using mercury spectral lines.

## Apparatus

Spectrometer, glass prism, mercury vapour lamp, and reading lens.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/prism-spectrometer/apparatus.png' | relative_url }}" alt="Prism spectrometer arrangement">
  <figcaption>Spectrometer and prism arrangement for measuring spectral-line deviations.</figcaption>
</figure>

## Theory

The refractive index depends on wavelength. In the visible region Cauchy's formula is

$$\mu=A+\frac{B}{\lambda^2}.$$

The dispersive power is

$$\omega=\frac{\mu_F-\mu_C}{\mu_D-1},$$

where $F$, $D$, and $C$ denote the blue, yellow, and red reference lines.

## Observations

| Line | Wavelength (nm) | Minimum deviation | Refractive index |
|---|---:|---:|---:|
| $F$ | 486.1 | $41^\circ52'$ | 1.528 |
| $D$ | 589.3 | $39^\circ00'$ | 1.520 |
| $C$ | 656.3 | $38^\circ12'$ | 1.514 |

Prism angle: $A=60^\circ$.

## Calculation

$$\omega=\frac{1.528-1.514}{1.520-1}=0.0269.$$

Using wavelengths in micrometres and the $D$ and $C$ lines,

$$1.520=A+\frac{B}{0.5893^2},\qquad 1.514=A+\frac{B}{0.6563^2}.$$

Solving gives $A=1.483$ and $B=0.0129\,\mu\text{m}^2$.

## Result

$$\boxed{\omega=0.0269},\qquad \boxed{A=1.483,\;B=0.0129\,\mu\text{m}^2}.$$

## Precautions

1. Allow the mercury lamp to warm up before taking readings.
2. Identify each spectral line carefully.
3. Use the same prism face while comparing deviations.
4. Take readings on both verniers and use their mean.

## Viva Questions

1. **What is dispersion?** It is the separation of polychromatic light into its component wavelengths.
2. **Which colour is deviated most by glass?** Violet, because its refractive index is greatest.
3. **What does the constant $B$ indicate?** It measures the wavelength dependence of refractive index in Cauchy's approximation.
4. **Why is the $D$ line used in dispersive power?** It is a standard reference near the middle of the visible spectrum.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/prism-dispersive-power/prism-dispersive-power-calculation.mac' | relative_url }}).

</div>

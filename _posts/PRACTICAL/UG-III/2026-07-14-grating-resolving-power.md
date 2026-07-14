---
layout: post
title: "Dispersive Power and Resolving Power of a Plane Grating"
date: 2026-07-13 14:50:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, grating, resolving-power]
permalink: /practical/ug-iii/grating-resolving-power/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the dispersive power and resolving power of a plane diffraction grating.

## Apparatus

Spectrometer, plane grating, mercury vapour lamp, narrow slit, and reading lens.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/grating-sodium-mercury/apparatus.png' | relative_url }}" alt="Plane grating spectrometer apparatus">
  <figcaption>Plane-grating spectrometer used for angular separation of spectral lines.</figcaption>
</figure>

## Theory

For a grating with element $d$, the angular dispersive power is

$$\frac{d\theta}{d\lambda}=\frac{n}{d\cos\theta}.$$

The theoretical resolving power is

$$R=\frac{\lambda}{\Delta\lambda}=nN,$$

where $N$ is the number of illuminated rulings. It is tested by observing whether two close spectral lines are separately visible.

## Observations

Grating: $6000$ lines cm$^{-1}$; illuminated width: $2.0\,\text{cm}$; order: $n=2$.

| Line pair | $\theta_1$ | $\theta_2$ | Angular separation |
|---|---:|---:|---:|
| Mercury yellow pair | $22^\circ10'$ | $22^\circ24'$ | $14'$ |
| Mercury green-violet pair | $20^\circ55'$ | $21^\circ09'$ | $14'$ |

Number of illuminated lines: $N=6000\times2=12000$.

## Calculation

$$R=nN=2\times12000=24000.$$

At $\theta=22^\circ$, the angular dispersive power is

$$\frac{d\theta}{d\lambda}=\frac{2}{(1/600000)\cos22^\circ}=2.16\times10^6\,\text{rad m}^{-1}.$$

## Result

$$\boxed{R=2.4\times10^4}.$$

The observed spectral lines are resolved in the second order.

## Precautions

1. Use a narrow slit to obtain sharp spectral lines.
2. Illuminate the grating uniformly.
3. Compare lines at the same order.
4. Take readings on both sides of the direct image.

## Viva Questions

1. **What is resolving power?** It is the ratio $\lambda/\Delta\lambda$ for two just-resolved wavelengths.
2. **How can resolving power be increased?** By increasing the order or the number of illuminated grating lines.
3. **What is angular dispersive power?** It is the angular separation produced per unit wavelength difference.
4. **Why does dispersion decrease at large angles?** The factor $\cos\theta$ in the denominator changes the angular response.

</div>


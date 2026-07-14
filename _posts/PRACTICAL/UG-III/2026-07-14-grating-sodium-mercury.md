---
layout: post
title: "Wavelengths by a Plane Diffraction Grating"
date: 2026-07-13 14:30:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, diffraction-grating, spectroscopy]
permalink: /practical/ug-iii/grating-sodium-mercury/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the wavelength of sodium light and the wavelengths of selected mercury spectral lines using a plane transmission grating.

## Apparatus

Spectrometer, plane diffraction grating, sodium lamp, mercury vapour lamp, and reading lens.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/grating-sodium-mercury/apparatus.png' | relative_url }}" alt="Spectrometer arrangement for diffraction grating experiment">
  <figcaption>Spectrometer arrangement with a diffraction grating and spectral source.</figcaption>
</figure>

## Principle

The grating has many equally spaced parallel slits. Principal maxima occur when the path difference between waves from adjacent slits is an integral number of wavelengths:

$$d\sin\theta=n\lambda,$$

where $d$ is the grating element, $n$ is the order, and $\theta$ is the diffraction angle. If there are $N$ lines per centimetre, $d=1/(100N)$ metres.

## Observations

Grating: $6000$ lines cm$^{-1}$; first order, $n=1$.

| Source/line | Left reading | Right reading | $2\theta$ | $\theta$ |
|---|---:|---:|---:|---:|
| Sodium yellow | $159^\circ20'$ | $200^\circ40'$ | $41^\circ20'$ | $20^\circ40'$ |
| Mercury green | $159^\circ05'$ | $200^\circ55'$ | $41^\circ50'$ | $20^\circ55'$ |
| Mercury yellow | $159^\circ18'$ | $200^\circ42'$ | $41^\circ24'$ | $20^\circ42'$ |

## Calculation

For sodium light,

$$d=\frac{1}{6000\times100}\,\text{m}=1.667\times10^{-6}\,\text{m}.$$

With $\theta=20^\circ40'$,

$$\lambda=d\sin\theta=1.667\times10^{-6}\sin20^\circ40'=5.88\times10^{-7}\,\text{m}.$$

Thus $\lambda=588\,\text{nm}$, close to the sodium $D$-line value.

## Result

The wavelength of sodium light is

$$\boxed{\lambda_{Na}=588\,\text{nm}}.$$

The corresponding mercury wavelengths are obtained by substituting their measured diffraction angles in the same grating equation.

## Precautions

1. The grating surface must be vertical and normal to the incident beam.
2. Use the same spectral line on both sides of the direct image.
3. Take readings for both positive and negative orders.
4. Avoid touching the ruled surface of the grating.

## Viva Questions

1. **What is the grating element?** It is the sum of the width of a transparent slit and the width of the adjacent opaque space.
2. **Why are readings taken on both sides?** Their mean removes errors due to imperfect normal adjustment.
3. **Why are higher orders useful?** The larger angular separation improves wavelength discrimination, although the intensity decreases.
4. **What is the direct image?** It is the undeviated image obtained when the telescope faces the collimator.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/grating-sodium-mercury/grating-sodium-mercury-calculation.mac' | relative_url }}).

</div>


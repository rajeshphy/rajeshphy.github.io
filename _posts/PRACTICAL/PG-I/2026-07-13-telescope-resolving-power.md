---
layout: post
title: "Resolving Power of an Astronomical Telescope"
date: 2026-07-13 20:25:00 +0530
categories: [practical-pg-i]
tags: [practical, pg-i, telescope, resolving-power, optics]
permalink: /practical/pg-i/telescope-resolving-power/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the resolving power of a telescope using two closely separated illuminated objects.

## Apparatus
Astronomical telescope, two illuminated pinholes or double-star simulator, micrometer arrangement, and measuring scale.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/optics/optics-arrangement.png' | relative_url }}" alt="Telescope resolving-power arrangement"><figcaption>The telescope is focused on two close object points and the separation is reduced until the Rayleigh limit is reached.</figcaption></figure>

## Theory
Light from a point object reaches the objective as an approximately plane wave. Because the objective has a finite circular aperture, the wave is diffracted and forms an Airy pattern rather than a geometrical point image. Two close stars can be distinguished only when their diffraction patterns are sufficiently separated. Using the Rayleigh criterion for a circular aperture of diameter $D$, the minimum angular separation for just resolution is

$$\theta_{min}=1.22\frac{\lambda}{D}.$$

The resolving power is the ability to distinguish small angular separations. Thus, when the angle is expressed in radians,

$$R=\frac{1}{\theta_{min}}=\frac{D}{1.22\lambda}.$$

The objective diameter improves resolution, whereas a longer wavelength makes the diffraction disc wider and reduces it.

## Observations

| Aperture $D$ (cm) | Wavelength (nm) | Minimum angular separation (arcsec) |
|---:|---:|---:|
| 5.0 | 589 | 2.97 |
| 7.5 | 589 | 1.98 |
| 10.0 | 589 | 1.49 |

## Result
The resolving power increases with telescope aperture and follows the diffraction relation.

## Viva Questions
1. **What limits telescope resolution?** Diffraction at the objective aperture.
2. **What is the Rayleigh criterion?** The central maximum of one image coincides with the first minimum of the other.
3. **Why is a larger objective useful?** It reduces the diffraction angular width.
</div>

---
layout: post
title: "Wavelength of Laser Light by Plane Diffraction Grating"
date: 2026-07-13 20:00:00 +0530
categories: [practical-pg-i]
tags: [practical, pg-i, laser, diffraction-grating, wavelength]
permalink: /practical/pg-i/laser-wavelength-grating/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the wavelength of a laser using a plane transmission diffraction grating.

## Apparatus
Laser, plane grating, screen, metre scale, grating holder, and optical bench.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/ug-iii/grating-sodium-mercury/apparatus.png' | relative_url }}" alt="Laser diffraction grating arrangement"><figcaption>The laser beam is incident normally on the grating and the positions of the symmetric diffraction orders are measured on the screen.</figcaption></figure>

## Theory
A grating has a large number of equally spaced transparent slits. Waves from successive slits interfere constructively when the path difference is an integral multiple of the wavelength. For normal incidence,

$$d\sin\theta=n\lambda,$$

where $d$ is the grating element, $n$ is the order, and $\theta$ is the diffraction angle. If the distance from grating to screen is $D$ and the distance of the $n$th order from the central maximum is $x$, then $\tan\theta=x/D$.

## Observations

| Order $n$ | Left distance (cm) | Right distance (cm) | Mean $x$ (cm) |
|---:|---:|---:|---:|
| 1 | 18.4 | 18.6 | 18.5 |
| 2 | 38.5 | 38.7 | 38.6 |
| 3 | 64.1 | 64.3 | 64.2 |

With $d=1/600000$ m and $D=100$ cm, the mean wavelength is approximately $650$ nm.

## Result
The wavelength of the laser is approximately $\boxed{650\,\text{nm}}$.

## Viva Questions
1. **Why are readings taken on both sides?** To reduce error in locating the central maximum and diffraction orders.
2. **What is grating element?** The sum of the slit width and opaque spacing.
3. **Why does the central maximum have order zero?** Its path difference is zero.

## Maxima Code
[Download the PG-I optics calculation file]({{ '/assets/tikz/practical/pg-i/pg-i-optics.mac' | relative_url }}).
</div>

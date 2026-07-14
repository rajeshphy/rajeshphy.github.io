---
layout: post
title: "Measurement of Microwave Wavelength by Standing-Wave Method"
date: 2026-07-13 20:40:00 +0530
categories: [practical-pg-i]
tags: [practical, pg-i, microwave, standing-wave, wavelength]
permalink: /practical/pg-i/microwave-wavelength/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the wavelength of microwave radiation using a standing-wave measurement on a waveguide bench.

## Apparatus
Microwave source, isolator, attenuator, slotted waveguide, crystal detector, standing-wave meter, movable probe, and short-circuit termination.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/optics/optics-arrangement.png' | relative_url }}" alt="Microwave standing-wave measurement arrangement"><figcaption>The detector probe is moved along the slotted waveguide and the separation of successive minima is measured.</figcaption></figure>

## Theory
The microwave source launches an electromagnetic wave into the rectangular waveguide. At a short-circuit termination the wave is reflected, and the incident and reflected waves superpose. Their interference produces fixed nodes and antinodes, called a standing-wave pattern. The distance between two successive minima is half the wavelength measured inside the guide:

$$\lambda_g=2d.$$

The waveguide wavelength is not the free-space wavelength because the field must satisfy the boundary conditions at the conducting walls. For the operating mode, the free-space wavelength is related to the guide and cutoff wavelengths by

$$\frac{1}{\lambda_0^2}=\frac{1}{\lambda_g^2}+\frac{1}{\lambda_c^2}.$$

The probe position is therefore used to obtain $\lambda_g$, after which the known cutoff wavelength gives $\lambda_0$.

## Observations

| Minimum pair | Probe positions (cm) | Separation $d$ (cm) |
|---:|---:|---:|
| 1 | 12.4, 13.9 | 1.5 |
| 2 | 15.4, 16.9 | 1.5 |
| 3 | 18.4, 19.9 | 1.5 |

Thus $\lambda_g=3.0$ cm for the sample bench.

## Result
The guide wavelength is approximately $3.0$ cm; the free-space wavelength is obtained after applying the cutoff correction.

## Viva Questions
1. **Why are minima separated by half a wavelength?** Successive destructive-interference points are separated by $\lambda/2$.
2. **What is a waveguide?** A conducting structure that confines and guides electromagnetic waves.
3. **Why is the detector probe movable?** To map standing-wave intensity along the guide.
</div>

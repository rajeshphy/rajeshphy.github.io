---
layout: post
title: "Wavelength of Sodium Light by Michelson Interferometer"
date: 2026-07-13 14:10:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, interference, michelson-interferometer]
permalink: /practical/ug-iii/michelson-wavelength/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the wavelength of sodium light using a Michelson interferometer.

## Apparatus

Michelson interferometer, sodium lamp, condensing lens, viewing telescope, and optical bench.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/michelson-wavelength/apparatus.png' | relative_url }}" alt="Optical laboratory containing Michelson interferometers">
  <figcaption>Optical laboratory arrangement containing Michelson interferometers.</figcaption>
</figure>

## Optical arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/michelson-wavelength/michelson-wavelength.png' | relative_url }}" alt="Labelled Michelson interferometer optical arrangement">
  <figcaption>Beam splitter, fixed mirror, movable mirror, and viewing telescope.</figcaption>
</figure>

## Theory

The beam splitter divides the light into two beams. The beams are reflected by the fixed and movable mirrors and then recombine to form interference fringes. If the movable mirror is displaced through $d$, the optical path difference changes by $2d$. If $m$ fringes cross the reference mark,

$$\lambda=\frac{2d}{m}.$$

## Observations

| Trial | Number of fringes, $m$ | Mirror displacement, $d$ (mm) | Wavelength (nm) |
|---:|---:|---:|---:|
| 1 | 100 | 0.0315 | 630.0 |
| 2 | 100 | 0.0316 | 632.0 |
| 3 | 100 | 0.0317 | 634.0 |

## Calculation

For the mean displacement,

$$\lambda=\frac{2(0.0316)}{100}\,\text{mm}=0.000632\,\text{mm}=632\,\text{nm}.$$

## Result

$$\boxed{\lambda=632\,\text{nm}}.$$

## Precautions

1. Align the optical components before counting fringes.
2. Move the micrometer screw slowly and in one direction.
3. Count a large number of fringes to reduce percentage error.
4. Do not touch the optical surfaces.

## Viva Questions

1. **Why is there a factor of two in the formula?** The beam travels to the movable mirror and returns, so the path changes twice the mechanical displacement.
2. **What is fringe visibility?** It is the contrast between bright and dark fringes.
3. **Why are many fringes counted?** It reduces the fractional error in displacement and counting.
4. **What is the function of the beam splitter?** It divides the incident beam and recombines the returning beams.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/michelson-wavelength/michelson-wavelength-calculation.mac' | relative_url }}).

</div>

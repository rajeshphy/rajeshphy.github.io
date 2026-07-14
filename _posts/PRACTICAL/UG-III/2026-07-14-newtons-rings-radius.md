---
layout: post
title: "Radius of Curvature of a Plano-Convex Lens by Newton's Rings"
date: 2026-07-13 14:20:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, interference, radius-of-curvature]
permalink: /practical/ug-iii/newtons-rings-radius/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the radius of curvature of a plano-convex lens using Newton's rings and sodium light of known wavelength.

## Apparatus

Newton's-rings apparatus, plano-convex lens, travelling microscope, sodium vapour lamp, and glass plate.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/newtons-rings-wavelength/apparatus.png' | relative_url }}" alt="Newton's rings apparatus">
  <figcaption>Travelling microscope arrangement used to measure ring diameters.</figcaption>
</figure>

## Theory

For the $n$th and $(n+p)$th dark rings,

$$D_{n+p}^2-D_n^2=4p\lambda R.$$

Hence,

$$R=\frac{D_{n+p}^2-D_n^2}{4p\lambda}.$$

## Observations

Known wavelength: $\lambda=589.3\,\text{nm}$.

| Ring number | Diameter $D$ (mm) | $D^2$ (mm$^2$) |
|---:|---:|---:|
| 10 | 2.04 | 4.16 |
| 20 | 3.20 | 10.24 |
| 30 | 4.56 | 20.79 |
| 40 | 6.00 | 36.00 |

## Calculation

Using rings 10 and 20,

$$R=\frac{10.24-4.16}{4\times10\times0.0005893}\,\text{mm}=257.4\,\text{mm}.$$

The mean of the values obtained from successive ring intervals is $R=0.260\,\text{m}$.

## Result

The radius of curvature of the plano-convex lens is

$$\boxed{R=0.260\,\text{m}}.$$

## Precautions

1. Use a clean lens and a clean glass plate.
2. Take readings on both sides of the microscope cross-wire.
3. Use several pairs of rings and take the mean value.
4. Avoid parallax while reading the microscope scale.

## Viva Questions

1. **What is measured in this experiment?** The diameter of dark Newton's rings.
2. **Why is sodium light required?** Its known wavelength permits calculation of $R$.
3. **Why is a plano-convex lens used?** It produces a gradually varying air film of circular symmetry.
4. **What is the main source of error?** Incorrect focusing or reading of the ring edge.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/newtons-rings-radius/newtons-rings-radius-calculation.mac' | relative_url }}).

</div>


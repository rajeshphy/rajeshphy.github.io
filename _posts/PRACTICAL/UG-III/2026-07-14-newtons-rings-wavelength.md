---
layout: post
title: "Wavelength of Sodium Light by Newton's Rings"
date: 2026-07-13 14:15:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, interference, newtons-rings]
permalink: /practical/ug-iii/newtons-rings-wavelength/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the wavelength of sodium light by measuring the diameters of Newton's rings.

## Apparatus

Newton's-rings apparatus, plano-convex lens, optically flat glass plate, sodium vapour lamp, travelling microscope, and glass plate inclined at $45^\circ$.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/newtons-rings-wavelength/apparatus.png' | relative_url }}" alt="Newton's rings apparatus with travelling microscope">
  <figcaption>Newton's-rings arrangement with microscope and monochromatic source.</figcaption>
</figure>

## Principle

A plano-convex lens placed on a glass plate forms a thin air film whose thickness increases with distance from the point of contact. The two reflected rays interfere and produce concentric rings. For the $n$th dark ring,

$$D_n^2=4n\lambda R,$$

where $R$ is the radius of curvature of the lens. Therefore,

$$\lambda=\frac{D_{n+p}^2-D_n^2}{4pR}.$$

## Observations

Radius of curvature of the lens: $R=1.00\,\text{m}$.

| Ring number $n$ | Left reading (mm) | Right reading (mm) | Diameter $D_n$ (mm) | $D_n^2$ (mm$^2$) |
|---:|---:|---:|---:|---:|
| 10 | 12.14 | 14.18 | 2.04 | 4.16 |
| 20 | 10.12 | 15.39 | 5.27 | 27.77 |
| 30 | 9.64 | 16.81 | 7.17 | 51.41 |
| 40 | 8.98 | 17.63 | 8.65 | 74.82 |

Using a wider ring interval, $D_{20}^2-D_{10}^2=27.77-4.16=23.61\,\text{mm}^2$.

## Calculation

With $p=10$ and $R=1000\,\text{mm}$,

$$\lambda=\frac{23.61}{4\times10\times1000}\,\text{mm}=0.000590\,\text{mm}=590\,\text{nm}.$$

The small difference from the accepted sodium wavelength is due to the sample reading uncertainty.

## Result

The wavelength of sodium light is

$$\boxed{\lambda\approx589\,\text{nm}}.$$

## Precautions

1. The lens and glass plate must be clean.
2. Focus the microscope on the same ring edge while taking both readings.
3. Measure several rings and use widely separated ring numbers.
4. Do not press the lens against the plate.

## Viva Questions

1. **Why are the rings circular?** The film thickness depends only on the radial distance from the contact point.
2. **Why is the central spot dark in reflected light?** One reflected ray suffers a phase reversal, giving destructive interference at contact.
3. **Why are diameters squared?** The theory gives $D_n^2$ proportional to the ring number.
4. **Why are higher-order rings preferred?** Their larger diameters reduce the relative reading error.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/newtons-rings-wavelength/newtons-rings-wavelength-calculation.mac' | relative_url }}).

</div>

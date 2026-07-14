---
layout: post
title: "Thickness of Thin Paper by Wedge-Shaped Film"
date: 2026-07-13 14:25:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, interference, air-wedge]
permalink: /practical/ug-iii/wedge-film/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the thickness of a thin sheet of paper using interference fringes formed in a wedge-shaped air film.

## Apparatus

Two optically plane glass plates, thin paper, sodium vapour lamp, travelling microscope, and a supporting stand.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/wedge-film/apparatus.png' | relative_url }}" alt="Air wedge apparatus with travelling microscope">
  <figcaption>Air-wedge arrangement with a source and travelling microscope.</figcaption>
</figure>

## Arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/wedge-film/wedge-film.png' | relative_url }}" alt="Labelled wedge-shaped air film">
  <figcaption>Thin wedge-shaped air film between two glass plates.</figcaption>
</figure>

## Theory

The two glass plates touch at one end and are separated by the paper at the other end. The air film therefore has gradually increasing thickness. If $\beta$ is the distance between two successive dark fringes and $\lambda$ is the wavelength,

$$2t\,\frac{\beta}{L}=\lambda,$$

where $t$ is the paper thickness and $L$ is the distance between the contact and spacer ends. Thus,

$$t=\frac{\lambda L}{2\beta}.$$

## Observations

Sodium wavelength: $\lambda=589.3\,\text{nm}$; plate separation length: $L=100\,\text{mm}$.

| Trial | Position of 11th fringe (mm) | Position of 21st fringe (mm) | $\beta$ for 10 fringes (mm) |
|---:|---:|---:|---:|
| 1 | 22.10 | 37.08 | 1.498 |
| 2 | 22.24 | 37.25 | 1.501 |
| 3 | 22.05 | 37.06 | 1.501 |

Mean fringe spacing: $\beta=1.500\,\text{mm}$.

## Calculation

$$
t=\frac{0.0005893\times100}{2\times1.500}\,\text{mm}
=0.01964\,\text{mm}=19.64\,\mu\text{m}.
$$

## Result

The thickness of the paper is

$$\boxed{t=19.6\,\mu\text{m}}.$$

## Precautions

1. The glass plates should be clean and optically plane.
2. The paper must remain fixed at the same end throughout the experiment.
3. Take readings for several fringes rather than one fringe interval.
4. Focus the microscope sharply on the fringes.

## Viva Questions

1. **Why are straight fringes obtained?** The film thickness is nearly constant along lines parallel to the line of contact.
2. **Why is the wedge angle small?** A small angle gives widely separated fringes that can be measured accurately.
3. **Why is monochromatic light used?** It produces fringes of one wavelength and avoids overlapping fringe systems.
4. **What determines the fringe width?** It depends on wavelength and the wedge angle.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/wedge-film/wedge-film-calculation.mac' | relative_url }}).

</div>


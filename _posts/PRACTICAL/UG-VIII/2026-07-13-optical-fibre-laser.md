---
layout: post
title: "Optical Fibre Numerical Aperture and Laser Beam Divergence"
date: 2026-07-13 18:25:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, optical-fibre, laser, numerical-aperture]
permalink: /practical/ug-viii/optical-fibre-laser/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Aim

To determine the numerical aperture and acceptance angle of an optical fibre and measure laser-beam divergence and spot size.

## Standard experiment titles used in this record

These syllabus entries are normally performed as two experiments: determination of numerical aperture and acceptance angle of a step-index optical fibre, and determination of laser-beam divergence from spot diameter at different propagation distances.

## Apparatus

Laser diode, optical fibre, screen, metre scale, power meter, and fibre holder.

## Theory

If the output cone has radius $r$ at distance $L$, the acceptance half-angle is $\theta=\tan^{-1}(r/L)$ and

$$NA=\sin\theta.$$

For a laser beam with spot radii $w_1$ and $w_2$ at two distances, the divergence is approximately $(w_2-w_1)/(z_2-z_1)$.

## Observations

| Distance $L$ (cm) | Cone diameter (cm) | $\theta$ | $NA$ |
|---:|---:|---:|---:|
| 20 | 6.2 | $8.8^\circ$ | 0.153 |
| 30 | 9.4 | $8.9^\circ$ | 0.155 |
| 40 | 12.5 | $8.9^\circ$ | 0.155 |

Laser spot radius: $w_1=1.8\,\text{mm}$ at $1\,\text{m}$ and $w_2=2.5\,\text{mm}$ at $2\,\text{m}$.

## Result

$$\boxed{NA=0.154},\qquad \boxed{\text{divergence}=0.70\,\text{mrad}}.$$

## Precautions

Never look into the laser, keep the fibre face clean, align the beam normally, and measure the full spot diameter consistently.

## Viva Questions

1. **What is numerical aperture?** The light-gathering ability of an optical fibre.
2. **What is acceptance angle?** The maximum angle with the fibre axis for guided propagation.
3. **Why does a laser diverge?** Diffraction and finite source size cause the beam to spread.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-viii/optical-fibre-laser/optical-fibre-laser.mac' | relative_url }}).

</div>

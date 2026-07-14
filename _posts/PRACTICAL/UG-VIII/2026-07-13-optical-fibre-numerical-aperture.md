---
layout: post
title: "Numerical Aperture of a Step-Index Optical Fibre"
date: 2026-07-13 20:25:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, optical-fibre, numerical-aperture]
permalink: /practical/ug-viii/optical-fibre-numerical-aperture/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the numerical aperture and acceptance angle of a step-index optical fibre.

## Apparatus

Laser diode, step-index fibre, screen, metre scale, fibre holder, and power supply.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/fibre/fibre-arrangement.png' | relative_url }}" alt="Optical fibre numerical-aperture measurement setup"><figcaption>The laser launches light into the fibre; the output cone on the screen gives the spot radius used to calculate numerical aperture.</figcaption></figure>

## Theory

The core has refractive index $n_1$ greater than the cladding index $n_2$. Rays entering within the acceptance cone undergo total internal reflection. If the output cone has radius $r$ at distance $L$,

$$\theta_a=\tan^{-1}(r/L),\qquad NA=\sin\theta_a.$$

## Observations

| $L$ (cm) | Cone diameter (cm) | $\theta_a$ | $NA$ |
|---:|---:|---:|---:|
| 20 | 6.2 | $8.8^\circ$ | 0.153 |
| 30 | 9.4 | $8.9^\circ$ | 0.155 |
| 40 | 12.5 | $8.9^\circ$ | 0.155 |

## Result

$$\boxed{NA=0.154},\qquad \boxed{\theta_a\approx8.9^\circ}.$$

## Viva Questions

1. **Why does the fibre guide light?** By total internal reflection at the core-cladding boundary.
2. **What does NA measure?** The light-gathering ability of the fibre.
3. **Why is the output cone measured?** Its geometry gives the acceptance angle.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-viii/optical-fibre-numerical-aperture/optical-fibre-numerical-aperture.mac' | relative_url }}).

</div>

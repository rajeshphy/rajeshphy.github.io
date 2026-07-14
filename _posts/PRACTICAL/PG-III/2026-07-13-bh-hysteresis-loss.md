---
layout: post
title: "B-H Loop and Hysteresis Loss of a Ferromagnetic Core"
date: 2026-07-13 18:30:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, magnetism, hysteresis, bh-loop]
permalink: /practical/pg-iii/bh-hysteresis-loss/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To plot the B-H loop of a ferromagnetic sample and determine its retentivity, coercivity, and hysteresis loss per unit volume per cycle.

## Apparatus

Ferromagnetic ring or transformer core, primary and secondary coils, AC supply, CRO, integrating circuit, rheostat, and voltmeter.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/bh-hysteresis-loss/bh-arrangement.png' | relative_url }}" alt="B-H loop measurement using primary and secondary coils"><figcaption>The primary current produces the magnetising field $H$ and the integrated secondary voltage is applied to the CRO to display $B$.</figcaption></figure>

## Theory

The current in the primary coil produces a magnetising field $H$ inside the ferromagnetic core. The changing magnetic flux through the secondary coil induces a voltage proportional to $dB/dt$. An integrator converts this signal into a voltage proportional to $B$. The CRO therefore displays $B$ vertically against $H$ horizontally.

When the field is cycled, the magnetic domains do not return to their original arrangement along the same path. The material retains induction when $H=0$; this is retentivity. A reverse field is required to make $B=0$; this is coercivity. The area enclosed by the B-H loop equals the hysteresis energy loss per unit volume per cycle:

$$W_h=\oint H\,dB.$$

## Observations

| $H$ (A m$^{-1}$) | $B$ on increasing field (T) | $B$ on decreasing field (T) |
|---:|---:|---:|
| 0 | 0.00 | 0.62 |
| 100 | 0.48 | 0.73 |
| 200 | 0.86 | 0.91 |
| 300 | 1.10 | 1.08 |
| 400 | 1.25 | 1.20 |

Retentivity: $B_r=0.62$ T; coercivity: $H_c=95$ A m$^{-1}$.

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-vi/bh-curve-hysteresis/bh-curve.png' | relative_url }}" alt="B-H hysteresis loop of a ferromagnetic core"><figcaption>The closed B-H loop shows retentivity, coercivity, and the energy dissipated during one magnetisation cycle.</figcaption></figure>

## Calculation

The loop area obtained by graphical integration is approximately $0.18$ J m$^{-3}$ per cycle for the supplied sample.

## Result

$$\boxed{B_r=0.62\text{ T}},\qquad \boxed{H_c=95\text{ A m}^{-1}},\qquad \boxed{W_h\approx0.18\text{ J m}^{-3}\text{ cycle}^{-1}}.$$

## Viva Questions

1. **What is retentivity?** It is the induction retained when the applied magnetising field is reduced to zero.
2. **What is coercivity?** It is the reverse field needed to reduce the residual induction to zero.
3. **What does the loop area represent?** Hysteresis energy loss per unit volume per cycle.

</div>

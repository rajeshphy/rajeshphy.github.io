---
layout: post
title: "Hall Coefficient, Carrier Type, and Hall Angle of a Semiconductor"
date: 2026-07-13 18:10:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, semiconductor, hall-effect, hall-angle]
permalink: /practical/pg-iii/hall-coefficient-hall-angle/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the Hall coefficient, identify the type of charge carriers, and calculate the Hall angle of a semiconductor.

## Apparatus

Hall-effect sample, electromagnet, constant-current source, microvoltmeter, Gauss meter, and micrometer.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/hall-coefficient-hall-angle/hall-effect.png' | relative_url }}" alt="Labelled Hall-effect measurement arrangement"><figcaption>The specimen carries current along its length, the magnetic field is perpendicular to the specimen, and Hall voltage is measured across its width.</figcaption></figure>

## Theory

Moving charge carriers experience the Lorentz force in a magnetic field. In a rectangular sample carrying current along the $x$-direction, the magnetic force pushes carriers towards one side. The resulting transverse electric field grows until the electric and magnetic forces balance. This field produces the Hall voltage $V_H$.

For sample thickness $t$, current $I$, and magnetic field $B$,

$$R_H=\frac{V_Ht}{IB}.$$

The sign of $R_H$ identifies the dominant carriers. If $V_x$ is the longitudinal voltage between contacts separated by $L$, and the Hall contacts are separated by width $w$, the Hall angle is

$$\tan\theta_H=\frac{E_H}{E_x}=\frac{V_H/w}{V_x/L}=\frac{LV_H}{wV_x}.$$

For one dominant carrier type, the concentration is $n=1/(e|R_H|)$.

## Observations

Sample thickness $t=0.50$ mm, contact separation $L=10$ mm, width $w=5$ mm, and current $I=5$ mA.

| Magnetic field (T) | Hall voltage (mV) | Longitudinal voltage $V_x$ (mV) | Hall angle (degree) |
|---:|---:|---:|---:|
| 0.20 | 1.8 | 180 | 1.15 |
| 0.30 | 2.7 | 180 | 1.72 |
| 0.40 | 3.6 | 180 | 2.29 |
| 0.50 | 4.5 | 180 | 2.86 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-vi/hall-coefficient/hall-coefficient.png' | relative_url }}" alt="Hall voltage versus magnetic field graph"><figcaption>Hall voltage increases linearly with magnetic field when the current is constant.</figcaption></figure>

## Calculation

For $B=0.40$ T and $V_H=3.6$ mV,

$$R_H=\frac{(3.6\times10^{-3})(0.50\times10^{-3})}{(5\times10^{-3})(0.40)}=9.00\times10^{-4}\ \mathrm{m^3C^{-1}}.$$

Also,

$$\tan\theta_H=\frac{(10)(3.6)}{(5)(180)}=0.040,$$

so $\theta_H=2.29^\circ$.

## Result

$$\boxed{R_H=9.00\times10^{-4}\ \mathrm{m^3C^{-1}}},\qquad \boxed{\theta_H=2.29^\circ}.$$

The positive Hall coefficient indicates a p-type sample.

## Viva Questions

1. **What causes Hall voltage?** The sideways Lorentz force on moving charge carriers.
2. **What does the sign of Hall coefficient show?** It identifies whether electrons or holes dominate conduction.
3. **What is Hall angle?** The angle between the total electric field and the longitudinal electric field in a magnetic field.

## Maxima Code

[Download the PG-III calculation file]({{ '/assets/tikz/practical/pg-iii/pg-iii-modern-physics.mac' | relative_url }}).

</div>

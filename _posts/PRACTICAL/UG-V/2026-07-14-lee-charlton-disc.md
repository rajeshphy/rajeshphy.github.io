---
layout: post
title: "Thermal Conductivity of a Bad Conductor by Lee and Charlton's Method"
date: 2026-07-13 16:05:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, bad-conductor, lee-charlton]
permalink: /practical/ug-v/lee-charlton-disc/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/thermal/thermal-arrangement.png' | relative_url }}" alt="Lee-Charlton disc thermal conductivity arrangement">
  <figcaption>Lee--Charlton disc arrangement: the bad-conductor specimen is held between the heated upper disc and the lower disc carrying the thermometer.</figcaption>
</figure>

## Aim

To determine the thermal conductivity of a bad conductor by Lee and Charlton's disc method.

## Apparatus

Lee's disc, steam chamber, bad-conductor specimen, thermometers, balance, stopwatch, and screw gauge.

## Theory

The specimen is placed between the steam chamber and a brass disc. After the steady temperature $\theta$ is reached, the specimen is removed and the brass disc is allowed to cool through a small temperature range. If $m$, $s$, and $A$ are the mass, specific heat, and area of the disc, $d$ is specimen thickness, and $d\theta/dt$ is the cooling rate,

$$K=\frac{msd}{A(\theta_1-\theta_2)}\left|\frac{d\theta}{dt}\right|.$$

## Observations

Disc mass $m=0.420\,\text{kg}$, specific heat $s=380\,\text{J kg}^{-1}\text{K}^{-1}$, specimen thickness $d=0.004\,\text{m}$, area $A=0.00785\,\text{m}^2$.

| Temperature interval (°C) | Time (s) |
|---:|---:|
| 50 to 45 | 205 |
| 45 to 40 | 232 |
| 40 to 35 | 268 |

Mean cooling rate near $45^\circ\text{C}$: $|d\theta/dt|=5/232=0.02155\,\text{K s}^{-1}$.

## Calculation

$$K=\frac{0.420\times380\times0.004}{0.00785}\times0.02155
=1.74\,\text{W m}^{-1}\text{K}^{-1}.$$

## Result

$$\boxed{K=1.74\,\text{W m}^{-1}\text{K}^{-1}}.$$

## Precautions

1. The specimen should completely cover the disc area.
2. Use the cooling rate at the same temperature at which the steady state was observed.
3. Avoid parallax while reading the thermometer.
4. Keep the steam pressure nearly constant.

## Viva Questions

1. **Why is the cooling curve used?** It gives the rate at which the disc loses heat.
2. **Why is the specimen a bad conductor?** A large temperature gradient can then be established across a small thickness.
3. **What is Newton's law of cooling?** The cooling rate is approximately proportional to the temperature excess for a small temperature range.
4. **Why should the specimen cover the disc?** It ensures that the heat flow area is known and uniform.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-v/lee-charlton-disc/lee-charlton-disc.mac' | relative_url }}).

</div>

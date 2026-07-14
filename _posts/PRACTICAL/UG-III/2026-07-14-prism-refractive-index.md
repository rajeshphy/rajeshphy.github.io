---
layout: post
title: "Refractive Index of a Prism by Minimum Deviation"
date: 2026-07-13 14:00:00 +0530
categories: [practical-ug-iii]
tags: [practical, ug-iii, optics, prism, refractive-index]
permalink: /practical/ug-iii/prism-refractive-index/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the refractive index of the material of a glass prism using sodium light and the method of minimum deviation.

## Apparatus

Spectrometer, glass prism, sodium vapour lamp, spirit level, reading lens, and fine adjustment screws.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-iii/prism-spectrometer/apparatus.png' | relative_url }}" alt="Prism spectrometer with a prism on the prism table">
  <figcaption>Prism spectrometer arrangement used for angular measurements.</figcaption>
</figure>

## Theory

Light from the sodium lamp is refracted at the two faces of the prism. As the prism is rotated, the deviation first decreases, becomes minimum, and then increases. At minimum deviation the incident and emergent rays are symmetrical. If $A$ is the prism angle and $D_m$ is the minimum deviation,

$$\mu=\frac{\sin[(A+D_m)/2]}{\sin(A/2)}.$$

## Observations

The prism angle was measured as $A=60^\circ00'$. The readings for the sodium $D$ line were:

| Trial | Minimum-deviation reading | $D_m$ |
|---:|---:|---:|
| 1 | $179^\circ30'$ | $39^\circ00'$ |
| 2 | $179^\circ29'$ | $38^\circ59'$ |
| 3 | $179^\circ31'$ | $39^\circ01'$ |

Mean minimum deviation: $D_m=39^\circ00'$.

## Calculation

$$
\mu=\frac{\sin[(60^\circ+39^\circ)/2]}{\sin30^\circ}
=\frac{\sin49.5^\circ}{0.5}=1.528.
$$

## Result

$$\boxed{\mu=1.528}.$$

## Precautions

1. Level the prism table and telescope before taking readings.
2. Keep the slit narrow and vertical.
3. Place the prism at the centre of the prism table.
4. Approach the minimum-deviation position from both sides.
5. Take readings from both verniers and use their mean.

## Viva Questions

1. **What is minimum deviation?** It is the least angle through which a prism deviates light of a specified wavelength.
2. **What is special about the ray path at minimum deviation?** The angles of incidence and emergence are equal.
3. **Why is sodium light used?** It is nearly monochromatic and gives a sharp yellow line.
4. **Why should the slit be narrow?** A narrow slit gives a well-defined image and improves angular accuracy.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-iii/prism-refractive-index/prism-refractive-index-calculation.mac' | relative_url }}).

</div>

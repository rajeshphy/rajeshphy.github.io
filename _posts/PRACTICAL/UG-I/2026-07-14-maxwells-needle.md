---
layout: post
title: "Modulus of Rigidity by Maxwell's Needle"
date: 2026-07-14 12:20:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - elasticity
  - maxwells-needle
  - torsion
permalink: /practical/ug-i/maxwells-needle/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the modulus of rigidity of the material of a suspension wire by Maxwell's needle method.

## Apparatus

Maxwell's needle, suspension wire, stop watch, screw gauge, metre scale, and interchangeable hollow and solid cylinders.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/maxwells-needle/maxwells-needle.png' | relative_url }}" alt="Labelled diagram of Maxwell's needle apparatus">
  <figcaption>Maxwell's needle apparatus used for torsional oscillations.</figcaption>
</figure>

## Principle

When a wire is twisted through a small angle, it provides a restoring couple. The suspended needle executes torsional oscillations. The time period is

$$
T=2\pi\sqrt{\frac{I}{C}},
$$

where $I$ is the moment of inertia of the suspended system and $C$ is the torsional couple per unit twist. For a wire of length $l$ and radius $r$,

$$
C=\frac{\pi \eta r^4}{2l},
$$

where $\eta$ is the modulus of rigidity.

By interchanging the hollow and solid cylinders, the change in moment of inertia is $\Delta I$. If the corresponding time periods are $T_1$ and $T_2$, then

$$
\eta=\frac{8\pi l\Delta I}{r^4(T_1^2-T_2^2)}.
$$

## Observations

Length of suspension wire:

$$
l=60.0\text{ cm}=0.600\text{ m}.
$$

Radius of suspension wire:

$$
r=0.25\text{ mm}=2.5\times10^{-4}\text{ m}.
$$

Change in moment of inertia after interchange:

$$
\Delta I=2.98\times10^{-4}\text{ kg m}^2.
$$

| Trial | Time for 10 oscillations, outer heavy cylinders (s) | $T_1$ (s) | Time for 10 oscillations, inner heavy cylinders (s) | $T_2$ (s) |
|---:|---:|---:|---:|---:|
| 1 | 56.3 | 5.63 | 41.3 | 4.13 |
| 2 | 56.1 | 5.61 | 41.2 | 4.12 |
| 3 | 56.2 | 5.62 | 41.1 | 4.11 |
| 4 | 56.3 | 5.63 | 41.2 | 4.12 |
| 5 | 56.1 | 5.61 | 41.3 | 4.13 |

Mean values:

$$
T_1=5.62\text{ s},\qquad T_2=4.12\text{ s}.
$$

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/maxwells-needle/maxwells-needle-graph.png' | relative_url }}" alt="Graph of time periods in Maxwell's needle method">
  <figcaption>Observed time periods for two arrangements of the interchangeable cylinders.</figcaption>
</figure>

## Calculation

Using

$$
\eta=\frac{8\pi l\Delta I}{r^4(T_1^2-T_2^2)},
$$

we get

$$
\eta=\frac{8\pi(0.600)(2.98\times10^{-4})}{(2.5\times10^{-4})^4[(5.62)^2-(4.12)^2]}.
$$

Therefore,

$$
\eta=7.91\times10^{10}\text{ N m}^{-2}.
$$

## Result

The modulus of rigidity of the material of the wire is

$$
\boxed{\eta=7.91\times10^{10}\text{ N m}^{-2}}.
$$

## Precautions

1. The wire should be thin, uniform, and free from kinks.
2. The oscillations should be small and purely torsional.
3. The cylinders must be fixed symmetrically on the needle.
4. Avoid jerks while setting the needle into oscillation.
5. Measure the wire radius carefully because the formula contains $r^4$.

## Viva Questions

1. **What is modulus of rigidity?**  
   It is the ratio of shearing stress to shearing strain within the elastic limit.

2. **Why is the radius of the wire important?**  
   The formula contains $r^4$, so a small error in radius produces a large error in the result.

3. **What type of oscillation is used in this experiment?**  
   Torsional oscillation is used.

4. **Why are the cylinders interchanged?**  
   Interchanging the cylinders changes the moment of inertia while keeping the same suspension wire.

5. **Why should the oscillations be small?**  
   Small oscillations keep the restoring couple proportional to the angle of twist.

## Maxima Code

The calculation can be checked with this file: [maxwells-needle-calculation.mac]({{ '/assets/tikz/practical/ug-i/maxwells-needle/maxwells-needle-calculation.mac' | relative_url }}).

</div>

---
layout: post
title: "Determination of g by a Simple Pendulum"
date: 2026-07-13 20:00:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, mechanics, simple-pendulum, gravity]
permalink: /practical/ug-vii/simple-pendulum/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the acceleration due to gravity using a simple pendulum.

## Apparatus

Small spherical bob, light inextensible string, rigid support, metre scale, stopwatch, and plumb line.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/ug-vii/mechanics/mechanics-arrangement.png' | relative_url }}" alt="Labelled simple pendulum experimental arrangement"><figcaption>Simple pendulum arrangement: the length is measured from the point of suspension to the centre of the bob.</figcaption></figure>

## Theory

When the bob is displaced through a small angle, gravity has a tangential component that tends to restore it to the equilibrium position. For small angle $\theta$, $\sin\theta\approx\theta$, so the motion is simple harmonic and

$$T=2\pi\sqrt{\frac{l}{g}}.$$

Thus a graph of $T^2$ against $l$ is a straight line of slope $4\pi^2/g$.

## Observations

| $l$ (m) | Time for 20 oscillations (s) | $T$ (s) | $T^2$ (s$^2$) |
|---:|---:|---:|---:|
| 0.40 | 25.4 | 1.27 | 1.613 |
| 0.60 | 31.2 | 1.56 | 2.434 |
| 0.80 | 36.0 | 1.80 | 3.240 |
| 1.00 | 40.2 | 2.01 | 4.040 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-vii/mechanics-practicals/mechanics-pendulum.png' | relative_url }}" alt="Simple pendulum time period graph"><figcaption>Observed time period against length for the pendulum.</figcaption></figure>

## Result

From the mean period at $l=1.00\,\text{m}$,

$$g=\frac{4\pi^2l}{T^2}=9.79\,\text{m s}^{-2}.$$

## Viva Questions

1. **Why is the amplitude kept small?** To make the small-angle approximation valid.
2. **What is the effective length?** The distance from suspension point to the bob's centre.
3. **Why time many oscillations?** To reduce reaction-time error.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/mechanics-practicals/mechanics-practicals.mac' | relative_url }}).

</div>


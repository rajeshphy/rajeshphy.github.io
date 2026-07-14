---
layout: post
title: "UG-VII Mechanics Practicals: Motion, Friction and Oscillations"
date: 2026-07-13 18:00:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, mechanics, oscillations]
permalink: /practical/ug-vii/mechanics-practicals/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Scope of the practical

This record covers the simple pendulum, dynamics-cart verification of Newton's second law, inclined-plane friction, simple harmonic motion, moment of inertia by torsion pendulum, and projectile motion.

## Standard experiment titles used in this record

The syllabus wording is interpreted in the usual undergraduate form: (i) determination of $g$ by a simple pendulum, (ii) verification of $F=ma$ with a dynamics cart, (iii) coefficient of limiting friction by an inclined plane, (iv) determination of spring constant by mass-spring oscillations, (v) moment of inertia of an irregular body by a torsion pendulum, and (vi) range of a projectile as a function of launch angle and speed.

## Apparatus

Pendulum, stopwatch, dynamics cart and track, pulley, weights, inclined plane, spring-mass system, torsion pendulum, metre scale, and projectile launcher.

## Essential relations

For a simple pendulum, $T=2\pi\sqrt{l/g}$. For a cart, $F=ma$. On an inclined plane, $\mu=\tan\theta$ at limiting motion. For a spring, $T=2\pi\sqrt{m/k}$. For a projectile,

$$R=\frac{u^2\sin2\theta}{g}.$$

## Sample observations

| Experiment | Main readings | Result |
|---|---|---:|
| Simple pendulum | $l=1.00\,\text{m}$, $T=2.01\,\text{s}$ | $g=9.79\,\text{m s}^{-2}$ |
| Dynamics cart | $F=0.50\,\text{N}$, $a=1.02\,\text{m s}^{-2}$ | $m=0.49\,\text{kg}$ |
| Inclined plane | limiting angle $21.5^\circ$ | $\mu=0.393$ |
| Spring | $m=0.20\,\text{kg}$, $T=0.89\,\text{s}$ | $k=9.97\,\text{N m}^{-1}$ |
| Projectile | $u=4.0\,\text{m s}^{-1}$, $\theta=45^\circ$ | $R=1.63\,\text{m}$ |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vii/mechanics-practicals/mechanics-pendulum.png' | relative_url }}" alt="Simple pendulum time-period graph">
  <figcaption>Time period plotted against length for the simple pendulum observations.</figcaption>
</figure>

## Moment of inertia

For torsional oscillation, $T=2\pi\sqrt{I/C}$. With $T=1.84\,\text{s}$ and torsional constant $C=0.80\,\text{N m rad}^{-1}$,

$$I=\frac{CT^2}{4\pi^2}=0.0686\,\text{kg m}^2.$$

## Results

The listed mechanical relations are verified with the sample observations. Each experiment should be recorded with its own observation table and graph where the measured variable is varied.

## Precautions

Keep amplitudes small, remove backlash, measure time for many oscillations, level the track, and release the projectile without an additional push.

## Viva Questions

1. **Why are many pendulum oscillations timed?** To reduce stopwatch reaction error.
2. **What is limiting friction?** It is the maximum static friction just before motion begins.
3. **Why is a graph used for a spring?** The slope of $T^2$ versus $m$ gives $4\pi^2/k$.
4. **At what angle is projectile range maximum?** At $45^\circ$ for equal launch and landing levels.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/mechanics-practicals/mechanics-practicals.mac' | relative_url }}).

</div>

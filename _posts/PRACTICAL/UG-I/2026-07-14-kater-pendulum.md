---
layout: post
title: "Acceleration Due to Gravity by Kater's Pendulum"
date: 2026-07-14 12:10:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - mechanics
  - katers-pendulum
  - gravity
permalink: /practical/ug-i/kater-pendulum/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the acceleration due to gravity $g$ using Kater's reversible pendulum.

## Apparatus

Kater's pendulum, rigid support with knife-edge rest, stop watch, metre scale, and movable mass.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/kater-pendulum/kater-pendulum.png' | relative_url }}" alt="Labelled diagram of Kater's reversible pendulum">
  <figcaption>Kater's pendulum with two knife-edges and an adjustable mass.</figcaption>
</figure>

## Principle

Kater's pendulum is a reversible compound pendulum. It has two knife-edges, $K_1$ and $K_2$. The position of the movable mass is adjusted until the time periods about the two knife-edges are equal. At this condition, the distance between the two knife-edges is the equivalent length $L$ of a simple pendulum.

For a simple pendulum of equivalent length $L$ and time period $T$,

$$
T=2\pi\sqrt{\frac{L}{g}}.
$$

Therefore,

$$
g=\frac{4\pi^2L}{T^2}.
$$

## Observations

Distance between knife-edges:

$$
L=99.4\text{ cm}=0.994\text{ m}.
$$

| Position of movable mass (cm) | Time for 20 oscillations about $K_1$ (s) | $T_1$ (s) | Time for 20 oscillations about $K_2$ (s) | $T_2$ (s) |
|---:|---:|---:|---:|---:|
| 18 | 40.50 | 2.025 | 39.44 | 1.972 |
| 20 | 40.26 | 2.013 | 39.68 | 1.984 |
| 22 | 40.04 | 2.002 | 39.92 | 1.996 |
| 24 | 39.82 | 1.991 | 40.16 | 2.008 |
| 26 | 39.60 | 1.980 | 40.40 | 2.020 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/kater-pendulum/kater-pendulum-graph.png' | relative_url }}" alt="Graph of time periods about two knife-edges of Kater's pendulum">
  <figcaption>Time periods about the two knife-edges become equal near the crossing point.</figcaption>
</figure>

From the graph, the equal time period is approximately

$$
T=2.000\text{ s}.
$$

## Calculation

Using

$$
g=\frac{4\pi^2L}{T^2},
$$

we get

$$
g=\frac{4\pi^2(0.994)}{(2.000)^2}.
$$

Therefore,

$$
g=9.81\text{ m s}^{-2}.
$$

## Result

The acceleration due to gravity at the place of experiment is

$$
\boxed{g=9.81\text{ m s}^{-2}}.
$$

## Precautions

1. The amplitude of oscillation should be small.
2. The knife-edge should rest sharply and horizontally on the support.
3. Count oscillations from the same extreme position each time.
4. The movable mass should be fixed firmly after each adjustment.
5. Avoid air currents near the pendulum.

## Viva Questions

1. **Why is Kater's pendulum called reversible?**  
   It can be suspended and oscillated from either of its two knife-edges.

2. **What is the advantage of Kater's pendulum?**  
   It avoids the need to locate the centre of gravity and centre of oscillation separately.

3. **Why should the amplitudes be small?**  
   The formula for time period assumes small angular oscillations.

4. **What happens at the equal-period position?**  
   The distance between the two knife-edges becomes the equivalent length of the simple pendulum.

5. **Why are many oscillations timed together?**  
   Timing many oscillations reduces the percentage error in the measured time period.

## Maxima Code

The calculation can be checked with this file: [kater-pendulum-calculation.mac]({{ '/assets/tikz/practical/ug-i/kater-pendulum/kater-pendulum-calculation.mac' | relative_url }}).

</div>

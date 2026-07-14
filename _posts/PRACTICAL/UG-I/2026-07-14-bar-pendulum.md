---
layout: post
title: "Bar Pendulum: Determination of g"
date: 2026-07-14 11:30:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - mechanics
  - bar-pendulum
  - gravity
  - tikz
permalink: /practical/ug-i/bar-pendulum/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the acceleration due to gravity $g$ and the radius of gyration $k$ of a bar pendulum.

## Apparatus

Bar pendulum, knife-edge support, stop watch, and metre scale.

## Apparatus image

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/bar-pendulum/bar-pendulum-apparatus.jpg' | relative_url }}" alt="Physical pendulum apparatus">
  <figcaption>Physical pendulum apparatus used for determining acceleration due to gravity.</figcaption>
</figure>

Image source: [FPN Nysa physical pendulum apparatus](https://sklep.fpnnysa.com.pl/wahadlo-fizyczne-pomoce-dydaktyczne).

## Schematic figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/bar-pendulum/bar-pendulum-arrangement.png' | relative_url }}" alt="TikZ diagram of bar pendulum arrangement">
  <figcaption>Schematic diagram of a bar pendulum suspended from a knife-edge support.</figcaption>
</figure>

## Theory

A bar pendulum is a rigid body which oscillates about a horizontal axis passing through one of its holes. If the point of suspension is at a distance $l$ from the centre of gravity and $k$ is the radius of gyration about the centre of gravity, then the time period is

$$
T = 2\pi \sqrt{\frac{l+\frac{k^2}{l}}{g}}.
$$

For two conjugate lengths $l_1$ and $l_2$ having the same time period,

$$
L=l_1+l_2
$$

is the equivalent length of the simple pendulum. Hence,

$$
g_1=\frac{4\pi^2L}{T^2}.
$$

The time period is minimum when $l=k$. Therefore,

$$
T_{\min}=2\pi\sqrt{\frac{2k}{g}},
$$

and

$$
g_2=\frac{8\pi^2k}{T_{\min}^2}.
$$

The radius of gyration may also be found from

$$
k=\sqrt{l_1l_2}.
$$

## Procedure

1. Place the knife-edge at one hole of the bar pendulum.
2. Suspend the bar from a rigid support.
3. Displace the bar slightly and release it so that it oscillates in a vertical plane.
4. Note the time for 20 oscillations.
5. Measure the distance $l$ of the suspension hole from the centre of gravity.
6. Repeat the observations for holes on both sides of the centre of gravity.
7. Calculate $T=t/20$ for each observation.
8. Plot a graph between $T$ and $l$.
9. From the graph, obtain $L$, $T$, $k$, and $T_{\min}$.

## Observations

Least count of stop watch = $0.01\,\text{s}$

Least count of metre scale = $0.1\,\text{cm}$

| S. No. | $l$ (cm) | Time for 20 oscillations, $t$ (s) | $T=t/20$ (s) |
|---|---:|---:|---:|
| 1 | 45 | 30.78 | 1.539 |
| 2 | 40 | 29.94 | 1.497 |
| 3 | 35 | 29.20 | 1.460 |
| 4 | 30 | 28.66 | 1.433 |
| 5 | 25 | 28.38 | 1.419 |
| 6 | 20 | 28.74 | 1.437 |
| 7 | 15 | 30.24 | 1.512 |
| 8 | 10 | 34.16 | 1.708 |
| 9 | 5 | 45.74 | 2.287 |
| 10 | -5 | 45.70 | 2.285 |
| 11 | -10 | 34.18 | 1.709 |
| 12 | -15 | 30.20 | 1.510 |
| 13 | -20 | 28.70 | 1.435 |
| 14 | -25 | 28.40 | 1.420 |
| 15 | -30 | 28.68 | 1.434 |
| 16 | -35 | 29.22 | 1.461 |
| 17 | -40 | 29.96 | 1.498 |
| 18 | -45 | 30.80 | 1.540 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-i/bar-pendulum/bar-pendulum-graph.png' | relative_url }}" alt="Gnuplot graph of time period versus distance from centre of gravity for bar pendulum">
  <figcaption>$T$-$l$ graph plotted using Gnuplot from the observation table.</figcaption>
</figure>

From the graph:

| Quantity | Graph reading |
|---|---:|
| $l_1$ | $20.0\,\text{cm}$ |
| $l_2$ | $31.2\,\text{cm}$ |
| $L=l_1+l_2$ | $51.2\,\text{cm}=0.512\,\text{m}$ |
| $T$ | $1.436\,\text{s}$ |
| $k$ | $25.0\,\text{cm}=0.250\,\text{m}$ |
| $T_{\min}$ | $1.419\,\text{s}$ |

## Calculations

Using the graph,

$$
L = l_1+l_2 = 20.0+31.2 = 51.2\,\text{cm}=0.512\,\text{m}.
$$

Also,

$$
T=1.436\,\text{s}, \qquad k=25.0\,\text{cm}=0.250\,\text{m}, \qquad T_{\min}=1.419\,\text{s}.
$$

First value of $g$:

$$
\begin{aligned}
g_1
&=\frac{4\pi^2L}{T^2} \\
&=\frac{4\times(3.1416)^2\times0.512}{(1.436)^2} \\
&=9.802\,\text{m s}^{-2}.
\end{aligned}
$$

Second value of $g$:

$$
\begin{aligned}
g_2
&=\frac{8\pi^2k}{T_{\min}^2} \\
&=\frac{8\times(3.1416)^2\times0.250}{(1.419)^2} \\
&=9.803\,\text{m s}^{-2}.
\end{aligned}
$$

Mean value:

$$
g=\frac{g_1+g_2}{2}
=\frac{9.802+9.803}{2}
=9.803\,\text{m s}^{-2}.
$$

Radius of gyration from conjugate lengths:

$$
k=\sqrt{l_1l_2}
=\sqrt{20.0\times31.2}
=24.98\,\text{cm}.
$$

## Result

The acceleration due to gravity at the place of experiment is

$$
g=9.803\,\text{m s}^{-2}.
$$

The radius of gyration of the bar pendulum is

$$
k=25.0\,\text{cm}.
$$

## Precautions

1. The bar should oscillate in a vertical plane.
2. The amplitude of oscillation should be small.
3. Timing should be started after two oscillations.
4. The knife-edge should be sharp and placed firmly on the support.
5. The distance of each hole from the centre of gravity should be measured carefully.
6. The stop watch should be started and stopped at the same phase of oscillation.

## Viva Questions

**1. What is a bar pendulum?**
A bar pendulum is a rigid bar with holes along its length. It is suspended from a knife-edge and allowed to oscillate about a horizontal axis.

**2. Why is the amplitude kept small?**
The formula for time period is valid only for small angular oscillations. Large amplitude changes the time period and introduces error.

**3. What is radius of gyration?**
Radius of gyration is the distance from the axis at which the whole mass of the body may be assumed to be concentrated without changing its moment of inertia.

**4. What are conjugate points?**
Conjugate points are two points of suspension for which the time period of oscillation is the same.

**5. What is equivalent length?**
The equivalent length is the length of a simple pendulum having the same time period as the compound pendulum. For conjugate lengths,

$$
L=l_1+l_2.
$$

**6. Why is the graph drawn between $T$ and $l$?**
The graph helps to find conjugate lengths, minimum time period, and radius of gyration more accurately.

**7. When is the time period minimum?**
The time period is minimum when the distance of the suspension point from the centre of gravity is equal to the radius of gyration, i.e. $l=k$.

**8. Why is a knife-edge used?**
A knife-edge provides a sharp and nearly fixed axis of suspension. This reduces frictional and geometrical errors.

**9. What is the standard value of $g$?**
The approximate standard value of acceleration due to gravity is

$$
g=9.8\,\text{m s}^{-2}.
$$

**10. Name two main sources of error.**
The two common sources of error are error in measuring time and error in measuring the distance of the suspension hole from the centre of gravity.

## Maxima Code

The calculation can be checked with this file: [bar-pendulum-calculation.mac]({{ '/assets/tikz/practical/ug-i/bar-pendulum/bar-pendulum-calculation.mac' | relative_url }}).

</div>

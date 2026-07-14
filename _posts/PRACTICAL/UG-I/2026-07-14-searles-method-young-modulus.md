---
layout: post
title: "Young's Modulus by Searle's Method"
date: 2026-07-14 12:00:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - elasticity
  - searles-method
  - youngs-modulus
permalink: /practical/ug-i/searles-method-young-modulus/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine Young's modulus of the material of a wire by Searle's method.

## Apparatus

Searle's apparatus, two long wires of the same material, slotted weights, screw gauge, metre scale, spirit level, and micrometer screw.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/searles-method/searles-method.png' | relative_url }}" alt="Labelled diagram of Searle's apparatus">
  <figcaption>Searle's apparatus showing reference wire, experimental wire, spirit level, and micrometer screw.</figcaption>
</figure>

## Principle

When a wire of length $L$ and radius $r$ is stretched by a load $Mg$, it extends by $x$. Young's modulus is defined as

$$
Y=\frac{\text{longitudinal stress}}{\text{longitudinal strain}}.
$$

For the wire,

$$
Y=\frac{Mg/A}{x/L}=\frac{MgL}{\pi r^2 x}.
$$

If a graph is drawn between load $M$ and extension $x$, the slope gives $x/M$. Hence,

$$
Y=\frac{gL}{\pi r^2 (x/M)}.
$$

## Observations

Length of experimental wire:

$$
L=1.50 \text{ m}.
$$

Diameter of wire:

| Trial | Diameter (mm) |
|---:|---:|
| 1 | 0.50 |
| 2 | 0.49 |
| 3 | 0.51 |

Mean diameter $d=0.50$ mm, so

$$
r=0.25 \text{ mm}=2.5\times10^{-4}\text{ m}.
$$

Load-extension readings:

| Load, $M$ (kg) | Micrometer reading (mm) | Extension, $x$ (mm) |
|---:|---:|---:|
| 0.5 | 1.19 | 0.19 |
| 1.0 | 1.38 | 0.38 |
| 1.5 | 1.56 | 0.56 |
| 2.0 | 1.76 | 0.76 |
| 2.5 | 1.94 | 0.94 |
| 3.0 | 2.14 | 1.14 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/searles-method/searles-method-graph.png' | relative_url }}" alt="Load versus extension graph for Searle's method">
  <figcaption>Graph between load and extension. The slope gives extension per unit load.</figcaption>
</figure>

From the graph,

$$
\frac{x}{M}=0.379\text{ mm kg}^{-1}=3.79\times10^{-4}\text{ m kg}^{-1}.
$$

## Calculation

Using

$$
Y=\frac{gL}{\pi r^2 (x/M)},
$$

we get

$$
Y=\frac{9.81\times1.50}{\pi(2.5\times10^{-4})^2(3.79\times10^{-4})}.
$$

Therefore,

$$
Y=1.98\times10^{11}\text{ N m}^{-2}.
$$

## Result

Young's modulus of the material of the wire is

$$
\boxed{Y=1.98\times10^{11}\text{ N m}^{-2}}.
$$

## Precautions

1. The wire should be straight, vertical, and free from kinks.
2. Add and remove loads gently.
3. Bring the spirit level bubble to the centre before taking each reading.
4. Do not exceed the elastic limit of the wire.
5. Measure the diameter at several points and take the mean radius.

## Viva Questions

1. **What is Young's modulus?**  
   It is the ratio of longitudinal stress to longitudinal strain within the elastic limit.

2. **Why are two wires used in Searle's apparatus?**  
   One wire acts as a reference and helps remove errors due to support yielding and temperature change.

3. **Why is the diameter measured carefully?**  
   The formula contains $r^2$, so a small error in radius produces a larger error in Young's modulus.

4. **What is elastic limit?**  
   It is the maximum stress up to which the body regains its original shape after the load is removed.

5. **Why should loading be gradual?**  
   Sudden loading may produce jerks and non-uniform extension.

## Maxima Code

The calculation can be checked with this file: [searles-method-calculation.mac]({{ '/assets/tikz/practical/ug-i/searles-method/searles-method-calculation.mac' | relative_url }}).

</div>

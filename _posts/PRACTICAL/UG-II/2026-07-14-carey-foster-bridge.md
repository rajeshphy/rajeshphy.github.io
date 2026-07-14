---
layout: post
title: "Low Resistance by Carey Foster's Bridge"
date: 2026-07-14 13:00:00 +0530
categories:
  - practical-ug-ii
tags:
  - practical
  - ug-ii
  - electricity
  - carey-foster-bridge
permalink: /practical/ug-ii/carey-foster-bridge/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine an unknown low resistance using Carey Foster's bridge.

## Apparatus

Carey Foster bridge, resistance box, standard low resistance, unknown low resistance, galvanometer, battery, jockey, key, and connecting wires.

## Circuit Diagram

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-ii/carey-foster-bridge/carey-foster-bridge.png' | relative_url }}" alt="Carey Foster bridge circuit">
  <figcaption>Carey Foster bridge for comparing two nearly equal low resistances.</figcaption>
</figure>

In the diagram, $AB$ is the uniform bridge wire of measurable resistance per unit length. It should not be treated as an ordinary short connecting wire.

## Theory

Carey Foster's bridge is a modified Wheatstone bridge. It is used when the unknown resistance and the standard resistance are nearly equal. If the balance point shifts from $l_1$ to $l_2$ when the positions of $X$ and $S$ are interchanged, then

$$
X-S=\rho(l_2-l_1),
$$

where $\rho$ is the resistance per unit length of the bridge wire. Hence,

$$
X=S+\rho(l_2-l_1).
$$

## Observations

Standard resistance:

$$
S=1.000\,\Omega.
$$

Resistance per cm of bridge wire:

$$
\rho=0.015\,\Omega\text{ cm}^{-1}.
$$

| Trial | Balance length before interchange, $l_1$ (cm) | Balance length after interchange, $l_2$ (cm) | $X$ ($\Omega$) |
|---:|---:|---:|---:|
| 1 | 44.0 | 56.6 | 1.189 |
| 2 | 44.2 | 56.8 | 1.189 |
| 3 | 44.4 | 57.0 | 1.189 |

## Calculation

Using the second observation,

$$
X=1.000+0.015(56.8-44.2).
$$

Therefore,

$$
X=1.189\,\Omega.
$$

## Result

The value of the unknown low resistance is

$$
\boxed{X=1.189\,\Omega}.
$$

## Precautions

1. The unknown and standard resistances should be nearly equal.
2. The bridge wire should be clean and uniform.
3. Do not press the jockey hard on the bridge wire.
4. Keep all plugs in resistance boxes tight.
5. Use short, thick connecting wires to reduce extra resistance.

## Viva Questions

1. **What is Carey Foster's bridge used for?**  
   It is used to compare and determine low resistances accurately.

2. **Why are $X$ and $S$ interchanged?**  
   Interchanging them removes the effect of end resistances.

3. **What is the role of the bridge wire?**  
   It provides a known resistance per unit length.

4. **Why should the resistances be nearly equal?**  
   The method gives best accuracy when the balance points lie well within the wire.

5. **What is null deflection?**  
   It is the condition in which the galvanometer shows zero deflection.

## Maxima Code

The calculation can be checked with this file: [carey-foster-bridge-calculation.mac]({{ '/assets/tikz/practical/ug-ii/carey-foster-bridge/carey-foster-bridge-calculation.mac' | relative_url }}).

</div>

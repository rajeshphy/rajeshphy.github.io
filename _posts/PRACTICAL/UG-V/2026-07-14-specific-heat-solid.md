---
layout: post
title: "Specific Heat of a Solid with Radiation Correction"
date: 2026-07-13 16:25:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, specific-heat, radiation]
permalink: /practical/ug-v/specific-heat-solid/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Aim

To determine the specific heat of a solid by the method of mixtures with radiation correction.

## Apparatus

Calorimeter, solid sample, balance, thermometer, steam bath, water, stirrer, and stopwatch.

## Theory

Heat lost by the hot solid is equal to heat gained by water and calorimeter after applying the correction for heat exchanged with the surroundings. If $m_s$, $s_s$ are the mass and specific heat of the solid, and $m_w$, $s_w$, $m_c$, $s_c$ refer to water and calorimeter,

$$m_ss_s(T-t)=(m_ws_w+m_cs_c)(t-T_w)+Q_r.$$

Here $Q_r$ is the radiation correction obtained from the cooling curve.

## Observations

| Quantity | Value |
|---|---:|
| Mass of solid | $0.100\,\text{kg}$ |
| Initial solid temperature | $98.0^\circ\text{C}$ |
| Mass of water | $0.150\,\text{kg}$ |
| Water initial temperature | $24.0^\circ\text{C}$ |
| Final corrected temperature | $31.5^\circ\text{C}$ |
| Radiation correction | $0.42\,\text{kJ}$ |

## Calculation

Substitution in the heat-balance equation with $s_w=4200\,\text{J kg}^{-1}\text{K}^{-1}$ and calorimeter water equivalent $0.025\,\text{kg}$ gives

$$s_s=390\,\text{J kg}^{-1}\text{K}^{-1}.$$

## Result

$$\boxed{s_s=390\,\text{J kg}^{-1}\text{K}^{-1}}.$$

## Precautions

1. Transfer the hot solid quickly and without loss of water.
2. Stir the mixture uniformly.
3. Record the cooling curve near the final temperature.
4. Keep the calorimeter covered.

## Viva Questions

1. **Why is radiation correction necessary?** The calorimeter exchanges heat with its surroundings during the experiment.
2. **Why is the solid heated in a steam bath?** It can be brought to a known nearly uniform temperature.
3. **Why is a stirrer used?** It makes the mixture temperature uniform.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-v/specific-heat-solid/specific-heat-solid.mac' | relative_url }}).

</div>

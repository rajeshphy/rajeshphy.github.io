---
layout: post
title: "Latent Heat of Fusion of Ice with Radiation Correction"
date: 2026-07-13 16:30:00 +0530
categories: [practical-ug-v]
tags: [practical, ug-v, thermal-physics, latent-heat, ice]
permalink: /practical/ug-v/latent-heat-ice/
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

To determine the latent heat of fusion of ice by the method of mixtures with radiation correction.

## Apparatus

Calorimeter, ice, water, balance, thermometer, stirrer, and stopwatch.

## Theory

Heat lost by warm water and calorimeter melts ice and raises the temperature of the melted ice. If $m_i$ is the mass of ice melted, $L$ is the latent heat, and $Q_r$ is the radiation correction,

$$Q_r+(m_wc_w+m_cc_c)(T_i-T_f)=m_iL+m_ic_wT_f.$$

## Observations

| Quantity | Value |
|---|---:|
| Mass of water | $0.200\,\text{kg}$ |
| Initial water temperature | $35.0^\circ\text{C}$ |
| Final temperature | $8.0^\circ\text{C}$ |
| Ice melted | $0.032\,\text{kg}$ |
| Radiation correction | $0.18\,\text{kJ}$ |

## Calculation

Using $c_w=4200\,\text{J kg}^{-1}\text{K}^{-1}$ and calorimeter water equivalent $0.020\,\text{kg}$,

$$L=3.31\times10^5\,\text{J kg}^{-1}.$$

## Result

$$\boxed{L=3.31\times10^5\,\text{J kg}^{-1}}.$$

## Precautions

1. Use dry ice pieces at $0^\circ\text{C}$.
2. Remove surface water before weighing the ice.
3. Transfer ice quickly and cover the calorimeter.
4. Apply the radiation correction from the cooling curve.

## Viva Questions

1. **Why must the ice be at zero degree?** Otherwise part of the heat would first warm the ice.
2. **What is latent heat?** It is heat absorbed or released during a phase change without temperature change.
3. **Why is surface water removed?** It would add an error to the mass of melted ice.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-v/latent-heat-ice/latent-heat-ice.mac' | relative_url }}).

</div>

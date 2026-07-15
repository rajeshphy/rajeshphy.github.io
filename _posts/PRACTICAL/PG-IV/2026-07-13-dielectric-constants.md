---
layout: post
title: "Dielectric Constant of Solids and Liquids by Capacitance Method"
date: 2026-07-13 20:15:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, dielectric, capacitance]
permalink: /practical/pg-iv/dielectric-constants/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the dielectric constant of a solid sheet and a liquid by measuring the change in capacitance.

## Apparatus
Parallel-plate capacitor, dielectric samples, LCR meter, liquid cell, micrometer, and connecting leads.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/solid-state/solid-state-arrangement.png' | relative_url }}" alt="Dielectric sample capacitance measurement arrangement"><figcaption>The sample is placed between capacitor plates and the capacitance is measured before and after insertion.</figcaption></figure>

## Theory
An electric field cannot produce steady conduction through an ideal dielectric, but it displaces bound positive and negative charges in opposite directions. The resulting dipole moment per unit volume is the polarisation $P$. The electric displacement is

$$D=\epsilon_0E+P=\epsilon_0\epsilon_rE,$$

where $\epsilon_r$ is the relative permittivity or dielectric constant. For parallel plates of area $A$ and separation $d$, the free charge is $Q=DA$ and the potential difference is $V=Ed$. Hence an empty cell has

$$C_0=\frac{Q}{V}=\frac{\epsilon_0A}{d}.$$

When the space between the same plates is completely filled by a uniform dielectric, polarisation allows more free charge to be stored for the same applied voltage, giving

$$C=\epsilon_rC_0.$$

Thus

$$\epsilon_r=\frac{C}{C_0}.$$

This capacitance-ratio method cancels the plate area and separation, provided the specimen fills the active gap and the geometry does not change. A solid sheet must be flat and have the same thickness as the calibrated gap; otherwise, the residual air layer forms a series capacitor and requires a correction. For a liquid, the cell is measured empty and then completely filled without air bubbles.

Electronic and ionic polarisation respond rapidly, whereas orientational and interfacial polarisation may not follow a high-frequency field. The measured $\epsilon_r$ must therefore be quoted with temperature and bridge frequency. Guarding, open-lead correction, and a clean dry cell reduce stray capacitance and leakage errors.

## Observations

| Sample | Empty capacitance $C_0$ (pF) | Filled capacitance $C$ (pF) | $\epsilon_r$ |
|---|---:|---:|---:|
| glass | 48 | 336 | 7.00 |
| mica | 48 | 244 | 5.08 |
| transformer oil | 48 | 98 | 2.04 |

## Calculation

For the glass sample,

$$\epsilon_r=\frac{C}{C_0}=\frac{336}{48}=7.00.$$

For mica,

$$\epsilon_r=\frac{244}{48}=5.08.$$

For transformer oil,

$$\epsilon_r=\frac{98}{48}=2.04.$$

The capacitance ratios are dimensionless because the two capacitances in each ratio have the same unit.

## Result
The dielectric constants are obtained from the capacitance ratios; the solid and liquid samples show the expected different polarisation strengths.

## Viva Questions
1. **What is dielectric polarisation?** Slight separation or alignment of bound charges in an electric field.
2. **Why must the sample fill the gap completely?** Air gaps would introduce another dielectric and change the effective capacitance.
3. **Why is an LCR meter convenient?** It measures capacitance at a specified AC frequency.

## Maxima Code

[Download the dielectric-constant calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).
</div>

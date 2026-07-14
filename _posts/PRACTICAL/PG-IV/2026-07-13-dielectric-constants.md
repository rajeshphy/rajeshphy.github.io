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
For a parallel-plate capacitor of plate area $A$ and separation $d$, the capacitance without dielectric is $C_0=\epsilon_0A/d$. When an electric field is applied, bound charges in an insulating material are displaced or oriented. This polarisation reduces the internal field for a given free charge, so more charge is stored at the same applied voltage. When the gap is completely filled with a dielectric of relative permittivity $\epsilon_r$,

$$C=\epsilon_rC_0.$$

Thus

$$\epsilon_r=\frac{C}{C_0}.$$

For a liquid cell, the empty-cell capacitance is measured first and the same relation is used after the liquid fills the active gap. The measurement frequency must be stated because polarisation mechanisms can respond differently at different frequencies.

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

## Maxima Code

[Download the dielectric-constant calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

## Result
The dielectric constants are obtained from the capacitance ratios; the solid and liquid samples show the expected different polarisation strengths.

## Viva Questions
1. **What is dielectric polarisation?** Slight separation or alignment of bound charges in an electric field.
2. **Why must the sample fill the gap completely?** Air gaps would introduce another dielectric and change the effective capacitance.
3. **Why is an LCR meter convenient?** It measures capacitance at a specified AC frequency.
</div>

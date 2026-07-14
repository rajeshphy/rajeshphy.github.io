---
layout: post
title: "Dielectric Constant of Solid and Liquid Samples by Capacitance Method"
date: 2026-07-13 18:20:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, dielectric, capacitance, permittivity]
permalink: /practical/pg-iii/dielectric-constant-capacitance/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the dielectric constant of solid and liquid samples by measuring the capacitance of a parallel-plate capacitor.

## Apparatus

Parallel-plate capacitor, LCR meter, solid dielectric sheets, liquid cell, micrometer, connecting leads, and insulating supports.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/dielectric-constant-capacitance/dielectric-cell.png' | relative_url }}" alt="Capacitance method for measuring dielectric constant of solid and liquid samples"><figcaption>The empty cell is measured first; the solid sheet or liquid sample is then placed between the capacitor electrodes and the capacitance is measured again.</figcaption></figure>

## Theory

Two conducting plates separated by distance $d$ store equal and opposite charges when a potential difference is applied. In air or vacuum, the capacitance is

$$C_0=\frac{\epsilon_0A}{d}.$$

When an insulating material is placed between the plates, its molecules polarise. The induced dipoles reduce the effective electric field for a given charge, so a larger charge is required to maintain the same voltage. The capacitance becomes

$$C=\frac{\epsilon_r\epsilon_0A}{d}=\epsilon_r C_0.$$

Therefore the relative permittivity or dielectric constant is

$$\epsilon_r=\frac{C}{C_0}.$$

For a liquid, the empty-cell capacitance is first measured and the cell is then filled without air bubbles. The same capacitance ratio is used after allowing the liquid to settle.

## Observations

Empty-cell capacitance: $C_0=48$ pF.

| Sample | Filled capacitance $C$ (pF) | Dielectric constant $\epsilon_r$ |
|---|---:|---:|
| Glass | 336 | 7.00 |
| Mica | 244 | 5.08 |
| Transformer oil | 98 | 2.04 |
| Distilled water | 216 | 4.50 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/dielectric-constant-capacitance/dielectric-constant.png' | relative_url }}" alt="Dielectric constants of solid and liquid samples"><figcaption>Comparison of the measured dielectric constants of the supplied samples.</figcaption></figure>

## Calculation

For glass,

$$\epsilon_r=\frac{C}{C_0}=\frac{336}{48}=7.00.$$

## Result

The dielectric constants are

$$\boxed{\epsilon_r(\text{glass})=7.00},\qquad \boxed{\epsilon_r(\text{mica})=5.08},\qquad \boxed{\epsilon_r(\text{oil})=2.04}.$$

## Viva Questions

1. **What is dielectric polarisation?** It is the displacement or alignment of bound charges inside an insulating material.
2. **Why must air bubbles be removed from the liquid cell?** They introduce a second dielectric and alter the effective capacitance.
3. **Why is an LCR meter used?** It measures capacitance at a controlled AC frequency.

</div>

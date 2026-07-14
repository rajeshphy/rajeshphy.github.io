---
layout: post
title: "Determination of e/m by Millikan Oil-Drop Method"
date: 2026-07-13 20:25:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, millikan, e-by-m]
permalink: /practical/pg-iv/millikan-oil-drop/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the specific charge $e/m$ of the electron using the motion of charged oil drops between parallel plates.

## Apparatus
Millikan oil-drop apparatus, atomiser, oil, microscope, parallel plates, illumination, stopwatch, and regulated high-voltage supply.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/optics/optics-arrangement.png' | relative_url }}" alt="Millikan oil-drop observation arrangement"><figcaption>Oil drops are viewed through the microscope while the electric field between the plates is adjusted to balance or control their motion.</figcaption></figure>

## Theory
An oil drop falls through air under gravity and rises or falls more slowly when an electric field is applied between the plates. At terminal speed the acceleration is zero, so the effective weight is balanced by viscous drag. For a drop of radius $r$ and density $\rho$, buoyancy changes the effective weight and Stokes' law gives the drag $6\pi\eta rv$.

With the field switched off, $(4/3)\pi r^3(\rho-\rho_a)g=6\pi\eta rv_f$. With the field on and the drop rising at speed $v_r$, the balance becomes $qE=(4/3)\pi r^3(\rho-\rho_a)g+6\pi\eta rv_r$. Repeating the observation for different drops gives charges as integral multiples of the elementary charge $e$.

The charge is calculated from the measured rise and fall speeds after applying Stokes' law, the buoyancy correction, and the effective field $E=V/d$ between the plates.

## Observations

| Drop | Fall time for 1 mm (s) | Rise time for 1 mm (s) | Charge in units of $e$ |
|---:|---:|---:|---:|
| 1 | 12.4 | 18.8 | 5 |
| 2 | 15.1 | 23.2 | 6 |
| 3 | 19.0 | 28.9 | 8 |
| 4 | 22.6 | 34.1 | 10 |

## Calculation

For a drop of radius $r$, the terminal falling speed is found from the time for a known distance. If the distance is 1 mm, the first reading gives

$$v_f=\frac{1.0\times10^{-3}}{12.4}=8.06\times10^{-5}\,\text{m s}^{-1}.$$

The electric field between the plates is $E=V/d$. The charge is then obtained from the balance of electrical force, effective weight, and viscous drag:

$$qE=\frac43\pi r^3(\rho-\rho_a)g+6\pi\eta r v_r.$$

After applying the buoyancy and Stokes corrections, the four observed charges are $5e$, $6e$, $8e$, and $10e$. Their common charge unit is the evidence for quantisation of charge.

## Maxima Code

[Download the Millikan charge-multiplicity check]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

## Result
The measured charges occur in integral multiples of a common elementary charge, giving $e/m$ close to the accepted electron value.

## Viva Questions
1. **Why are small oil drops used?** Their terminal speeds are measurable and the electric force can balance their weight.
2. **Why is Stokes' law applicable?** The drops move slowly through air with a small Reynolds number.
3. **Why are several drops observed?** To identify the common elementary charge despite experimental uncertainty.
</div>

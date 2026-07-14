---
layout: post
title: "Hall Effect: Carrier Type, Hall Coefficient, and Carrier Concentration"
date: 2026-07-13 17:25:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, semiconductor, hall-effect, carrier-concentration]
permalink: /practical/pg-iv/hall-effect-carrier-concentration/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/solid-state/solid-state-arrangement.png' | relative_url }}" alt="Hall-effect semiconductor measurement arrangement">
  <figcaption>Current flows along the semiconductor strip, the magnetic field is perpendicular to it, and the transverse Hall voltage is measured.</figcaption>
</figure>

## Aim

To determine the Hall coefficient and carrier concentration of a semiconductor sample.

## Apparatus

Semiconductor Hall sample, electromagnet, constant-current source, microvoltmeter, Gauss meter, and micrometer.

## Theory

The current in a semiconductor is carried by drifting electrons or holes. When the specimen is placed in a magnetic field perpendicular to the current, each moving carrier experiences the Lorentz force $q(\mathbf v\times\mathbf B)$. The carriers therefore accumulate on one side of the specimen until the transverse electric force balances the magnetic force:

$$qE_H=qv_dB.$$

This charge separation produces the Hall voltage $V_H$. Reversing the magnetic field or the current reverses the Hall voltage, which is why reversal readings are averaged in practice.

For a specimen of thickness $t$, current $I$, and magnetic field $B$,

$$R_H=\frac{V_Ht}{IB},\qquad n=\frac{1}{eR_H}.$$

The sign of $V_H$ identifies the dominant carrier type, while the magnitude of $R_H$ gives the carrier concentration. For a single carrier type, $n=1/(e|R_H|)$. The Hall angle is obtained from $\tan\theta_H=E_H/E_x$ when the longitudinal field is measured as well.

## Observations

Sample thickness $t=0.50\,\text{mm}$; current $I=5\,\text{mA}$.

| Magnetic field (T) | Hall voltage (mV) |
|---:|---:|
| 0.20 | 1.8 |
| 0.30 | 2.7 |
| 0.40 | 3.6 |
| 0.50 | 4.5 |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vi/hall-coefficient/hall-coefficient.png' | relative_url }}" alt="Hall voltage versus magnetic field graph">
  <figcaption>Hall voltage plotted against magnetic field for constant sample current.</figcaption>
</figure>

## Calculation

For $B=0.40\,\text{T}$ and $V_H=3.6\,\text{mV}$,

$$R_H=\frac{3.6\times10^{-3}\times0.50\times10^{-3}}{5\times10^{-3}\times0.40}=9.00\times10^{-4}\,\text{m}^3\text{C}^{-1}.$$

Thus

$$n=\frac{1}{eR_H}=\frac{1}{(1.602\times10^{-19})(9.00\times10^{-4})}=6.93\times10^{21}\,\text{m}^{-3}.$$

## Result

$$\boxed{R_H=9.00\times10^{-4}\,\text{m}^3\text{C}^{-1}},\qquad \boxed{n=6.93\times10^{21}\,\text{m}^{-3}}.$$

## Precautions

1. Reverse the magnetic field and average the Hall readings.
2. Keep the sample current constant.
3. Ensure that the magnetic field is perpendicular to the current.

## Viva Questions

1. **What is the Hall effect?** It is the production of a transverse voltage in a current-carrying sample placed in a magnetic field.
2. **What determines the sign of Hall voltage?** The sign of the dominant charge carriers.
3. **Why is a thin sample preferred?** It gives a measurable Hall voltage for a given current and field.

## Maxima Code

[Download the PG-IV Hall-effect calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

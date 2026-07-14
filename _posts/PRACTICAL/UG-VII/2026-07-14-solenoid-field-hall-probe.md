---
layout: post
title: "Magnetic Field of a Solenoid Using a Hall Probe"
date: 2026-07-13 20:05:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, electromagnetism, solenoid, hall-probe]
permalink: /practical/ug-vii/solenoid-field-hall-probe/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the magnetic field inside a solenoid and verify its proportionality to current.

## Apparatus

Solenoid, regulated current supply, Hall probe, Gauss meter, ammeter, and connecting wires.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/ug-vii/electromagnetism/electromagnetism-arrangement.png' | relative_url }}" alt="Labelled solenoid field arrangement"><figcaption>Current through the solenoid produces a field measured by the Hall probe.</figcaption></figure>

## Theory

For a long solenoid, the fields of its turns add inside the coil and largely cancel outside. If $n$ is the number of turns per unit length and $I$ is the current,

$$B=\mu_0nI.$$

Therefore a plot of $B$ against $I$ should be linear and its slope gives the field produced per ampere.

## Observations

| $I$ (A) | $B$ (mT) |
|---:|---:|
| 0.5 | 1.0 |
| 1.0 | 2.0 |
| 1.5 | 3.0 |
| 2.0 | 4.0 |
| 2.5 | 5.0 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-vii/electromagnetism-practicals/electromagnetism-field.png' | relative_url }}" alt="Solenoid magnetic field graph"><figcaption>Magnetic field plotted against solenoid current.</figcaption></figure>

## Result

The field-current slope is $2.0\,\text{mT A}^{-1}$, confirming $B\propto I$.

## Viva Questions

1. **Why is the field nearly uniform inside?** Contributions from many turns add symmetrically.
2. **Why use a Hall probe?** It measures magnetic field without disturbing the coil appreciably.
3. **What happens outside a long solenoid?** The field is comparatively weak.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/electromagnetism-practicals/electromagnetism-practicals.mac' | relative_url }}).

</div>


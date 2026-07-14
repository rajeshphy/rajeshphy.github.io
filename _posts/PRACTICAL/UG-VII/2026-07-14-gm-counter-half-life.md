---
layout: post
title: "Half-Life of a Radioactive Source Using a Geiger-Muller Counter"
date: 2026-07-13 20:10:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, nuclear-physics, radioactive-decay, gm-counter]
permalink: /practical/ug-vii/gm-counter-half-life/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To determine the decay constant and half-life of a radioactive source using a Geiger-Muller counter.

## Apparatus

Sealed radioactive source, GM tube, scaler, high-voltage supply, absorber, and stopwatch.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/ug-vii/nuclear/nuclear-arrangement.png' | relative_url }}" alt="Labelled Geiger-Muller radioactive decay arrangement"><figcaption>Source, absorber, and Geiger-Muller counter arrangement.</figcaption></figure>

## Theory

If each undecayed nucleus has the same probability $\lambda$ of decaying per unit time, then $dN/dt=-\lambda N$. Integration gives $N=N_0e^{-\lambda t}$. The half-life is $t_{1/2}=\ln2/\lambda$.

## Observations

| Time (s) | Corrected count rate (counts min$^{-1}$) |
|---:|---:|
| 0 | 4200 |
| 60 | 3630 |
| 120 | 3140 |
| 180 | 2720 |
| 240 | 2360 |
| 300 | 2100 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/ug-vii/gm-counter-half-life/nuclear-decay.png' | relative_url }}" alt="Radioactive decay curve"><figcaption>Corrected count rate plotted against time.</figcaption></figure>

## Result

The sample decay gives $t_{1/2}=300\,\text{s}$ and $\lambda=2.31\times10^{-3}\,\text{s}^{-1}$.

## Viva Questions

1. **Why subtract background count?** It is not due to the source.
2. **What is the GM plateau?** The high-voltage range in which count rate is nearly stable.
3. **Why is decay random?** The exact decay time of an individual nucleus cannot be predicted.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/gm-counter-half-life/gm-counter-half-life.mac' | relative_url }}).

</div>

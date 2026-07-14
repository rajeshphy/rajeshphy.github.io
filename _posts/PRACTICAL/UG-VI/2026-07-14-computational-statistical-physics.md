---
layout: post
title: "Computational Studies in Statistical Physics"
date: 2026-07-13 17:40:00 +0530
categories: [practical-ug-vi]
tags: [practical, ug-vi, computational-physics, statistical-physics, maxima]
permalink: /practical/ug-vi/computational-statistical-physics/
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

To use numerical methods for studying distribution functions, metallic specific heat, partition functions, spin systems, Bose gases, and Stirling's approximation.

## Apparatus and software

Computer, Maxima or Python, and a plotting program such as Gnuplot.

## Theory and tasks

1. Plot Maxwell-Boltzmann, Fermi-Dirac, and Bose-Einstein distributions for selected temperatures.
2. Estimate metallic specific heat from the electronic and lattice contributions.
3. Evaluate the partition function and obtain mean energy and heat capacity.
4. Simulate a small spin system and compare its magnetisation for different temperatures.
5. Study the energy and occupation of a Bose gas in a harmonic trap.
6. Compare $\ln(n!)$ with Stirling's approximation $n\ln n-n+\frac12\ln(2\pi n)$.

## Sample observations

| Computation | Sample result |
|---|---:|
| Fermi energy for the selected model | $5.53\,\text{eV}$ |
| Partition function at $kT=1$ | 4.086 |
| Mean energy of the model system | $1.72\,\text{units}$ |
| Relative Stirling error at $n=100$ | $0.083\%$ |

## Result

The numerical results reproduce the expected limits: classical behaviour at low occupation, Fermi exclusion for fermions, Bose enhancement for bosons, and decreasing relative error in Stirling's approximation as $n$ increases.

## Precautions

1. State the units and dimensionless variables before computation.
2. Check convergence when increasing the grid or number of states.
3. Compare numerical limits with an analytic special case.
4. Label every graph with parameters and units.

## Viva Questions

1. **Why are distribution functions plotted?** They show how occupation probability depends on energy and temperature.
2. **What is a partition function?** It is the sum of Boltzmann factors over allowed states.
3. **Why is Stirling's formula useful?** It simplifies factorials for large particle numbers.
4. **What is a spin-system simulation?** It is a numerical model of interacting magnetic moments and their thermal behaviour.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vi/computational-statistical-physics/computational-statistical-physics.mac' | relative_url }}).

</div>

---
layout: post
title: "UG-VII Nuclear and Radiation Practicals"
date: 2026-07-13 18:10:00 +0530
categories: [practical-ug-vii]
tags: [practical, ug-vii, nuclear-physics, radiation, cloud-chamber]
permalink: /practical/ug-vii/nuclear-radiation-practicals/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Scope of the practical

This record covers radioactive decay and half-life, the inverse-square law for gamma radiation, cloud-chamber particle tracks, and binding energy per nucleon from mass data.

## Standard experiment titles used in this record

The syllabus entries are taken in their common practical form: radioactive decay and decay constant using a Geiger-Muller counter; half-life from a decay curve; inverse-square law for gamma radiation; observation of charged-particle tracks in a cloud chamber; and calculation of nuclear binding energy per nucleon from mass-defect data.

## Apparatus

Geiger counter, radioactive source, absorbers, scaler, cloud chamber, magnetic field, nuclear mass table, and computer plotting software.

## Theory

Radioactive activity follows $N=N_0e^{-\lambda t}$ and $t_{1/2}=\ln2/\lambda$. For a point source, corrected count rate varies as $1/r^2$. Nuclear binding energy is

$$B=\Delta mc^2.$$

## Sample observations

| Experiment | Sample data | Result |
|---|---|---:|
| Decay curve | $N_0=4200$, $N(300\,\text{s})=2100$ | $t_{1/2}=300\,\text{s}$ |
| Gamma inverse-square | $r=20,30,40\,\text{cm}$ | $Nr^2$ nearly constant |
| Cloud chamber | curved positive and negative tracks | opposite charge signs |
| Nuclear binding | mass defect $0.0302\,u$ | $B=28.1\,\text{MeV}$ |

## Graph

<figure class="practical-figure practical-figure-wide">
  <img src="{{ '/assets/images/practical/ug-vii/nuclear-radiation-practicals/nuclear-decay.png' | relative_url }}" alt="Radioactive decay graph">
  <figcaption>Corrected count rate plotted against time for radioactive decay.</figcaption>
</figure>

## Results

The semilog decay plot is linear, the corrected gamma count follows the inverse-square law, cloud-chamber curvature identifies charged particles, and mass defect gives nuclear binding energy.

## Precautions

Follow radiation-safety instructions, use background correction, keep geometry fixed, do not handle sources directly, and record the cloud-chamber field before observation.

## Viva Questions

1. **What is half-life?** The time required for half the radioactive nuclei to decay.
2. **Why is background counted?** Environmental radiation contributes to the observed count.
3. **Why do charged tracks curve in a magnetic field?** The Lorentz force acts perpendicular to their velocity.
4. **What is mass defect?** The difference between the mass of separated nucleons and the mass of the nucleus.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/ug-vii/nuclear-radiation-practicals/nuclear-radiation-practicals.mac' | relative_url }}).

</div>

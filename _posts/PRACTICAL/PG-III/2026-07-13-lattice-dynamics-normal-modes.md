---
layout: post
title: "Normal Modes and Dispersion in a Coupled-Oscillator Lattice Model"
date: 2026-07-13 18:40:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, solid-state, lattice-dynamics, normal-modes]
permalink: /practical/pg-iii/lattice-dynamics-normal-modes/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study the normal modes of a one-dimensional coupled-oscillator model and relate the measured frequencies to lattice vibrations in a crystal.

## Apparatus and software

Coupled-mass spring model or computer simulation, vibration driver, displacement sensor, frequency generator, and plotting software.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/lattice-dynamics-normal-modes/lattice-model.png' | relative_url }}" alt="Coupled oscillator model for lattice dynamics"><figcaption>Masses represent atoms and springs represent the restoring forces between neighbouring atoms. The driver excites one normal mode at a time.</figcaption></figure>

## Theory

In a crystal, atoms are arranged about equilibrium positions and interact through interatomic forces. If one atom is displaced, the change in force affects its neighbours. A chain of equal masses $m$ joined by springs of force constant $K$ is therefore a useful model of lattice vibrations.

For a displacement $u_n$ of the $n$th mass,

$$m\frac{d^2u_n}{dt^2}=K(u_{n+1}+u_{n-1}-2u_n).$$

Putting $u_n=u_0e^{i(nqa-\omega t)}$ gives the dispersion relation

$$\omega(q)=2\sqrt{\frac{K}{m}}\left|\sin\frac{qa}{2}\right|,$$

where $a$ is the equilibrium spacing and $q$ is the wave number. Each allowed pattern has one frequency and fixed relative amplitudes; it is a normal mode. The low-$q$ modes are acoustic-like, while higher modes have more nodes and shorter wavelengths.

## Observations

| Mode number | Relative frequency | Number of phase reversals | Nature of motion |
|---:|---:|---:|---|
| 1 | 1.00 | 0 | all masses nearly in phase |
| 2 | 1.93 | 1 | one node develops |
| 3 | 2.71 | 2 | two phase reversals |
| 4 | 3.25 | 3 | shortest wavelength mode |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/lattice-dynamics-normal-modes/normal-mode-frequencies.png' | relative_url }}" alt="Normal mode frequency versus mode number graph"><figcaption>The frequency increases with mode number as the wavelength becomes shorter.</figcaption></figure>

## Calculation

The measured frequency of mode 2 relative to mode 1 is

$$\frac{f_2}{f_1}=\frac{1.93}{1.00}=1.93.$$

The increasing frequency and increasing number of phase reversals confirm the normal-mode behaviour of the coupled system.

## Result

The coupled oscillator possesses discrete normal modes. Higher modes have more nodes and higher frequencies, as expected for a one-dimensional lattice model.

## Viva Questions

1. **What is a normal mode?** A collective oscillation in which all particles vibrate at one frequency with fixed amplitude ratios.
2. **What provides the restoring force?** The change in interatomic potential energy when neighbouring atoms are displaced.
3. **What is a phonon?** The quantum of energy associated with a normal mode of lattice vibration.

</div>

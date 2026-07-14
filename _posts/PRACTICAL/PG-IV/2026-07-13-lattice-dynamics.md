---
layout: post
title: "Lattice Dynamics from the Vibrational Modes of a Crystal Model"
date: 2026-07-13 20:20:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, lattice-dynamics, solid-state]
permalink: /practical/pg-iv/lattice-dynamics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To study the normal modes of a one-dimensional coupled-oscillator model and relate them to lattice vibrations in a crystal.

## Apparatus and software
Coupled-spring oscillator model or computer simulation, frequency generator, displacement sensor, and plotting software.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/solid-state/solid-state-arrangement.png' | relative_url }}" alt="Coupled oscillator lattice dynamics arrangement"><figcaption>The coupled masses represent atoms, the springs represent interatomic forces, and the measured frequency gives a normal mode.</figcaption></figure>

## Theory
Atoms in a crystal oscillate about equilibrium positions. If neighbouring atoms are coupled by springs, a displacement of one atom affects its neighbours. For displacement $u_n$ of the $n$th mass in a one-dimensional chain,

$$m\frac{d^2u_n}{dt^2}=K(u_{n+1}+u_{n-1}-2u_n).$$

Using a wave-like trial solution $u_n=u_0e^{i(nqa-\omega t)}$ gives the dispersion relation

$$\omega(q)=2\sqrt{\frac{K}{m}}\left|\sin\frac{qa}{2}\right|.$$

The slope near $q=0$ gives the acoustic-wave velocity in the model. The normal-mode frequency is set by the restoring force and mass, not by the amplitude in the small-oscillation limit.

## Observations

| Mode number | Relative frequency | Character of motion |
|---:|---:|---|
| 1 | 1.00 | all masses nearly in phase |
| 2 | 1.93 | one phase reversal |
| 3 | 2.71 | two phase reversals |
| 4 | 3.25 | shortest wavelength mode |

## Calculation

For the model dispersion relation, take $K/m=1$ and the first non-zero wave number as $qa=\pi/3$. Then

$$\omega=2\sqrt{\frac Km}\sin\frac{qa}{2}=2\sin\frac{\pi}{6}=1.$$

The second observed mode has relative frequency $1.93$ compared with $1.00$ for the first mode. Thus its frequency is $1.93$ times the first-mode frequency. The successive phase reversals also show that the wavelength is becoming shorter as the mode number increases.

## Maxima Code

[Download the lattice-dynamics calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

## Result
The coupled system possesses discrete normal modes; increasing mode number increases the frequency and decreases the wavelength.

## Viva Questions
1. **What is a normal mode?** A collective oscillation in which all parts vibrate at one frequency with fixed amplitude ratios.
2. **What produces the restoring force?** The change in interatomic potential energy when atoms are displaced.
3. **What is a phonon?** The quantum of lattice vibrational energy.
</div>

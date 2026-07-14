---
layout: post
title: "Hartley Oscillator and Determination of Oscillation Frequency"
date: 2026-07-13 20:30:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, hartley-oscillator, feedback]
permalink: /practical/pg-ii/hartley-oscillator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To construct a Hartley oscillator and study the dependence of its frequency on the inductance and capacitance of the tuned circuit.

## Apparatus

Transistor oscillator kit, two coupled inductors or tapped coil, capacitor, DC supply, CRO, frequency counter, and connecting leads.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Hartley oscillator tuned circuit"><figcaption>The transistor amplifier receives positive feedback from the tapped inductive coil and capacitor forming the LC tank circuit.</figcaption></figure>

## Theory

An oscillator converts DC power into a periodic AC signal. In the Hartley oscillator, two series inductances and a capacitor form the resonant tank circuit. Energy moves between the magnetic field of the inductors and the electric field of the capacitor. The tapped coil supplies the required feedback phase.

The approximate frequency is

$$f=\frac{1}{2\pi\sqrt{(L_1+L_2+2M)C}},$$

where $M$ is the mutual inductance between the coil sections.

## Observations

| $C$ (nF) | Observed frequency (kHz) |
|---:|---:|
| 1.0 | 158 |
| 2.2 | 107 |
| 4.7 | 73 |
| 10.0 | 50 |

## Result

The circuit produces a nearly sinusoidal oscillation. The frequency decreases as the tank capacitance increases, in agreement with the LC resonance relation.

## Viva Questions

1. **Why is a tapped coil used?** It supplies the correct amount and phase of feedback.
2. **What is the Barkhausen condition?** The loop gain must be unity and the total phase shift must be an integral multiple of $2\pi$.
3. **What determines the frequency?** The effective inductance and capacitance of the tank circuit.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

---
layout: post
title: "Mode Characteristics and Electronic Tuning of a Reflex Klystron"
date: 2026-06-13 21:15:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, klystron, microwave]
permalink: /practical/pg-iv/klystron-characteristics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To study the mode characteristics of a reflex klystron and measure output power as a function of repeller voltage.

## Apparatus
Reflex klystron microwave bench, isolator, frequency meter, attenuator, detector mount, VSWR meter, waveguide, and regulated supplies.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/optics/optics-arrangement.png' | relative_url }}" alt="Microwave reflex klystron bench arrangement"><figcaption>The klystron source feeds the waveguide bench; frequency, attenuation, and detected power are measured at the output.</figcaption></figure>

## Theory
A reflex klystron converts the DC kinetic energy of an electron beam into microwave energy in a resonant cavity. Electrons emitted by the cathode are accelerated through the cavity gap toward a strongly negative repeller. A small RF voltage already present across the gap accelerates electrons that cross during one half-cycle and retards those crossing during the other. This is **velocity modulation**; no bunching is complete at the gap itself.

In the repeller space, the electrons slow down, reverse direction, and return through the same cavity. Faster electrons travel farther before turning, while slower electrons turn earlier. With a suitable repeller voltage, these trajectories converge and form a compact electron bunch. If the bunch re-enters the gap while the RF field is retarding it, the electrons lose kinetic energy to the cavity and reinforce its oscillation. The approximate round-trip transit-time condition is

$$\tau=\left(n+\frac34\right)T_{RF},\qquad n=0,1,2,\ldots$$

Different integers correspond to different electronic modes. Making the repeller voltage more negative shortens the excursion and changes $\tau$, so each mode has a finite voltage range and a power maximum. This variation of frequency within a mode is called electronic tuning. In the bench experiment, an isolator protects the source from reflections, a frequency meter measures the microwave frequency, and a crystal detector converts output power to a measurable current. A plot of detector reading and frequency against repeller voltage reveals mode boundaries, peak-power points, and tuning range.

## Observations

| Repeller voltage (V) | Detector reading (mV) |
|---:|---:|
| -180 | 18 |
| -200 | 42 |
| -220 | 76 |
| -240 | 51 |
| -260 | 20 |

## Calculation

The largest detector reading is $76$ mV at a repeller voltage of $-220$ V. Thus the principal mode maximum in this set of observations is

$$V_R=-220\,\text{V},\qquad D_{\max}=76\,\text{mV}.$$

Relative to the maximum, the readings at $-180$ V and $-260$ V are only

$$\frac{18}{76}\times100=23.7\%,\qquad \frac{20}{76}\times100=26.3\%,$$

which confirms the peaked mode characteristic.

## Result
The klystron output shows distinct mode maxima as the repeller voltage is varied.

## Viva Questions
1. **What is velocity modulation?** Periodic variation of electron velocity by the RF cavity field.
2. **Why is the repeller negative?** It turns the electrons back through the cavity.
3. **What is a mode?** A range of repeller voltage for which stable oscillation occurs.

## Maxima Code

[Download the reflex-klystron calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).
</div>

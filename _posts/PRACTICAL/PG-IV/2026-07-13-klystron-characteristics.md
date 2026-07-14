---
layout: post
title: "Characteristics of a Reflex Klystron"
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
Microwave generation requires a mechanism that transfers DC electron energy to an electromagnetic field. A reflex klystron first accelerates electrons through a resonant cavity. The alternating cavity field gives some electrons extra velocity and retards others. This velocity modulation becomes density modulation as the electrons travel towards the negative repeller and return, so electrons reach the cavity in bunches.

When a returning bunch enters the cavity during the retarding phase of the RF field, it gives kinetic energy to the cavity and sustains oscillation. The repeller voltage controls the round-trip transit time and therefore the phase at which the bunch returns. Only certain phase conditions give strong output, producing the characteristic mode structure. The detected microwave power is plotted against repeller voltage to locate the modes and their maxima.

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

## Maxima Code

[Download the reflex-klystron calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).

## Result
The klystron output shows distinct mode maxima as the repeller voltage is varied.

## Viva Questions
1. **What is velocity modulation?** Periodic variation of electron velocity by the RF cavity field.
2. **Why is the repeller negative?** It turns the electrons back through the cavity.
3. **What is a mode?** A range of repeller voltage for which stable oscillation occurs.
</div>

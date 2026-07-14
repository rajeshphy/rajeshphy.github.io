---
layout: post
title: "Monostable Multivibrator: Waveform Study Using an Oscilloscope"
date: 2026-07-13 20:35:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, monostable, multivibrator]
permalink: /practical/pg-iv/monostable-multivibrator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To observe the input trigger and output pulse of a monostable multivibrator using a CRO and determine its pulse width.

## Apparatus
Monostable multivibrator trainer or 555 timer, DC supply, trigger generator, CRO, resistors, capacitors, and patch cords.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Monostable multivibrator CRO arrangement"><figcaption>A trigger pulse is applied to the monostable circuit and the output pulse width is measured on the CRO.</figcaption></figure>

## Theory
The timing capacitor voltage changes according to the charging law of an RC circuit. A monostable circuit uses a trigger to switch from its stable state to a temporary quasi-stable state. The capacitor then charges until a threshold comparator changes the internal state, after which the circuit returns automatically to the stable state. For a 555 monostable, the pulse width is approximately

$$T=1.1RC.$$

## Observations

| $R$ (kohm) | $C$ (microfarad) | Calculated $T$ (ms) | CRO pulse width (ms) |
|---:|---:|---:|---:|
| 10 | 0.10 | 1.10 | 1.12 |
| 10 | 0.22 | 2.42 | 2.45 |
| 10 | 0.47 | 5.17 | 5.20 |

## Result
The monostable produces one output pulse for each trigger, and its width agrees with the timing relation $T=1.1RC$.

## Viva Questions
1. **How many stable states does a monostable have?** One.
2. **What controls the pulse width?** The timing resistor and capacitor.
3. **Why is a CRO used?** To observe the trigger and output pulse in time.
</div>

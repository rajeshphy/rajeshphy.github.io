---
layout: post
title: "Waveform Generation and Study of a Storage Amplifier"
date: 2026-07-13 21:05:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, waveform-generator, storage-amplifier, oscilloscope]
permalink: /practical/pg-iv/waveform-storage-amplifier/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To generate standard waveforms and study their amplification and storage on an oscilloscope.

## Apparatus
Function generator, storage oscilloscope or CRO, amplifier module, DC supply, probe leads, and terminating resistors.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Waveform generator amplifier and oscilloscope setup"><figcaption>The generator feeds the amplifier; input and amplified output are connected to separate oscilloscope channels.</figcaption></figure>

## Theory
An electrical waveform is a time-dependent voltage. A function generator creates controlled test waveforms by shaping and timing an oscillator output. An amplifier transfers energy from its DC supply to the signal, increasing amplitude without changing frequency in its passband. A storage oscilloscope retains the trace so that a single or slowly repeating waveform can be examined. The voltage gain is $A_v=V_o/V_i$.

## Observations

| Input waveform | Frequency (kHz) | $V_i$ (V) | $V_o$ (V) | Gain |
|---|---:|---:|---:|---:|
| sine | 1.0 | 0.20 | 2.0 | 10 |
| square | 1.0 | 0.20 | 1.9 | 9.5 |
| triangular | 1.0 | 0.20 | 1.8 | 9.0 |

## Result
The generator produces the selected waveforms and the amplifier increases their amplitude. The storage oscilloscope retains the waveform for observation.

## Viva Questions
1. **What is storage in a CRO?** Retention of the trace after the input event has ended.
2. **What is gain?** Ratio of output voltage to input voltage.
3. **Why is termination important at high frequency?** It prevents reflections and amplitude errors.
</div>

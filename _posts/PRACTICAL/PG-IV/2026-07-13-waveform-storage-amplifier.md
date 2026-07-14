---
layout: post
title: "Waveform Generation and Study of a Storage Amplifier"
date: 2026-06-13 21:05:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, waveform-generator, storage-amplifier, oscilloscope]
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
An electrical waveform is a time-dependent voltage. A function generator creates controlled test waveforms by shaping and timing an oscillator output. A sine wave contains one frequency, while square and triangular waves contain harmonic components; the observed shape therefore depends on the amplifier bandwidth.

An amplifier transfers energy from its DC supply to the signal, increasing amplitude without changing frequency in its passband. The voltage gain is

$$A_v=\frac{V_o}{V_i}.$$

A storage oscilloscope retains the trace after a single or slowly repeating event, allowing the waveform amplitude, period, rise time, and distortion to be examined.

## Observations

| Input waveform | Frequency (kHz) | $V_i$ (V) | $V_o$ (V) | Gain |
|---|---:|---:|---:|---:|
| sine | 1.0 | 0.20 | 2.0 | 10 |
| square | 1.0 | 0.20 | 1.9 | 9.5 |
| triangular | 1.0 | 0.20 | 1.8 | 9.0 |

## Calculation

For the sine wave,

$$A_v=\frac{V_o}{V_i}=\frac{2.0}{0.20}=10.0.$$

For the square and triangular waves,

$$A_{v,\square}=\frac{1.9}{0.20}=9.5,\qquad A_{v,\triangle}=\frac{1.8}{0.20}=9.0.$$

The lower gain for the non-sinusoidal waves reflects the finite bandwidth of the amplifier and the attenuation of their higher harmonics.

## Maxima Code

[Download the waveform-amplifier calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).

## Result
The generator produces the selected waveforms and the amplifier increases their amplitude. The storage oscilloscope retains the waveform for observation.

## Viva Questions
1. **What is storage in a CRO?** Retention of the trace after the input event has ended.
2. **What is gain?** Ratio of output voltage to input voltage.
3. **Why is termination important at high frequency?** It prevents reflections and amplitude errors.
</div>

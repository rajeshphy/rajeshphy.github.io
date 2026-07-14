---
layout: post
title: "PG-IV Analogue-to-Digital and Digital-to-Analogue Converters"
date: 2026-07-13 19:15:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, adc, dac, digital-electronics]
permalink: /practical/pg-iv/converters/
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

To study the operation and performance of analogue-to-digital and digital-to-analogue converters.

## Apparatus

ADC/DAC trainer, regulated supply, function generator, CRO, digital multimeter, and patch cords.

## Theory

An ADC maps an analogue voltage to a binary code. For an $n$-bit converter with reference voltage $V_{ref}$, the ideal step size is

$$q=\frac{V_{ref}}{2^n}.$$

A DAC converts the code back into an analogue voltage, ideally in steps of the same size.

## Observations

For an 8-bit, $5\,\text{V}$ converter, $q=19.53\,\text{mV}$.

| Input voltage (V) | ADC code | DAC output (V) |
|---:|---:|---:|
| 0.50 | 00011010 | 0.508 |
| 1.00 | 00110011 | 0.996 |
| 2.50 | 10000000 | 2.510 |
| 4.00 | 11001101 | 4.000 |

## Result

The converter produces a monotonic digital code and the DAC output follows the input within approximately one least-significant-bit error.

## Precautions

Use a stable reference voltage, connect the ground correctly, allow settling time, and do not change code lines while the output is being measured.

## Viva Questions

1. **What is resolution?** The smallest input change represented by one digital count.
2. **What is quantisation error?** The difference between the actual analogue value and its nearest digital level.
3. **What is monotonicity?** The output does not decrease when the input code increases.

## Maxima Code

[Download the Maxima calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-converters.mac' | relative_url }}).

</div>

---
layout: post
title: "Study of Analogue-to-Digital and Digital-to-Analogue Converters"
date: 2026-07-13 20:45:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, adc, dac, digital-electronics]
permalink: /practical/pg-ii/ad-da-converters/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study an analogue-to-digital converter and a digital-to-analogue converter and determine the step size and conversion error.

## Apparatus

ADC/DAC trainer, regulated supply, function generator, CRO, digital multimeter, and patch cords.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/converter/converter-arrangement.png' | relative_url }}" alt="ADC and DAC converter trainer connection"><figcaption>The analogue input is converted to a binary code and then reconstructed by the DAC for comparison on the meter or CRO.</figcaption></figure>

## Theory

An ADC assigns a binary number to each allowed range of input voltage. For an $n$-bit converter with reference voltage $V_{ref}$, the ideal step size is

$$q=\frac{V_{ref}}{2^n}.$$

A DAC converts the binary code back into an analogue voltage. Quantisation means that the reconstructed output can differ from the input by approximately half to one least-significant-bit, depending on the conversion convention.

## Observations

For an 8-bit, $5$ V converter, $q=19.53$ mV.

| Input voltage (V) | ADC code | DAC output (V) | Error (mV) |
|---:|---:|---:|---:|
| 0.50 | 00011010 | 0.508 | 8 |
| 1.00 | 00110011 | 0.996 | 4 |
| 2.50 | 10000000 | 2.510 | 10 |
| 4.00 | 11001101 | 4.000 | 0 |

## Result

The ADC gives a monotonic binary code and the DAC reconstructs the input voltage with an error of about one least-significant bit or less.

## Viva Questions

1. **What is resolution?** The analogue voltage represented by one digital count.
2. **What is quantisation error?** The difference between the input voltage and the nearest available digital level.
3. **What is monotonicity?** The output does not decrease when the input code increases.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

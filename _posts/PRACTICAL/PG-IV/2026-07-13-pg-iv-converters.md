---
layout: post
title: "PG-IV Analogue-to-Digital and Digital-to-Analogue Converters"
date: 2026-06-13 19:15:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, adc, dac, digital-electronics]
permalink: /practical/pg-iv/converters/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/converter/converter-arrangement.png' | relative_url }}" alt="ADC and DAC laboratory connection">
  <figcaption>The analogue signal is sampled and converted to a binary code; the code then drives the DAC and reconstruction filter for output measurement.</figcaption>
</figure>

## Aim

To study the operation and performance of analogue-to-digital and digital-to-analogue converters.

## Apparatus

ADC/DAC trainer, regulated supply, function generator, CRO, digital multimeter, and patch cords.

## Theory

An analogue signal can have a continuous range of values, whereas a digital system represents it by a finite number of binary codes. An ADC samples the input voltage, assigns the nearest allowed code, and introduces a quantisation step. An $n$-bit converter has $2^n$ levels, so for reference voltage $V_{ref}$ the ideal step size or one least significant bit is

$$q=\frac{V_{ref}}{2^n}.$$

The conversion error is at most about half a step for an ideal mid-tread quantiser. The digital code increases when the input crosses successive thresholds.

A DAC performs the reverse operation. It gives each binary bit a weighted contribution, adds those contributions, and produces a staircase voltage. For a binary code $D$, an ideal unipolar DAC gives approximately $V_o=V_{ref}D/(2^n-1)$. Ideally, the ADC and DAC use the same step size, although offset, gain, settling-time, and quantisation errors cause small differences in practice.

## Observations

For an 8-bit, $5\,\text{V}$ converter, $q=19.53\,\text{mV}$.

| Input voltage (V) | ADC code | DAC output (V) |
|---:|---:|---:|
| 0.50 | 00011010 | 0.508 |
| 1.00 | 00110011 | 0.996 |
| 2.50 | 10000000 | 2.510 |
| 4.00 | 11001101 | 4.000 |

## Calculation

For an 8-bit converter with $V_{ref}=5$ V, the ideal step size is

$$q=\frac{V_{ref}}{2^8}=\frac{5}{256}=0.01953\,\text{V}=19.53\,\text{mV}.$$

For an input of $0.50$ V, the ideal ADC count is

$$D=\frac{0.50}{0.01953}=25.6\approx26.$$

The decimal number 26 is $00011010_2$, which is the observed code. The corresponding ideal DAC output is

$$V_o=\frac{D V_{ref}}{2^8-1}=\frac{26(5)}{255}=0.510\,\text{V},$$

close to the observed $0.508$ V. The difference is less than one converter count.

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

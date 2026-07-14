---
layout: post
title: "Determination of Modulation Index of an AM Wave Using CRO"
date: 2026-07-13 18:25:00 +0530
categories: [practical-pg-iii]
tags: [practical, pg-iii, communication, amplitude-modulation, modulation-index]
permalink: /practical/pg-iii/am-modulation-index/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To generate an amplitude-modulated wave and determine its modulation index from the envelope observed on a CRO.

## Apparatus

AM trainer or function generators, carrier oscillator, audio-frequency oscillator, modulator circuit, CRO, frequency counter, and connecting leads.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iii/am-modulation-index/am-modulator.png' | relative_url }}" alt="Amplitude modulation and CRO measurement setup"><figcaption>The message and carrier signals are applied to the AM modulator; the modulated envelope is observed on the CRO.</figcaption></figure>

## Theory

An information or message signal is usually a low-frequency signal, while an antenna radiates efficiently at a much higher carrier frequency. In amplitude modulation the carrier amplitude is varied in proportion to the instantaneous message voltage, while the carrier frequency remains constant.

For a sinusoidal message,

$$s(t)=A_c[1+m\cos(\omega_m t)]\cos(\omega_c t),$$

where $m$ is the modulation index. The envelope has maximum and minimum amplitudes

$$V_{max}=A_c(1+m),\qquad V_{min}=A_c(1-m).$$

Hence the modulation index obtained from the CRO envelope is

$$m=\frac{V_{max}-V_{min}}{V_{max}+V_{min}}.$$

For $m\leq1$ the envelope does not cross zero. If $m>1$, overmodulation causes envelope distortion.

## Observations

Carrier frequency: $100$ kHz; message frequency: $1$ kHz.

| Message amplitude (V) | $V_{max}$ (V) | $V_{min}$ (V) | Modulation index $m$ |
|---:|---:|---:|---:|
| 0.50 | 3.00 | 2.00 | 0.20 |
| 1.00 | 4.00 | 1.00 | 0.60 |
| 1.50 | 5.00 | 0.00 | 1.00 |

## Graph

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-iii/am-modulation-index/am-wave.png' | relative_url }}" alt="Amplitude-modulated waveform with labelled envelope"><figcaption>The upper and lower envelope amplitudes are used to determine the modulation index.</figcaption></figure>

## Calculation

For the middle reading,

$$m=\frac{4.00-1.00}{4.00+1.00}=0.60.$$

Thus the percentage modulation is $60\%$.

## Result

The modulation index of the AM wave for the selected message amplitude is

$$\boxed{m=0.60\ \text{or}\ 60\%}.$$

## Viva Questions

1. **What is modulation?** It is the controlled variation of a carrier by an information signal.
2. **What does $m=1$ mean?** The carrier is 100 percent modulated and the envelope just reaches zero.
3. **What happens for $m>1$?** The envelope is overmodulated and the recovered signal is distorted.

</div>

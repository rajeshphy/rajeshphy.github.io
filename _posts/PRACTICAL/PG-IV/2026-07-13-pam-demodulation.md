---
layout: post
title: "Pulse Amplitude Modulation and Demodulation"
date: 2026-07-13 20:45:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, pam, communication]
permalink: /practical/pg-iv/pam-demodulation/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To generate a pulse-amplitude-modulated signal and recover the message signal by demodulation.

## Apparatus
PAM trainer, message oscillator, pulse generator, sampling circuit, low-pass filter, CRO, and connecting leads.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Pulse amplitude modulation and demodulation arrangement"><figcaption>The message and sampling pulses enter the modulator; the receiver low-pass filter recovers the message waveform.</figcaption></figure>

## Theory
A communication system must represent a continuously varying message in a form that can be transmitted and recovered. In pulse-amplitude modulation, a periodic switch samples the message at equally spaced instants, so the amplitude of each pulse follows the instantaneous message voltage. If $m(t)$ is the message and $p(t)$ is a periodic sampling pulse train, the sampled signal is $s(t)=m(t)p(t)$.

The spectrum contains shifted replicas of the message spectrum around harmonics of the sampling frequency. A low-pass filter selects the original baseband replica and reproduces the message when the sampling frequency satisfies the Nyquist condition.

## Observations

| Message frequency (kHz) | Sampling frequency (kHz) | Demodulated waveform |
|---:|---:|---|
| 1 | 10 | faithful sine wave |
| 2 | 10 | faithful sine wave |
| 6 | 10 | distorted due to undersampling |

## Result
The pulse amplitudes follow the message signal, and the low-pass filter recovers the message when the sampling frequency is sufficiently high.

## Viva Questions
1. **What is sampled in PAM?** The amplitude of the message at discrete instants.
2. **What is aliasing?** Misrepresentation of the message caused by insufficient sampling frequency.
3. **Why is a low-pass filter used?** To remove the sampling-frequency components.
</div>

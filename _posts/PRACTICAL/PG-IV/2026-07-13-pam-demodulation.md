---
layout: post
title: "Pulse Amplitude Modulation and Demodulation"
date: 2026-06-13 20:45:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, pam, communication]
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
A continuous message $m(t)$ contains information at every instant, whereas a sampled system retains its value only at regularly spaced times $t=nT_s$. In pulse-amplitude modulation (PAM), a periodic switch controlled by a pulse train $p(t)$ connects the message to the output during each sampling interval. The result is

$$s(t)=m(t)p(t),\qquad f_s=\frac1{T_s}.$$

In natural PAM, the pulse top follows the message while the switch is closed. In flat-top PAM, a sample-and-hold circuit retains the sampled value throughout the pulse width. Thus pulse position and width remain fixed, while pulse amplitude carries the message.

Multiplication by the periodic pulse train produces spectral replicas of the message spectrum centred at $0,\pm f_s,\pm2f_s,\ldots$. If the message is band-limited to the highest frequency $f_m$, adjacent replicas remain separate only when the sampling theorem is satisfied:

$$f_s\geq2f_m.$$

The lower limit $2f_m$ is the Nyquist rate; practical systems choose a higher value to allow a realizable filter transition band. At the receiver, a low-pass reconstruction filter passes the baseband replica and rejects the sampling-frequency components. Its cut-off must be above $f_m$ but well below $f_s-f_m$. If $f_s<2f_m$, the replicas overlap. High-frequency components then appear falsely at lower frequencies, an irreversible error called aliasing. The observed PAM envelope and recovered sine wave should therefore be compared both above and below the Nyquist rate.

## Observations

| Message frequency (kHz) | Sampling frequency (kHz) | Demodulated waveform |
|---:|---:|---|
| 1 | 10 | faithful sine wave |
| 2 | 10 | faithful sine wave |
| 6 | 10 | distorted due to undersampling |

## Calculation

For a 2 kHz message, the Nyquist condition requires

$$f_s\ge2f_m=2(2\,\text{kHz})=4\,\text{kHz}.$$

The applied sampling frequency is 10 kHz, so the 2 kHz signal is sampled faithfully. For the 6 kHz message,

$$f_{s,\min}=2(6\,\text{kHz})=12\,\text{kHz}.$$

Since $10<12$ kHz, spectral overlap produces the observed aliasing distortion.

## Result
The pulse amplitudes follow the message signal, and the low-pass filter recovers the message when the sampling frequency is sufficiently high.

## Viva Questions
1. **What is sampled in PAM?** The amplitude of the message at discrete instants.
2. **What is aliasing?** Misrepresentation of the message caused by insufficient sampling frequency.
3. **Why is a low-pass filter used?** To remove the sampling-frequency components.

## Maxima Code

[Download the PAM sampling check]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).
</div>

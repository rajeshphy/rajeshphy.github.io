---
title: "Indian Mathematics, the Light-Speed Claim, and Vedic Acoustics"
summary: "Decimal notation, Śulba geometry, Kerala series, solar practice, and critical readings of light and sound claims."
date: 2025-05-27 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-knowledge-system, sulba-sutras, kerala-school, speed-of-light, vedic-acoustics]
permalink: /bsc/sem-iv/mj-5/indian-mathematics-light-and-acoustics/
hidden: true
---

## Decimal place value

In a positional decimal system,

$$N=\sum_{k=0}^{n}d_k10^k,\qquad d_k\in\{0,1,\ldots,9\}.$$

The same digit has a different value in a different position, and a zero placeholder preserves an empty position. Indian mathematical and astronomical traditions were central to the development and transmission of this notation. The history has stages: positional reasoning, a written placeholder and arithmetic with zero are related achievements, but they need not have appeared at one moment or in one text.

## Geometry of the Śulba Sūtras

The Śulba texts give cord-based rules for constructing ritual altars of prescribed shapes and areas. For a rectangle with sides $a,b$ and diagonal $c$, the diagonal rule is equivalent in modern notation to

$$c^2=a^2+b^2.$$

The Baudhāyana tradition also gives the approximation

$$
\sqrt2\approx 1+\frac13+\frac1{3\cdot4}-\frac1{3\cdot4\cdot34}
=\frac{577}{408}=1.414215686\ldots .
$$

Its accuracy is visible from the exact Pell relation

$$577^2-2(408)^2=1.$$

These are geometrical construction rules in a ritual setting. Their relation to the right-triangle theorem is real; the modern algebraic notation is ours.

## Kerala trigonometry and proto-calculus

Mādhava and later Kerala-school authors developed infinite series and correction terms for astronomical computation. In modern notation their results include

$$\arctan x=x-\frac{x^3}{3}+\frac{x^5}{5}-\frac{x^7}{7}+\cdots,$$

$$\sin x=x-\frac{x^3}{3!}+\frac{x^5}{5!}-\cdots,
\qquad
\cos x=1-\frac{x^2}{2!}+\frac{x^4}{4!}-\cdots.$$

At $x=1$, the first series gives $\pi/4$, although it converges slowly; Mādhava's correction terms greatly improved computation. Jyeṣṭhadeva's *Yuktibhāṣā* preserves reasoning for such results. "Proto-calculus" is appropriate because infinite processes, small increments and error control are present. It does not mean that the full later Newton-Leibniz symbolic calculus already existed unchanged.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-5/sulba-madhava.png' | relative_url }}" alt="Right-triangle diagonal geometry beside an equation-generated sine curve and truncated Madhava series">
  <figcaption>Two mathematical settings: cord geometry for altar construction and a five-term sine-series approximation in modern notation.</figcaption>
</figure>

The editable figure is [sulba-madhava.tex]({{ '/assets/tikz/bsc/sem-iv/mj-5/sulba-madhava.tex' | relative_url }}), and the [Maxima verification]({{ '/assets/maxima/bsc/sem-iv/mj-5/sulba-madhava-check.mac' | relative_url }}) returns zero for the Pythagorean, Pell and differentiated-series residuals.

## Solar worship and observational time

Sūrya is both a religious figure and the visible marker of day, season and direction. Ritual timing encouraged attention to sunrise, solstices, lunar phases and the calendar. Religious meaning and mathematical astronomy interacted historically, but they are not the same kind of claim: worship does not itself supply a measured orbit, and an astronomical algorithm does not prove a theology.

## The reported "speed of light"

A frequently repeated number is $2202$ yojanas in half a *nimeṣa*. It occurs in Sāyaṇa's fourteenth-century commentary associated with Ṛgveda 1.50.4, not in the verse of the Ṛgveda itself. If one **chooses** $1$ yojana $=9$ miles and $1$ nimeṣa $=16/75$ s, then

$$v=\frac{2202\times9\ \mathrm{mile}}{(8/75)\ \mathrm{s}}
=1.85794\times10^5\ \mathrm{mile\,s^{-1}}
=2.99006\times10^8\ \mathrm{m\,s^{-1}}.$$

That is close to the modern defined value $c=299\,792\,458\ \mathrm{m\,s^{-1}}$. The closeness is not evidence of a Vedic measurement: the length and time units vary across texts, the commentarial meaning is disputed, and no experimental time-of-flight method is given. It is historically precise to present this as a conditional conversion of a medieval commentarial statement, not as a measured constant in the Vedas.

## Vedic acoustics

Vedic *Śikṣā* and *Prātiśākhya* traditions analyse speech production, syllable duration and pitch accent, including the categories *udātta*, *anudātta* and *svarita*. Their purpose is accurate oral transmission. Modern acoustics describes a simple travelling pressure wave by

$$p(x,t)=p_0+\Delta p\cos(kx-\omega t),\qquad
f=\frac{\omega}{2\pi},\qquad v=f\lambda.$$

Pitch is primarily related to frequency, loudness to intensity and amplitude, and syllable length to duration. These modern variables help analyse recitation recordings, but the phonetic categories are not an ancient wave equation. The historical contribution is a sophisticated empirical discipline of sound and articulation.

---
title: "Indian Mathematics, the Light-Speed Claim, and Vedic Acoustics"
summary: "Decimal notation, Śulba geometry, Kerala series, solar practice, and critical readings of light and sound claims."
date: 2025-05-25 09:00:00 +0530
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

Place value also supplies an algorithm, not just a notation. For digits $d_nd_{n-1}\ldots d_0$, repeated multiplication and addition evaluate the number by Horner's rule,

$$N=(\cdots((d_n\times10+d_{n-1})\times10+d_{n-2})\times10+\cdots)+d_0.$$

For example, $50704=((((5\times10+0)\times10+7)\times10+0)\times10+4)$. A zero digit changes no partial sum, but its position changes the power of ten applied to all earlier digits.

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

The Pell relation gives the error without relying only on decimals:

$$
\left(\frac{577}{408}-\sqrt2\right)
\left(\frac{577}{408}+\sqrt2\right)=\frac{1}{408^2},
$$

so

$$
\frac{577}{408}-\sqrt2
=\frac{1}{408^2\left(577/408+\sqrt2\right)}
\approx2.124\times10^{-6}.
$$

These are geometrical construction rules in a ritual setting. Their relation to the right-triangle theorem is real; the modern algebraic notation is ours.

## Kerala trigonometry and proto-calculus

Mādhava and later Kerala-school authors developed infinite series and correction terms for astronomical computation. In modern notation their results include

$$\arctan x=x-\frac{x^3}{3}+\frac{x^5}{5}-\frac{x^7}{7}+\cdots,$$

$$\sin x=x-\frac{x^3}{3!}+\frac{x^5}{5!}-\cdots,
\qquad
\cos x=1-\frac{x^2}{2!}+\frac{x^4}{4!}-\cdots.$$

At $x=1$, the first series gives $\pi/4$, although it converges slowly; Mādhava's correction terms greatly improved computation. Jyeṣṭhadeva's *Yuktibhāṣā* preserves reasoning for such results. "Proto-calculus" is appropriate because infinite processes, small increments and error control are present. It does not mean that the full later Newton-Leibniz symbolic calculus already existed unchanged.

For $0<x\le1$, the arctangent series is alternating with decreasing term magnitudes. After truncation at $x^{2N+1}/(2N+1)$, the absolute error is therefore no larger than the first omitted term $x^{2N+3}/(2N+3)$. Choosing $x=1/\sqrt3$ and using $\pi=6\arctan(1/\sqrt3)$ converges much faster than substituting $x=1$.

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-5/sulba-madhava.png' | relative_url }}" alt="Right-triangle diagonal geometry beside an equation-generated sine curve and truncated Madhava series">
  <figcaption>Two mathematical settings: cord geometry for altar construction and a five-term sine-series approximation in modern notation.</figcaption>
</figure>
</div>

The editable figure is [sulba-madhava.tex]({{ '/assets/tikz/bsc/sem-iv/mj-5/sulba-madhava.tex' | relative_url }}), and the [Maxima verification]({{ '/assets/maxima/bsc/sem-iv/mj-5/sulba-madhava-check.mac' | relative_url }}) returns zero for the Pythagorean, Pell and differentiated-series residuals.

## Solar worship and observational time

Sūrya is both a religious figure and the visible marker of day, season and direction. Ritual timing encouraged attention to sunrise, solstices, lunar phases and the calendar. Religious meaning and mathematical astronomy interacted historically, but they are not the same kind of claim: worship does not itself supply a measured orbit, and an astronomical algorithm does not prove a theology.

## The reported "speed of light"

A frequently repeated number is $2202$ yojanas in half a *nimeṣa*. It occurs in Sāyaṇa's fourteenth-century commentary associated with Ṛgveda 1.50.4, not in the verse of the Ṛgveda itself. If one **chooses** $1$ yojana $=9$ miles and $1$ nimeṣa $=16/75$ s, then

$$v=\frac{2202\times9\ \mathrm{mile}}{(8/75)\ \mathrm{s}}
=1.85794\times10^5\ \mathrm{mile\,s^{-1}}
=2.99006\times10^8\ \mathrm{m\,s^{-1}}.$$

That is close to the modern defined value $c=299\,792\,458\ \mathrm{m\,s^{-1}}$. The closeness is not evidence of a Vedic measurement: the length and time units vary across texts, the commentarial meaning is disputed, and no experimental time-of-flight method is given. It is historically precise to present this as a conditional conversion of a medieval commentarial statement, not as a measured constant in the Vedas.

With the selected units, the converted value differs from $c$ by about $-0.262\%$. Changing only the assumed yojana from $9$ miles to $8$ miles changes the result to $2.65783\times10^8\ \mathrm{m\,s^{-1}}$. This sensitivity is exactly why a numerical resemblance without a fixed metrology and a measurement procedure is not a determination of a physical constant.

## Vedic acoustics

Vedic *Śikṣā* and *Prātiśākhya* traditions analyse speech production, syllable duration and pitch accent, including the categories *udātta*, *anudātta* and *svarita*. Their purpose is accurate oral transmission. Modern acoustics describes a simple travelling pressure wave by

$$p(x,t)=p_0+\Delta p\cos(kx-\omega t),\qquad
f=\frac{\omega}{2\pi},\qquad v=f\lambda.$$

Pitch is primarily related to frequency, loudness to intensity and amplitude, and syllable length to duration. These modern variables help analyse recitation recordings, but the phonetic categories are not an ancient wave equation. The historical contribution is a sophisticated empirical discipline of sound and articulation.

For a sinusoidal sound in one medium, $\lambda=v/f$, while the time-average intensity is proportional to the square of the pressure amplitude, $I\propto(\Delta p)^2$. Consequently, doubling pressure amplitude quadruples intensity. These relations provide measurable acoustic descriptors; they do not translate *udātta*, *anudātta* and *svarita* one-to-one into three fixed frequencies.

## Solved Problems

### 1. Decode a place-value numeral

For $50704$,

$$
50704=5\times10^4+0\times10^3+7\times10^2+0\times10+4.
$$

The two zeroes are operationally important placeholders: removing either would change the positions, giving $5704$ or $5074$ rather than the original number.

### 2. Quantify the Śulba square-root error

For a square of side $10\ \mathrm{m}$, the Baudhāyana approximation gives

$$d_{\rm app}=10\left(\frac{577}{408}\right)=14.1421569\ \mathrm{m}.$$

The exact modern value is $d=10\sqrt2=14.1421356\ \mathrm{m}$, so the approximation is high by only

$$d_{\rm app}-d=2.124\times10^{-5}\ \mathrm{m}.$$

The tiny error follows from the exact Pell residual $577^2-2(408)^2=1$.

### 3. Use a faster Mādhava-type arctangent evaluation

Use five terms with $x=1/\sqrt3$:

$$
\pi\approx6\left(x-\frac{x^3}{3}+\frac{x^5}{5}
-\frac{x^7}{7}+\frac{x^9}{9}\right)
=3.14260475.
$$

The absolute error is $1.01\times10^{-3}$. The alternating-series bound is $6x^{11}/11\approx1.30\times10^{-3}$, so the computed error lies within the predicted first-omitted-term bound.

## Descriptive Questions

1. Explain why the development of place value, a written zero placeholder and arithmetic rules for zero should not be treated as one undated invention.
2. Derive the error formula for $577/408$ from its Pell relation and explain what it reveals about the approximation.
3. In what sense do Kerala infinite series justify the label "proto-calculus," and where does that comparison stop?
4. Critically assess the reported light-speed claim and distinguish Vedic phonetic analysis from a modern acoustic wave model.

## Numerical Problems

1. For the Gregory–Mādhava series $\pi=4\sum_{n=0}^{\infty}(-1)^n/(2n+1)$, the error after retaining terms through $n=N$ is at most $4/(2N+3)$. Find the least number of retained terms that makes this bound smaller than $0.01$.

   **Final answer:** $200$ terms ($N=199$), giving the bound $4/401\approx0.00998$.
2. Using the exact SI value $c=299792458\ \mathrm{m\,s^{-1}}$ and $1\ \mathrm{AU}=149597870700\ \mathrm{m}$, find the light-travel time for $1\ \mathrm{AU}$.

   **Final answer:** $499.0\ \mathrm{s}=8.317\ \mathrm{min}$.
3. A recorded tone has $f=512\ \mathrm{Hz}$ in air where $v=340\ \mathrm{m\,s^{-1}}$. Find its wavelength. If its pressure amplitude doubles, find the intensity ratio.

   **Final answer:** $0.6641\ \mathrm{m}$ and $I_2/I_1=4$.

All displayed approximations, conversions and residuals are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/sulba-madhava-check.mac' | relative_url }}).

## References

1. [Indian mathematics — Wikipedia](https://en.wikipedia.org/wiki/Indian_mathematics)
2. [Indian Mathematics — MacTutor History of Mathematics](https://mathshistory.st-andrews.ac.uk/HistTopics/Indian_mathematics/)
3. ["Mathematics in India" — SATHEE, IIT Kanpur](https://sathee.iitk.ac.in/sathee-clat/student-corner/ncert-books/class-11/knowledge-traditions-and-practices-of-india/chapter-06-mathematics-in-india/)
4. [The International System of Units — BIPM](https://www.bipm.org/en/measurement-units)
5. ["The Role of Pitch Accent in Vedic Sanskrit Poetics" — *Phonological Data and Analysis*](https://www.cambridge.org/core/journals/phonological-data-and-analysis/article/role-of-pitch-accent-in-vedic-sanskrit-poetics/A0AFFD6F77CE35F9E76A31A2131AE028)

---
title: "Siddhāntic Astronomy and Planetary Models"
summary: "Sūrya Siddhānta, jyotiṣa computation, and the planetary models of Āryabhaṭa and Nīlakaṇṭha."
date: 2025-05-24 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-knowledge-system, surya-siddhanta, jyotisha, aryabhata, nilakantha]
permalink: /bsc/sem-iv/mj-5/siddhantic-astronomy-and-planetary-models/
hidden: true
---

Indian *jyotiṣa* includes several historically distinct activities. Early calendrical reckoning fixed seasons and ritual times from the Sun and Moon. The later *siddhānta* tradition developed numerical astronomy: tables and algorithms for longitudes, eclipses, conjunctions and rising phenomena. "Siddhāntic jyotiṣa" is therefore a tradition or genre, not the title of one timeless book.

## Mean and corrected motion

If a body completed uniform revolutions with period $T$, its mean longitude would be

$$\bar\lambda(t)=\lambda_0+\frac{2\pi}{T}t\pmod{2\pi}.$$

Observed planetary motion is nonuniform and includes retrograde loops. Siddhāntic algorithms begin with mean motions and apply geometrical corrections, commonly represented through eccentric or epicyclic constructions. Their output is a predicted direction on the sky. This is mathematical modelling, even though the physical dynamics is not Newtonian.

### Geometry of a correction

A simple modern reconstruction of epicyclic geometry writes a planar position as

$$
z=Re^{iM}+re^{i\phi}
=Re^{iM}\left[1+\varepsilon e^{i(\phi-M)}\right],
\qquad \varepsilon=\frac rR.
$$

The observed longitude is $\lambda=\arg z$. When $\varepsilon\ll1$,

$$
\lambda\approx M+\varepsilon\sin(\phi-M).
$$

Thus a geometrical offset becomes a signed angular correction, largest near a quarter-cycle phase difference and zero when the two radius vectors are aligned. This equation illustrates the mathematics of correction; it is not a replacement for the historically specific *manda* and *śīghra* algorithms or their tables.

## Sūrya Siddhānta

The received *Sūrya Siddhānta* is a layered astronomical text. It gives rules for mean and true planetary positions, time-reckoning, eclipses, celestial coordinates and trigonometric tables. Its planetary algorithms are expressed in a geocentric computational frame and use *manda* and *śīghra* corrections to reproduce varying speed and retrograde motion.

The text should not be assigned one simple "Vedic" date: the surviving form reflects revision and transmission across centuries. Its importance lies in a durable computational system, not in being a modern heliocentric theory.

## Āryabhaṭa

The *Āryabhaṭīya* of 499 CE uses a rotating Earth to explain the daily apparent motion of the stars. Āryabhaṭa's boat analogy captures relative motion: a person in a moving boat sees stationary objects appear to move backward. His planetary calculations nevertheless remain within an Earth-centred computational astronomy with epicyclic corrections. Calling the whole system Copernican heliocentrism is inaccurate.

## Nīlakaṇṭha Somayāji

In the *Tantrasaṅgraha* (1501), Nīlakaṇṭha reorganized the planetary model so that the five visible planets move in solar-centred loops while the Sun's motion is referred to Earth. In modern vector language, the geocentric position can be written schematically as

$$\mathbf r_{P/E}=\mathbf r_{S/E}+\mathbf r_{P/S}.$$

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-5/planetary-models.png' | relative_url }}" alt="Schematic vector decomposition of a planet position into Earth-to-Sun and Sun-to-planet components">
  <figcaption>A coordinate decomposition illustrating the structure of a Nīlakaṇṭha-type solar-centred planetary loop. The radii and phases are schematic, not observational data.</figcaption>
</figure>
</div>

The editable construction is [planetary-models.tex]({{ '/assets/tikz/bsc/sem-iv/mj-5/planetary-models.tex' | relative_url }}).

Nīlakaṇṭha's scheme is often called quasi-heliocentric. It is not a Newtonian solar system: Earth remains the reference centre, and no inverse-square dynamics determines the curves. Its achievement is a mathematically effective reorganization of planetary longitudes.

A longitude becomes retrograde whenever $d\lambda/dt<0$. For example, the toy correction model

$$\lambda(t)=nt+A\sin(\omega t)$$

has $d\lambda/dt=n+A\omega\cos(\omega t)$. A reversal is possible only if $A\omega>n$. This criterion clarifies how a correction can temporarily overcome the mean eastward drift without implying that the planet physically stops in space.

## Solved Problems

### 1. Find a mean longitude

Let $\lambda_0=40^\circ$, $T=225\ \mathrm{d}$ and $t=50\ \mathrm{d}$. Then

$$
\bar\lambda=40^\circ+360^\circ\frac{50}{225}
=120^\circ.
$$

The modulus is unnecessary here because the result already lies between $0^\circ$ and $360^\circ$.

### 2. Apply a small epicyclic correction

Take $r/R=0.08$ and $\phi-M=60^\circ$. The first-order correction is

$$
\delta\lambda\approx0.08\sin60^\circ
=0.06928\ \mathrm{rad}=3.97^\circ.
$$

Applied to the preceding mean longitude, it gives $\lambda\approx123.97^\circ$. The exact value from $\arg[1+0.08e^{i60^\circ}]$ is about $3.81^\circ$; the difference indicates the size of the first-order approximation.

### 3. Use the Earth–Sun–planet vector decomposition

Suppose $\mathbf r_{S/E}=(1,0)\ \mathrm{AU}$ and a planet is $0.5\ \mathrm{AU}$ from the Sun at $120^\circ$ from the positive $x$-axis. Then

$$
\mathbf r_{P/S}=0.5(\cos120^\circ,\sin120^\circ)
=(-0.25,0.433)\ \mathrm{AU},
$$

$$
\mathbf r_{P/E}=(0.75,0.433)\ \mathrm{AU}.
$$

Hence $\lvert\mathbf r_{P/E}\rvert=0.866\ \mathrm{AU}$ and its geocentric direction is $\tan^{-1}(0.433/0.75)=30.0^\circ$. Vector addition changes the reference origin; it does not by itself supply a force law.

## Descriptive Questions

1. Distinguish mean longitude, true longitude and a geometrical correction in siddhāntic computation.
2. Explain why Āryabhaṭa's rotating Earth does not make his complete planetary system Copernican.
3. Describe the roles of *manda* and *śīghra* corrections without identifying them with Newtonian forces.
4. In what precise sense is Nīlakaṇṭha's model called quasi-heliocentric, and what are the limits of that label?

## Numerical Problems

1. Use $S=\lvert1/T_V-1/T_E\rvert^{-1}$ to find the Earth–Venus synodic period for $T_V=224.7\ \mathrm{d}$ and $T_E=365.25\ \mathrm{d}$.

   **Final answer:** $583.9\ \mathrm{d}$.
2. In $\lambda(t)=nt+A\sin(\omega t)$, let $n=0.50^\circ\mathrm{d^{-1}}$, $A=2.0^\circ$ and $\omega=0.40\ \mathrm{rad\,d^{-1}}$. Decide whether retrograde motion is possible and find the minimum $d\lambda/dt$.

   **Final answer:** yes; the minimum is $-0.30^\circ\mathrm{d^{-1}}$.
3. Estimate the Moon's equatorial horizontal parallax from the small-angle relation $p\approx R_E/D$, using $R_E=6371\ \mathrm{km}$ and $D=384400\ \mathrm{km}$. Give radians and degrees.

   **Final answer:** $p=0.01657\ \mathrm{rad}=0.9496^\circ$.

The angular corrections, vector decomposition and period calculations are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/siddhantic-planetary-models-check.mac' | relative_url }}).

## References

1. [Indian astronomy — Wikipedia](https://en.wikipedia.org/wiki/Indian_astronomy)
2. ["Essentials of Indian Astronomy: Concepts and Literature" — *Bhāvanā*](https://bhavana.org.in/essentials-of-indian-astronomy-concepts-and-literature/)
3. ["Model of Planetary Motion in the Works of Kerala Astronomers" — Indian Institute of Astrophysics Repository](https://prints.iiap.res.in/jspui/handle/2248/2526)
4. [Āryabhaṭa — MacTutor History of Mathematics](https://mathshistory.st-andrews.ac.uk/Biographies/Aryabhata_I/)
5. [Nīlakaṇṭha Somayājī — MacTutor History of Mathematics](https://mathshistory.st-andrews.ac.uk/Biographies/Nilakantha/)

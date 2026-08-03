---
title: "Siddhāntic Astronomy and Planetary Models"
summary: "Sūrya Siddhānta, jyotiṣa computation, and the planetary models of Āryabhaṭa and Nīlakaṇṭha."
date: 2025-05-28 09:00:00 +0530
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

## Sūrya Siddhānta

The received *Sūrya Siddhānta* is a layered astronomical text. It gives rules for mean and true planetary positions, time-reckoning, eclipses, celestial coordinates and trigonometric tables. Its planetary algorithms are expressed in a geocentric computational frame and use *manda* and *śīghra* corrections to reproduce varying speed and retrograde motion.

The text should not be assigned one simple "Vedic" date: the surviving form reflects revision and transmission across centuries. Its importance lies in a durable computational system, not in being a modern heliocentric theory.

## Āryabhaṭa

The *Āryabhaṭīya* of 499 CE uses a rotating Earth to explain the daily apparent motion of the stars. Āryabhaṭa's boat analogy captures relative motion: a person in a moving boat sees stationary objects appear to move backward. His planetary calculations nevertheless remain within an Earth-centred computational astronomy with epicyclic corrections. Calling the whole system Copernican heliocentrism is inaccurate.

## Nīlakaṇṭha Somayāji

In the *Tantrasaṅgraha* (1501), Nīlakaṇṭha reorganized the planetary model so that the five visible planets move in solar-centred loops while the Sun's motion is referred to Earth. In modern vector language, the geocentric position can be written schematically as

$$\mathbf r_{P/E}=\mathbf r_{S/E}+\mathbf r_{P/S}.$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-5/planetary-models.png' | relative_url }}" alt="Schematic vector decomposition of a planet position into Earth-to-Sun and Sun-to-planet components">
  <figcaption>A coordinate decomposition illustrating the structure of a Nīlakaṇṭha-type solar-centred planetary loop. The radii and phases are schematic, not observational data.</figcaption>
</figure>

The editable construction is [planetary-models.tex]({{ '/assets/tikz/bsc/sem-iv/mj-5/planetary-models.tex' | relative_url }}).

Nīlakaṇṭha's scheme is often called quasi-heliocentric. It is not a Newtonian solar system: Earth remains the reference centre, and no inverse-square dynamics determines the curves. Its achievement is a mathematically effective reorganization of planetary longitudes.

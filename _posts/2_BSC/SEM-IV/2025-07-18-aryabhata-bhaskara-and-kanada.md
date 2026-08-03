---
title: "Āryabhaṭa, Bhāskarācārya, and Kaṇāda"
summary: "Historically bounded contributions to astronomy, mathematics, motion, gravity, and atomism."
date: 2025-07-18 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-scientists, aryabhata, bhaskara, kanada]
permalink: /bsc/sem-iv/mj-5/aryabhata-bhaskara-kanada/
hidden: true
---

Āryabhaṭa and Bhāskara II were mathematical astronomers; Kaṇāda is the traditional author associated with a philosophical school. Calling all three "physicists" can be convenient in a syllabus, but their texts, aims and evidence differ from those of a modern research discipline.

## Āryabhaṭa: rotation, planetary computation, and Earth

Āryabhaṭa completed the *Āryabhaṭīya* in 499 CE. Its mathematical astronomy explains daily stellar motion through Earth's axial rotation and uses relative motion explicitly. It also supplies algorithms for planetary longitudes and eclipses.

His approximation to $\pi$ is encoded by

$$\pi\approx\frac{62832}{20000}=3.1416.$$

The text gives Earth's diameter as $1050$ yojanas, so this value implies

$$C\approx\pi D=3298.68\ \text{yojanas}\approx3300\ \text{yojanas}.$$

The physical length assigned to a yojana is historically variable, so a uniquely precise modern kilometre conversion cannot be claimed without first fixing which unit was intended. The spherical Earth, axial rotation and numerical circumference are well grounded; full Copernican heliocentrism is not.

## Bhāskarācārya: rates, falling, and planetary models

Bhāskara II (born 1114) composed the *Siddhāntaśiromaṇi*, whose parts treat arithmetic, algebra, planetary computation and the celestial sphere. In astronomical problems he uses *tatkālika-gati*, instantaneous motion, and recognizes that an instantaneous rate vanishes at an extremum. In modern notation that local idea is

$$v(t)=\lim_{\Delta t\to0}\frac{x(t+\Delta t)-x(t)}{\Delta t},
\qquad v(t_*)=0\ \text{at a smooth turning point}.$$

This is an important differential-style technique, but it is not yet the general symbolic differential and integral calculus later organized around functions, derivatives, integrals and a fundamental theorem.

In modern calculus, $v(t_*)=0$ is a necessary condition for a differentiable interior extremum, not a sufficient one: the stationary point may instead be an inflection. One must inspect the sign of $v$ or a higher derivative. That distinction prevents a historical local-rate insight from being credited with mathematical machinery that the cited text does not contain.

A passage in the astronomical work is often translated as saying that Earth has an attractive power by which objects fall toward it. It is evidence of a qualitative gravitational idea. It gives neither a universal force between all masses nor the inverse-square law $F=Gm_1m_2/r^2$, so "Bhāskara discovered Newtonian gravity" is not historically warranted.

Bhāskara refined inherited mean-motion and correction procedures for planetary positions. These were computational geocentric models, not dynamical ellipses derived from gravitation.

## Kaṇāda: atomism and classification

Kaṇāda's dates are uncertain, and the surviving *Vaiśeṣika Sūtra* and its doctrine have a layered history. The tradition associated with him classifies substance, quality and motion and explains perceptible matter through imperceptible *paramāṇus* of earth, water, fire and air.

This is an atomic model in the historical sense of a theory of indivisible material units. It is not the modern atomic model, in which nuclei and electrons are governed by quantitative electromagnetic and quantum laws. Kaṇāda's enduring contribution is the systematic problem he posed: how can stable properties and observable change arise from enduring constituents and their relations?

## Reading a historical scientific claim

A defensible attribution separates four things: the wording of a primary text, the date and transmission of the manuscript, the mathematical content that can be reconstructed, and a modern interpretation. A statement about terrestrial attraction can establish a qualitative causal idea; it cannot establish an inverse-square law unless the source supplies distance dependence, universal masses and a quantitative rule. Likewise, explaining daily stellar motion by Earth's rotation is not equivalent to placing the Sun at the dynamical centre of all planetary orbits.

## Solved Problems

### 1. A modern instantaneous-rate reconstruction

To illustrate the local-rate idea without attributing this polynomial to Bhāskara, let

$$s(t)=30t-5t^2\quad(\mathrm{m}),$$

with $t$ in seconds. The instantaneous velocity is

$$v(t)=\frac{ds}{dt}=30-10t\quad(\mathrm{m\,s^{-1}}).$$

The stationary instant satisfies $30-10t=0$, so $t_*=3\ \mathrm{s}$. Since

$$\frac{d^2s}{dt^2}=-10\ \mathrm{m\,s^{-2}}<0,$$

the point is a maximum, and

$$s(3)=30(3)-5(3)^2=45\ \mathrm{m}.$$

The calculation shows exactly what a vanishing instantaneous rate proves once a function and sign test are supplied.

### 2. Testing a heliocentrism claim

Suppose a historical source contains (i) a statement that apparent daily stellar motion arises from Earth's rotation and (ii) tables computed with geocentric planetary corrections. What follows?

1. Statement (i) supports axial rotation and a relative-motion explanation of the diurnal sky.
2. It does not specify the centres of the annual planetary paths.
3. Statement (ii) shows that the working computational scheme is geocentric, even if some motions are represented by moving auxiliary centres.
4. Therefore the evidence supports a rotating Earth but is insufficient for full Copernican heliocentrism.

This is a source-analysis result: the conclusion is bounded by what the premises actually state.

## Descriptive Questions

1. What evidence supports attributing Earth's axial rotation to Āryabhaṭa, and what stronger claim does it not support?
2. Why is a vanishing instantaneous rate not identical to a complete theory of calculus?
3. Distinguish Bhāskara's qualitative attractive power from Newton's universal inverse-square law.
4. In what sense is Kaṇāda's atomism an atomic theory, and in what sense is it not modern atomic physics?

## Numerical Problems

1. Compare $\pi_A=62832/20000$ with modern $\pi$. Find its absolute error and percentage error.

   **Final answer:** $\lvert\pi_A-\pi\rvert=7.3464\times10^{-6}$; percentage error $=2.3384\times10^{-4}\%$.

2. If one terrestrial rotation relative to the stars takes $86164\ \mathrm{s}$, find the corresponding angular speed.

   **Final answer:** $\omega=2\pi/86164=7.29212\times10^{-5}\ \mathrm{rad\,s^{-1}}$.

The calculations are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/aryabhata-bhaskara-kanada-checks.mac' | relative_url }}).

## References

1. Wikipedia overviews: [Āryabhaṭa](https://en.wikipedia.org/wiki/Aryabhata), [Bhāskara II](https://en.wikipedia.org/wiki/Bh%C4%81skara_II), and [Kaṇāda](https://en.wikipedia.org/wiki/Ka%E1%B9%87%C4%81da).
2. K. S. Shukla and K. V. Sarma, *Āryabhaṭīya of Āryabhaṭa*, Indian National Science Academy, 1976.
3. Kim Plofker, *Mathematics in India*, Princeton University Press, 2009, Chapters 3--6.
4. Nandalal Sinha (trans.), *The Vaiśeṣika Sūtras of Kaṇāda*, Panini Office, 1923.

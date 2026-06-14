---
title: "Condensed Matter Physics Exam Quiz"
summary: "Five standard condensed matter physics MCQs for physics entrance practice."
date: 2026-06-13 09:45:00 +0530
categories:
  - exam
  - exam-condensed
tags:
  - condensed-matter
  - solid-state-physics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST condensed matter patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] For a simple cubic lattice with lattice constant $a$, the first Brillouin zone boundary along $k_x$ is at
A: $\pm\pi/a$
B: $\pm 2\pi/a$
C: $\pm a/\pi$
D: $\pm 1/a^2$
ANSWER: A
NOTE: Reciprocal lattice spacing is $2\pi/a$, so the zone boundary is halfway at $\pm\pi/a$.
---
Q: [CSIR-NET 2023 style] The Drude electrical conductivity is
A: $ne^2\tau/m$
B: $m/(ne^2\tau)$
C: $ne\tau$
D: $e/(m\tau)$
ANSWER: A
NOTE: Drude theory gives $\sigma=ne^2\tau/m$.
---
Q: [JEST 2022 style] A direct band gap semiconductor has
A: valence maximum and conduction minimum at the same $k$
B: no forbidden gap
C: only flat bands
D: zero effective mass
ANSWER: A
NOTE: Direct transitions conserve crystal momentum because extrema occur at the same wavevector.
---
Q: [GATE 2021 style] The Debye heat capacity of a 3D solid at low temperature varies as
A: $T$
B: $T^2$
C: $T^3$
D: $e^{-T}$
ANSWER: C
NOTE: The low-temperature Debye law is $C_V\propto T^3$ in three dimensions.
---
Q: [CSIR-NET 2020 style] Bragg diffraction condition is
A: $2d\sin\theta=n\lambda$
B: $d\cos\theta=n\lambda$
C: $2d/\lambda=\sin^2\theta$
D: $d=n\lambda^2$
ANSWER: A
NOTE: Constructive reflection from crystal planes obeys Bragg's law $2d\sin\theta=n\lambda$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

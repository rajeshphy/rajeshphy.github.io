---
title: "Electromagnetic Theory Exam Quiz"
summary: "Five standard electromagnetic theory MCQs for physics entrance practice."
date: 2026-06-13 09:15:00 +0530
categories:
  - exam
  - exam-electromagnetic
tags:
  - electromagnetic-theory
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST electromagnetic theory patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] In electrostatics, Gauss's law in differential form is
A: $\nabla\cdot\mathbf E=\rho/\epsilon_0$
B: $\nabla\times\mathbf E=\rho/\epsilon_0$
C: $\nabla\cdot\mathbf B=\rho/\epsilon_0$
D: $\nabla\times\mathbf B=0$
ANSWER: A
EXPLAIN: Maxwell's electrostatic Gauss law is $\nabla\cdot\mathbf E=\rho/\epsilon_0$.
---
Q: [CSIR-NET 2023 style] The magnetic field inside a long solenoid with turn density $n$ carrying current $I$ is approximately
A: $\mu_0 nI$
B: $nI/\mu_0$
C: $\mu_0 I/(2\pi r)$
D: zero
ANSWER: A
EXPLAIN: Ampere's law gives $B=\mu_0 nI$ inside an ideal long solenoid.
---
Q: [JEST 2022 style] The Poynting vector is
A: $\mathbf E\times\mathbf B/\mu_0$
B: $\mathbf E\cdot\mathbf B$
C: $\rho\mathbf E$
D: $\nabla\cdot\mathbf E$
ANSWER: A
EXPLAIN: Electromagnetic energy flux is $\mathbf S=\mathbf E\times\mathbf B/\mu_0$.
---
Q: [GATE 2021 style] In vacuum, the speed of electromagnetic waves is
A: $\sqrt{\mu_0\epsilon_0}$
B: $1/\sqrt{\mu_0\epsilon_0}$
C: $\mu_0/\epsilon_0$
D: $\epsilon_0/\mu_0$
ANSWER: B
EXPLAIN: Maxwell's equations give $c=1/\sqrt{\mu_0\epsilon_0}$.
---
Q: [CSIR-NET 2020 style] For a perfect conductor in electrostatic equilibrium, the electric field inside is
A: infinite
B: uniform but nonzero
C: zero
D: parallel to current density
ANSWER: C
EXPLAIN: Free charges rearrange until the internal electrostatic field vanishes.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

---
title: "Statistical Mechanics Exam Quiz"
summary: "Five standard statistical mechanics MCQs for physics entrance practice."
date: 2026-06-13 09:25:00 +0530
categories:
  - exam
  - exam-statistical
tags:
  - statistical-mechanics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST statistical mechanics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] The canonical partition function is
A: $Z=\sum_i e^{-\beta E_i}$
B: $Z=\sum_i E_i$
C: $Z=e^{\beta F}$
D: $Z=\beta E$
ANSWER: A
EXPLAIN: In the canonical ensemble, each state has Boltzmann weight $e^{-\beta E_i}$.
---
Q: [CSIR-NET 2023 style] The Helmholtz free energy is related to $Z$ by
A: $F=k_BT\ln Z$
B: $F=-k_BT\ln Z$
C: $F=Z/k_BT$
D: $F=-Z\ln T$
ANSWER: B
EXPLAIN: The canonical free energy is $F=-k_BT\ln Z$.
---
Q: [JEST 2022 style] Fermions obey
A: Bose-Einstein statistics
B: Maxwell-Boltzmann statistics only
C: Fermi-Dirac statistics
D: Planck statistics only
ANSWER: C
EXPLAIN: Half-integer spin particles obey Fermi-Dirac statistics.
---
Q: [GATE 2021 style] For a two-level system with energies $0$ and $\epsilon$, the partition function is
A: $1+e^{-\beta\epsilon}$
B: $e^{-\beta\epsilon}$
C: $1-e^{-\beta\epsilon}$
D: $\beta\epsilon$
ANSWER: A
EXPLAIN: Sum the Boltzmann weights of both levels: $e^0+e^{-\beta\epsilon}$.
---
Q: [CSIR-NET 2020 style] The average energy in the canonical ensemble is
A: $\partial\ln Z/\partial\beta$
B: $-\partial\ln Z/\partial\beta$
C: $\partial Z/\partial T$
D: $-\ln Z$
ANSWER: B
EXPLAIN: $\langle E\rangle=-\partial\ln Z/\partial\beta$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

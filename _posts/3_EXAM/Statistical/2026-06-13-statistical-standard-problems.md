---
title: "Statistical Mechanics Standard Problems"
summary: "Standard competitive exam problems in statistical mechanics with answer key."
date: 2026-06-13 11:50:00 +0530
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
These are original standard problems based on frequently tested competitive-exam patterns.

{% capture exam_problems %}
Q: The canonical partition function is
A: $Z=\sum_i e^{-\beta E_i}$
B: $Z=\sum_i E_i$
C: $Z=e^{\beta F}$
D: $Z=\beta E$
ANSWER: A
NOTE: GATE 2024 style
---
Q: The Helmholtz free energy is related to $Z$ by
A: $F=k_BT\ln Z$
B: $F=-k_BT\ln Z$
C: $F=Z/k_BT$
D: $F=-Z\ln T$
ANSWER: B
NOTE: CSIR-NET 2023 style
---
Q: Fermions obey
A: Bose-Einstein statistics
B: Maxwell-Boltzmann statistics only
C: Fermi-Dirac statistics
D: Planck statistics only
ANSWER: C
NOTE: JEST 2022 style
---
Q: For a two-level system with energies $0$ and $\epsilon$, the partition function is
A: $1+e^{-\beta\epsilon}$
B: $e^{-\beta\epsilon}$
C: $1-e^{-\beta\epsilon}$
D: $\beta\epsilon$
ANSWER: A
NOTE: GATE 2021 style
---
Q: The average energy in the canonical ensemble is
A: $\partial\ln Z/\partial\beta$
B: $-\partial\ln Z/\partial\beta$
C: $\partial Z/\partial T$
D: $-\ln Z$
ANSWER: B
NOTE: CSIR-NET 2020 style
---
Q: For a classical ideal gas, the Maxwell speed distribution is characterized by a most probable speed
A: $\sqrt{2k_BT/m}$
B: $\sqrt{k_BT/m}$
C: $\sqrt{3k_BT/m}$
D: $k_BT/m$
ANSWER: A
NOTE: GATE style
---
Q: The Bose-Einstein distribution is
A: $1/(e^{\beta(\epsilon-\mu)}+1)$
B: $1/(e^{\beta(\epsilon-\mu)}-1)$
C: $e^{-\beta\epsilon}$
D: $\beta(\epsilon-\mu)$
ANSWER: B
NOTE: CSIR-NET style
---
Q: For independent systems, entropy is
A: additive
B: always zero
C: multiplicative
D: negative only
ANSWER: A
NOTE: JEST style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

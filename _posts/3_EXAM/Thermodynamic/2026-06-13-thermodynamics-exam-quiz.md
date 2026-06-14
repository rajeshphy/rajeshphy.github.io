---
title: "Thermodynamics Exam Quiz"
summary: "Five standard thermodynamics MCQs for physics entrance practice."
date: 2026-06-13 09:20:00 +0530
categories:
  - exam
  - exam-thermodynamic
tags:
  - thermodynamics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST thermodynamics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] For a reversible isothermal expansion of an ideal gas, the change in internal energy is
A: positive
B: negative
C: zero
D: equal to work done
ANSWER: C
NOTE: For an ideal gas internal energy depends only on temperature, which is constant in an isothermal process.
---
Q: [CSIR-NET 2023 style] The efficiency of a Carnot engine operating between $T_h$ and $T_c$ is
A: $T_c/T_h$
B: $1-T_c/T_h$
C: $T_h/T_c-1$
D: $T_h-T_c$
ANSWER: B
NOTE: Carnot efficiency is $\eta=1-T_c/T_h$ with absolute temperatures.
---
Q: [JEST 2022 style] The thermodynamic identity for a simple compressible system is
A: $dU=TdS-PdV$
B: $dU=PdV-TdS$
C: $dU=SdT+VdP$
D: $dU=TdV-PdS$
ANSWER: A
NOTE: The first law for reversible changes gives $dU=TdS-PdV$.
---
Q: [GATE 2021 style] The heat capacity difference for one mole of ideal gas is
A: $C_P-C_V=R$
B: $C_V-C_P=R$
C: $C_P+C_V=R$
D: $C_P/C_V=R$
ANSWER: A
NOTE: Mayer's relation is $C_P-C_V=R$ for one mole of ideal gas.
---
Q: [CSIR-NET 2020 style] Entropy of an isolated system in a spontaneous process
A: always decreases
B: remains exactly zero
C: never decreases
D: is unrelated to irreversibility
ANSWER: C
NOTE: The second law states that entropy of an isolated system increases or remains constant.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

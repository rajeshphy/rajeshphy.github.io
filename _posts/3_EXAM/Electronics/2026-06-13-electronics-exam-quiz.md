---
title: "Electronics Exam Quiz"
summary: "Five standard electronics MCQs for physics entrance practice."
date: 2026-06-13 09:50:00 +0530
categories:
  - exam
  - exam-electronics
tags:
  - electronics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST electronics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] For an ideal operational amplifier with negative feedback, the input currents are
A: infinite
B: zero
C: equal to output current
D: equal to supply current
ANSWER: B
NOTE: An ideal op-amp has infinite input impedance, so input currents vanish.
---
Q: [CSIR-NET 2023 style] A forward-biased silicon diode has an approximate cut-in voltage of
A: $0.1\,\mathrm{V}$
B: $0.3\,\mathrm{V}$
C: $0.7\,\mathrm{V}$
D: $5\,\mathrm{V}$
ANSWER: C
NOTE: Silicon p-n diodes typically conduct appreciably near $0.7\,\mathrm{V}$.
---
Q: [JEST 2022 style] In a common-emitter amplifier, the output voltage is approximately
A: in phase with input
B: $180^\circ$ out of phase with input
C: always zero
D: independent of transistor bias
ANSWER: B
NOTE: A common-emitter stage inverts the signal voltage.
---
Q: [GATE 2021 style] The output of an ideal inverting op-amp amplifier is
A: $V_o=-(R_f/R_{in})V_i$
B: $V_o=(R_{in}/R_f)V_i$
C: $V_o=V_i$
D: $V_o=0$
ANSWER: A
NOTE: Virtual ground analysis gives gain $-R_f/R_{in}$.
---
Q: [CSIR-NET 2020 style] A NAND gate output is zero only when
A: both inputs are zero
B: one input is zero
C: both inputs are one
D: inputs are unequal
ANSWER: C
NOTE: NAND is the negation of AND, so it is low only for input $1,1$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

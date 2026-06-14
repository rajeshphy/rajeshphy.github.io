---
title: "Electronics Standard Problems"
summary: "Standard competitive exam problems in electronics with answer key."
date: 2026-06-13 12:40:00 +0530
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
These are original standard problems based on frequently tested competitive-exam patterns.

{% capture exam_problems %}
Q: For an ideal operational amplifier with negative feedback, the input currents are
A: infinite
B: zero
C: equal to output current
D: equal to supply current
ANSWER: B
SOURCE: GATE 2024 style
---
Q: A forward-biased silicon diode has an approximate cut-in voltage of
A: $0.1\,\mathrm{V}$
B: $0.3\,\mathrm{V}$
C: $0.7\,\mathrm{V}$
D: $5\,\mathrm{V}$
ANSWER: C
SOURCE: CSIR-NET 2023 style
---
Q: In a common-emitter amplifier, the output voltage is approximately
A: in phase with input
B: $180^\circ$ out of phase with input
C: always zero
D: independent of transistor bias
ANSWER: B
SOURCE: JEST 2022 style
---
Q: The output of an ideal inverting op-amp amplifier is
A: $V_o=-(R_f/R_{in})V_i$
B: $V_o=(R_{in}/R_f)V_i$
C: $V_o=V_i$
D: $V_o=0$
ANSWER: A
SOURCE: GATE 2021 style
---
Q: A NAND gate output is zero only when
A: both inputs are zero
B: one input is zero
C: both inputs are one
D: inputs are unequal
ANSWER: C
SOURCE: CSIR-NET 2020 style
---
Q: The gain-bandwidth product of an ideal single-pole op-amp is approximately
A: constant
B: zero
C: infinite for all gains
D: negative only
ANSWER: A
SOURCE: GATE style
---
Q: In an n-channel JFET, increasing reverse gate bias generally
A: increases drain current without limit
B: decreases drain current
C: changes electrons into holes
D: removes the channel instantly at zero bias
ANSWER: B
SOURCE: CSIR-NET style
---
Q: A full-wave rectifier has ripple frequency
A: equal to supply frequency
B: twice the supply frequency
C: half the supply frequency
D: zero
ANSWER: B
SOURCE: JEST style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

---
title: "Relativity Exam Quiz"
summary: "Five standard relativity MCQs for physics entrance practice."
date: 2026-06-13 10:05:00 +0530
categories:
  - exam
  - exam-relativity
tags:
  - relativity
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST relativity patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] The Lorentz factor is
A: $\gamma=1/\sqrt{1-v^2/c^2}$
B: $\gamma=\sqrt{1-v^2/c^2}$
C: $\gamma=1+v/c$
D: $\gamma=v/c$
ANSWER: A
EXPLAIN: Special relativity defines $\gamma=(1-v^2/c^2)^{-1/2}$.
---
Q: [CSIR-NET 2023 style] The invariant interval in one spatial dimension is commonly written as
A: $c^2t^2+x^2$
B: $c^2t^2-x^2$
C: $ct+x$
D: $t^2+x^2/c^2$
ANSWER: B
EXPLAIN: With the common sign convention, $s^2=c^2t^2-x^2$ is Lorentz invariant.
---
Q: [JEST 2022 style] The relativistic energy-momentum relation is
A: $E^2=p^2c^2+m^2c^4$
B: $E=pc^2$
C: $E^2=p^2c^4-m^2c^2$
D: $E=mv$
ANSWER: A
EXPLAIN: The invariant mass shell condition is $E^2=p^2c^2+m^2c^4$.
---
Q: [GATE 2021 style] Proper time is measured in the frame where the two events occur at
A: the same position
B: the same time only
C: infinite separation
D: speed greater than $c$
ANSWER: A
EXPLAIN: Proper time is the time interval in the clock's rest frame, where the events occur at the same place.
---
Q: [CSIR-NET 2020 style] A moving rod of proper length $L_0$ appears to have length
A: $\gamma L_0$
B: $L_0/\gamma$
C: $L_0+\gamma$
D: $0$
ANSWER: B
EXPLAIN: Length contraction gives $L=L_0/\gamma$ along the direction of motion.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

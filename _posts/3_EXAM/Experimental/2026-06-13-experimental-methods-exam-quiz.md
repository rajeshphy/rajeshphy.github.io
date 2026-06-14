---
title: "Experimental Methods Exam Quiz"
summary: "Five standard experimental methods MCQs for physics entrance practice."
date: 2026-06-13 09:55:00 +0530
categories:
  - exam
  - exam-experimental
tags:
  - experimental-methods
  - error-analysis
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST experimental methods patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] If $z=xy$ and fractional errors in $x$ and $y$ are independent and small, the maximum fractional error in $z$ is
A: $\Delta x/x+\Delta y/y$
B: $\Delta x/x-\Delta y/y$
C: $(\Delta x/x)(\Delta y/y)$
D: zero
ANSWER: A
NOTE: For products, maximum relative errors add.
---
Q: [CSIR-NET 2023 style] The least count of a vernier caliper is generally
A: main scale division plus vernier division
B: main scale division minus vernier division
C: product of both divisions
D: independent of scale divisions
ANSWER: B
NOTE: Least count equals one main scale division minus one vernier scale division.
---
Q: [JEST 2022 style] Random errors are reduced most directly by
A: taking repeated measurements and averaging
B: changing units only
C: ignoring outliers always
D: using fewer data points
ANSWER: A
NOTE: Averaging independent repeated readings reduces random uncertainty.
---
Q: [GATE 2021 style] In a linear fit $y=mx+c$, the slope has dimensions
A: $[y]/[x]$
B: $[x]/[y]$
C: $[xy]$
D: dimensionless always
ANSWER: A
NOTE: Since $mx$ has the dimensions of $y$, $m$ has dimensions $[y]/[x]$.
---
Q: [CSIR-NET 2020 style] The standard deviation primarily measures
A: central value
B: spread of data
C: unit conversion
D: systematic offset only
ANSWER: B
NOTE: Standard deviation quantifies the dispersion of readings about the mean.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

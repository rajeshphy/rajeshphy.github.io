---
title: "Experimental Methods Standard Problems"
summary: "Standard competitive exam problems in experimental methods with answer key."
date: 2026-06-13 12:50:00 +0530
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
These are original standard problems based on frequently tested competitive-exam patterns.

{% capture exam_problems %}
Q: If $z=xy$ and fractional errors in $x$ and $y$ are independent and small, the maximum fractional error in $z$ is
A: $\Delta x/x+\Delta y/y$
B: $\Delta x/x-\Delta y/y$
C: $(\Delta x/x)(\Delta y/y)$
D: zero
ANSWER: A
NOTE: GATE 2024 style
---
Q: The least count of a vernier caliper is generally
A: main scale division plus vernier division
B: main scale division minus vernier division
C: product of both divisions
D: independent of scale divisions
ANSWER: B
NOTE: CSIR-NET 2023 style
---
Q: Random errors are reduced most directly by
A: taking repeated measurements and averaging
B: changing units only
C: ignoring outliers always
D: using fewer data points
ANSWER: A
NOTE: JEST 2022 style
---
Q: In a linear fit $y=mx+c$, the slope has dimensions
A: $[y]/[x]$
B: $[x]/[y]$
C: $[xy]$
D: dimensionless always
ANSWER: A
NOTE: GATE 2021 style
---
Q: The standard deviation primarily measures
A: central value
B: spread of data
C: unit conversion
D: systematic offset only
ANSWER: B
NOTE: CSIR-NET 2020 style
---
Q: If a voltmeter has very high resistance, it is connected
A: in series with the load
B: in parallel with the load
C: only across an open switch
D: only to ground
ANSWER: B
NOTE: GATE style
---
Q: The percentage error in $x^2$ is approximately
A: same as percentage error in $x$
B: twice the percentage error in $x$
C: half the percentage error in $x$
D: zero always
ANSWER: B
NOTE: CSIR-NET style
---
Q: In a least-squares straight-line fit, residuals are the differences between
A: measured and fitted values
B: units and dimensions
C: maximum and minimum scales only
D: voltage and current always
ANSWER: A
NOTE: JEST style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

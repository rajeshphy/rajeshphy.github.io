---
title: "Miscellaneous Standard Problems Template"
summary: "Template for mixed competitive exam problems with answer key."
date: 2026-06-13 10:50:00 +0530
categories:
  - exam
  - exam-misc
tags:
  - miscellaneous
  - exam-practice
hidden: true
---

Use this template for mixed or uncategorized competitive-exam problems.

{% capture exam_problems %}
Q: Write the question here
A: First option
B: Second option
C: Third option
D: Fourth option
ANSWER: A
SOURCE: GATE style
---
Q: Write another question here
A: First option
B: Second option
C: Third option
D: Fourth option
ANSWER: C
SOURCE: CSIR-NET style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

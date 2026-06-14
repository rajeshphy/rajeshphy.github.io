---
title: "How To Write Standard Problems"
summary: "A simple format for writing non-clickable exam problem sheets with options and automatic answer keys."
date: 2024-06-13 00:25:00 +0530
categories:
  - doc-jekyll
tags:
  - exam
  - problems
  - markdown
permalink: /how-to-write-standard-problems/
---

Standard problems are for non-clickable practice sheets. They look different from quizzes and show the answer key at the end automatically.

Use this format when students should read the question and check answers later.

## Syntax

{% raw %}
```liquid
{% capture exam_problems %}
Q: For a one-dimensional harmonic oscillator, the Hamiltonian is
A: $p^2/(2m)+kx^2/2$
B: $px-kx$
C: $mv^2+kx$
D: $p^2/m+kx^2$
ANSWER: A
SOURCE: GATE 2024 style
---
Q: If a coordinate is cyclic in the Lagrangian, its conjugate momentum is
A: zero
B: imaginary
C: conserved
D: equal to the force
ANSWER: C
SOURCE: CSIR-NET 2023 style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}
```
{% endraw %}

Use `---` between problems. `ANSWER` can be `A`, `B`, `C`, or `D`. The page automatically writes the final answer key as `Answer: 1-a, 2-c, ...`.

`SOURCE` appears as a right-side tag in brackets, for example `[GATE 2024 style]`.

## Front Matter Example

```yaml
---
title: "Quantum Standard Problems"
summary: "Standard competitive exam problems in quantum mechanics with answer key."
date: 2026-06-13 11:20:00 +0530
categories:
  - exam
  - exam-quantum
tags:
  - quantum-mechanics
  - gate-2024
hidden: true
---
```

## Live Demonstration

{% capture exam_problems %}
Q: For a one-dimensional harmonic oscillator, the ground state energy is
A: $0$
B: $\hbar\omega/2$
C: $\hbar\omega$
D: $3\hbar\omega/2$
ANSWER: B
SOURCE: GATE style
---
Q: The electric field inside a perfect conductor in electrostatic equilibrium is
A: infinite
B: uniform but nonzero
C: zero
D: parallel to current density
ANSWER: C
SOURCE: CSIR-NET style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

## Small Rules

- Keep each problem in the order `Q`, `A`, `B`, `C`, `D`, `ANSWER`, `SOURCE`.
- Use `---` between problems.
- Write LaTeX normally using `$...$`.
- Use standard exam categories such as `exam-misc`, `exam-quantum`, or `exam-electronics` so the post appears in the correct Exam Notes block.

---
title: "How To Write Quiz And Standard Problems"
summary: "A simple guide for writing clickable quizzes and non-clickable exam problem sheets using Q, A, B, C, D, ANSWER, and NOTE lines."
date: 2024-06-13 00:20:00 +0530
categories:
  - doc-jekyll
tags:
  - quiz
  - exam
  - problems
  - interactive
  - doc
permalink: /how-to-write-quiz/
---

Quizzes and standard problem sheets can both be written directly inside Markdown pages. Use simple lines: `Q`, `A`, `B`, `C`, `D`, `ANSWER`, and `NOTE`.

Use a quiz when students should click options and get immediate feedback. Use standard problems when students should read a practice sheet and check the answer key at the end.

## Quiz Syntax

{% raw %}
```liquid
{% capture quiz_questions %}
Q: Which expression gives the de Broglie wavelength?
A: $\lambda=h/p$
B: $\lambda=pc$
C: $\lambda=ma$
D: $\lambda=IR$
ANSWER: A
NOTE: Matter waves satisfy $\lambda=h/p$.
---
Q: What is the canonical commutator?
A: $[x,p]=0$
B: $[x,p]=i\hbar$
C: $[x,p]=\hbar^2$
D: $[x,p]=mc$
ANSWER: B
NOTE: The standard position-momentum commutator is $[x,p]=i\hbar$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}
```
{% endraw %}

Use `---` between questions. The answer can be written as `A`, `B`, `C`, or `D`. LaTeX works inside the question, options, and note.

If a question begins with an exam tag like `[GATE 2024 style]`, the quiz display automatically moves that tag to the end of the question and styles it separately.

## Quiz Demonstration

{% capture quiz_questions %}
Q: Which expression gives the de Broglie wavelength?
A: $\lambda=h/p$
B: $\lambda=pc$
C: $\lambda=ma$
D: $\lambda=IR$
ANSWER: A
NOTE: Matter waves satisfy $\lambda=h/p$.
---
Q: What is the canonical commutator?
A: $[x,p]=0$
B: $[x,p]=i\hbar$
C: $[x,p]=\hbar^2$
D: $[x,p]=mc$
ANSWER: B
NOTE: The standard position-momentum commutator is $[x,p]=i\hbar$.
---
Q: Which operator generates time evolution?
A: $\hat{H}$
B: $\hat{x}$
C: $\hat{p}$
D: $\hat{L}_z$
ANSWER: A
NOTE: The Hamiltonian $\hat{H}$ generates time evolution.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

## Standard Problems Syntax

{% raw %}
```liquid
{% capture exam_problems %}
Q: For a one-dimensional harmonic oscillator, the Hamiltonian is
A: $p^2/(2m)+kx^2/2$
B: $px-kx$
C: $mv^2+kx$
D: $p^2/m+kx^2$
ANSWER: A
NOTE: GATE 2024 style
---
Q: If a coordinate is cyclic in the Lagrangian, its conjugate momentum is
A: zero
B: imaginary
C: conserved
D: equal to the force
ANSWER: C
NOTE: CSIR-NET 2023 style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}
```
{% endraw %}

Standard problems are non-clickable and visually distinct from quizzes. The page automatically writes the final answer key as `Answer: 1-a, 2-c, ...`.

For standard problems, `NOTE` appears as a right-side tag in brackets, for example `[GATE 2024 style]`.

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

## Standard Problems Demonstration

{% capture exam_problems %}
Q: For a one-dimensional harmonic oscillator, the ground state energy is
A: $0$
B: $\hbar\omega/2$
C: $\hbar\omega$
D: $3\hbar\omega/2$
ANSWER: B
NOTE: GATE style
---
Q: The electric field inside a perfect conductor in electrostatic equilibrium is
A: infinite
B: uniform but nonzero
C: zero
D: parallel to current density
ANSWER: C
NOTE: CSIR-NET style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

## Small Rules

- Keep each item in the order `Q`, `A`, `B`, `C`, `D`, `ANSWER`, `NOTE`.
- Use `---` between questions or problems.
- Write LaTeX normally using `$...$`.
- Use standard exam categories such as `exam-misc`, `exam-quantum`, or `exam-electronics` so the post appears in the correct Exam Notes block.

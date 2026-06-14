---
title: "Classical Mechanics Exam Quiz"
summary: "Five standard classical mechanics MCQs for physics entrance practice."
date: 2026-06-13 09:05:00 +0530
categories:
  - exam
  - exam-classical
tags:
  - classical-mechanics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST classical mechanics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] For a one-dimensional harmonic oscillator, the Hamiltonian is
A: $p^2/(2m)+kx^2/2$
B: $px-kx$
C: $mv^2+kx$
D: $p^2/m+kx^2$
ANSWER: A
NOTE: The total energy is kinetic plus potential: $H=p^2/(2m)+kx^2/2$.
---
Q: [CSIR-NET 2023 style] If a coordinate is cyclic in the Lagrangian, its conjugate momentum is
A: zero
B: imaginary
C: conserved
D: equal to the force
ANSWER: C
NOTE: If $\partial L/\partial q=0$, Lagrange's equation gives $d(\partial L/\partial \dot q)/dt=0$.
---
Q: [JEST 2022 style] The effective potential for a particle in a central potential $V(r)$ is
A: $V(r)-L^2/(2mr^2)$
B: $V(r)+L^2/(2mr^2)$
C: $rV(r)$
D: $V(r)/r^2$
ANSWER: B
NOTE: Angular motion contributes the centrifugal term $L^2/(2mr^2)$.
---
Q: [GATE 2021 style] For small oscillations, stable equilibrium requires
A: $d^2V/dq^2<0$
B: $d^2V/dq^2=0$
C: $d^2V/dq^2>0$
D: $V$ independent of $q$
ANSWER: C
NOTE: A stable equilibrium is a local minimum of potential energy, so the second derivative is positive.
---
Q: [CSIR-NET 2020 style] The Poisson bracket $\{q,p\}$ equals
A: $0$
B: $1$
C: $-1$
D: $qp$
ANSWER: B
NOTE: By definition, $\{q,p\}=(\partial q/\partial q)(\partial p/\partial p)-0=1$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

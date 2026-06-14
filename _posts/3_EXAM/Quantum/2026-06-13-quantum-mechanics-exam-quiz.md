---
title: "Quantum Mechanics Exam Quiz"
summary: "Five standard quantum mechanics MCQs for physics entrance practice."
date: 2026-06-13 09:10:00 +0530
categories:
  - exam
  - exam-quantum
tags:
  - quantum-mechanics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST quantum mechanics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] The canonical commutator of position and momentum is
A: $[x,p]=0$
B: $[x,p]=i\hbar$
C: $[x,p]=\hbar^2$
D: $[x,p]=ip^2$
ANSWER: B
NOTE: Canonical quantization gives $[x,p]=i\hbar$.
---
Q: [CSIR-NET 2023 style] The ground-state energy of a one-dimensional infinite well of width $L$ is
A: $0$
B: $\pi^2\hbar^2/(2mL^2)$
C: $h^2/(mL^2)$
D: $\hbar\omega/2$
ANSWER: B
NOTE: The levels are $E_n=n^2\pi^2\hbar^2/(2mL^2)$, so $n=1$ gives the answer.
---
Q: [JEST 2022 style] For orbital angular momentum $l=1$, the allowed $m$ values are
A: $0,1$
B: $-1,0,1$
C: $-2,-1,0,1,2$
D: $1$ only
ANSWER: B
NOTE: For a given $l$, $m=-l,-l+1,\ldots,l$.
---
Q: [GATE 2021 style] The parity of the wavefunction $\psi(x)=x e^{-x^2}$ is
A: even
B: odd
C: neither even nor odd
D: periodic
ANSWER: B
NOTE: $e^{-x^2}$ is even and $x$ is odd, so their product is odd.
---
Q: [CSIR-NET 2020 style] For a normalized wavefunction $\psi$, the probability density is
A: $\psi$
B: $|\psi|^2$
C: $\nabla\psi$
D: $\psi^2/2m$
ANSWER: B
NOTE: Born's rule identifies $|\psi|^2$ as probability density.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

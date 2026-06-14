---
title: "Mathematical Physics Standard Problems"
summary: "Standard competitive exam problems in mathematical physics with answer key."
date: 2026-06-13 11:00:00 +0530
categories:
  - exam
  - exam-mathematical
tags:
  - mathematical-physics
  - gate-2024
  - csir-net-2023
  - jest-2022
hidden: true
---
These are original standard problems based on frequently tested competitive-exam patterns.

{% capture exam_problems %}
Q: The residue of $f(z)=1/(z^2+1)$ at $z=i$ is
A: $1/(2i)$
B: $-1/(2i)$
C: $1/2$
D: $0$
ANSWER: A
SOURCE: GATE 2024 style
---
Q: The Fourier transform of a derivative satisfies, with convention $\tilde f(k)=\int f(x)e^{-ikx}dx$,
A: $\mathcal F[f']=-ik\tilde f$
B: $\mathcal F[f']=ik\tilde f$
C: $\mathcal F[f']=k^2\tilde f$
D: $\mathcal F[f']=\tilde f/k$
ANSWER: B
SOURCE: CSIR-NET 2023 style
---
Q: The eigenvalues of $\begin{pmatrix}2&1\\1&2\end{pmatrix}$ are
A: $1,3$
B: $2,2$
C: $0,4$
D: $-1,3$
ANSWER: A
SOURCE: JEST 2022 style
---
Q: If $P_l(x)$ is a Legendre polynomial, then $\int_{-1}^{1}P_l(x)P_m(x)dx$ equals
A: $2\delta_{lm}$
B: $\delta_{lm}/2$
C: $2\delta_{lm}/(2l+1)$
D: $(2l+1)\delta_{lm}$
ANSWER: C
SOURCE: GATE 2021 style
---
Q: The Laplace transform of $e^{-at}$ is
A: $1/(s-a)$
B: $1/(s+a)$
C: $s/(s^2+a^2)$
D: $a/(s^2+a^2)$
ANSWER: B
SOURCE: CSIR-NET 2020 style
---
Q: The determinant of a unitary matrix has modulus
A: $0$
B: $1$
C: $2$
D: equal to its trace
ANSWER: B
SOURCE: GATE style
---
Q: The divergence of $\mathbf r=x\hat i+y\hat j+z\hat k$ is
A: $0$
B: $1$
C: $2$
D: $3$
ANSWER: D
SOURCE: CSIR-NET style
---
Q: The value of $\int_{-\infty}^{\infty}e^{-ax^2}dx$ for $a>0$ is
A: $\sqrt{\pi/a}$
B: $\pi/a$
C: $1/a$
D: $\sqrt{a/\pi}$
ANSWER: A
SOURCE: JEST style
{% endcapture %}

{% include exam-problems.html source=exam_problems %}

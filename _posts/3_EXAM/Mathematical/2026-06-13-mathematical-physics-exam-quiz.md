---
title: "Mathematical Physics Exam Quiz"
summary: "Five standard mathematical physics MCQs for physics entrance practice."
date: 2026-06-13 09:00:00 +0530
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
These are original exam-style practice questions based on common GATE, CSIR-NET and JEST mathematical physics patterns.

{% capture quiz_questions %}
Q: [GATE 2024 style] The residue of $f(z)=1/(z^2+1)$ at $z=i$ is
A: $1/(2i)$
B: $-1/(2i)$
C: $1/2$
D: $0$
ANSWER: A
NOTE: Since $z^2+1=(z-i)(z+i)$, the residue at $z=i$ is $1/(z+i)|_{z=i}=1/(2i)$.
---
Q: [CSIR-NET 2023 style] The Fourier transform of a derivative satisfies, with convention $\tilde f(k)=\int f(x)e^{-ikx}dx$,
A: $\mathcal F[f']=-ik\tilde f$
B: $\mathcal F[f']=ik\tilde f$
C: $\mathcal F[f']=k^2\tilde f$
D: $\mathcal F[f']=\tilde f/k$
ANSWER: B
NOTE: Integration by parts gives $\int f'e^{-ikx}dx=ik\tilde f(k)$ when boundary terms vanish.
---
Q: [JEST 2022 style] The eigenvalues of $\begin{pmatrix}2&1\1&2\end{pmatrix}$ are
A: $1,3$
B: $2,2$
C: $0,4$
D: $-1,3$
ANSWER: A
NOTE: The characteristic equation is $(2-\lambda)^2-1=0$, hence $\lambda=1,3$.
---
Q: [GATE 2021 style] If $P_l(x)$ is a Legendre polynomial, then $\int_{-1}^{1}P_l(x)P_m(x)dx$ equals
A: $2\delta_{lm}$
B: $\delta_{lm}/2$
C: $2\delta_{lm}/(2l+1)$
D: $(2l+1)\delta_{lm}$
ANSWER: C
NOTE: Legendre polynomials obey $\int_{-1}^{1}P_lP_m dx=2\delta_{lm}/(2l+1)$.
---
Q: [CSIR-NET 2020 style] The Laplace transform of $e^{-at}$ is
A: $1/(s-a)$
B: $1/(s+a)$
C: $s/(s^2+a^2)$
D: $a/(s^2+a^2)$
ANSWER: B
NOTE: $\int_0^\infty e^{-(s+a)t}dt=1/(s+a)$ for $\operatorname{Re}(s+a)>0$.
{% endcapture %}

{% include quiz.html source=quiz_questions %}

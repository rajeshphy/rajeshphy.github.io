---
title: "Lagrangian Dynamics and Applications"
summary: "Hamilton's principle, Euler-Lagrange equations, oscillators, uniform gravity, and electromagnetic coupling."
date: 2025-06-19 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-ii, lagrangian-dynamics]
permalink: /bsc/sem-v/mj-10/lagrangian-dynamics-applications/
---

## Lagrange's equations

Suppose the generalized force is

$$
Q_j=-\frac{\partial V}{\partial q_j}+Q_j^{(\mathrm{nc})},
$$

where $Q_j^{(\mathrm{nc})}$ contains any non-conservative part. With the Lagrangian $L=T-V$, D'Alembert's equation becomes

$$
\boxed{
\frac{d}{dt}\frac{\partial L}{\partial\dot q_j}
-\frac{\partial L}{\partial q_j}=Q_j^{(\mathrm{nc})}}.
$$

For a conservative system, the right-hand side is zero. These are Lagrange's equations, also called the Euler-Lagrange equations.

## Hamilton's principle

Let the action between two fixed times be

$$
S[q]=\int_{t_1}^{t_2}L(q_i,\dot q_i,t)\,dt.
$$

Compare the physical path with $q_i(t,\epsilon)=q_i(t)+\epsilon\eta_i(t)$. The configuration endpoints are fixed:

$$
\eta_i(t_1)=\eta_i(t_2)=0.
$$

The first variation is

$$
\delta S
=\int_{t_1}^{t_2}\sum_i\left(
\frac{\partial L}{\partial q_i}\eta_i
+\frac{\partial L}{\partial\dot q_i}\dot\eta_i
\right)dt.
$$

Integrating the second term by parts gives

$$
\delta S
=\left[\sum_i\frac{\partial L}{\partial\dot q_i}\eta_i\right]_{t_1}^{t_2}
+\int_{t_1}^{t_2}\sum_i\left[
\frac{\partial L}{\partial q_i}
-\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_i}\right)
\right]\eta_i\,dt.
$$

The endpoint term vanishes. Hamilton's principle, $\delta S=0$ for arbitrary interior variations $\eta_i$, therefore yields the Euler-Lagrange equations.

## One-dimensional simple harmonic oscillator

For a mass $m$ attached to a spring of force constant $k$,

$$
L=\frac12m\dot x^2-\frac12kx^2.
$$

Since $\partial L/\partial\dot x=m\dot x$ and $\partial L/\partial x=-kx$,

$$
m\ddot x+kx=0.
$$

Thus

$$
x(t)=A\cos(\omega t+\delta),
\qquad
\boxed{\omega=\sqrt{\frac{k}{m}}},
$$

where $\omega$ has units $\mathrm{s^{-1}}$.

## Falling body in uniform gravity

Take $y$ positive upward and choose $V=mgy$. Then

$$
L=\frac12m\dot y^2-mgy.
$$

The Euler-Lagrange equation gives

$$
m\ddot y+mg=0,
\qquad
\boxed{y(t)=y_0+v_{0y}t-\frac12gt^2}.
$$

The sign follows from the stated upward-positive convention.

## Two coupled oscillators

Consider two equal masses and three equal springs, with $x_1$ and $x_2$ measured from equilibrium:

$$
L=\frac m2(\dot x_1^2+\dot x_2^2)
-\frac k2\left[x_1^2+(x_2-x_1)^2+x_2^2\right].
$$

Differentiation gives

$$
m\ddot x_1+2kx_1-kx_2=0,
\qquad
m\ddot x_2+2kx_2-kx_1=0.
$$

For a normal mode $x_j=A_j e^{i\omega t}$,

$$
\begin{pmatrix}
2k-m\omega^2&-k\\
-k&2k-m\omega^2
\end{pmatrix}
\begin{pmatrix}A_1\\A_2\end{pmatrix}=0.
$$

A non-zero amplitude requires

$$
(2k-m\omega^2)^2-k^2=0.
$$

The two modes are therefore

$$
\boxed{\omega_1^2=\frac{k}{m},\quad(A_1,A_2)\propto(1,1)},
$$

and

$$
\boxed{\omega_2^2=\frac{3k}{m},\quad(A_1,A_2)\propto(1,-1)}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-10/unit-ii/coupled-oscillator-modes.png' | relative_url }}" alt="Equation-generated in-phase and out-of-phase normal modes of two equal coupled oscillators" loading="lazy">
  <figcaption>The eigenvectors $(1,1)$ and $(1,-1)$ give the two normal-mode frequencies.</figcaption>
</figure>

## Charged particle in an electromagnetic field

Introduce scalar and vector potentials by

$$
\mathbf E=-\nabla\phi-\frac{\partial\mathbf A}{\partial t},
\qquad
\mathbf B=\nabla\times\mathbf A.
$$

The Lagrangian of a particle of charge $q$ is

$$
\boxed{
L=\frac12m\dot{\mathbf r}^{\,2}
+q\dot{\mathbf r}\cdot\mathbf A(\mathbf r,t)
-q\phi(\mathbf r,t)}.
$$

For the Cartesian coordinate $x_i$,

$$
\frac{\partial L}{\partial\dot x_i}=m\dot x_i+qA_i,
$$

$$
\frac{d}{dt}\frac{\partial L}{\partial\dot x_i}
=m\ddot x_i
+q\frac{\partial A_i}{\partial t}
+q\dot x_j\frac{\partial A_i}{\partial x_j},
$$

and

$$
\frac{\partial L}{\partial x_i}
=q\dot x_j\frac{\partial A_j}{\partial x_i}
-q\frac{\partial\phi}{\partial x_i}.
$$

Repeated Cartesian indices are summed. The Euler-Lagrange equation becomes

$$
m\ddot x_i
=q\left[
-\frac{\partial\phi}{\partial x_i}
-\frac{\partial A_i}{\partial t}
+\dot x_j\left(
\frac{\partial A_j}{\partial x_i}
-\frac{\partial A_i}{\partial x_j}
\right)
\right].
$$

The last term is $(\dot{\mathbf r}\times\mathbf B)_i$, so

$$
\boxed{m\ddot{\mathbf r}=q(\mathbf E+\dot{\mathbf r}\times\mathbf B)}.
$$

[Maxima verification: coupled-mode eigenvalue residuals]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-ii/coupled-oscillators.mac' | relative_url }}).

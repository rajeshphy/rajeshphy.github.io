---
title: "Poisson Brackets"
summary: "Definition, algebraic properties, time evolution, and elementary examples of Poisson brackets."
date: 2026-05-08 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - poisson-bracket
  - hamiltonian-mechanics
permalink: /msc/sem-i/poisson-bracket-theorems/
hidden: true
---

The Poisson bracket is the compact language of Hamiltonian mechanics. It expresses time evolution, canonical structure, and conservation laws in one notation.

## Definition

For two functions $f(q_i,p_i,t)$ and $g(q_i,p_i,t)$,

$$
\boxed{
\{f,g\}=\sum_i\left(
\frac{\partial f}{\partial q_i}\frac{\partial g}{\partial p_i}
-
\frac{\partial f}{\partial p_i}\frac{\partial g}{\partial q_i}

\right).
}
$$

## Fundamental brackets

For canonical variables,

$$
\boxed{
\{q_i,q_j\}=0,
\qquad
\{p_i,p_j\}=0,
\qquad
\{q_i,p_j\}=\delta_{ij}.
}
$$

These relations are the phase-space signature of canonical coordinates.

## Properties

The Poisson bracket satisfies:

$$
\{f,g\}=-\{g,f\},
$$

$$
\{af+bg,h\}=a\{f,h\}+b\{g,h\},
$$

$$
\{fg,h\}=f\{g,h\}+g\{f,h\},
$$

and the Jacobi identity

$$
\{f,\{g,h\}\}+\{g,\{h,f\}\}+\{h,\{f,g\}\}=0.
$$

## Time evolution

For any dynamical quantity $f(q,p,t)$,

$$
\boxed{
\frac{df}{dt}=\{f,H\}+\frac{\partial f}{\partial t}.
}
$$

If $f$ has no explicit time dependence, then

$$
\frac{df}{dt}=\{f,H\}.
$$

Thus $f$ is conserved when

$$
\boxed{\{f,H\}=0.}
$$

## Hamilton equations from Poisson brackets

Using the fundamental brackets,

$$
\dot q_i=\{q_i,H\}=\frac{\partial H}{\partial p_i},
$$

$$
\dot p_i=\{p_i,H\}=-\frac{\partial H}{\partial q_i}.
$$

So Hamilton's equations are Poisson-bracket equations.

## Example: harmonic oscillator

For

$$
H=\frac{p^2}{2m}+\frac12kx^2,
$$

we get

$$
\dot x=\{x,H\}=\frac{p}{m},
$$

$$
\dot p=\{p,H\}=-kx.
$$

Therefore

$$
\ddot x+\frac{k}{m}x=0.
$$

## Main points

- Poisson brackets encode canonical phase-space structure.
- Hamilton's equations are $\dot q_i=\{q_i,H\}$ and $\dot p_i=\{p_i,H\}$.
- A conserved quantity satisfies $\{f,H\}=0$ if it has no explicit time dependence.
- The Jacobi identity makes Poisson brackets a Lie algebra.

## Practice questions

1. Define the Poisson bracket.
2. Prove $\{q_i,p_j\}=\delta_{ij}$.
3. Derive Hamilton's equations using Poisson brackets.
4. Find $\dot x$ and $\dot p$ for the harmonic oscillator.
5. State the Jacobi identity.

**Next:** [Poisson Theorems and Angular Momentum](/msc/sem-i/poisson-theorem-canonical-transformations/)

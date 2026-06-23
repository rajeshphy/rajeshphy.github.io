---
title: "Least Action and Hamilton Equations"
summary: "Principle of least action, Legendre transform to the Hamiltonian, Hamilton equations, and examples."
date: 2026-05-04 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - hamiltonian-mechanics
  - least-action
permalink: /msc/sem-i/hamilton-equation-of-motion/
hidden: true
---

This note covers the syllabus topics: principle of least action, Hamilton's equations of motion, and their use in simple systems.

## Principle of least action

The action is

$$
S=\int_{t_1}^{t_2}L(q_i,\dot q_i,t)\,dt.
$$

The physical path satisfies

$$
\delta S=0.
$$

Although the phrase "least action" is common, the more accurate statement is stationary action.

## Conjugate momentum

For each generalized coordinate $q_i$, define the conjugate momentum

$$
\boxed{
p_i=\frac{\partial L}{\partial\dot q_i}.
}
$$

The Hamiltonian is obtained by a Legendre transform:

$$
\boxed{
H(q_i,p_i,t)=\sum_i p_i\dot q_i-L(q_i,\dot q_i,t).
}
$$

After forming $H$, the velocities must be expressed in terms of $(q_i,p_i,t)$.

## Hamilton equations

The differential of $H$ gives

$$
\boxed{
\dot q_i=\frac{\partial H}{\partial p_i},
\qquad
\dot p_i=-\frac{\partial H}{\partial q_i}.
}
$$

These are Hamilton's equations of motion. They replace $n$ second-order Lagrange equations by $2n$ first-order equations.

## Energy conservation

If $H$ has no explicit time dependence,

$$
\frac{\partial H}{\partial t}=0,
$$

then

$$
\frac{dH}{dt}=0.
$$

Thus the Hamiltonian is conserved.

## Example: one-dimensional harmonic oscillator

For

$$
L=\frac12m\dot x^2-\frac12kx^2,
$$

the conjugate momentum is

$$
p=m\dot x.
$$

The Hamiltonian is

$$
H=\frac{p^2}{2m}+\frac12kx^2.
$$

Hamilton's equations are

$$
\dot x=\frac{p}{m},
\qquad
\dot p=-kx.
$$

Combining them,

$$
\ddot x+\frac{k}{m}x=0.
$$

## Example: free particle

For

$$
H=\frac{p^2}{2m},
$$

Hamilton's equations give

$$
\dot x=\frac{p}{m},
\qquad
\dot p=0.
$$

So $p$ is constant and the motion is uniform.

## Main points

- The action principle is stationary action.
- Momentum is $p_i=\partial L/\partial\dot q_i$.
- The Hamiltonian is the Legendre transform of $L$.
- Hamilton's equations are first-order equations in phase space.
- Time-independent $H$ is conserved.

## Practice questions

1. Define conjugate momentum.
2. Obtain $H$ from $L$ using a Legendre transform.
3. Derive Hamilton's equations from $dH$.
4. Write Hamilton's equations for the harmonic oscillator.
5. Explain why a time-independent Hamiltonian is conserved.

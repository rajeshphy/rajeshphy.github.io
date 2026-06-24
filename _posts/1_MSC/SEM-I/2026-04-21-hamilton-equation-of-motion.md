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

Lagrangian mechanics describes motion using coordinates and velocities. Hamiltonian mechanics rewrites the same dynamics using coordinates and momenta. This change is important because the state of a system is then represented by a point in phase space $(q,p)$.

Hamilton's equations are first-order equations in phase space. They are especially useful in canonical transformations, Poisson brackets, Hamilton-Jacobi theory, and statistical mechanics.

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

The action is a number assigned to an entire path. The physical path is selected by the condition that the first-order change in this number vanishes under small endpoint-fixed variations.

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

This last step is essential. A Hamiltonian is not complete if it still contains $\dot q_i$ as an independent variable.

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

## From the differential of $H$

Starting with

$$
H=\sum_i p_i\dot q_i-L,
$$

take the differential:

$$
dH=\sum_i \dot q_i\,dp_i+\sum_i p_i\,d\dot q_i-dL.
$$

Since

$$
dL=\sum_i\frac{\partial L}{\partial q_i}dq_i
+\sum_i\frac{\partial L}{\partial\dot q_i}d\dot q_i
+\frac{\partial L}{\partial t}dt,
$$

and $p_i=\partial L/\partial\dot q_i$, the $d\dot q_i$ terms cancel. Using Lagrange's equation,

$$
\frac{\partial L}{\partial q_i}=\dot p_i,
$$

we get

$$
dH=\sum_i\dot q_i\,dp_i-\sum_i\dot p_i\,dq_i
-\frac{\partial L}{\partial t}dt.
$$

Comparing this with

$$
dH=\sum_i\frac{\partial H}{\partial q_i}dq_i
+\sum_i\frac{\partial H}{\partial p_i}dp_i
+\frac{\partial H}{\partial t}dt
$$

gives Hamilton's equations.

## Standard form for one-dimensional motion

For

$$
H=\frac{p^2}{2m}+V(x),
$$

Hamilton's equations are

$$
\dot x=\frac{p}{m},
\qquad
\dot p=-\frac{dV}{dx}.
$$

Combining them gives

$$
m\ddot x=-\frac{dV}{dx},
$$

which is Newton's equation in potential form.

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

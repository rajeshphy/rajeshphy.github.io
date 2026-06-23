---
title: "D'Alembert Principle and Lagrange Equations"
summary: "D'Alembert's principle, generalized coordinates, Lagrange equations, and simple applications."
date: 2026-05-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - lagrange-equation
  - dalembert-principle
permalink: /msc/sem-i/lagrange-equation/
hidden: true
---

This note follows the syllabus portion: D'Alembert's principle, Lagrange's equation, and simple applications. The purpose is to move from Newton's vector equations to generalized coordinates, where constraints are handled without explicitly solving for every constraint force.

## D'Alembert's principle

For the $i$-th particle,

$$
\mathbf F_i=m_i\ddot{\mathbf r}_i.
$$

D'Alembert rewrites this as a virtual-work statement:

$$
\boxed{
\sum_i\left(\mathbf F_i-m_i\ddot{\mathbf r}_i
\right)\cdot\delta\mathbf r_i=0.
}
$$

For ideal constraints, constraint forces do no virtual work. Hence only applied forces remain in the variational equation.

## Generalized coordinates

If a system has $n$ independent degrees of freedom, write

$$
\mathbf r_i=\mathbf r_i(q_1,q_2,\dots,q_n,t).
$$

The virtual displacement is

$$
\delta\mathbf r_i=\sum_j\frac{\partial \mathbf r_i}{\partial q_j}\delta q_j.
$$

The generalized force is

$$
Q_j=\sum_i\mathbf F_i\cdot\frac{\partial\mathbf r_i}{\partial q_j}.
$$

## Lagrange's equation

Using D'Alembert's principle and the kinetic energy

$$
T=\frac12\sum_i m_i\dot{\mathbf r}_i^2,
$$

one obtains

$$
\boxed{
\frac{d}{dt}\left(\frac{\partial T}{\partial\dot q_j}
\right)-\frac{\partial T}{\partial q_j}=Q_j.
}
$$

If the forces are conservative,

$$
Q_j=-\frac{\partial V}{\partial q_j}.
$$

With

$$
L=T-V,
$$

Lagrange's equation becomes

$$
\boxed{
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_j}
\right)-\frac{\partial L}{\partial q_j}=0.
}
$$

## Cyclic coordinate

If a coordinate $q_k$ does not appear explicitly in $L$, then

$$
\frac{\partial L}{\partial q_k}=0.
$$

Therefore

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_k}
\right)=0,
$$

so the conjugate momentum

$$
p_k=\frac{\partial L}{\partial\dot q_k}
$$

is conserved.

## Example: simple pendulum

For a pendulum of length $l$ and mass $m$, choose $q=\theta$.

$$
T=\frac12ml^2\dot\theta^2,
\qquad
V=mgl(1-\cos\theta).
$$

The Lagrangian is

$$
L=\frac12ml^2\dot\theta^2-mgl(1-\cos\theta).
$$

Lagrange's equation gives

$$
ml^2\ddot\theta+mgl\sin\theta=0,
$$

or

$$
\boxed{
\ddot\theta+\frac{g}{l}\sin\theta=0.
}
$$

For small oscillations,

$$
\sin\theta\simeq\theta,
$$

so

$$
\ddot\theta+\frac{g}{l}\theta=0.
$$

## Example: particle in a central potential

For motion in a plane under $V(r)$,

$$
L=\frac12m(\dot r^2+r^2\dot\theta^2)-V(r).
$$

Since $\theta$ is cyclic,

$$
p_\theta=\frac{\partial L}{\partial\dot\theta}=mr^2\dot\theta
$$

is conserved. This is angular momentum conservation.

## Main points

- D'Alembert's principle removes ideal constraint forces from the virtual-work equation.
- Generalized coordinates describe only independent motion.
- Lagrange's equation is $\frac{d}{dt}(\partial L/\partial\dot q)-\partial L/\partial q=0$.
- A cyclic coordinate gives a conserved conjugate momentum.
- Simple applications include the pendulum and central-force motion.

## Practice questions

1. State D'Alembert's principle.
2. Define generalized force $Q_j$.
3. Derive Lagrange's equation from D'Alembert's principle.
4. Obtain the equation of motion of a simple pendulum.
5. Show that angular momentum is conserved for a central potential.

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

Newton's equation is written for each particle in terms of vector coordinates and forces. This is straightforward for a free particle, but it becomes inconvenient when the motion is constrained, as in a pendulum, bead on a wire, or rigid body. Constraint forces may be unknown, and solving for them is often not the main aim.

D'Alembert's principle gives a way to remove ideal constraint forces from the calculation. Lagrange's equations then describe the motion directly in terms of independent generalized coordinates.

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

The displacement $\delta\mathbf r_i$ is virtual: it is an imagined infinitesimal change compatible with the constraints at a fixed instant of time. It is not the actual displacement during a time interval.

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

Generalized coordinates need not be lengths. They may be angles, distances along a curve, or any independent variables that specify the configuration. The advantage is that the number of equations becomes equal to the number of degrees of freedom.

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

## Particle in a uniform gravitational field

Let a particle move vertically under gravity. Choose the upward coordinate $y$. Then

$$
T=\frac12m\dot y^2,
\qquad
V=mgy.
$$

The Lagrangian is

$$
L=\frac12m\dot y^2-mgy.
$$

Now

$$
\frac{\partial L}{\partial \dot y}=m\dot y,
\qquad
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot y}\right)=m\ddot y,
$$

and

$$
\frac{\partial L}{\partial y}=-mg.
$$

Therefore Lagrange's equation gives

$$
m\ddot y+mg=0,
$$

or

$$
\boxed{\ddot y=-g.}
$$

This is the usual equation of vertical motion obtained without separately writing Newton's vector equation.

## Derivation points

In a derivation of Lagrange's equation, the important steps are:

1. write D'Alembert's principle in virtual-work form;
2. express $\delta\mathbf r_i$ in terms of $\delta q_j$;
3. introduce generalized forces $Q_j$;
4. use the kinetic-energy identity;
5. use the independence of $\delta q_j$ to obtain the equations.

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

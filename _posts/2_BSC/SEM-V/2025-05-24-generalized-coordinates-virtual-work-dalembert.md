---
title: "Coordinate Systems, Virtual Work, and D'Alembert's Principle"
summary: "Coordinate transformations, degrees of freedom, generalized velocities, virtual work, and D'Alembert's equation."
date: 2025-05-24 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-i, dalembert-principle]
permalink: /bsc/sem-v/mj-10/generalized-coordinates-virtual-work/
---

## Coordinate systems

Cartesian coordinates $(x,y,z)$ use fixed, mutually perpendicular unit vectors. Two common curvilinear transformations are cylindrical coordinates $(\rho,\phi,z)$,

$$
x=\rho\cos\phi,
\qquad
y=\rho\sin\phi,
\qquad
z=z,
$$

and spherical coordinates $(r,\theta,\phi)$,

$$
x=r\sin\theta\cos\phi,
\qquad
y=r\sin\theta\sin\phi,
\qquad
z=r\cos\theta.
$$

Their standard coordinate ranges are

$$
\rho\geq0,\quad 0\leq\phi<2\pi;
\qquad
r\geq0,\quad 0\leq\theta\leq\pi,\quad 0\leq\phi<2\pi.
$$

The inverse relations include

$$
\rho=\sqrt{x^2+y^2},
\qquad
\phi=\operatorname{atan2}(y,x),
$$

and

$$
r=\sqrt{x^2+y^2+z^2},
\qquad
\theta=\cos^{-1}\!\left(\frac zr\right).
$$

At $\rho=0$ the azimuth $\phi$ is undefined; at $r=0$ both spherical angles are undefined. These are coordinate singularities, not physical singularities. Differentiating the position vector gives

$$
\mathbf v
=\dot\rho\,\hat{\boldsymbol\rho}
+\rho\dot\phi\,\hat{\boldsymbol\phi}
+\dot z\,\hat{\mathbf z}
$$

in cylindrical coordinates, and

$$
\mathbf v
=\dot r\,\hat{\mathbf r}
+r\dot\theta\,\hat{\boldsymbol\theta}
+r\sin\theta\dot\phi\,\hat{\boldsymbol\phi}
$$

in spherical coordinates. The factors $1$, $r$, and $r\sin\theta$ arise because the curvilinear basis vectors and arc lengths depend on position.

## Degrees of freedom and generalized velocities

A system of $N$ point particles requires $3N$ Cartesian coordinates before constraints are imposed. If $k$ independent holonomic constraints

$$
f_\alpha(\mathbf r_1,\ldots,\mathbf r_N,t)=0,
\qquad
\alpha=1,\ldots,k,
$$

have rank $k$, the system has

$$
\boxed{s=3N-k}
$$

degrees of freedom. Choose independent generalized coordinates $q_1,\ldots,q_s$ and write

$$
\mathbf r_i=\mathbf r_i(q_1,\ldots,q_s,t).
$$

The chain rule gives the actual velocity,

$$
\boxed{
\mathbf v_i
=\sum_{j=1}^{s}\frac{\partial\mathbf r_i}{\partial q_j}\dot q_j
+\frac{\partial\mathbf r_i}{\partial t}}.
$$

The $q_j$ need not be lengths: they may be angles or other independent parameters. Their time derivatives $\dot q_j$ are generalized velocities.

## Virtual displacement and virtual work

A virtual displacement compares neighbouring allowed configurations at the same instant, so $\delta t=0$. Hence

$$
\boxed{
\delta\mathbf r_i
=\sum_{j=1}^{s}\frac{\partial\mathbf r_i}{\partial q_j}\delta q_j}.
$$

It must also satisfy the linearized constraints,

$$
\sum_i\nabla_i f_\alpha\cdot\delta\mathbf r_i=0.
$$

This differs from an actual displacement during a time $dt$, for which an additional $(\partial f_\alpha/\partial t)dt$ term can occur.

At static equilibrium, ideal constraint forces do no virtual work. If $\mathbf F_i$ denotes the applied force, the principle of virtual work is

$$
\delta W=\sum_i\mathbf F_i\cdot\delta\mathbf r_i=0.
$$

Substitution of the generalized displacement gives

$$
\delta W=\sum_jQ_j\delta q_j,
\qquad
\boxed{Q_j=\sum_i\mathbf F_i\cdot
\frac{\partial\mathbf r_i}{\partial q_j}}.
$$

$Q_j$ has the units of energy divided by the units of $q_j$. Thus it is a force for a length coordinate and a torque for an angular coordinate.

## D'Alembert's principle

Let $\mathbf R_i$ be ideal constraint forces. Newton's equations are

$$
\mathbf F_i+\mathbf R_i=m_i\mathbf a_i.
$$

Multiplication by allowed virtual displacements and summation eliminates the constraint forces because $\sum_i\mathbf R_i\cdot\delta\mathbf r_i=0$. Therefore

$$
\boxed{
\sum_i(\mathbf F_i-m_i\mathbf a_i)\cdot\delta\mathbf r_i=0}.
$$

To express the inertial term in generalized coordinates, start from

$$
T=\frac12\sum_i m_i\mathbf v_i^2.
$$

The coordinate transformation implies

$$
\frac{\partial\mathbf v_i}{\partial\dot q_j}
=\frac{\partial\mathbf r_i}{\partial q_j},
\qquad
\frac{d}{dt}\left(\frac{\partial\mathbf r_i}{\partial q_j}\right)
=\frac{\partial\mathbf v_i}{\partial q_j}.
$$

Consequently,

$$
\frac{\partial T}{\partial\dot q_j}
=\sum_i m_i\mathbf v_i\cdot\frac{\partial\mathbf r_i}{\partial q_j},
$$

and differentiation with respect to time gives

$$
\frac{d}{dt}\frac{\partial T}{\partial\dot q_j}
-\frac{\partial T}{\partial q_j}
=\sum_i m_i\mathbf a_i\cdot\frac{\partial\mathbf r_i}{\partial q_j}.
$$

D'Alembert's principle therefore becomes

$$
\sum_j\left[
Q_j-\frac{d}{dt}\frac{\partial T}{\partial\dot q_j}
+\frac{\partial T}{\partial q_j}
\right]\delta q_j=0.
$$

Because the independent $\delta q_j$ are arbitrary,

$$
\boxed{
\frac{d}{dt}\frac{\partial T}{\partial\dot q_j}
-\frac{\partial T}{\partial q_j}=Q_j}.
$$

This is D'Alembert's equation in generalized coordinates and is the direct bridge from Newton's laws to Lagrange's equations.

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

## Solved Problems

### 1. Bead on a uniformly rotating smooth rod

A bead of mass $m$ slides without friction on a straight horizontal rod that rotates with prescribed constant angular speed $\Omega$ about one end. Obtain its radial equation directly from D'Alembert's principle.

The constraint is time-dependent:

$$
\mathbf r=r\,\hat{\mathbf e}_r,
\qquad
\phi=\Omega t.
$$

The rotating polar unit vectors obey

$$
\dot{\hat{\mathbf e}}_r=\Omega\hat{\mathbf e}_\phi,
\qquad
\dot{\hat{\mathbf e}}_\phi=-\Omega\hat{\mathbf e}_r.
$$

Therefore

$$
\mathbf v=\dot r\,\hat{\mathbf e}_r+\Omega r\,\hat{\mathbf e}_\phi,
$$

and then

$$
\mathbf a=(\ddot r-\Omega^2r)\hat{\mathbf e}_r
+2\Omega\dot r\,\hat{\mathbf e}_\phi.
$$

At fixed time an allowed virtual displacement is along the rod,

$$
\delta\mathbf r=\delta r\,\hat{\mathbf e}_r.
$$

The smooth rod's reaction is perpendicular to this displacement, so it does no virtual work. There is no applied force along the rod. D'Alembert's principle gives

$$
(-m\mathbf a)\cdot\delta\mathbf r
=-m(\ddot r-\Omega^2r)\delta r=0.
$$

Since $\delta r$ is arbitrary,

$$
\boxed{\ddot r-\Omega^2r=0},
\qquad
r=C_1e^{\Omega t}+C_2e^{-\Omega t}.
$$

The outward term $m\Omega^2r$ is not an additional real force in the inertial frame; it is the radial part of the acceleration required by the rotating constraint. The transverse reaction supplies $2m\Omega\dot r\,\hat{\mathbf e}_\phi$.

### 2. Atwood machine in one generalized coordinate

Two masses $m_1$ and $m_2>m_1$ are joined by a light inextensible string over an ideal pulley. Let $x$ increase when $m_2$ moves downward; the same $x$ makes $m_1$ move upward. The system has one degree of freedom.

For an allowed virtual change $\delta x$, gravity does virtual work

$$
\delta W=m_2g\,\delta x-m_1g\,\delta x,
$$

so the generalized force is

$$
Q_x=(m_2-m_1)g.
$$

Both masses have speed $\dot x$, hence

$$
T=\frac12(m_1+m_2)\dot x^2.
$$

D'Alembert's equation gives

$$
\frac{d}{dt}\frac{\partial T}{\partial\dot x}
-\frac{\partial T}{\partial x}=Q_x,
$$

or

$$
(m_1+m_2)\ddot x=(m_2-m_1)g.
$$

Therefore

$$
\boxed{a=\ddot x=\frac{m_2-m_1}{m_1+m_2}g}.
$$

From $T-m_1g=m_1a$ for the rising mass,

$$
\boxed{T=\frac{2m_1m_2}{m_1+m_2}g}.
$$

Both expressions have the correct limits: $a=0$ when $m_1=m_2$, while $a\to g$ when $m_2/m_1\to\infty$.

## Descriptive Questions

1. Distinguish actual displacement from virtual displacement for a rheonomous constraint, and state precisely why $\delta t=0$ in the latter.
2. Derive the generalized-velocity formula from $\mathbf r_i=\mathbf r_i(q_1,\ldots,q_s,t)$ and interpret its explicit-time term.
3. Explain the rank condition behind $s=3N-k$ and why dependent constraint equations must not be counted separately.
4. Derive D'Alembert's equation in generalized coordinates and identify the condition under which ideal constraint forces disappear from it.

## Numerical Problems

1. At an instant a particle has cylindrical data $\rho=0.40\ \mathrm m$, $\dot\rho=0.30\ \mathrm{m\,s^{-1}}$, $\dot\phi=2.0\ \mathrm{s^{-1}}$, and $\dot z=-0.20\ \mathrm{m\,s^{-1}}$. Find its speed. **Answer:** $0.8775\ \mathrm{m\,s^{-1}}$.
2. A particle has $r=2.0\ \mathrm m$, $\theta=\pi/3$, $\dot r=0.40\ \mathrm{m\,s^{-1}}$, $\dot\theta=0.20\ \mathrm{s^{-1}}$, and $\dot\phi=0.50\ \mathrm{s^{-1}}$. Find its speed in spherical coordinates. **Answer:** $1.034\ \mathrm{m\,s^{-1}}$.
3. In an ideal Atwood machine, $m_1=2.0\ \mathrm{kg}$ and $m_2=3.0\ \mathrm{kg}$. Find the acceleration and string tension using $g=9.81\ \mathrm{m\,s^{-2}}$. **Answer:** $1.962\ \mathrm{m\,s^{-2}}$ toward the $m_2$ side, $23.544\ \mathrm N$.
4. A bead moves without friction on the vertical parabola $y=ax^2$, where $a=0.50\ \mathrm{m^{-1}}$. At $x=0.40\ \mathrm m$ it has $\dot x=0.60\ \mathrm{m\,s^{-1}}$. From D'Alembert's equation, find $\ddot x$ for $g=9.81\ \mathrm{m\,s^{-2}}$. **Answer:** $-3.507\ \mathrm{m\,s^{-2}}$.

[Maxima verification: rotating-rod residuals and all problem values]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-i/generalized-coordinate-problems.mac' | relative_url }}).

## References

1. [D'Alembert's principle — Wikipedia](https://en.wikipedia.org/wiki/D%27Alembert%27s_principle)
2. H. Goldstein, C. Poole, and J. Safko, *Classical Mechanics*, 3rd ed., Chapter 1, Pearson (2002).
3. L. D. Landau and E. M. Lifshitz, *Mechanics*, 3rd ed., Sections 1–5, Butterworth-Heinemann (1976).
4. J. R. Taylor, *Classical Mechanics*, Chapter 7, University Science Books (2005).

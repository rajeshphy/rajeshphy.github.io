---
title: "Hamiltonian Dynamics and Mechanical Examples"
summary: "Canonical momenta, cyclic coordinates, conservation laws, Hamilton equations, and representative systems."
date: 2025-06-25 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-ii, hamiltonian-dynamics]
permalink: /bsc/sem-v/mj-10/hamiltonian-dynamics-examples/
---

## From the Lagrangian to Hamilton's equations

For a regular Lagrangian, define the generalized momenta and Hamiltonian by

$$
p_i=\frac{\partial L}{\partial\dot q_i},
\qquad
H(q,p,t)=\sum_i p_i\dot q_i-L.
$$

Regularity means that the velocity Hessian is non-singular, so the equations $p_i=L_{\dot q_i}$ can be inverted to express $\dot q_i$ in terms of $(q,p,t)$. Starting with

$$
dL
=\sum_i\frac{\partial L}{\partial q_i}\,dq_i
+\sum_i p_i\,d\dot q_i
+\frac{\partial L}{\partial t}\,dt,
$$

the differential of $H$ is

$$
dH
=\sum_i\dot q_i\,dp_i
-\sum_i\frac{\partial L}{\partial q_i}\,dq_i
-\frac{\partial L}{\partial t}\,dt.
$$

Using $\dot p_i=\partial L/\partial q_i$ and comparing coefficients gives Hamilton's equations,

$$
\boxed{\dot q_i=\frac{\partial H}{\partial p_i}},
\qquad
\boxed{\dot p_i=-\frac{\partial H}{\partial q_i}},
\qquad
\boxed{\frac{\partial H}{\partial t}=-\frac{\partial L}{\partial t}}.
$$

## Cyclic coordinates and conservation theorems

If $q_k$ does not occur explicitly in $L$, it is cyclic and

$$
\dot p_k=\frac{\partial L}{\partial q_k}=0.
$$

Thus its conjugate momentum is conserved. Along a Hamiltonian trajectory,

$$
\frac{dH}{dt}
=\sum_i\left(
\frac{\partial H}{\partial q_i}\dot q_i
+\frac{\partial H}{\partial p_i}\dot p_i
\right)
+\frac{\partial H}{\partial t}
=\frac{\partial H}{\partial t}.
$$

Hence $H$ is conserved when it has no explicit time dependence. For a natural Lagrangian $L=T-V$ with $T$ quadratic in the velocities and with time-independent constraints, $H=T+V$, the mechanical energy. Translational invariance makes the corresponding Cartesian momentum constant, while rotational invariance makes the corresponding angular momentum constant.

## Hamilton's equations in different coordinate systems

In Cartesian coordinates,

$$
H=\frac{p_x^2+p_y^2+p_z^2}{2m}+V(x,y,z),
$$

so $\dot x_i=p_i/m$ and $\dot p_i=-\partial V/\partial x_i$.

In cylindrical coordinates $(\rho,\phi,z)$,

$$
T=\frac m2(\dot\rho^2+\rho^2\dot\phi^2+\dot z^2),
$$

$$
p_\rho=m\dot\rho,
\qquad
p_\phi=m\rho^2\dot\phi,
\qquad
p_z=m\dot z,
$$

and

$$
\boxed{
H=\frac{p_\rho^2}{2m}
+\frac{p_\phi^2}{2m\rho^2}
+\frac{p_z^2}{2m}+V(\rho,\phi,z)}.
$$

Hamilton's equations are

$$
\dot\rho=\frac{p_\rho}{m},
\qquad
\dot\phi=\frac{p_\phi}{m\rho^2},
\qquad
\dot z=\frac{p_z}{m},
$$

$$
\dot p_\rho=\frac{p_\phi^2}{m\rho^3}-\frac{\partial V}{\partial\rho},
\qquad
\dot p_\phi=-\frac{\partial V}{\partial\phi},
\qquad
\dot p_z=-\frac{\partial V}{\partial z}.
$$

In spherical coordinates $(r,\theta,\phi)$,

$$
T=\frac m2\left(\dot r^2+r^2\dot\theta^2+r^2\sin^2\theta\dot\phi^2\right),
$$

$$
p_r=m\dot r,
\qquad
p_\theta=mr^2\dot\theta,
\qquad
p_\phi=mr^2\sin^2\theta\dot\phi,
$$

and

$$
\boxed{
H=\frac{p_r^2}{2m}
+\frac{p_\theta^2}{2mr^2}
+\frac{p_\phi^2}{2mr^2\sin^2\theta}
+V(r,\theta,\phi)}.
$$

Thus

$$
\dot r=\frac{p_r}{m},
\qquad
\dot\theta=\frac{p_\theta}{mr^2},
\qquad
\dot\phi=\frac{p_\phi}{mr^2\sin^2\theta},
$$

$$
\dot p_r
=\frac{p_\theta^2}{mr^3}
+\frac{p_\phi^2}{mr^3\sin^2\theta}
-\frac{\partial V}{\partial r},
$$

$$
\dot p_\theta
=\frac{p_\phi^2\cos\theta}{mr^2\sin^3\theta}
-\frac{\partial V}{\partial\theta},
\qquad
\dot p_\phi=-\frac{\partial V}{\partial\phi}.
$$

The extra momentum terms are consequences of the coordinate-dependent scale factors, not additional forces.

## One- and two-dimensional harmonic oscillators

For one dimension,

$$
H=\frac{p^2}{2m}+\frac12m\omega^2q^2.
$$

Hamilton's equations give $\dot q=p/m$ and $\dot p=-m\omega^2q$, hence $\ddot q+\omega^2q=0$. For two independent directions,

$$
H=\frac{p_x^2+p_y^2}{2m}
+\frac m2(\omega_x^2x^2+\omega_y^2y^2).
$$

The pairs $(x,p_x)$ and $(y,p_y)$ obey independent Hamilton equations. When $\omega_x=\omega_y$, the oscillator is isotropic.

## Central-force motion

For $V=V(r)$, angular momentum is conserved, so the motion lies in a plane. In plane polar coordinates,

$$
H=\frac{p_r^2}{2m}+\frac{p_\phi^2}{2mr^2}+V(r),
\qquad
p_\phi=mr^2\dot\phi=\ell.
$$

The radial equations are

$$
\dot r=\frac{p_r}{m},
\qquad
\dot p_r=\frac{\ell^2}{mr^3}-\frac{dV}{dr}.
$$

Equivalently, the radial motion has the effective potential

$$
V_{\mathrm{eff}}(r)=V(r)+\frac{\ell^2}{2mr^2}.
$$

## Charged particle in an electromagnetic field

For

$$
L=\frac12m\dot{\mathbf r}^{\,2}
+q\dot{\mathbf r}\cdot\mathbf A-q\phi,
$$

the canonical momentum is

$$
\mathbf p=m\dot{\mathbf r}+q\mathbf A.
$$

It differs from the mechanical momentum $m\dot{\mathbf r}$; both $\mathbf p$ and $q\mathbf A$ have SI units $\mathrm{kg\,m\,s^{-1}}$. Solving for the velocity and taking the Legendre transform gives

$$
\boxed{
H=\frac{[\mathbf p-q\mathbf A(\mathbf r,t)]^2}{2m}
+q\phi(\mathbf r,t)}.
$$

The first Hamilton equation gives $\dot{\mathbf r}=(\mathbf p-q\mathbf A)/m$. The second gives

$$
\dot p_i=q\dot x_j\frac{\partial A_j}{\partial x_i}
-q\frac{\partial\phi}{\partial x_i}.
$$

Differentiating $m\dot x_i=p_i-qA_i$ then recovers

$$
m\ddot{\mathbf r}=q(\mathbf E+\dot{\mathbf r}\times\mathbf B).
$$

## Compound pendulum

Let a rigid body of mass $M$ have moment of inertia $I$ about its pivot, with its centre of mass a distance $a$ from the pivot. Taking the lowest position as zero potential,

$$
L=\frac12I\dot\theta^2-Mga(1-\cos\theta),
\qquad
p_\theta=I\dot\theta.
$$

Therefore

$$
\boxed{
H=\frac{p_\theta^2}{2I}+Mga(1-\cos\theta)}.
$$

Hamilton's equations yield

$$
\dot\theta=\frac{p_\theta}{I},
\qquad
\dot p_\theta=-Mga\sin\theta,
$$

and hence $I\ddot\theta+Mga\sin\theta=0$. For $\lvert\theta\rvert\ll1$ rad, $\sin\theta\simeq\theta$, so

$$
\boxed{\omega_0=\sqrt{\frac{Mga}{I}}},
$$

with $\omega_0$ measured in $\mathrm{s^{-1}}$.

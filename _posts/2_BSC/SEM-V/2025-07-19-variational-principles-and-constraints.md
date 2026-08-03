---
title: "Variational Principles, Constraints, and Least Action"
summary: "Euler-Lagrange calculus, D'Alembert and modified Hamilton principles, multipliers, and constrained examples."
date: 2025-07-19 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-iii, variational-principles]
permalink: /bsc/sem-v/mj-10/variational-principles-constraints/
---

## Calculus of variations and the Euler-Lagrange equation

Consider the functional

$$
J[y]=\int_{x_1}^{x_2}F(x,y,y')\,dx.
$$

Vary the curve as $y(x,\epsilon)=y(x)+\epsilon\eta(x)$ while holding its endpoints fixed:

$$
\eta(x_1)=\eta(x_2)=0.
$$

The first variation is

$$
\delta J
=\int_{x_1}^{x_2}\left(
\frac{\partial F}{\partial y}\eta
+\frac{\partial F}{\partial y'}\eta'
\right)dx.
$$

After integration by parts,

$$
\delta J
=\left[\frac{\partial F}{\partial y'}\eta\right]_{x_1}^{x_2}
+\int_{x_1}^{x_2}\left[
\frac{\partial F}{\partial y}
-\frac{d}{dx}\left(\frac{\partial F}{\partial y'}\right)
\right]\eta\,dx.
$$

The boundary term vanishes because the endpoints are fixed. Since $\eta$ is otherwise arbitrary, stationarity $\delta J=0$ requires

$$
\boxed{
\frac{d}{dx}\left(\frac{\partial F}{\partial y'}\right)
-\frac{\partial F}{\partial y}=0}.
$$

For several dependent variables, the same equation holds for each one.

## Hamilton's principle from D'Alembert's principle

D'Alembert's equation in generalized coordinates is

$$
\sum_j\left[
Q_j-\frac{d}{dt}\frac{\partial T}{\partial\dot q_j}
+\frac{\partial T}{\partial q_j}
\right]\delta q_j=0.
$$

For conservative forces $Q_j=-\partial V/\partial q_j$ and $L=T-V$, this becomes

$$
\sum_j\left[
\frac{\partial L}{\partial q_j}
-\frac{d}{dt}\frac{\partial L}{\partial\dot q_j}
\right]\delta q_j=0.
$$

Integrate from $t_1$ to $t_2$. If the comparison paths have the same configurations at both endpoints,

$$
\delta q_j(t_1)=\delta q_j(t_2)=0,
$$

then integration by parts gives

$$
\boxed{
\delta S=0,
\qquad
S=\int_{t_1}^{t_2}L\,dt}.
$$

Thus Hamilton's principle follows from D'Alembert's principle for an ideal constrained conservative system.

## Modified Hamilton principle

In phase space, regard $q_i(t)$ and $p_i(t)$ as independent and vary

$$
S_H=\int_{t_1}^{t_2}\left(\sum_i p_i\dot q_i-H(q,p,t)\right)dt.
$$

Only the coordinate variations are fixed at the endpoints:

$$
\delta q_i(t_1)=\delta q_i(t_2)=0;
$$

$\delta p_i$ need not vanish there. Direct variation and integration of $p_i\delta\dot q_i$ by parts give

$$
\delta S_H
=\left[\sum_i p_i\delta q_i\right]_{t_1}^{t_2}
+\int_{t_1}^{t_2}\sum_i\left[
\left(\dot q_i-\frac{\partial H}{\partial p_i}\right)\delta p_i
-\left(\dot p_i+\frac{\partial H}{\partial q_i}\right)\delta q_i
\right]dt.
$$

The endpoint term is zero. Independent interior variations give both Hamilton equations.

## Lagrange's method of undetermined multipliers

For holonomic constraints

$$
f_\alpha(q,t)=0,
\qquad
\alpha=1,\ldots,k,
$$

introduce multipliers $\lambda_\alpha(t)$ and the augmented Lagrangian

$$
L_{\mathrm a}=L+\sum_\alpha\lambda_\alpha f_\alpha.
$$

Variation with respect to $q_i$ and $\lambda_\alpha$ yields

$$
\boxed{
\frac{d}{dt}\frac{\partial L}{\partial\dot q_i}
-\frac{\partial L}{\partial q_i}
=\sum_\alpha\lambda_\alpha
\frac{\partial f_\alpha}{\partial q_i}},
\qquad
\boxed{f_\alpha=0}.
$$

The multiplier terms are the generalized constraint forces. The sign of a multiplier depends on whether $+\lambda_\alpha f_\alpha$ or $-\lambda_\alpha f_\alpha$ is chosen; physical forces do not depend on that convention.

## Simple pendulum by a multiplier

Use Cartesian coordinates with $y$ positive upward:

$$
L=\frac m2(\dot x^2+\dot y^2)-mgy,
\qquad
f=x^2+y^2-l^2=0.
$$

The multiplier equations are

$$
m\ddot x=2\lambda x,
\qquad
m\ddot y=-mg+2\lambda y.
$$

Write $x=l\sin\theta$ and $y=-l\cos\theta$, with $\theta=0$ at the lowest point. Eliminating $\lambda$ gives

$$
\boxed{\ddot\theta+\frac gl\sin\theta=0}.
$$

Because the constraint force is $2\lambda(x,y)$ and the string tension points inward,

$$
\boxed{T=-2\lambda l=m\left(l\dot\theta^2+g\cos\theta\right)}.
$$

## Rolling hoop on an inclined plane

Let $s$ be distance measured down a plane of angle $\alpha$, and choose the sense of $\theta$ so rolling without slipping is

$$
f=s-R\theta=0.
$$

For a body of mass $M$, radius $R$, and centre-of-mass moment of inertia $I$,

$$
L=\frac12M\dot s^2+\frac12I\dot\theta^2+Mgs\sin\alpha.
$$

The multiplier equations are

$$
M\ddot s-Mg\sin\alpha=\lambda,
\qquad
I\ddot\theta=-\lambda R.
$$

Using $\ddot s=R\ddot\theta$ gives

$$
\boxed{
\ddot s=\frac{g\sin\alpha}{1+I/(MR^2)}}.
$$

For a thin hoop, $I=MR^2$, so

$$
\boxed{\ddot s=\frac12g\sin\alpha},
$$

with units $\mathrm{m\,s^{-2}}$. The multiplier is negative for the chosen $s$ direction, corresponding to static friction acting up the plane.

## Principle of least action

Hamilton's action $S=\int L\,dt$ is stationary for paths with fixed times and fixed configuration endpoints. At fixed energy, Maupertuis' form of the principle is

$$
\boxed{
\delta W=0,
\qquad
W=\int_{q_1}^{q_2}\sum_i p_i\,dq_i}.
$$

The name "least action" is traditional. The required value is stationary and need not always be a minimum.

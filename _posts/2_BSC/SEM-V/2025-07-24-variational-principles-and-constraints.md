---
title: "Variational Principles, Constraints, and Least Action"
summary: "Euler-Lagrange calculus, D'Alembert and modified Hamilton principles, multipliers, and constrained examples."
date: 2025-07-24 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-iii, variational-principles]
permalink: /bsc/sem-v/mj-10/variational-principles-constraints/
---

## Calculus of variations and the Euler-Lagrange equation

Consider the functional

$$
J[y]=\int_{x_1}^{x_2}F(x,y,y^{\prime})\,dx.
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
+\frac{\partial F}{\partial y^{\prime}}\eta^{\prime}
\right)dx.
$$

After integration by parts,

$$
\delta J
=\left[\frac{\partial F}{\partial y^{\prime}}\eta\right]_{x_1}^{x_2}
+\int_{x_1}^{x_2}\left[
\frac{\partial F}{\partial y}
-\frac{d}{dx}\left(\frac{\partial F}{\partial y^{\prime}}\right)
\right]\eta\,dx.
$$

The boundary term vanishes because the endpoints are fixed. Since $\eta$ is otherwise arbitrary, stationarity $\delta J=0$ requires

$$
\boxed{
\frac{d}{dx}\left(\frac{\partial F}{\partial y^{\prime}}\right)
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

then integrating D'Alembert's equation and reversing the time derivative by parts gives

$$
\begin{aligned}
0
&=\int_{t_1}^{t_2}\sum_j\left[
\frac{\partial L}{\partial q_j}
-\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_j}\right)
\right]\delta q_j\,dt\\
&=\int_{t_1}^{t_2}\sum_j\left[
\frac{\partial L}{\partial q_j}\delta q_j
+\frac{\partial L}{\partial\dot q_j}\delta\dot q_j
\right]dt
-\left[\sum_j\frac{\partial L}{\partial\dot q_j}\delta q_j\right]_{t_1}^{t_2}.
\end{aligned}
$$

The boundary term vanishes, and the remaining integral is the first variation of the action. Hence

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

## Solved Problems

### 1. Friction required for a hoop to roll without slipping

A thin hoop rolls down an incline of angle $\alpha$ without slipping. Find its acceleration, the static-friction force, and the minimum coefficient of static friction. Evaluate the acceleration and coefficient for $\alpha=30^\circ$.

Let $s$ increase down the plane. Static friction $f$ acts up the plane, so translation gives

$$
Mg\sin\alpha-f=M\ddot s.
$$

The hoop has $I=MR^2$. Taking angular acceleration in the rolling sense as positive,

$$
fR=I\ddot\theta,
\qquad
\ddot s=R\ddot\theta.
$$

Therefore

$$
fR=MR^2\frac{\ddot s}{R},
\qquad
f=M\ddot s.
$$

Substitution into the translational equation yields

$$
2M\ddot s=Mg\sin\alpha,
$$

so

$$
\boxed{\ddot s=\frac12g\sin\alpha},
\qquad
\boxed{f=\frac12Mg\sin\alpha}.
$$

The normal reaction is $N=Mg\cos\alpha$. The no-slip condition $f\leq\mu_sN$ requires

$$
\boxed{\mu_s\geq\frac12\tan\alpha}.
$$

At $\alpha=30^\circ$,

$$
\ddot s=\frac12(9.81)\sin30^\circ
=2.4525\ \mathrm{m\,s^{-2}},
$$

$$
\mu_{s,\min}=\frac12\tan30^\circ=0.2887.
$$

Static friction supplies angular acceleration but does no work at the instantaneous point of contact. The result applies only while the inequality above is satisfied.

### 2. Tension in a pendulum released from rest

A simple pendulum of mass $m$, length $l$, and release angle $\theta_0$ starts from rest. Use the constraint-force result and energy conservation to obtain the tension at any later angle $\theta$. Then find the bottom tension for $m=0.20\ \mathrm{kg}$ and $\theta_0=60^\circ$.

With the lowest point as zero potential, energy conservation gives

$$
\frac12ml^2\dot\theta^2+mgl(1-\cos\theta)
=mgl(1-\cos\theta_0).
$$

Hence

$$
l\dot\theta^2=2g(\cos\theta-\cos\theta_0).
$$

The inward radial equation, equivalently obtained from the multiplier, is

$$
T-mg\cos\theta=ml\dot\theta^2.
$$

Eliminating $\dot\theta$ gives

$$
\boxed{T(\theta)=mg(3\cos\theta-2\cos\theta_0)}.
$$

At the bottom, $\theta=0$, so

$$
T_{\mathrm b}=mg(3-2\cos\theta_0)
=(0.20)(9.81)(3-1)
=\boxed{3.924\ \mathrm N}.
$$

At release, the same expression gives $T_0=mg\cos\theta_0$, as required because the initial radial speed is zero. The string can enforce the assumed constraint only where $T\geq0$.

## Descriptive Questions

1. Derive the Euler-Lagrange equation for a functional $J[y]=\int F(x,y,y^{\prime})\,dx$, including the endpoint conditions on admissible variations.
2. Compare Hamilton's configuration-space principle with the modified Hamilton principle in phase space, stating which endpoint variations vanish in each.
3. Explain how Lagrange multipliers represent generalized constraint forces and why the sign of a multiplier depends on the chosen constraint convention.
4. Distinguish Hamilton's fixed-time stationary action from Maupertuis' fixed-energy abbreviated action.

## Numerical Problems

1. For $J[y]=\tfrac12\int_0^1\big[(y^{\prime})^2+y^2\big]\,dx$ with $y(0)=0$ and $y(1)=1$, the extremal obeys $y^{\prime\prime}-y=0$. Find $y(0.5)$. **Answer:** $y(x)=\sinh x/\sinh(1)$, so $y(0.5)=0.4434$.
2. A free particle of mass $3.0\ \mathrm{kg}$ follows the stationary path from $x=0$ at $t=0$ to $x=6.0\ \mathrm m$ at $t=2.0\ \mathrm s$. Find its speed and action $S=\int L\,dt$. **Answer:** $3.000\ \mathrm{m\,s^{-1}}$, $27.00\ \mathrm{J\,s}$.
3. The phase-space action has $H=p^2/(2m)+m\omega^2q^2/2$. For $m=2.0\ \mathrm{kg}$, $\omega=3.0\ \mathrm{s^{-1}}$, $q(0)=0$, and $p(0)=m\omega A$ with $A=0.40\ \mathrm m$, find $t$, $q$, and $p$ after one-quarter period. **Answer:** $0.5236\ \mathrm s$, $0.4000\ \mathrm m$, $0$.
4. Linearize the multiplier equation for a simple pendulum of length $0.75\ \mathrm m$ and find its small-oscillation period for $g=9.81\ \mathrm{m\,s^{-2}}$. **Answer:** $1.737\ \mathrm s$.

[Maxima verification: rolling and pendulum residuals, with all numerical values]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-iii/variational-problems.mac' | relative_url }}).

## References

1. [Calculus of variations — Wikipedia](https://en.wikipedia.org/wiki/Calculus_of_variations)
2. H. Goldstein, C. Poole, and J. Safko, *Classical Mechanics*, 3rd ed., Chapters 2 and 8, Pearson (2002).
3. L. D. Landau and E. M. Lifshitz, *Mechanics*, 3rd ed., Sections 2 and 44, Butterworth-Heinemann (1976).
4. I. M. Gelfand and S. V. Fomin, *Calculus of Variations*, Chapters 1–2, Dover (2000).

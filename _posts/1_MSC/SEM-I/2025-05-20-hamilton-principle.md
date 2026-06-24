---
title: "Hamilton Principle and Calculus of Variations"
summary: "Stationary action, Euler-Lagrange equation from variational calculus, and simple applications."
date: 2026-05-03 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - hamilton-principle
  - calculus-of-variations
permalink: /msc/sem-i/lagrangian-mechanics/
hidden: true
---

Hamilton's principle gives a variational form of mechanics. Instead of beginning with force and acceleration at each instant, it considers the whole path followed by the system between two fixed times. Among all nearby possible paths with the same endpoints, the actual path makes the action stationary.

This approach is powerful because it leads directly to Lagrange's equations and works naturally with generalized coordinates.

## Functional and variation

A functional assigns a number to a function. A typical functional is

$$
I[y]=\int_{x_1}^{x_2}F(y,y',x)\,dx.
$$

If the curve is varied as

$$
y(x)\to y(x)+\epsilon\eta(x),
$$

with fixed endpoints

$$
\eta(x_1)=\eta(x_2)=0,
$$

then the stationary condition is

$$
\delta I=0.
$$

The function $\eta(x)$ represents an arbitrary small change of the curve. Since the endpoints are fixed, the varied curve must pass through the same endpoints as the original curve.

## Euler-Lagrange equation

For

$$
I[y]=\int_{x_1}^{x_2}F(y,y',x)\,dx,
$$

the condition $\delta I=0$ gives

$$
\boxed{
\frac{\partial F}{\partial y}
-\frac{d}{dx}\left(\frac{\partial F}{\partial y'}\right)=0.
}
$$

This is the basic result of the calculus of variations.

## Hamilton's principle

For a mechanical system, the action is

$$
S=\int_{t_1}^{t_2}L(q_i,\dot q_i,t)\,dt.
$$

Hamilton's principle states that the actual path makes the action stationary:

$$
\boxed{\delta S=0.}
$$

Stationary does not always mean minimum. It may be a minimum, maximum, or saddle point.

This is why the phrase "principle of least action" should be used with care. In exam answers, "stationary action" is the safer and more accurate wording.

## Lagrange equation from Hamilton's principle

Vary the path:

$$
q_i(t)\to q_i(t)+\delta q_i(t),
$$

with

$$
\delta q_i(t_1)=\delta q_i(t_2)=0.
$$

Then

$$
\delta S=\int_{t_1}^{t_2}\sum_i
\left(
\frac{\partial L}{\partial q_i}\delta q_i+
\frac{\partial L}{\partial\dot q_i}\delta\dot q_i

\right)dt.
$$

Using integration by parts on the $\delta\dot q_i$ term and applying fixed endpoint conditions gives

$$
\delta S=\int_{t_1}^{t_2}\sum_i
\left[
\frac{\partial L}{\partial q_i}-
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_i}\right)
\right]
\delta q_i\,dt.
$$

Since the variations $\delta q_i$ are arbitrary,

$$
\boxed{
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot q_i}\right)
-\frac{\partial L}{\partial q_i}=0.
}
$$

## Example: shortest path

For the shortest path between two points,

$$
I[y]=\int_{x_1}^{x_2}\sqrt{1+y'^2}\,dx.
$$

Here $F=\sqrt{1+y'^2}$ does not depend explicitly on $y$, so

$$
\frac{d}{dx}\left(\frac{y'}{\sqrt{1+y'^2}}\right)=0.
$$

This implies $y'$ is constant, so

$$
y=mx+c.
$$

Thus the shortest path is a straight line.

## Example: free particle

For a free particle in one dimension,

$$
L=\frac12m\dot x^2.
$$

Hamilton's principle gives

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial\dot x}\right)
-\frac{\partial L}{\partial x}=0.
$$

Here

$$
\frac{\partial L}{\partial\dot x}=m\dot x,
\qquad
\frac{\partial L}{\partial x}=0.
$$

Therefore

$$
m\ddot x=0.
$$

The solution is

$$
x=ut+x_0,
$$

which is uniform motion in a straight line.

## Boundary condition in the variation

The endpoint conditions

$$
\delta q_i(t_1)=\delta q_i(t_2)=0
$$

are essential. They make the boundary term from integration by parts vanish:

$$
\left[
\frac{\partial L}{\partial\dot q_i}\delta q_i
\right]_{t_1}^{t_2}=0.
$$

Without this condition, the Euler-Lagrange equation would not follow in the usual form.

## Main points

- Variational calculus studies stationary values of functionals.
- Hamilton's principle is $\delta S=0$.
- Fixed endpoints make boundary terms vanish.
- Lagrange's equations follow directly from Hamilton's principle.
- The principle is stationary action, not always least action.

## Practice questions

1. Define a functional and its variation.
2. Derive the Euler-Lagrange equation for $I[y]$.
3. State Hamilton's principle.
4. Derive Lagrange's equation from $\delta S=0$.
5. Show that the shortest path between two points is a straight line.

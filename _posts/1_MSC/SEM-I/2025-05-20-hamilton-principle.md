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

This note matches the syllabus topics: Hamilton's principle, techniques of the calculus of variations, applications, and derivation of Lagrange's equation using Hamilton's principle.

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

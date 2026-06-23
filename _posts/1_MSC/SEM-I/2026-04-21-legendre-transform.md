---
title: "Legendre Transform in Mechanics"
summary: "The Legendre transform as the bridge from the Lagrangian to the Hamiltonian description."
date: 2026-05-05 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - legendre-transform
permalink: /msc/sem-i/legendre-transform/
hidden: true
---

The Legendre transform is the mathematical step that changes the natural variables from velocity to momentum. It is included here only as much as needed for Hamiltonian mechanics and generating functions.

## Basic idea

For a function $f(x)$, define the conjugate variable

$$
y=\frac{df}{dx}.
$$

The Legendre transform is

$$
\boxed{
g(y)=xy-f(x),
}
$$

where $x$ is finally expressed as a function of $y$.

The differential is

$$
dg=x\,dy,
$$

so

$$
\frac{dg}{dy}=x.
$$

Thus the transform replaces $x$ by its conjugate variable $y$.

## From Lagrangian to Hamiltonian

In mechanics,

$$
p_i=\frac{\partial L}{\partial\dot q_i}
$$

is conjugate to $\dot q_i$. The Hamiltonian is the Legendre transform of $L$ with respect to all velocities:

$$
\boxed{
H(q,p,t)=\sum_i p_i\dot q_i-L(q,\dot q,t).
}
$$

After the transform, $\dot q_i$ must be eliminated in favor of $(q_i,p_i,t)$.

## Example: quadratic kinetic energy

For

$$
L=\frac12m\dot x^2-V(x),
$$

the momentum is

$$
p=m\dot x.
$$

So

$$
\dot x=\frac{p}{m}.
$$

The Hamiltonian is

$$
H=p\dot x-L.
$$

Substituting,

$$
H=\frac{p^2}{m}-\left(\frac{p^2}{2m}-V(x)\right),
$$

hence

$$
\boxed{
H=\frac{p^2}{2m}+V(x).
}
$$

## Invertibility condition

The transform is regular when the Hessian is nonzero:

$$
\det\left(\frac{\partial^2L}{\partial\dot q_i\partial\dot q_j}\right)\ne0.
$$

This condition allows velocities to be solved in terms of momenta.

## Relation with generating functions

Generating functions in canonical transformations use the same idea. One may change from variables $(q,Q)$ to $(q,P)$ by a Legendre transform, producing the familiar type-$2$ generating function $F_2(q,P,t)$.

## Main points

- Legendre transform replaces a variable by its conjugate derivative variable.
- In mechanics, velocity is replaced by momentum.
- The Hamiltonian is $H=\sum_i p_i\dot q_i-L$.
- A regular transform requires an invertible velocity-momentum relation.
- Generating functions use the same transformation logic.

## Practice questions

1. Find the Legendre transform of $f(x)=ax^2$.
2. Show that $H=p\dot q-L$ gives $H=p^2/(2m)+V(x)$ for $L=m\dot x^2/2-V(x)$.
3. Why must $\dot q$ be eliminated after forming $H$?
4. State the regularity condition for the Legendre transform in mechanics.
5. Explain why $F_2(q,P,t)$ is related to $F_1(q,Q,t)$ by a Legendre transform.

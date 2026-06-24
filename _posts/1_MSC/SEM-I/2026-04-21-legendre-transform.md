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

In Lagrangian mechanics the natural variables are $q$ and $\dot q$. In Hamiltonian mechanics the natural variables are $q$ and $p$. The Legendre transform is the mathematical operation that changes from a variable to its conjugate derivative variable.

The need for this transform appears whenever the slope or momentum is more useful than the original velocity-like variable.

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

Geometrically, a convex curve may be described either by its point coordinate $x$ or by the slope $y=df/dx$ of the tangent at that point. The Legendre transform rewrites the information in terms of the slope.

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

## Transform of a quadratic function

Find the Legendre transform of

$$
f(x)=\frac12ax^2,
\qquad a>0.
$$

The conjugate variable is

$$
y=\frac{df}{dx}=ax.
$$

Hence

$$
x=\frac{y}{a}.
$$

The Legendre transform is

$$
g(y)=xy-f(x).
$$

Substituting $x=y/a$,

$$
g(y)=\frac{y^2}{a}
-\frac12a\left(\frac{y}{a}\right)^2.
$$

Therefore

$$
\boxed{
g(y)=\frac{y^2}{2a}.
}
$$

The same algebra is used in mechanics when $m\dot q$ is replaced by $p$.

## Common caution

After writing $g=xy-f(x)$ or $H=p\dot q-L$, the old variable must be eliminated. The final expression for $g$ should contain $y$, not $x$; similarly, the final Hamiltonian should contain $(q,p,t)$, not $\dot q$.

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

---
title: "Poisson Theorems and Angular Momentum"
summary: "Poisson theorem, canonical invariance, cyclic coordinates, and angular momentum brackets."
date: 2026-05-09 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - poisson-bracket
  - poisson-theorem
  - angular-momentum
permalink: /msc/sem-i/poisson-theorem-canonical-transformations/
hidden: true
---

**Previous:** [Poisson Brackets](/msc/sem-i/poisson-bracket-theorems/)

The syllabus topics here are Poisson theorem, canonical invariance, cyclic coordinates, and angular momentum brackets. The common idea behind them is that Poisson brackets preserve the structure of Hamiltonian mechanics.

Constants of motion are not isolated facts. Their Poisson brackets can generate further conserved quantities, and canonical transformations are recognized by the way they preserve fundamental brackets.

## Poisson theorem

If $f$ and $g$ are constants of motion, then their Poisson bracket is also a constant of motion:

$$
\boxed{
\frac{df}{dt}=0,
\quad
\frac{dg}{dt}=0
\quad\Rightarrow\quad
\frac{d}{dt}\{f,g\}=0.
}
$$

For functions with no explicit time dependence, this follows from

$$
\{f,H\}=0,
\qquad
\{g,H\}=0,
$$

and the Jacobi identity.

## Cyclic coordinates

If $q_k$ is absent from $H$, then

$$
\frac{\partial H}{\partial q_k}=0.
$$

Hamilton's equation gives

$$
\dot p_k=-\frac{\partial H}{\partial q_k}=0.
$$

Equivalently,

$$
\{p_k,H\}=0.
$$

So $p_k$ is conserved.

## Canonical transformation test

A transformation $(q,p)\to(Q,P)$ is canonical when

$$
\boxed{
\{Q_i,Q_j\}=0,
\qquad
\{P_i,P_j\}=0,
\qquad
\{Q_i,P_j\}=\delta_{ij}.
}
$$

This is often the quickest test for canonicity.

## Angular momentum brackets

For

$$
\mathbf L=\mathbf r\times\mathbf p,
$$

the components satisfy

$$
\boxed{
\{L_x,L_y\}=L_z,
\qquad
\{L_y,L_z\}=L_x,
\qquad
\{L_z,L_x\}=L_y.
}
$$

In compact form,

$$
\boxed{
\{L_i,L_j\}=\epsilon_{ijk}L_k.
}
$$

These brackets show that angular momentum components generate rotations.

## Central force

For a central potential,

$$
H=\frac{\mathbf p^2}{2m}+V(r),
$$

rotational symmetry gives

$$
\boxed{\{L_i,H\}=0.}
$$

Therefore all components of angular momentum are conserved.

## Proof of Poisson theorem

If $f$ and $g$ have no explicit time dependence and are constants of motion, then

$$
\{f,H\}=0,
\qquad
\{g,H\}=0.
$$

The time derivative of their bracket is

$$
\frac{d}{dt}\{f,g\}=\{\{f,g\},H\}.
$$

Using the Jacobi identity,

$$
\{\{f,g\},H\}+\{\{g,H\},f\}+\{\{H,f\},g\}=0.
$$

The second and third terms vanish because $\{g,H\}=0$ and $\{H,f\}=-\{f,H\}=0$. Therefore

$$
\frac{d}{dt}\{f,g\}=0.
$$

Hence $\{f,g\}$ is also a constant of motion.

## Canonical test for $Q=p,\ P=-q$

Let

$$
Q=p,\qquad P=-q.
$$

Then

$$
\{Q,P\}=\{p,-q\}=-\{p,q\}=1.
$$

Also,

$$
\{Q,Q\}=0,\qquad \{P,P\}=0.
$$

Therefore the transformation is canonical.

## Main points

- Poisson theorem says constants of motion are closed under Poisson brackets.
- A cyclic coordinate gives a conserved conjugate momentum.
- Canonical transformations preserve fundamental Poisson brackets.
- Angular momentum components satisfy $\{L_i,L_j\}=\epsilon_{ijk}L_k$.
- Central forces conserve angular momentum.

## Practice questions

1. State and prove Poisson's theorem.
2. Show that a cyclic coordinate gives a conserved momentum.
3. Test whether $Q=p$, $P=-q$ is canonical.
4. Derive $\{L_x,L_y\}=L_z$.
5. Show that angular momentum is conserved for $V=V(r)$.

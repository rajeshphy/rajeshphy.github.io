---
title: "Angular Momentum Operators"
summary: "Commutation relations, ladder operators, and the algebraic structure of angular momentum in quantum mechanics."
date: 2026-06-01 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - angular-momentum
  - commutation-relations
permalink: /msc/sem-i/angular-momentum-operator-algebra/
hidden: true
---

Angular momentum in quantum mechanics is not only a vector quantity. It is an operator algebra. The components of angular momentum do not commute with each other, and this non-commutativity is the reason why only one component, usually $L_z$, can be specified sharply along with $L^2$.

## Orbital angular momentum

For a particle with position operator $\mathbf r$ and momentum operator $\mathbf p$, the orbital angular momentum operator is

$$
\mathbf L=\mathbf r\times \mathbf p.
$$

In Cartesian components,

$$
L_x=yp_z-zp_y,\qquad
L_y=zp_x-xp_z,\qquad
L_z=xp_y-yp_x.
$$

The canonical commutation relations are

$$
[x_i,p_j]=i\hbar\delta_{ij},\qquad
[x_i,x_j]=0,\qquad
[p_i,p_j]=0.
$$

Using these, one obtains the angular momentum algebra

$$
\boxed{
[L_x,L_y]=i\hbar L_z,\qquad
[L_y,L_z]=i\hbar L_x,\qquad
[L_z,L_x]=i\hbar L_y.
}
$$

In compact notation,

$$
\boxed{
[L_i,L_j]=i\hbar\epsilon_{ijk}L_k.
}
$$

Here $\epsilon_{ijk}$ is the Levi-Civita symbol.

## Total angular momentum algebra

The same algebra is satisfied by any angular momentum operator $\mathbf J$:

$$
\boxed{
[J_i,J_j]=i\hbar\epsilon_{ijk}J_k.
}
$$

This includes orbital angular momentum $\mathbf L$, spin angular momentum $\mathbf S$, and total angular momentum

$$
\mathbf J=\mathbf L+\mathbf S.
$$

## Commutation with $J^2$

Define

$$
J^2=J_x^2+J_y^2+J_z^2.
$$

Although the components of $\mathbf J$ do not commute with each other, $J^2$ commutes with every component:

$$
\boxed{
[J^2,J_x]=[J^2,J_y]=[J^2,J_z]=0.
}
$$

Therefore $J^2$ and one chosen component, conventionally $J_z$, can have simultaneous eigenstates.

## Ladder operators

Define the raising and lowering operators

$$
J_+=J_x+iJ_y,\qquad
J_-=J_x-iJ_y.
$$

They satisfy

$$
\boxed{
[J_z,J_\pm]=\pm\hbar J_\pm
}
$$

and

$$
\boxed{
[J_+,J_-]=2\hbar J_z.
}
$$

The operators $J_+$ and $J_-$ change the magnetic quantum number $m$ without changing $j$.

## Useful identities

The ladder operators are related to $J^2$ by

$$
J^2=J_-J_+ + J_z^2+\hbar J_z
$$

and

$$
J^2=J_+J_- + J_z^2-\hbar J_z.
$$

Equivalently,

$$
J_+J_-=J^2-J_z^2+\hbar J_z,
$$

$$
J_-J_+=J^2-J_z^2-\hbar J_z.
$$

These identities are used to derive the allowed eigenvalues of angular momentum.

## Main points

- Angular momentum components do not commute.
- The operator $J^2$ commutes with all components of $\mathbf J$.
- The pair $(J^2,J_z)$ can be diagonalized simultaneously.
- Ladder operators move between states with different $m$ values.
- The algebra is the same for orbital, spin, and total angular momentum.

## Practice questions

1. Starting from $L_x=yp_z-zp_y$, derive $[L_x,L_y]=i\hbar L_z$.
2. Prove that $[J^2,J_z]=0$.
3. Derive $[J_z,J_\pm]=\pm\hbar J_\pm$.
4. Show that $[J_+,J_-]=2\hbar J_z$.
5. Explain why $J_x$, $J_y$, and $J_z$ cannot all be measured sharply in the same state.

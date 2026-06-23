---
title: "Poisson Theorem and Canonical Transformations"
summary: "Poisson theorem, canonical transformations, cyclic coordinates, symmetry generators, and standard bracket relations."
date: 2026-05-04 09:30:00 +0530
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
  - canonical-transformations
  - hamiltonian-mechanics
permalink: /msc/sem-i/poisson-theorem-canonical-transformations/
hidden: true
---

**Previous:** [Poisson Bracket: Definition and Examples](/msc/sem-i/poisson-bracket-theorems/)

This note continues the Poisson bracket discussion. Here the focus is on Poisson theorem, canonical transformations, cyclic coordinates, symmetry generators, and the standard bracket relations commonly used in Hamiltonian mechanics.

## Poisson theorem on constants of motion

A constant of motion is a quantity $f(q,p,t)$ whose total time derivative vanishes:

$$
\frac{df}{dt}=0.
$$

Using the Poisson bracket form of time evolution,

$$
\frac{df}{dt}
=
\{f,H\}
+
\frac{\partial f}{\partial t}.
$$

Therefore $f$ is conserved if

$$
\boxed{
\{f,H\}+\frac{\partial f}{\partial t}=0.
}
$$

If $f$ has no explicit time dependence, this reduces to

$$
\boxed{
\{f,H\}=0.
}
$$

Now suppose $f$ and $g$ are two constants of motion. Then

$$
\frac{df}{dt}=0,
\qquad
\frac{dg}{dt}=0.
$$

Poisson's theorem states that the Poisson bracket of two constants of motion is also a constant of motion:

$$
\boxed{
\text{If } f \text{ and } g \text{ are constants of motion, then } \{f,g\} \text{ is also a constant of motion.}
}
$$

### Proof of Poisson theorem

Assume first that $f$ and $g$ have no explicit time dependence. Since both are constants of motion,

$$
\{f,H\}=0,
\qquad
\{g,H\}=0.
$$

We need to prove that

$$
\frac{d}{dt}\{f,g\}=0.
$$

Using the time evolution formula,

$$
\frac{d}{dt}\{f,g\}
=
\{\{f,g\},H\}.
$$

Now use the Jacobi identity:

$$
\{f,\{g,H\}\}
+
\{g,\{H,f\}\}
+
\{H,\{f,g\}\}
=
0.
$$

Since

$$
\{g,H\}=0
$$

and

$$
\{H,f\}=-\{f,H\}=0,
$$

the first two terms vanish. Hence

$$
\{H,\{f,g\}\}=0.
$$

Using antisymmetry,

$$
\{\{f,g\},H\}=0.
$$

Therefore,

$$
\frac{d}{dt}\{f,g\}=0.
$$

Hence,

$$
\boxed{
\{f,g\}
\text{ is also a constant of motion.}
}
$$

This is Poisson's theorem.

### Meaning of Poisson theorem

Poisson's theorem says that constants of motion form a closed algebra under the Poisson bracket. If two quantities are conserved, their Poisson bracket gives another conserved quantity.

This is powerful because it can generate new constants of motion from known constants of motion.

For example, in a rotationally symmetric system,

$$
L_x,\quad L_y,\quad L_z
$$

are constants of motion. Since

$$
\{L_x,L_y\}=L_z,
$$

the Poisson bracket of two conserved angular momentum components gives another conserved component.

Thus angular momentum conservation is not just three separate conservation laws. The components form a connected algebra of conserved quantities.

## Poisson bracket and canonical transformations

A transformation from $(q_i,p_i)$ to $(Q_i,P_i)$ is canonical if the new variables satisfy the same fundamental Poisson bracket relations:

$$
\boxed{
\{Q_i,Q_j\}=0,
\qquad
\{P_i,P_j\}=0,
\qquad
\{Q_i,P_j\}=\delta_{ij}.
}
$$

This criterion is often easier than constructing a generating function.

For example, consider

$$
Q=p,
\qquad
P=-q.
$$

Then

$$
\{Q,P\}
=
\{p,-q\}
=
-\{p,q\}
=
-(-1)
=
1.
$$

Also,

$$
\{Q,Q\}=\{p,p\}=0,
\qquad
\{P,P\}=\{-q,-q\}=0.
$$

Therefore the transformation is canonical.

This transformation exchanges coordinate and momentum up to a sign. It is a simple phase-space rotation.

## Poisson bracket and cyclic coordinates

If a coordinate $q_k$ is absent from the Hamiltonian, then

$$
\frac{\partial H}{\partial q_k}=0.
$$

Hamilton's equation gives

$$
\dot p_k=-\frac{\partial H}{\partial q_k}=0.
$$

In Poisson bracket form,

$$
\dot p_k=\{p_k,H\}=0.
$$

Therefore,

$$
\boxed{
p_k=\text{constant}.
}
$$

Thus the absence of a coordinate from the Hamiltonian implies conservation of its conjugate momentum.

Examples:

- if $x$ is absent from $H$, then $p_x$ is conserved,
- if $\phi$ is absent from $H$, then $p_\phi$ is conserved,
- if time is absent explicitly from $H$, then energy is conserved.

This is the Poisson bracket form of the relation between cyclic coordinates and conservation laws.

## Poisson bracket and symmetry generators

If $G$ generates an infinitesimal canonical transformation, then

$$
\delta f=\varepsilon\{f,G\}.
$$

The Hamiltonian changes as

$$
\delta H=\varepsilon\{H,G\}.
$$

If the transformation is a symmetry, then

$$
\delta H=0.
$$

Therefore,

$$
\{H,G\}=0.
$$

Equivalently,

$$
\{G,H\}=0.
$$

If $G$ has no explicit time dependence, then

$$
\frac{dG}{dt}=\{G,H\}=0.
$$

Hence,

$$
\boxed{
G=\text{constant}.
}
$$

Thus:

$$
\boxed{
\text{symmetry generator}
\quad\Longrightarrow\quad
\text{conserved quantity}.
}
$$

This is the Hamiltonian form of Noether's idea.

## Important standard Poisson brackets

For canonical variables,

$$
\{q_i,p_j\}=\delta_{ij}.
$$

For any function $f(q,p)$ in one dimension,

$$
\{q,f\}=\frac{\partial f}{\partial p},
\qquad
\{p,f\}=-\frac{\partial f}{\partial q}.
$$

For angular momentum,

$$
\{L_i,L_j\}=\epsilon_{ijk}L_k.
$$

For position and angular momentum,

$$
\{x_i,L_j\}=\epsilon_{ijk}x_k.
$$

For momentum and angular momentum,

$$
\{p_i,L_j\}=\epsilon_{ijk}p_k.
$$

These relations show that angular momentum generates rotations of both position and momentum vectors.

## Common interpretation table

| Poisson bracket relation | Physical meaning |
|---|---|
| $\\{q_i,p_j\\}=\delta_{ij}$ | canonical coordinate-momentum structure |
| $\dot f=\\{f,H\\}+\frac{\partial f}{\partial t}$ | Hamiltonian generates time evolution |
| $\\{f,H\\}=0$ | $f$ is conserved if it has no explicit time dependence |
| $\delta f=\varepsilon\\{f,G\\}$ | $G$ generates infinitesimal canonical transformation |
| $\\{p,H\\}=0$ | momentum conservation |
| $\\{L_i,H\\}=0$ | angular momentum conservation |
| $\\{H,H\\}=0$ | energy conservation when $H$ is time independent |
| $\\{L_i,L_j\\}=\epsilon_{ijk}L_k$ | angular momentum algebra |
| $\\{Q_i,P_j\\}=\delta_{ij}$ | canonical transformation test |


## Practice questions

1. Define the Poisson bracket of two phase-space functions $f$ and $g$.

2. Prove that

$$
\{f,g\}=-\{g,f\}.
$$

3. Show that

$$
\{q_i,p_j\}=\delta_{ij}.
$$

4. Derive Hamilton's equations using Poisson brackets.

5. Prove that

$$
\frac{df}{dt}=\{f,H\}+\frac{\partial f}{\partial t}.
$$

6. Show that if $f$ has no explicit time dependence and $\{f,H\}=0$, then $f$ is conserved.

7. Prove Poisson's theorem: if $f$ and $g$ are constants of motion, then $\{f,g\}$ is also a constant of motion.

8. Show that momentum generates spatial translation.

9. Show that angular momentum generates rotation.

10. For a central force Hamiltonian,

$$
H=\frac{\mathbf p^2}{2m}+V(r),
$$

show that angular momentum is conserved.

11. For the harmonic oscillator, use Poisson brackets to derive

$$
\ddot q+\omega^2q=0.
$$

12. Test whether the transformation

$$
Q=p,
\qquad
P=-q
$$

is canonical using Poisson brackets.

13. Explain the physical meaning of the Jacobi identity.

14. Derive the angular momentum Poisson bracket relation

$$
\{L_i,L_j\}=\epsilon_{ijk}L_k.
$$

15. Explain why the Poisson bracket is the bridge between symmetry and conservation law.

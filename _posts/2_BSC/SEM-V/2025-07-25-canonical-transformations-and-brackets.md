---
title: "Canonical Transformations, Poisson Brackets, and Lagrange Brackets"
summary: "Legendre maps, generating functions, canonical conditions, Poisson and Lagrange brackets, and invariance."
date: 2025-07-25 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-iii, canonical-transformations]
permalink: /bsc/sem-v/mj-10/canonical-transformations-brackets/
---

## Legendre transformations

For a differentiable function $f(x)$, define

$$
p=\frac{df}{dx},
\qquad
g(p)=px-f(x).
$$

When $p=f'(x)$ can be inverted for $x(p)$,

$$
dg=x\,dp.
$$

Thus the Legendre transformation replaces the independent variable $x$ by its conjugate slope $p$. In mechanics it replaces velocities by momenta:

$$
p_i=\frac{\partial L}{\partial\dot q_i},
\qquad
\boxed{H(q,p,t)=\sum_i p_i\dot q_i-L(q,\dot q,t)}.
$$

The map is locally invertible when

$$
\det\left(\frac{\partial^2L}
{\partial\dot q_i\partial\dot q_j}\right)\neq0.
$$

## Canonical transformations and generating functions

A transformation $(q,p)\mapsto(Q,P)$ is canonical if the new variables satisfy Hamilton's equations for a transformed Hamiltonian $K(Q,P,t)$. The old and new phase-space one-forms may differ by an exact differential:

$$
\sum_i p_i\,dq_i-H\,dt
=\sum_i P_i\,dQ_i-K\,dt+dF_1(q,Q,t).
$$

Comparing the independent differentials gives the type-1 relations

$$
\boxed{p_i=\frac{\partial F_1}{\partial q_i}},
\qquad
\boxed{P_i=-\frac{\partial F_1}{\partial Q_i}},
\qquad
\boxed{K=H+\frac{\partial F_1}{\partial t}}.
$$

Partial Legendre transformations of $F_1$ produce the other standard types. For

$$
F_2(q,P,t)=F_1+\sum_iQ_iP_i,
$$

the relations are

$$
p_i=\frac{\partial F_2}{\partial q_i},
\qquad
Q_i=\frac{\partial F_2}{\partial P_i},
\qquad
K=H+\frac{\partial F_2}{\partial t}.
$$

For

$$
F_3(p,Q,t)=F_1-\sum_iq_ip_i,
$$

they are

$$
q_i=-\frac{\partial F_3}{\partial p_i},
\qquad
P_i=-\frac{\partial F_3}{\partial Q_i},
\qquad
K=H+\frac{\partial F_3}{\partial t}.
$$

Finally,

$$
F_4(p,P,t)=F_1+\sum_iQ_iP_i-\sum_iq_ip_i
$$

gives

$$
q_i=-\frac{\partial F_4}{\partial p_i},
\qquad
Q_i=\frac{\partial F_4}{\partial P_i},
\qquad
K=H+\frac{\partial F_4}{\partial t}.
$$

For example, with constant $a\neq0$,

$$
F_2(q,P)=aqP
$$

generates $Q=aq$ and $P=p/a$.

## Condition for a canonical transformation

The Poisson bracket in the old variables is

$$
\{A,B\}_{q,p}
=\sum_i\left(
\frac{\partial A}{\partial q_i}\frac{\partial B}{\partial p_i}
-\frac{\partial A}{\partial p_i}\frac{\partial B}{\partial q_i}
\right).
$$

A non-singular transformation is canonical if and only if its new variables obey the fundamental brackets

$$
\boxed{\{Q_i,Q_j\}_{q,p}=0},
\qquad
\boxed{\{P_i,P_j\}_{q,p}=0},
\qquad
\boxed{\{Q_i,P_j\}_{q,p}=\delta_{ij}}.
$$

Equivalently, put

$$
z=(q_1,\ldots,q_s,p_1,\ldots,p_s)^T,
\qquad
Z=(Q_1,\ldots,Q_s,P_1,\ldots,P_s)^T,
$$

and define

$$
M=\frac{\partial Z}{\partial z},
\qquad
J=\begin{pmatrix}0&I\\-I&0\end{pmatrix}.
$$

The canonical condition is

$$
\boxed{MJM^T=J}.
$$

## Poisson brackets and time evolution

The bracket is bilinear and antisymmetric, obeys the product rule, and satisfies the Jacobi identity,

$$
\{A,\{B,C\}\}
+\{B,\{C,A\}\}
+\{C,\{A,B\}\}=0.
$$

Using Hamilton's equations,

$$
\frac{dA}{dt}
=\sum_i\left(
\frac{\partial A}{\partial q_i}\dot q_i
+\frac{\partial A}{\partial p_i}\dot p_i
\right)
+\frac{\partial A}{\partial t}
=\boxed{\{A,H\}+\frac{\partial A}{\partial t}}.
$$

Therefore a quantity with no explicit time dependence is conserved precisely when its Poisson bracket with $H$ vanishes.

## Lagrange brackets

Let $u_1,\ldots,u_{2s}$ be any non-singular set of phase-space coordinates, with $q_i=q_i(u)$ and $p_i=p_i(u)$. The Lagrange bracket is

$$
\boxed{
[u_\alpha,u_\beta]
=\sum_i\left(
\frac{\partial q_i}{\partial u_\alpha}
\frac{\partial p_i}{\partial u_\beta}
-\frac{\partial q_i}{\partial u_\beta}
\frac{\partial p_i}{\partial u_\alpha}
\right)}.
$$

If $C_{\alpha\beta}=\{u_\alpha,u_\beta\}$ and $L_{\alpha\beta}=[u_\alpha,u_\beta]$, then

$$
CL=-I,
$$

or, equivalently,

$$
\sum_\gamma
\{u_\alpha,u_\gamma\}
[u_\beta,u_\gamma]
=\delta_{\alpha\beta}.
$$

For canonical variables this gives

$$
\boxed{[Q_i,Q_j]=0},
\qquad
\boxed{[P_i,P_j]=0},
\qquad
\boxed{[Q_i,P_j]=\delta_{ij}}.
$$

In particular, the mixed Lagrange bracket has a plus sign with the definition above.

## Invariance of the Poisson bracket

For functions $A(Z)$ and $B(Z)$, the chain rule gives

$$
\{A,B\}_{q,p}
=\sum_{\alpha,\beta}
\frac{\partial A}{\partial Z_\alpha}
\frac{\partial B}{\partial Z_\beta}
\{Z_\alpha,Z_\beta\}_{q,p}.
$$

If $(Q,P)$ is canonical, its fundamental brackets reduce the right-hand side to

$$
\boxed{\{A,B\}_{q,p}=\{A,B\}_{Q,P}}.
$$

Thus the Poisson-bracket structure, and consequently Hamilton's equations, is invariant under a canonical transformation.

[Maxima verification: generating-function, canonical-bracket, Lagrange-bracket, and invariance residuals]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-iii/canonical-brackets.mac' | relative_url }}).

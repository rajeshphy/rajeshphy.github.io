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

When $p=f^{\prime}(x)$ can be inverted for $x(p)$,

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

## Solved Problems

### 1. Canonical phase-space rotation of an oscillator

For constants $m>0$, $\omega>0$, and dimensionless $\beta$, consider

$$
Q=q\cos\beta+\frac{p}{m\omega}\sin\beta,
\qquad
P=p\cos\beta-m\omega q\sin\beta.
$$

Show that this transformation is canonical and leaves the harmonic-oscillator Hamiltonian invariant.

The derivatives are

$$
\frac{\partial Q}{\partial q}=\cos\beta,
\qquad
\frac{\partial Q}{\partial p}=\frac{\sin\beta}{m\omega},
$$

$$
\frac{\partial P}{\partial q}=-m\omega\sin\beta,
\qquad
\frac{\partial P}{\partial p}=\cos\beta.
$$

Therefore

$$
\{Q,P\}
=\cos^2\beta
-\frac{\sin\beta}{m\omega}(-m\omega\sin\beta)
=1.
$$

For one degree of freedom, $\{Q,Q\}=\{P,P\}=0$ automatically, so the map is canonical. Its inverse is

$$
q=Q\cos\beta-\frac{P}{m\omega}\sin\beta,
\qquad
p=P\cos\beta+m\omega Q\sin\beta.
$$

Substituting into

$$
H=\frac{p^2}{2m}+\frac12m\omega^2q^2
$$

gives

$$
H=\frac{1}{2m}
\left(P\cos\beta+m\omega Q\sin\beta\right)^2
+\frac{m\omega^2}{2}
\left(Q\cos\beta-\frac{P}{m\omega}\sin\beta\right)^2.
$$

The cross terms cancel, while $\sin^2\beta+\cos^2\beta=1$, leaving

$$
\boxed{H=\frac{P^2}{2m}+\frac12m\omega^2Q^2}.
$$

The factors $m\omega$ are essential: they make the two terms in $Q$ lengths and the two terms in $P$ momenta.

### 2. Angular-momentum Poisson algebra

Using Cartesian canonical variables, prove $\{L_x,L_y\}=L_z$.

Write

$$
L_x=yp_z-zp_y,
\qquad
L_y=zp_x-xp_z,
\qquad
L_z=xp_y-yp_x.
$$

The three-dimensional bracket is

$$
\{L_x,L_y\}
=\sum_{i=x,y,z}\left(
\frac{\partial L_x}{\partial q_i}
\frac{\partial L_y}{\partial p_i}
-\frac{\partial L_x}{\partial p_i}
\frac{\partial L_y}{\partial q_i}
\right).
$$

The $x$ and $y$ contributions vanish. The $z$ contribution is

$$
(-p_y)(-x)-y(p_x)=xp_y-yp_x.
$$

Hence

$$
\boxed{\{L_x,L_y\}=L_z}.
$$

Cyclic permutation gives $\{L_y,L_z\}=L_x$ and $\{L_z,L_x\}=L_y$. For a central Hamiltonian $H=\mathbf p^2/(2m)+V(r)$, rotational symmetry gives $\{L_i,H\}=0$; each component of angular momentum is consequently conserved.

## Descriptive Questions

1. Derive all four standard generating-function types from the phase-space one-form and state the independent old and new variables in each type.
2. Prove the symplectic matrix condition $MJM^T=J$ and show how it implies the fundamental Poisson-bracket relations.
3. Establish bilinearity, antisymmetry, the product rule, and the Jacobi identity for Poisson brackets, then explain their role in time evolution.
4. Define Lagrange brackets, derive their inverse relation to Poisson brackets, and state the sign convention used for mixed canonical brackets.

## Numerical Problems

1. Test the linear map $Q=2q+p$, $P=q+p$ for canonicity, then find $(Q,P)$ when $(q,p)=(1,3)$. **Answer:** $\{Q,P\}=2(1)-1(1)=1$; $(Q,P)=(5,4)$.
2. The type-2 function is $F_2(q,P)=qP+\alpha q^2/2$. Derive the transformation and evaluate $P,Q$ for $\alpha=3$, $q=2$, and $p=11$. **Answer:** $p=P+\alpha q$, $Q=q$; $(P,Q)=(5,2)$.
3. For $A=q^2p$ and $B=qp^2$, calculate $\{A,B\}$ and evaluate it at $q=2$, $p=3$. **Answer:** $\{A,B\}=3q^2p^2$; value $108$.
4. In a dimensionless canonical plane set $q=r\cos\theta$, $p=r\sin\theta$. Calculate the Lagrange bracket $[r,\theta]$ and the inverse Poisson bracket $\{r,\theta\}$ at $r=2$. **Answer:** $[r,\theta]=r=2$, $\{r,\theta\}=1/r=0.5$.

[Maxima verification: phase-space rotation, angular-momentum algebra, and all numerical values]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-iii/canonical-problems.mac' | relative_url }}).

## References

1. [Canonical transformation — Wikipedia](https://en.wikipedia.org/wiki/Canonical_transformation)
2. H. Goldstein, C. Poole, and J. Safko, *Classical Mechanics*, 3rd ed., Chapters 8–9, Pearson (2002).
3. L. D. Landau and E. M. Lifshitz, *Mechanics*, 3rd ed., Sections 40–45, Butterworth-Heinemann (1976).
4. V. I. Arnold, *Mathematical Methods of Classical Mechanics*, 2nd ed., Chapters 8–9, Springer (1989).

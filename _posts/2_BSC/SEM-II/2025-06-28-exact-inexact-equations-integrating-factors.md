---
title: "Exact and Inexact Differential Equations and Integrating Factors"
summary: "The exactness condition, construction of a potential function, and integrating factors depending on one variable."
date: 2025-06-28 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, exact-equations, integrating-factors]
permalink: /bsc/sem-ii/exact-inexact-equations-integrating-factors/
hidden: true
---

Write a first-order equation as

$$
M(x,y)dx+N(x,y)dy=0.
$$

It is exact if there is a scalar function $\Psi(x,y)$ such that

$$
d\Psi=\Psi_xdx+\Psi_y dy=Mdx+Ndy.
$$

Thus $M=\Psi_x$ and $N=\Psi_y$. If the second partial derivatives are continuous, then

$$
\boxed{M_y=\Psi_{xy}=\Psi_{yx}=N_x}.
$$

On a simply connected region this condition is also sufficient. The solution is the level curve

$$
\boxed{\Psi(x,y)=C}.
$$

## Constructing the potential

Consider

$$
(2xy+3)dx+(x^2+4y)dy=0.
$$

Since

$$
M_y=2x=N_x,
$$

the equation is exact. Integrate $M$ with respect to $x$, treating $y$ as constant:

$$
\Psi=\int(2xy+3)dx=x^2y+3x+g(y).
$$

Differentiate this expression with respect to $y$ and compare it with $N$:

$$
\Psi_y=x^2+g'(y)=x^2+4y.
$$

Hence $g'(y)=4y$, $g=2y^2$, and

$$
\boxed{x^2y+3x+2y^2=C}.
$$

## Turning an inexact equation into an exact one

If $M_y\ne N_x$, seek a nonzero integrating factor $\mu$ such that

$$
\mu Mdx+\mu Ndy=0
$$

is exact. If $\mu=\mu(x)$, exactness requires

$$
\frac{\partial(\mu M)}{\partial y}
=\frac{\partial(\mu N)}{\partial x},
$$

so

$$
\mu M_y=\mu' N+\mu N_x.
$$

Therefore, when the right-hand side depends on $x$ alone,

$$
\boxed{
\frac{\mu'}{\mu}=\frac{M_y-N_x}{N},
\qquad
\mu(x)=\exp\!\int\frac{M_y-N_x}{N}dx}.
$$

Similarly, if $\mu=\mu(y)$,

$$
\boxed{
\frac{1}{\mu}\frac{d\mu}{dy}=\frac{N_x-M_y}{M},
\qquad
\mu(y)=\exp\!\int\frac{N_x-M_y}{M}dy}.
$$

### Example

For

$$
(2y-x)dx+xdy=0,
$$

$M_y=2$ and $N_x=1$, so the equation is inexact. Moreover,

$$
\frac{M_y-N_x}{N}=\frac1x.
$$

Thus $\mu=e^{\int dx/x}=\lvert x\rvert$ on an interval not crossing $x=0$; an irrelevant constant sign lets us take $\mu=x$. Multiplication gives

$$
(2xy-x^2)dx+x^2dy=0.
$$

Now

$$
\frac{\partial}{\partial y}(2xy-x^2)=2x
=\frac{\partial}{\partial x}(x^2).
$$

Integrating the new $M$ with respect to $x$ gives

$$
\Psi=x^2y-\frac{x^3}{3}+g(y).
$$

Since $\Psi_y=x^2+g'(y)=x^2$, $g$ is constant. Hence

$$
\boxed{x^2y-\frac{x^3}{3}=C}.
$$

The exactness tests and recovered potentials are verified in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

---
title: "Gauss, Green, and Stokes Theorems"
summary: "Integral theorems connecting local derivatives with flux and circulation on boundaries."
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, divergence-theorem, greens-theorem, stokes-theorem]
permalink: /bsc/sem-ii/gauss-green-stokes-theorems/
hidden: true
---

The integral theorems express one geometrical principle: an accumulated local derivative inside a region equals a field integral over its boundary.

## Gauss divergence theorem

Let $V$ have closed boundary $S=\partial V$ with outward orientation. For a small cell,

$$
\oint_{\partial(\Delta V)}\mathbf A\cdot d\mathbf S
=(\nabla\cdot\mathbf A)\Delta V+o(\Delta V).
$$

On adding all cells, fluxes through shared interior faces cancel because neighbouring outward normals are opposite. In the limit,

$$
\boxed{
\iiint_V(\nabla\cdot\mathbf A)\,dV
=\iint_{\partial V}\mathbf A\cdot d\mathbf S}.
$$

For $\mathbf A=x\hat{\mathbf x}+y\hat{\mathbf y}+z\hat{\mathbf z}$ inside $r\leq R$,

$$
\iiint_V\nabla\cdot\mathbf A\,dV
=3\frac{4\pi R^3}{3}=4\pi R^3.
$$

On the sphere, $\mathbf A=R\hat{\mathbf r}$ and $d\mathbf S=\hat{\mathbf r}R^2\sin\theta\,d\theta d\varphi$, so

$$
\iint_S\mathbf A\cdot d\mathbf S
=R^3\int_0^{2\pi}d\varphi\int_0^\pi\sin\theta\,d\theta
=4\pi R^3.
$$

## Stokes theorem

Let an oriented surface $S$ have boundary $C=\partial S$. The right-hand rule fixes the positive direction around $C$. Circulations on shared edges of small surface patches cancel, leaving

$$
\boxed{
\iint_S(\nabla\times\mathbf A)\cdot d\mathbf S
=\oint_{\partial S}\mathbf A\cdot d\boldsymbol\ell}.
$$

For $\mathbf A=-y\hat{\mathbf x}+x\hat{\mathbf y}$ on $x^2+y^2\leq R^2$,

$$
\nabla\times\mathbf A=2\hat{\mathbf z},
\qquad
\iint_S2\,dS=2\pi R^2.
$$

On $C$, $\mathbf r=R(\cos\varphi,\sin\varphi)$ gives

$$
\mathbf A=R(-\sin\varphi,\cos\varphi),
\quad d\boldsymbol\ell=R(-\sin\varphi,\cos\varphi)d\varphi,
$$

and therefore

$$
\oint_C\mathbf A\cdot d\boldsymbol\ell
=R^2\int_0^{2\pi}d\varphi=2\pi R^2.
$$

## Green's theorems

For a positively oriented curve $C$ bounding a plane region $D$, Stokes theorem applied to $\mathbf A=P\hat{\mathbf x}+Q\hat{\mathbf y}$ gives

$$
\boxed{
\oint_C(P\,dx+Q\,dy)
=\iint_D\left(Q_x-P_y\right)dA}.
$$

The planar flux form is

$$
\boxed{
\oint_C(P\,dy-Q\,dx)
=\iint_D\left(P_x+Q_y\right)dA}.
$$

From $\nabla\cdot(u\nabla v)=\nabla u\cdot\nabla v+u\nabla^2v$ and Gauss' theorem,

$$
\boxed{
\iiint_V(\nabla u\cdot\nabla v+u\nabla^2v)dV
=\iint_Su\frac{\partial v}{\partial n}dS}.
$$

Subtracting the equation with $u,v$ exchanged gives

$$
\boxed{
\iiint_V(u\nabla^2v-v\nabla^2u)dV
=\iint_S\left(u\frac{\partial v}{\partial n}
-v\frac{\partial u}{\partial n}\right)dS}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-1/integral-theorems-boundaries.png' | relative_url }}" alt="Closed volume, oriented surface and planar region with their boundaries" loading="lazy">
  <figcaption>Gauss relates a volume to its closed surface; Stokes relates an oriented surface to its edge; Green is the planar case with counterclockwise positive orientation.</figcaption>
</figure>

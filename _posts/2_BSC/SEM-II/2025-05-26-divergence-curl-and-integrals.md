---
title: "Divergence, Curl, and Vector Integrals"
summary: "Local sources and circulation, followed by line, surface, and volume integrals."
date: 2025-05-26 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, divergence, curl, vector-integrals]
permalink: /bsc/sem-ii/divergence-curl-vector-integrals/
hidden: true
---

The derivatives of a vector field separate into two local quantities: divergence measures source strength, while curl measures circulation density.

## Divergence from flux

For $\mathbf A=A_x\hat{\mathbf x}+A_y\hat{\mathbf y}+A_z\hat{\mathbf z}$, the outward flux through the two faces of a box normal to $x$ is

$$
\begin{aligned}
d\Phi_x
&=[A_x(x+dx)-A_x(x)]dy\,dz\\
&=\frac{\partial A_x}{\partial x}dx\,dy\,dz+O(dx^2)\,dy\,dz.
\end{aligned}
$$

Adding the $y$ and $z$ face pairs gives

$$
d\Phi=
\left(\frac{\partial A_x}{\partial x}
+\frac{\partial A_y}{\partial y}
+\frac{\partial A_z}{\partial z}\right)dV.
$$

Thus

$$
\boxed{\nabla\cdot\mathbf A
=\lim_{\Delta V\to0}\frac1{\Delta V}
\oint_{\partial(\Delta V)}\mathbf A\cdot d\mathbf S}.
$$

Positive divergence means net outward flux; negative divergence means net inward flux. If $[\mathbf A]=Q$, then $[\nabla\cdot\mathbf A]=Q\,{\rm m^{-1}}$.

## Curl from circulation

Traverse a rectangle $dx\times dy$ counterclockwise as seen from $+z$. Its circulation is

$$
\begin{aligned}
\oint\mathbf A\cdot d\boldsymbol\ell
={}&A_x(x,y)dx+A_y(x+dx,y)dy\\
&-A_x(x,y+dy)dx-A_y(x,y)dy\\
={}&\left(\frac{\partial A_y}{\partial x}
-\frac{\partial A_x}{\partial y}\right)dx\,dy.
\end{aligned}
$$

This coefficient is $(\nabla\times\mathbf A)_z$. Repeating in the other planes,

$$
\boxed{
\nabla\times\mathbf A
=\begin{vmatrix}
\hat{\mathbf x}&\hat{\mathbf y}&\hat{\mathbf z}\\
\partial_x&\partial_y&\partial_z\\
A_x&A_y&A_z
\end{vmatrix}}.
$$

For a unit normal $\hat{\mathbf n}$,

$$
\boxed{
\hat{\mathbf n}\cdot(\nabla\times\mathbf A)
=\lim_{\Delta S\to0}\frac1{\Delta S}
\oint_{\partial(\Delta S)}\mathbf A\cdot d\boldsymbol\ell}.
$$

The right-hand rule fixes the sign between the circulation and $\hat{\mathbf n}$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-1/divergence-and-curl.png' | relative_url }}" alt="Radial source field and rotational field generated from their vector equations" loading="lazy">
  <figcaption>\(\mathbf A_s=(x,y)\) has divergence 2 and zero curl; \(\mathbf A_r=(-y,x)\) has zero divergence and curl \(2\hat{\mathbf z}\).</figcaption>
</figure>

## Line, surface, and volume integrals

For a curve $C$ parametrized by $\mathbf r(t)$,

$$
\boxed{\int_C\mathbf A\cdot d\boldsymbol\ell
=\int_a^b\mathbf A(\mathbf r(t))\cdot\frac{d\mathbf r}{dt}dt}.
$$

Reversing the path reverses the sign. For a gradient field,

$$
\int_C\nabla\phi\cdot d\boldsymbol\ell
=\int_a^b\frac{d\phi}{dt}dt
=\phi(\mathbf r_b)-\phi(\mathbf r_a),
$$

so the integral depends only on the endpoints.

If $\mathbf r(u,v)$ parametrizes an oriented surface,

$$
d\mathbf S=\left(\frac{\partial\mathbf r}{\partial u}
\times\frac{\partial\mathbf r}{\partial v}\right)du\,dv,
\qquad
\boxed{\Phi=\iint_S\mathbf A\cdot d\mathbf S}.
$$

Changing the orientation changes the sign. On a closed surface, $d\mathbf S$ points outward.

For a scalar volume density $\rho$,

$$
\boxed{Q=\iiint_V\rho\,dV}.
$$

Because $[\rho]=[Q]/{\rm m^3}$, the integral has units $[Q]$. A vector volume integral is evaluated component by component.

Equality of mixed partial derivatives gives

$$
\boxed{\nabla\times(\nabla\phi)=\mathbf0},
\qquad
\boxed{\nabla\cdot(\nabla\times\mathbf A)=0}.
$$

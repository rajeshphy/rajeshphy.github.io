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

Positive divergence means net outward flux; negative divergence means net inward flux. If $[\mathbf A]=Q$, then $[\nabla\cdot\mathbf A]=Q\,\mathrm{m^{-1}}$.

When $\mathbf A=\mathbf v$ is a fluid velocity, two neighbouring material points separated by $dx$ acquire relative speed $(\partial v_x/\partial x)dx$. Thus $\dot{dx}/dx=\partial v_x/\partial x$, with analogous equations in $y,z$. Since $\Delta V=dx\,dy\,dz$,

$$
\boxed{\frac1{\Delta V}\frac{d(\Delta V)}{dt}
=\frac{\dot{dx}}{dx}+\frac{\dot{dy}}{dy}+\frac{\dot{dz}}{dz}
=\nabla\cdot\mathbf v}.
$$

Thus an incompressible velocity field is solenoidal, $\nabla\cdot\mathbf v=0$.

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

For rigid rotation with angular velocity $\boldsymbol\Omega$,

$$
\begin{aligned}
\mathbf v=\boldsymbol\Omega\times\mathbf r
={}&(\Omega_y z-\Omega_z y)\hat{\mathbf x}\\
&+(\Omega_z x-\Omega_x z)\hat{\mathbf y}
+(\Omega_x y-\Omega_y x)\hat{\mathbf z}.
\end{aligned}
$$

For example,

$$
(\nabla\times\mathbf v)_x
=\frac{\partial v_z}{\partial y}-\frac{\partial v_y}{\partial z}
=\Omega_x-(-\Omega_x)=2\Omega_x,
$$

and cyclic differentiation gives

$$
\boxed{\nabla\times\mathbf v
=2\Omega_x\hat{\mathbf x}+2\Omega_y\hat{\mathbf y}
+2\Omega_z\hat{\mathbf z}=2\boldsymbol\Omega}.
$$

Consequently, one-half of the curl is the local angular velocity of a velocity field's rigid-rotation part.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-1/divergence-and-curl.png' | relative_url }}" alt="Radial source field and rotational field generated from their vector equations" loading="lazy">
  </div>
  <figcaption>\(\mathbf A_s=(x,y)\) has divergence 2 and zero curl; \(\mathbf A_r=(-y,x)\) has zero divergence and curl \(2\hat{\mathbf z}\).</figcaption>
</figure>

## Line, surface, and volume integrals

For a curve $C$ parametrized by $\mathbf r(t)$,

$$
ds=\left\lvert\frac{d\mathbf r}{dt}\right\rvert dt,
\qquad
\int_C f\,ds
=\int_a^b f(\mathbf r(t))
\left\lvert\frac{d\mathbf r}{dt}\right\rvert dt.
$$

This scalar line integral is unchanged by reversing the parametrization. In contrast, the vector line integral is

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
dS=\left\lvert\frac{\partial\mathbf r}{\partial u}
\times\frac{\partial\mathbf r}{\partial v}\right\rvert du\,dv,
\qquad
\iint_S f\,dS
=\iint_D f(\mathbf r(u,v))
\left\lvert\mathbf r_u\times\mathbf r_v\right\rvert du\,dv,
$$

whereas vector flux uses the oriented area element

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

Because $[\rho]=[Q]/\mathrm{m^3}$, the integral has units $[Q]$. A vector volume integral is evaluated component by component.

Equality of mixed partial derivatives gives

$$
\boxed{\nabla\times(\nabla\phi)=\mathbf0},
\qquad
\boxed{\nabla\cdot(\nabla\times\mathbf A)=0}.
$$

These identities require the displayed mixed partial derivatives to be continuous. A field with $\nabla\times\mathbf A=\mathbf0$ is irrotational; on a simply connected domain it has a scalar potential. A field with $\nabla\cdot\mathbf A=0$ is solenoidal.

## Solved Problems

1. A velocity field is

   $$
   \mathbf v=(2x-y)\hat{\mathbf x}+(x+2y)\hat{\mathbf y}-z\hat{\mathbf z}
   \quad \mathrm{m\,s^{-1}},
   $$

   with the coordinate coefficients understood in SI units. Find its divergence, curl, fractional volume-expansion rate, and local angular velocity.

   Direct differentiation gives

   $$
   \nabla\cdot\mathbf v
   =\frac{\partial(2x-y)}{\partial x}
   +\frac{\partial(x+2y)}{\partial y}
   +\frac{\partial(-z)}{\partial z}
   =2+2-1=3\ \mathrm{s^{-1}}.
   $$

   The curl is

   $$
   \begin{aligned}
   \nabla\times\mathbf v
   &=(0-0)\hat{\mathbf x}+(0-0)\hat{\mathbf y}\\
   &\quad+\left[\frac{\partial(x+2y)}{\partial x}
   -\frac{\partial(2x-y)}{\partial y}\right]\hat{\mathbf z}\\
   &=2\hat{\mathbf z}\ \mathrm{s^{-1}}.
   \end{aligned}
   $$

   Therefore

   $$
   \frac1{\Delta V}\frac{d(\Delta V)}{dt}=3\ \mathrm{s^{-1}},
   \qquad
   \boldsymbol\Omega_{\mathrm{local}}=\frac12\nabla\times\mathbf v
   =\hat{\mathbf z}\ \mathrm{s^{-1}}.
   $$

   The positive divergence describes local expansion, while the positive $z$ curl describes counterclockwise rotation viewed from $+z$. Both dimensions reduce to inverse time, as required.

2. A force field is $\mathbf F=(y,-x,z)$ N, with coordinates measured in metres and coefficients carrying the corresponding units. Evaluate its work along $\mathbf r(t)=(t,t^2,t)$ m from $t=0$ to $t=1$.

   Along the path,

   $$
   \mathbf F(\mathbf r(t))=(t^2,-t,t),
   \qquad
   \frac{d\mathbf r}{dt}=(1,2t,1)\ \mathrm{m}.
   $$

   Hence

   $$
   \mathbf F\cdot\frac{d\mathbf r}{dt}
   =t^2-2t^2+t=t-t^2,
   $$

   and

   $$
   W=\int_0^1(t-t^2)dt
   =\left[\frac{t^2}{2}-\frac{t^3}{3}\right]_0^1
   =\boxed{\frac16\ \mathrm{J}}.
   $$

   Force dotted with displacement has joule units. Since $\nabla\times\mathbf F=-2\hat{\mathbf z}$ in the $xy$ part, this result is path-dependent rather than an endpoint-only potential difference.

3. The plane $z=1-x-y$ above $x\geq0$, $y\geq0$, $x+y\leq1$ m is oriented upward. Find the flux of $\mathbf v=(x,y,z)\ \mathrm{s^{-1}}$ through it directly.

   Parametrize the surface by

   $$
   \mathbf r(x,y)=(x,y,1-x-y).
   $$

   Its upward area vector is

   $$
   \mathbf r_x\times\mathbf r_y
   =(1,0,-1)\times(0,1,-1)=(1,1,1).
   $$

   On the surface,

   $$
   \mathbf v\cdot(\mathbf r_x\times\mathbf r_y)
   =x+y+(1-x-y)=1\ \mathrm{m\,s^{-1}}.
   $$

   Therefore

   $$
   \Phi=\int_0^1\int_0^{1-x}1\,dy\,dx
   =\int_0^1(1-x)dx
   =\boxed{\frac12\ \mathrm{m^3\,s^{-1}}}.
   $$

   The sign is positive because the flow has a component along the chosen upward normal; reversing the orientation would give $-1/2\ \mathrm{m^3\,s^{-1}}$.

## Descriptive Questions

1. Derive divergence as outward flux per unit volume by balancing opposite faces of an infinitesimal Cartesian box.
2. Derive the normal component of curl from circulation around an infinitesimal oriented rectangle and explain the right-hand-rule sign.
3. Compare scalar and vector line, surface, and volume integrals, including parametrization, dimensions, and orientation dependence.
4. Prove $\nabla\times\nabla\phi=\mathbf0$ and $\nabla\cdot(\nabla\times\mathbf A)=0$, stating the differentiability assumptions and the domain condition for an irrotational field to possess a potential.

## Numerical Problems

1. For

   $$
   \mathbf A=(a x^2,-xy,-xz),
   $$

   determine the constant $a$ for which $\mathbf A$ is solenoidal everywhere.

   **Answer:** $\nabla\cdot\mathbf A=2x(a-1)$, so $a=1$.

2. The counterclockwise circulation of a slowly varying planar velocity field around a small square of area $4.0\times10^{-4}\ \mathrm{m^2}$ is $1.2\times10^{-3}\ \mathrm{m^2\,s^{-1}}$. Estimate the normal component of curl, and hence predict the circulation around a nearby counterclockwise loop of area $1.5\times10^{-4}\ \mathrm{m^2}$ if the curl is locally uniform.

   **Answer:** $(\nabla\times\mathbf v)_z=3.0\ \mathrm{s^{-1}}$ and the second circulation is $4.5\times10^{-4}\ \mathrm{m^2\,s^{-1}}$, both positive for the stated counterclockwise orientation.

3. A conservative force field is

   $$
   \mathbf F=k\bigl[(y+z)\hat{\mathbf x}
   +(x+z)\hat{\mathbf y}
   +(x+y)\hat{\mathbf z}\bigr],
   \qquad k=1\ \mathrm{N\,m^{-1}}.
   $$

   Find a scalar potential $\Phi$ satisfying $\mathbf F=\nabla\Phi$ and hence find the work from $P=(1,0,0)\ \mathrm{m}$ to $Q=(1,2,3)\ \mathrm{m}$ without parametrizing a path.

   **Answer:** $\Phi=k(xy+xz+yz)+C$ and $W=\Phi(Q)-\Phi(P)=11\ \mathrm{J}$.

4. A quarter-circular wire is parametrized by $\mathbf r(t)=(2\cos t,2\sin t,0)$ m, $0\leq t\leq\pi/2$. Its linear density is $\lambda=(1\ \mathrm{kg\,m^{-2}})(x+y)$. Find its mass.

   **Answer:** $8\ \mathrm{kg}$.

5. Find the area of the part of the paraboloid $z=x^2+y^2$ lying above the disk $x^2+y^2\leq1$, with all coordinates measured in metres.

   **Answer:** $S=\dfrac{\pi}{6}(5\sqrt5-1)\ \mathrm{m^2}$.

6. A cube $0\leq x,y,z\leq L$ contains density $\rho=\rho_0(1+x/L)$. Find its total mass.

   **Answer:** $M=\tfrac32\rho_0L^3$.

All symbolic reductions and numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every printed residual is zero.

## References

1. [Vector calculus — Wikipedia](https://en.wikipedia.org/wiki/Vector_calculus)
2. [OpenStax, *Calculus Volume 3*, §6.2: Line Integrals](https://openstax.org/books/calculus-volume-3/pages/6-2-line-integrals)
3. [OpenStax, *Calculus Volume 3*, §6.5: Divergence and Curl](https://openstax.org/books/calculus-volume-3/pages/6-5-divergence-and-curl)
4. [OpenStax, *Calculus Volume 3*, §6.6: Surface Integrals](https://openstax.org/books/calculus-volume-3/pages/6-6-surface-integrals)

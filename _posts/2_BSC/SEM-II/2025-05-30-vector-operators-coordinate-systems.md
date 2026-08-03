---
title: "Vector Operators in Cartesian, Cylindrical, and Spherical Coordinates"
summary: "Derivation of gradient, divergence, curl, and the scalar Laplacian in orthogonal coordinates."
date: 2025-05-30 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, coordinate-systems, laplacian]
permalink: /bsc/sem-ii/vector-operators-coordinate-systems/
hidden: true
---

Let $(q_1,q_2,q_3)$ be orthogonal coordinates with

$$
h_i=\left\lvert\frac{\partial\mathbf r}{\partial q_i}\right\rvert,
\qquad
\hat{\mathbf e}_i=\frac1{h_i}\frac{\partial\mathbf r}{\partial q_i}.
$$

Then

$$
d\mathbf r=\sum_i h_i\,dq_i\,\hat{\mathbf e}_i,
\qquad
dV=h_1h_2h_3\,dq_1dq_2dq_3,
$$

and the area normal to $\hat{\mathbf e}_1$ is $dS_1=h_2h_3dq_2dq_3$, with cyclic analogues.

The components $A_i$ below are physical components along the local orthonormal vectors $\hat{\mathbf e}_i$. Unlike Cartesian unit vectors, these basis vectors may vary with position; the scale-factor formulas already include that variation.

## General orthogonal formulas

Comparing $d\phi=\sum_i\phi_{q_i}dq_i$ with $d\phi=\nabla\phi\cdot d\mathbf r$ gives

$$
\boxed{\nabla\phi=\sum_i\hat{\mathbf e}_i\frac1{h_i}\frac{\partial\phi}{\partial q_i}}.
$$

The net flux through the $q_1$ face pair is $\partial_{q_1}(h_2h_3A_1)dq_1dq_2dq_3$. Summing face pairs and dividing by $dV$ gives

$$
\boxed{
\nabla\cdot\mathbf A
=\frac1{h_1h_2h_3}
\sum_{\mathrm{cyclic}}\frac{\partial}{\partial q_1}(h_2h_3A_1)}.
$$

The circulation around the $q_1q_2$ face gives

$$
(\nabla\times\mathbf A)_3
=\frac1{h_1h_2}
\left[\frac{\partial(h_2A_2)}{\partial q_1}
-\frac{\partial(h_1A_1)}{\partial q_2}\right],
$$

so all components are

$$
\boxed{
\nabla\times\mathbf A
=\frac1{h_1h_2h_3}
\begin{vmatrix}
h_1\hat{\mathbf e}_1&h_2\hat{\mathbf e}_2&h_3\hat{\mathbf e}_3\\
\partial_{q_1}&\partial_{q_2}&\partial_{q_3}\\
h_1A_1&h_2A_2&h_3A_3
\end{vmatrix}}.
$$

Finally, $\nabla^2\phi=\nabla\cdot\nabla\phi$ gives

$$
\boxed{
\nabla^2\phi
=\frac1{h_1h_2h_3}
\sum_{\mathrm{cyclic}}\frac{\partial}{\partial q_1}
\left(\frac{h_2h_3}{h_1}\frac{\partial\phi}{\partial q_1}\right)}.
$$

## Cartesian coordinates

For $(x,y,z)$, $h_x=h_y=h_z=1$:

$$
\nabla\phi=\hat{\mathbf x}\phi_x+\hat{\mathbf y}\phi_y+\hat{\mathbf z}\phi_z,
\qquad
\nabla\cdot\mathbf A=A_{x,x}+A_{y,y}+A_{z,z},
$$

$$
\nabla\times\mathbf A
=\hat{\mathbf x}(A_{z,y}-A_{y,z})
+\hat{\mathbf y}(A_{x,z}-A_{z,x})
+\hat{\mathbf z}(A_{y,x}-A_{x,y}),
$$

$$
\boxed{\nabla^2\phi=\phi_{xx}+\phi_{yy}+\phi_{zz}}.
$$

## Cylindrical coordinates

From

$$
\mathbf r(\rho,\varphi,z)
=\rho\cos\varphi\,\hat{\mathbf x}
+\rho\sin\varphi\,\hat{\mathbf y}+z\hat{\mathbf z},
$$

the coordinate tangent vectors are

$$
\frac{\partial\mathbf r}{\partial\rho}=\hat{\boldsymbol\rho},
\qquad
\frac{\partial\mathbf r}{\partial\varphi}=\rho\hat{\boldsymbol\varphi},
\qquad
\frac{\partial\mathbf r}{\partial z}=\hat{\mathbf z}.
$$

Therefore

$$
d\mathbf r=d\rho\,\hat{\boldsymbol\rho}
+\rho d\varphi\,\hat{\boldsymbol\varphi}+dz\,\hat{\mathbf z},
$$

so $(h_\rho,h_\varphi,h_z)=(1,\rho,1)$. Therefore

$$
dV=\rho\,d\rho\,d\varphi\,dz,
\qquad
dS_\rho=\rho\,d\varphi\,dz,
\qquad
dS_\varphi=d\rho\,dz,
\qquad
dS_z=\rho\,d\rho\,d\varphi.
$$

Substitution into the general formulas gives

$$
\boxed{\nabla\phi
=\hat{\boldsymbol\rho}\phi_\rho
+\hat{\boldsymbol\varphi}\frac1\rho\phi_\varphi
+\hat{\mathbf z}\phi_z},
$$

$$
\boxed{\nabla\cdot\mathbf A
=\frac1\rho\frac{\partial(\rho A_\rho)}{\partial\rho}
+\frac1\rho\frac{\partial A_\varphi}{\partial\varphi}
+\frac{\partial A_z}{\partial z}},
$$

$$
\boxed{
\begin{aligned}
\nabla\times\mathbf A
={}&\hat{\boldsymbol\rho}\left(\frac1\rho A_{z,\varphi}-A_{\varphi,z}\right)
+\hat{\boldsymbol\varphi}(A_{\rho,z}-A_{z,\rho})\\
&+\hat{\mathbf z}\frac1\rho
\left[\frac{\partial(\rho A_\varphi)}{\partial\rho}-A_{\rho,\varphi}\right],
\end{aligned}}
$$

$$
\boxed{\nabla^2\phi
=\frac1\rho\frac{\partial}{\partial\rho}(\rho\phi_\rho)
+\frac1{\rho^2}\phi_{\varphi\varphi}+\phi_{zz}}.
$$

## Spherical coordinates

Use

$$
\mathbf r(r,\theta,\varphi)
=r\sin\theta\cos\varphi\,\hat{\mathbf x}
+r\sin\theta\sin\varphi\,\hat{\mathbf y}
+r\cos\theta\,\hat{\mathbf z}.
$$

Direct differentiation gives

$$
\left\lvert\frac{\partial\mathbf r}{\partial r}\right\rvert=1,
\qquad
\left\lvert\frac{\partial\mathbf r}{\partial\theta}\right\rvert=r,
\qquad
\left\lvert\frac{\partial\mathbf r}{\partial\varphi}\right\rvert=r\sin\theta.
$$

Thus

$$
d\mathbf r=dr\,\hat{\mathbf r}+r d\theta\,\hat{\boldsymbol\theta}
+r\sin\theta d\varphi\,\hat{\boldsymbol\varphi},
$$

so $(h_r,h_\theta,h_\varphi)=(1,r,r\sin\theta)$. Hence

$$
dV=r^2\sin\theta\,dr\,d\theta\,d\varphi,
\qquad
dS_r=r^2\sin\theta\,d\theta\,d\varphi,
$$

$$
dS_\theta=r\sin\theta\,dr\,d\varphi,
\qquad
dS_\varphi=r\,dr\,d\theta.
$$

Substitution gives

$$
\boxed{\nabla\phi
=\hat{\mathbf r}\phi_r+\hat{\boldsymbol\theta}\frac1r\phi_\theta
+\hat{\boldsymbol\varphi}\frac1{r\sin\theta}\phi_\varphi},
$$

$$
\boxed{\nabla\cdot\mathbf A
=\frac1{r^2}\frac{\partial(r^2A_r)}{\partial r}
+\frac1{r\sin\theta}\frac{\partial(\sin\theta A_\theta)}{\partial\theta}
+\frac1{r\sin\theta}\frac{\partial A_\varphi}{\partial\varphi}},
$$

$$
\boxed{
\begin{aligned}
\nabla\times\mathbf A
={}&\hat{\mathbf r}\frac1{r\sin\theta}
\left[\partial_\theta(\sin\theta A_\varphi)-\partial_\varphi A_\theta\right]\\
&+\hat{\boldsymbol\theta}\frac1r
\left[\frac1{\sin\theta}\partial_\varphi A_r-\partial_r(rA_\varphi)\right]\\
&+\hat{\boldsymbol\varphi}\frac1r
\left[\partial_r(rA_\theta)-\partial_\theta A_r\right],
\end{aligned}}
$$

$$
\boxed{\nabla^2\phi
=\frac1{r^2}\partial_r(r^2\phi_r)
+\frac1{r^2\sin\theta}\partial_\theta(\sin\theta\phi_\theta)
+\frac1{r^2\sin^2\theta}\phi_{\varphi\varphi}}.
$$

The scale factors contain the coordinate geometry. Every gradient term has units $[\phi]/\mathrm{m}$ and every Laplacian term $[\phi]/\mathrm{m^2}$.

The cylindrical formulas are used on coordinate patches with $\rho>0$ and the spherical formulas with $r>0$ and $0<\theta<\pi$. Their factors $1/\rho$ and $1/\sin\theta$ mark coordinate singularities, not necessarily singular physical fields. A smooth field on an axis or at the origin must have component limits that are independent of the undefined azimuthal direction.

Sample Cartesian-to-cylindrical and Cartesian-to-spherical Laplacian transformations are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every reported residual is zero.

## Solved Problems

1. In cylindrical coordinates let $\phi=\rho^2z\cos\varphi$. Find $\nabla\phi$ and $\nabla^2\phi$, and evaluate both at $(\rho,\varphi,z)=(2,0,3)$.

   The three physical components of the gradient are

   $$
   \begin{aligned}
   \nabla\phi
   &=\hat{\boldsymbol\rho}(2\rho z\cos\varphi)
   +\hat{\boldsymbol\varphi}\frac1\rho(-\rho^2z\sin\varphi)
   +\hat{\mathbf z}(\rho^2\cos\varphi)\\
   &=2\rho z\cos\varphi\,\hat{\boldsymbol\rho}
   -\rho z\sin\varphi\,\hat{\boldsymbol\varphi}
   +\rho^2\cos\varphi\,\hat{\mathbf z}.
   \end{aligned}
   $$

   At the specified point,

   $$
   \boxed{\nabla\phi=12\hat{\boldsymbol\rho}+4\hat{\mathbf z}}.
   $$

   For the Laplacian,

   $$
   \begin{aligned}
   \nabla^2\phi
   &=\frac1\rho\frac{\partial}{\partial\rho}
   (2\rho^2z\cos\varphi)
   +\frac1{\rho^2}(-\rho^2z\cos\varphi)+0\\
   &=4z\cos\varphi-z\cos\varphi
   =3z\cos\varphi.
   \end{aligned}
   $$

   Thus $\boxed{\nabla^2\phi=9}$ at $(2,0,3)$. Each gradient component has units $[\phi]/\mathrm{m}$, and each Laplacian term has units $[\phi]/\mathrm{m^2}$.

2. For

   $$
   \mathbf A=\rho^2\hat{\boldsymbol\rho}
   +\rho z\hat{\boldsymbol\varphi}
   +z^2\hat{\mathbf z},
   $$

   find divergence and curl in cylindrical coordinates, then evaluate them at $\rho=2$, $z=1$.

   The divergence is

   $$
   \begin{aligned}
   \nabla\cdot\mathbf A
   &=\frac1\rho\frac{\partial(\rho^3)}{\partial\rho}
   +\frac1\rho\frac{\partial(\rho z)}{\partial\varphi}
   +\frac{\partial z^2}{\partial z}\\
   &=3\rho+2z.
   \end{aligned}
   $$

   The curl components are

   $$
   (\nabla\times\mathbf A)_\rho
   =\frac1\rho\frac{\partial z^2}{\partial\varphi}
   -\frac{\partial(\rho z)}{\partial z}=-\rho,
   $$

   $$
   (\nabla\times\mathbf A)_\varphi
   =\frac{\partial\rho^2}{\partial z}
   -\frac{\partial z^2}{\partial\rho}=0,
   $$

   $$
   (\nabla\times\mathbf A)_z
   =\frac1\rho\left[
   \frac{\partial(\rho^2z)}{\partial\rho}
   -\frac{\partial\rho^2}{\partial\varphi}\right]=2z.
   $$

   Hence

   $$
   \boxed{\nabla\cdot\mathbf A=8},
   \qquad
   \boxed{\nabla\times\mathbf A=-2\hat{\boldsymbol\rho}
   +2\hat{\mathbf z}}
   $$

   at the stated point. Divergence and curl both carry one inverse-length factor relative to $\mathbf A$.

3. In spherical coordinates, show that $\phi=K/r$ is harmonic for $r>0$ and that the inverse-square radial field

   $$
   \mathbf B=B_0\left(\frac Rr\right)^2\hat{\mathbf r}
   $$

   is divergence-free there.

   Because $\phi$ depends only on $r$,

   $$
   \nabla\phi=\frac{d}{dr}\left(\frac Kr\right)\hat{\mathbf r}
   =-\frac K{r^2}\hat{\mathbf r}.
   $$

   Its Laplacian is

   $$
   \nabla^2\phi
   =\frac1{r^2}\frac{d}{dr}
   \left(r^2\frac{d}{dr}\frac Kr\right)
   =\frac1{r^2}\frac{d(-K)}{dr}
   =\boxed{0}.
   $$

   Similarly,

   $$
   \nabla\cdot\mathbf B
   =\frac1{r^2}\frac{d}{dr}
   \left[r^2B_0\left(\frac Rr\right)^2\right]
   =\frac1{r^2}\frac{d(B_0R^2)}{dr}
   =\boxed{0}.
   $$

   Here $K$ has dimensions $[\phi]\,\mathrm{m}$, while $B_0$ carries the field units. Both results approach zero fields at large $r$, but neither calculation includes $r=0$, where the coordinate expressions and the physical inverse-power fields are singular.

## Descriptive Questions

1. Starting from orthogonal scale factors, derive the general formulas for gradient, divergence, curl, and the scalar Laplacian.
2. Derive the cylindrical scale factors and use them to obtain its line, area, and volume elements and all four differential operators.
3. Derive the spherical scale factors and use them to obtain its line, area, and volume elements and all four differential operators.
4. Explain why cylindrical and spherical unit vectors vary with position and distinguish coordinate singularities from singular physical fields.

## Numerical Problems

1. For $\phi=\rho z\sin\varphi$, find $\nabla\phi$ at $(\rho,\varphi,z)=(2,\pi/2,3)$.

   **Answer:** $3\hat{\boldsymbol\rho}+2\hat{\mathbf z}$.

2. For $\mathbf A=\rho z\hat{\boldsymbol\rho}+\rho\sin\varphi\hat{\boldsymbol\varphi}+z^2\hat{\mathbf z}$, find $\nabla\cdot\mathbf A$ at $\varphi=0$, $z=1$.

   **Answer:** $5$.

3. Find $\nabla\times\mathbf A$ at $\rho=2$ for $\mathbf A=\rho^2\hat{\boldsymbol\varphi}$.

   **Answer:** $6\hat{\mathbf z}$.

4. For $\phi=r^2\cos\theta$, find $\nabla\phi$ at $r=2$, $\theta=\pi/3$.

   **Answer:** $2\hat{\mathbf r}-\sqrt3\hat{\boldsymbol\theta}$.

5. Find the divergence of $\mathbf A=r\sin\theta\,\hat{\boldsymbol\theta}$ at $\theta=\pi/3$.

   **Answer:** $1$.

6. Evaluate $\nabla^2\phi$ at $r=2$, $\theta=\pi/3$ for $\phi=r^3\cos\theta$.

   **Answer:** $10$.

All symbolic reductions and numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every printed residual is zero.

## References

1. [Del in cylindrical and spherical coordinates — Wikipedia](https://en.wikipedia.org/wiki/Del_in_cylindrical_and_spherical_coordinates)
2. [MIT Mathematics, Chapter 13: Gradient, Divergence, Curl and Laplacian in Spherical, Cylindrical and General Coordinates](https://math.mit.edu/~djk/18_022/chapter13/contents.html)
3. George B. Arfken, Hans J. Weber, and Frank E. Harris, *Mathematical Methods for Physicists*, 7th ed., Chapter 3, §3.10.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 6.

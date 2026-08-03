---
title: "Vector Operators in Cartesian, Cylindrical, and Spherical Coordinates"
summary: "Derivation of gradient, divergence, curl, and the scalar Laplacian in orthogonal coordinates."
date: 2025-05-24 09:00:00 +0530
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
\sum_{\rm cyclic}\frac{\partial}{\partial q_1}(h_2h_3A_1)}.
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
\sum_{\rm cyclic}\frac{\partial}{\partial q_1}
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

The scale factors contain the coordinate geometry. Every gradient term has units $[\phi]/{\rm m}$ and every Laplacian term $[\phi]/{\rm m^2}$.

Sample Cartesian-to-cylindrical and Cartesian-to-spherical Laplacian transformations are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every reported residual is zero.

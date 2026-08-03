---
title: "Relativistic Electrodynamics"
summary: "Four-current, four-potential, field tensor, Lorentz transformations of fields, covariant Maxwell equations, and the Lorentz four-force."
date: 2025-06-06 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-16, relativity, electromagnetic-field-tensor, maxwell-equations, lorentz-force]
permalink: /bsc/sem-vii/relativistic-electrodynamics/
hidden: true
---

Use coordinates $x^\mu=(ct,x,y,z)$ and metric
$g_{\mu\nu}=\operatorname{diag}(1,-1,-1,-1)$. Let frame $S'$ move with
speed $v$ along $+x$ relative to $S$. With $\beta=v/c$ and
$\gamma=(1-\beta^2)^{-1/2}$,

$$
\begin{pmatrix}ct'\\x'\\y'\\z'\end{pmatrix}
=\underbrace{\begin{pmatrix}
\gamma&-\beta\gamma&0&0\\
-\beta\gamma&\gamma&0&0\\
0&0&1&0\\0&0&0&1
\end{pmatrix}}_{\Lambda}
\begin{pmatrix}ct\\x\\y\\z\end{pmatrix}.
$$

Every contravariant four-vector transforms by the same matrix.

## Charge density and current density

Local charge conservation is

$$
\frac{\partial\rho}{\partial t}+\nabla\cdot\mathbf J=0.
$$

Define the four-current

$$
J^\mu=(c\rho,J_x,J_y,J_z),
\qquad
\partial_\mu=\left(\frac1c\partial_t,\partial_x,\partial_y,\partial_z\right).
$$

Then $\partial_\mu J^\mu=0$. Applying $J'^\mu=\Lambda^\mu{}_{\nu}J^\nu$
gives

$$
\boxed{
\rho'=\gamma\left(\rho-\frac{vJ_x}{c^2}\right),
\qquad
J'_x=\gamma(J_x-v\rho),
\qquad J'_y=J_y,\quad J'_z=J_z.
}
$$

The mixture of $\rho$ and $J_x$ is required because charge density depends
on the simultaneity slice used to measure volume, although the total charge
of an isolated system is invariant.

## Scalar and vector potentials

The scalar and vector potentials form

$$
A^\mu=\left(\frac\phi c,A_x,A_y,A_z\right).
$$

Therefore

$$
\boxed{
\phi'=\gamma(\phi-vA_x),
\qquad
A'_x=\gamma\left(A_x-\frac{v\phi}{c^2}\right),
\qquad A'_y=A_y,\quad A'_z=A_z.
}
$$

The Lorenz gauge becomes the Lorentz scalar condition
$\partial_\mu A^\mu=0$. In that gauge the potential equations combine as

$$
\partial_\mu\partial^\mu A^\nu=\mu_0J^\nu,
\qquad
\partial_\mu\partial^\mu
=\frac1{c^2}\partial_t^2-\nabla^2.
$$

## Electromagnetic field tensor

Define

$$
F^{\mu\nu}=\partial^\mu A^\nu-\partial^\nu A^\mu.
$$

With the stated metric and potential convention,

$$
F^{\mu\nu}=
\begin{pmatrix}
0&-E_x/c&-E_y/c&-E_z/c\\
E_x/c&0&-B_z&B_y\\
E_y/c&B_z&0&-B_x\\
E_z/c&-B_y&B_x&0
\end{pmatrix},
\qquad F^{\mu\nu}=-F^{\nu\mu}.
$$

The tensor transformation law is

$$
F'^{\mu\nu}=\Lambda^\mu{}_{\alpha}
\Lambda^\nu{}_{\beta}F^{\alpha\beta}.
$$

The six independent contractions are

$$
\begin{aligned}
F'^{01}
&=\gamma^2F^{01}+\beta^2\gamma^2F^{10}
=\gamma^2(1-\beta^2)F^{01}
=-\frac{E_x}{c},\\
F'^{02}
&=\Lambda^0{}_{\alpha}\Lambda^2{}_{\beta}F^{\alpha\beta}
=\gamma F^{02}-\beta\gamma F^{12}\\
&=-\frac\gamma c(E_y-vB_z)
 =-\frac{E'_y}{c},\\
F'^{03}
&=\gamma F^{03}-\beta\gamma F^{13}
=-\frac\gamma c(E_z+vB_y),\\
F'^{23}&=F^{23}=-B_x,\\
F'^{13}
&=-\beta\gamma F^{03}+\gamma F^{13}
=\gamma\left(B_y+\frac{vE_z}{c^2}\right),\\
F'^{12}
&=-\beta\gamma F^{02}+\gamma F^{12}
=-\gamma\left(B_z-\frac{vE_y}{c^2}\right).
\end{aligned}
$$

Using $F'^{0i}=-E'_i/c$, $F'^{23}=-B'_x$,
$F'^{13}=B'_y$, and $F'^{12}=-B'_z$ gives

$$
\boxed{
\begin{aligned}
E'_x&=E_x,
&E'_y&=\gamma(E_y-vB_z),
&E'_z&=\gamma(E_z+vB_y),\\
B'_x&=B_x,
&B'_y&=\gamma\left(B_y+\frac{vE_z}{c^2}\right),
&B'_z&=\gamma\left(B_z-\frac{vE_y}{c^2}\right).
\end{aligned}}
$$

The signs follow from the declared boost direction. Reversing the frame
transformation means replacing $v$ by $-v$.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-16/unit-2/lorentz-field-transformation.png' | relative_url }}" alt="Transformed electric and magnetic fields versus boost speed for a purely transverse electric field" loading="lazy">
  </div>
  <figcaption>For \(\mathbf E=E_0\hat{\mathbf y}\), \(\mathbf B=0\), the equations give \(E'_y/E_0=\gamma\) and \(cB'_z/E_0=-\gamma\beta\).</figcaption>
</figure>

## Maxwell equations in covariant form

The inhomogeneous Maxwell equations are the four components of

$$
\boxed{\partial_\mu F^{\mu\nu}=\mu_0J^\nu.}
$$

For $\nu=0$,

$$
\partial_iF^{i0}=\frac1c\nabla\cdot\mathbf E
=\mu_0c\rho
\quad\Longrightarrow\quad
\nabla\cdot\mathbf E=\frac\rho{\epsilon_0}.
$$

For a spatial index $\nu=i$,

$$
\partial_0F^{0i}+\partial_jF^{ji}=\mu_0J^i
$$

is precisely
$\nabla\times\mathbf B-\partial_t\mathbf E/c^2=\mu_0\mathbf J$.
The homogeneous equations are

$$
\boxed{
\partial_\lambda F_{\mu\nu}
+\partial_\mu F_{\nu\lambda}
+\partial_\nu F_{\lambda\mu}=0,
}
$$

which contain $\nabla\cdot\mathbf B=0$ and
$\nabla\times\mathbf E+\partial_t\mathbf B=0$.

Under a Lorentz transformation,
$\partial'_\mu=(\Lambda^{-1})^\alpha{}_{\mu}\partial_\alpha$,
$F'^{\mu\nu}=\Lambda^\mu{}_{\rho}\Lambda^\nu{}_{\sigma}F^{\rho\sigma}$,
and $J'^\nu=\Lambda^\nu{}_{\sigma}J^\sigma$. Contracting the first two
relations cancels one pair of inverse matrices, leaving

$$
\partial'_\mu F'^{\mu\nu}=\mu_0J'^\nu.
$$

This establishes the covariance of Maxwell's equations.

## Lorentz force and its transformation

For four-velocity $U^\mu=\gamma_u(c,\mathbf u)$ and four-momentum
$p^\mu=(E/c,\mathbf p)$, define the four-force

$$
\boxed{K^\mu=\frac{dp^\mu}{d\tau}=qF^{\mu\nu}U_\nu.}
$$

Since $U_\nu=\gamma_u(c,-\mathbf u)$, its time component is

$$
K^0=\gamma_u\frac q c\mathbf E\cdot\mathbf u
=\gamma_u\frac1c\frac{dE}{dt},
$$

and the spatial components are

$$
\mathbf K=\gamma_uq(\mathbf E+\mathbf u\times\mathbf B)
=\gamma_u\frac{d\mathbf p}{dt}.
$$

Hence the ordinary force law is

$$
\boxed{\frac{d\mathbf p}{dt}=q(\mathbf E+\mathbf u\times\mathbf B).}
$$

Because $F^{\mu\nu}$ and $U_\nu$ are tensors of complementary rank,
$K'^\mu=\Lambda^\mu{}_{\nu}K^\nu$. The Lorentz force therefore transforms
covariantly with the same field transformations derived above.

The boost-matrix multiplication, all six field transformations, and the
four-force components are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-16/unit-2/relativistic-electrodynamics.mac' | relative_url }}); every printed residual is zero.

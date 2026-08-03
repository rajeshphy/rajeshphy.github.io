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
$g_{\mu\nu}=\operatorname{diag}(1,-1,-1,-1)$. Let frame $S^{\prime}$ move with
speed $v$ along $+x$ relative to $S$. With $\beta=v/c$ and
$\gamma=(1-\beta^2)^{-1/2}$,

$$
\begin{pmatrix}ct^{\prime}\\x^{\prime}\\y^{\prime}\\z^{\prime}\end{pmatrix}
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

Then $\partial_\mu J^\mu=0$. Applying $J^{\prime \mu}=\Lambda^\mu{}_{\nu}J^\nu$
gives

$$
\boxed{
\rho^{\prime}=\gamma\left(\rho-\frac{vJ_x}{c^2}\right),
\qquad
J^{\prime}_x=\gamma(J_x-v\rho),
\qquad J^{\prime}_y=J_y,\quad J^{\prime}_z=J_z.
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
\phi^{\prime}=\gamma(\phi-vA_x),
\qquad
A^{\prime}_x=\gamma\left(A_x-\frac{v\phi}{c^2}\right),
\qquad A^{\prime}_y=A_y,\quad A^{\prime}_z=A_z.
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
F^{\prime \mu\nu}=\Lambda^\mu{}_{\alpha}
\Lambda^\nu{}_{\beta}F^{\alpha\beta}.
$$

The six independent contractions are

$$
\begin{aligned}
F^{\prime 01}
&=\gamma^2F^{01}+\beta^2\gamma^2F^{10}
=\gamma^2(1-\beta^2)F^{01}
=-\frac{E_x}{c},\\
F^{\prime 02}
&=\Lambda^0{}_{\alpha}\Lambda^2{}_{\beta}F^{\alpha\beta}
=\gamma F^{02}-\beta\gamma F^{12}\\
&=-\frac\gamma c(E_y-vB_z)
 =-\frac{E^{\prime}_y}{c},\\
F^{\prime 03}
&=\gamma F^{03}-\beta\gamma F^{13}
=-\frac\gamma c(E_z+vB_y),\\
F^{\prime 23}&=F^{23}=-B_x,\\
F^{\prime 13}
&=-\beta\gamma F^{03}+\gamma F^{13}
=\gamma\left(B_y+\frac{vE_z}{c^2}\right),\\
F^{\prime 12}
&=-\beta\gamma F^{02}+\gamma F^{12}
=-\gamma\left(B_z-\frac{vE_y}{c^2}\right).
\end{aligned}
$$

Using $F^{\prime 0i}=-E^{\prime}_i/c$, $F^{\prime 23}=-B^{\prime}_x$,
$F^{\prime 13}=B^{\prime}_y$, and $F^{\prime 12}=-B^{\prime}_z$ gives

$$
\boxed{
\begin{aligned}
E^{\prime}_x&=E_x,
&E^{\prime}_y&=\gamma(E_y-vB_z),
&E^{\prime}_z&=\gamma(E_z+vB_y),\\
B^{\prime}_x&=B_x,
&B^{\prime}_y&=\gamma\left(B_y+\frac{vE_z}{c^2}\right),
&B^{\prime}_z&=\gamma\left(B_z-\frac{vE_y}{c^2}\right).
\end{aligned}}
$$

The signs follow from the declared boost direction. Reversing the frame
transformation means replacing $v$ by $-v$.

## Field invariants

Two combinations of the fields are the same in every inertial frame. Direct
substitution of the transverse transformation laws gives

$$
\begin{aligned}
E^{\prime 2}-c^2B^{\prime 2}
={}&E_x^2-c^2B_x^2\\
&+\gamma^2\Big\{(E_y-vB_z)^2+(E_z+vB_y)^2\\
&\qquad-c^2\left[\left(B_y+\frac{vE_z}{c^2}\right)^2
+\left(B_z-\frac{vE_y}{c^2}\right)^2\right]\Big\}.
\end{aligned}
$$

The mixed terms cancel, and the braces reduce to
$(1-\beta^2)(E_y^2+E_z^2-c^2B_y^2-c^2B_z^2)$. Since
$\gamma^2(1-\beta^2)=1$,

$$
E^{\prime 2}-c^2B^{\prime 2}=E^2-c^2B^2.
$$

Likewise,

$$
\begin{aligned}
\mathbf E^{\prime}\cdot\mathbf B^{\prime}
&=E_xB_x+\gamma^2(1-\beta^2)(E_yB_y+E_zB_z)\\
&=\mathbf E\cdot\mathbf B.
\end{aligned}
$$

Thus

$$
\boxed{E^2-c^2B^2\ \text{and}\ \mathbf E\cdot\mathbf B
\quad\text{are Lorentz invariants}.}
$$

Their SI units are $\mathrm{V^2\,m^{-2}}$ and
$\mathrm{V\,T\,m^{-1}}$, respectively. These invariants test any computed
field transformation without selecting another sign convention.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-16/unit-2/lorentz-field-transformation.png' | relative_url }}" alt="Transformed electric and magnetic fields versus boost speed for a purely transverse electric field" loading="lazy">
  </div>
  <figcaption>For \(\mathbf E=E_0\hat{\mathbf y}\), \(\mathbf B=0\), the equations give \(E^{\prime}_y/E_0=\gamma\) and \(cB^{\prime}_z/E_0=-\gamma\beta\).</figcaption>
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

$$
\partial^{\prime}_\mu=(\Lambda^{-1})^\alpha{}_{\mu}\partial_\alpha,
\qquad
F^{\prime \mu\nu}=\Lambda^\mu{}_{\rho}\Lambda^\nu{}_{\sigma}F^{\rho\sigma},
\qquad
J^{\prime \nu}=\Lambda^\nu{}_{\sigma}J^\sigma.
$$

Contracting the first two relations cancels one pair of inverse matrices,
leaving

$$
\partial^{\prime}_\mu F^{\prime \mu\nu}=\mu_0J^{\prime \nu}.
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
$K^{\prime \mu}=\Lambda^\mu{}_{\nu}K^\nu$. The Lorentz force therefore transforms
covariantly with the same field transformations derived above.

## Solved Problems

### 1. Transforming a purely electric transverse field

In $S$, let $\mathbf E=3.00\times10^6\hat{\mathbf y}\ \mathrm{V\,m^{-1}}$
and $\mathbf B=0$. Find the fields in a frame moving at $v=0.600c$ along
$+x$, and verify both field invariants.

Here $\gamma=(1-0.600^2)^{-1/2}=1.250$. The transformation laws give

$$
E^{\prime}_y=\gamma E_y=(1.250)(3.00\times10^6)
=3.750\times10^6\ \mathrm{V\,m^{-1}},
$$

$$
B^{\prime}_z=-\gamma\frac{vE_y}{c^2}
=-\gamma\beta\frac{E_y}{c}
=-7.505\times10^{-3}\ \mathrm T.
$$

All other components vanish. The minus sign follows from the declared
$S\to S^{\prime}$ boost and agrees with $\mathbf v\times\mathbf E$ pointing along
$+z$ in the term subtracted from $\mathbf B$.

The transformed fields are perpendicular, so
$\mathbf E^{\prime}\cdot\mathbf B^{\prime}=0=\mathbf E\cdot\mathbf B$. For the other
invariant,

$$
E^{\prime 2}-c^2B^{\prime 2}
=\gamma^2E^2(1-\beta^2)=E^2
=9.00\times10^{12}\ \mathrm{V^2\,m^{-2}}.
$$

As $v\to0$, $\gamma\to1$ and the induced magnetic field vanishes.

### 2. Four-current of a neutral current in a boosted frame

A medium is neutral in $S$, so $\rho=0$, but carries
$J_x=2.00\times10^6\ \mathrm{A\,m^{-2}}$. Find $\rho^{\prime}$ and $J^{\prime}_x$ for a
boost $v=0.800c$ along $+x$.

With $\gamma=5/3$,

$$
\rho^{\prime}=\gamma\left(0-\frac{vJ_x}{c^2}\right)
=-\gamma\beta\frac{J_x}{c}
=-8.895\times10^{-3}\ \mathrm{C\,m^{-3}},
$$

$$
J^{\prime}_x=\gamma(J_x-v\rho)=\gamma J_x
=3.333\times10^6\ \mathrm{A\,m^{-2}}.
$$

The density units follow because
$(\mathrm{A\,m^{-2}})/(\mathrm{m\,s^{-1}})=\mathrm{C\,m^{-3}}$.
The current invariant is preserved:

$$
c^2\rho^{\prime 2}-J_x^{\prime 2}
=\gamma^2(\beta^2-1)J_x^2=-J_x^2
=c^2\rho^2-J_x^2.
$$

Neutrality is therefore frame-dependent even though four-current covariance
and charge conservation are not.

## Descriptive Questions

1. Derive the transformations of charge density and current density from the four-current, and explain why a neutral current need not remain neutral.
2. Construct $F^{\mu\nu}$ from the four-potential and obtain all six electric- and magnetic-field transformation laws for an $x$-directed boost.
3. Show component by component how the covariant Maxwell equations reproduce the four three-vector Maxwell equations.
4. Derive the temporal and spatial components of $K^\mu=qF^{\mu\nu}U_\nu$ and recover both electromagnetic power and the ordinary Lorentz force.

## Numerical Problems

1. In $S$, $\phi=120\ \mathrm V$ and $A_x=1.00\times10^{-7}\ \mathrm{V\,s\,m^{-1}}$. Find $\phi^{\prime}$ and $A^{\prime}_x$ for a boost $v=0.500c$ along $+x$.
2. A frame contains $\mathbf E=0$ and $\mathbf B=0.250\hat{\mathbf z}\ \mathrm T$. Find $E^{\prime}_y$ and $B^{\prime}_z$ for a boost $v=0.400c$ along $+x$.
3. For $\rho=5.00\times10^{-6}\ \mathrm{C\,m^{-3}}$ and $J_x=1.00\times10^3\ \mathrm{A\,m^{-2}}$, find $\rho^{\prime}$ and $J^{\prime}_x$ at $v=0.300c$.
4. A charge $q=2.00\ \mathrm{nC}$ moves with $\mathbf u=(2.00\hat{\mathbf x}+1.00\hat{\mathbf y})\times10^6\ \mathrm{m\,s^{-1}}$ through $\mathbf E=1.00\times10^3\hat{\mathbf y}\ \mathrm{V\,m^{-1}}$ and $\mathbf B=0.200\hat{\mathbf z}\ \mathrm T$. Find the Lorentz force and electromagnetic power.
5. In $S$, $\mathbf E=6.00\times10^6\hat{\mathbf y}\ \mathrm{V\,m^{-1}}$ and $\mathbf B=1.00\times10^{-2}\hat{\mathbf z}\ \mathrm T$. Find the $+x$ boost that makes $\mathbf B^{\prime}=0$ and determine $E^{\prime}$.

**Answers:** 1. $\phi^{\prime}=121.26\ \mathrm V$, $A^{\prime}_x=-1.156\times10^{-7}\ \mathrm{V\,s\,m^{-1}}$; 2. $E^{\prime}_y=-3.271\times10^7\ \mathrm{V\,m^{-1}}$, $B^{\prime}_z=0.2728\ \mathrm T$; 3. $\rho^{\prime}=4.192\times10^{-6}\ \mathrm{C\,m^{-3}}$, $J^{\prime}_x=576.9\ \mathrm{A\,m^{-2}}$; 4. $\mathbf F=(4.00\times10^{-4}\hat{\mathbf x}-7.98\times10^{-4}\hat{\mathbf y})\ \mathrm N$, $dE/dt=2.00\ \mathrm W$; 5. $v=c^2B/E=0.49965c$, $E^{\prime}=5.197\times10^6\ \mathrm{V\,m^{-1}}$.

The boost-matrix multiplication, field invariants, all six field
transformations, four-force components, and all printed numerical answers are
verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-16/unit-2/relativistic-electrodynamics.mac' | relative_url }}); every printed residual is zero.

## References

- [Covariant formulation of classical electromagnetism](https://en.wikipedia.org/wiki/Covariant_formulation_of_classical_electromagnetism)
- David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Chapter 12, “Electrodynamics and Relativity.”
- John D. Jackson, *Classical Electrodynamics*, 3rd ed., Chapter 11, “Special Theory of Relativity.”
- [The Feynman Lectures on Physics, Vol. II, Chapter 26, “Lorentz Transformations of the Fields”](https://www.feynmanlectures.caltech.edu/II_26.html)

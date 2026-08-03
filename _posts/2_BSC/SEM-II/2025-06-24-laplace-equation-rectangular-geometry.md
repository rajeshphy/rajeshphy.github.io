---
title: "Laplace Equation in Rectangular Geometry"
summary: "Separation of variables for two- and three-dimensional rectangular boundary-value problems."
date: 2025-06-24 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, laplace-equation, separation-of-variables]
permalink: /bsc/sem-ii/laplace-equation-rectangular-geometry/
hidden: true
---

In a two-dimensional rectangle $0<x<a$, $0<y<b$, Laplace's equation is

$$
\boxed{\frac{\partial^2u}{\partial x^2}
+\frac{\partial^2u}{\partial y^2}=0}.
$$

Take the separated form $u(x,y)=X(x)Y(y)$. Substitution gives

$$
X''Y+XY''=0.
$$

After division by $XY$,

$$
\frac{X''}{X}=-\frac{Y''}{Y}.
$$

The left side depends only on $x$ and the right side only on $y$; because they are equal for all $(x,y)$, both must equal a constant. Choose $-k^2$ so that zero conditions at $x=0,a$ have nonzero solutions:

$$
X''+k^2X=0,
\qquad
Y''-k^2Y=0.
$$

Suppose

$$
u(0,y)=u(a,y)=u(x,0)=0,
\qquad
u(x,b)=f(x).
$$

The first two conditions require

$$
X_n(x)=\sin\frac{n\pi x}{a},
\qquad
k_n=\frac{n\pi}{a},
\qquad n=1,2,\ldots.
$$

The condition at $y=0$ removes the $\cosh(k_ny)$ term, leaving $Y_n\propto\sinh(k_ny)$. Superposition gives

$$
u(x,y)=\sum_{n=1}^{\infty}A_n
\sin\frac{n\pi x}{a}\sinh\frac{n\pi y}{a}.
$$

At $y=b$,

$$
f(x)=\sum_{n=1}^{\infty}A_n
\sinh\frac{n\pi b}{a}\sin\frac{n\pi x}{a}.
$$

Multiply by $\sin(m\pi x/a)$ and integrate from $0$ to $a$. Orthogonality,

$$
\int_0^a\sin\frac{n\pi x}{a}\sin\frac{m\pi x}{a}dx
=\frac a2\delta_{mn},
$$

gives

$$
A_n=\frac{2}{a\sinh(n\pi b/a)}
\int_0^a f(x)\sin\frac{n\pi x}{a}dx.
$$

Hence

$$
\boxed{
u(x,y)=\sum_{n=1}^{\infty}B_n
\frac{\sinh(n\pi y/a)}{\sinh(n\pi b/a)}
\sin\frac{n\pi x}{a}},
$$

where

$$
\boxed{B_n=\frac2a\int_0^a f(x)
\sin\frac{n\pi x}{a}dx}.
$$

For $f(x)=V_0\sin(\pi x/a)$, only $B_1=V_0$ is nonzero:

$$
\boxed{
u=V_0\sin\frac{\pi x}{a}
\frac{\sinh(\pi y/a)}{\sinh(\pi b/a)}}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/laplace-rectangle-mode.png' | relative_url }}" alt="Equation-generated color map of the first separated Laplace mode in a rectangle" loading="lazy">
  <figcaption>The plotted field is \(u/V_0=\sin(\pi x/a)\sinh(\pi y/a)/\sinh(\pi b/a)\) for \(a=b\). It vanishes on three edges and matches \(\sin(\pi x/a)\) on the top edge.</figcaption>
</figure>

## Three independent variables

For a rectangular box, $u=XYZ$ in $u_{xx}+u_{yy}+u_{zz}=0$ gives

$$
\frac{X''}{X}+\frac{Y''}{Y}+\frac{Z''}{Z}=0.
$$

If $u=0$ at $x=0,a$ and $y=0,b$, choose

$$
X_m=\sin\frac{m\pi x}{a},
\qquad
Y_n=\sin\frac{n\pi y}{b}.
$$

Then $Z$ obeys

$$
Z''-\gamma_{mn}^2Z=0,
\qquad
\gamma_{mn}^2=\left(\frac{m\pi}{a}\right)^2
+\left(\frac{n\pi}{b}\right)^2.
$$

For each $(m,n)$,

$$
Z_{mn}=C_{mn}\cosh(\gamma_{mn}z)
+D_{mn}\sinh(\gamma_{mn}z).
$$

The remaining boundary data determine $C_{mn}$ and $D_{mn}$ in the double sum. If the additional face $z=0$ is held at zero, $C_{mn}=0$ and only the $\sinh(\gamma_{mn}z)$ term remains. The separation step is the same; two independent transverse boundary conditions select the two integer labels.

The two-dimensional mode and its four boundary residuals are checked symbolically in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

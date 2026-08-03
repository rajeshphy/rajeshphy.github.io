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
X^{\prime\prime}Y+XY^{\prime\prime}=0.
$$

After division by $XY$,

$$
\frac{X^{\prime\prime}}{X}=-\frac{Y^{\prime\prime}}{Y}.
$$

The left side depends only on $x$ and the right side only on $y$; because they are equal for all $(x,y)$, both must equal a constant. Choose $-k^2$ so that zero conditions at $x=0,a$ have nonzero solutions:

$$
X^{\prime\prime}+k^2X=0,
\qquad
Y^{\prime\prime}-k^2Y=0.
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
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-2/laplace-rectangle-mode.png' | relative_url }}" alt="Equation-generated color map of the first separated Laplace mode in a rectangle" loading="lazy">
  </div>
  <figcaption>The plotted field is \(u/V_0=\sin(\pi x/a)\sinh(\pi y/a)/\sinh(\pi b/a)\) for \(a=b\). It vanishes on three edges and matches \(\sin(\pi x/a)\) on the top edge.</figcaption>
</figure>

## Three independent variables

For a rectangular box, $u=XYZ$ in $u_{xx}+u_{yy}+u_{zz}=0$ gives

$$
\frac{X^{\prime\prime}}{X}+\frac{Y^{\prime\prime}}{Y}+\frac{Z^{\prime\prime}}{Z}=0.
$$

If $u=0$ at $x=0,a$ and $y=0,b$, choose

$$
X_m=\sin\frac{m\pi x}{a},
\qquad
Y_n=\sin\frac{n\pi y}{b}.
$$

Then $Z$ obeys

$$
Z^{\prime\prime}-\gamma_{mn}^2Z=0,
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

## Solved Problems

### 1. A constant potential on the top edge

In the rectangle $0<x<a$, $0<y<b$, solve Laplace's equation when three edges are at zero potential and

$$
u(x,b)=V_0,
\qquad 0<x<a.
$$

The separated solution derived above applies with $f(x)=V_0$. Its sine coefficients are

$$
\begin{aligned}
B_n
&=\frac{2V_0}{a}\int_0^a\sin\frac{n\pi x}{a}\,dx\\
&=\frac{2V_0}{n\pi}\left[1-(-1)^n\right].
\end{aligned}
$$

Thus $B_n=0$ for even $n$ and $B_n=4V_0/(n\pi)$ for odd $n$. Therefore

$$
\boxed{
u(x,y)=\frac{4V_0}{\pi}
\sum_{\substack{n=1\\ n\ \mathrm{odd}}}^{\infty}
\frac1n
\frac{\sinh(n\pi y/a)}{\sinh(n\pi b/a)}
\sin\frac{n\pi x}{a}}.
$$

Every term has zero Laplacian and vanishes on $x=0$, $x=a$, and $y=0$. At $y=b$, the series is the Fourier sine series of $V_0$ on $0<x<a$. The corner values are discontinuous boundary data; inside the rectangle the solution remains between $0$ and $V_0$ when $V_0>0$.

### 2. A single mode in a rectangular box

Let $0<x<a$, $0<y<b$, $0<z<c$. All faces are held at zero except

$$
u(x,y,c)=V_0
\sin\frac{\pi x}{a}
\sin\frac{2\pi y}{b}.
$$

The transverse indices are $m=1$ and $n=2$, so

$$
\gamma_{12}
=\sqrt{\left(\frac{\pi}{a}\right)^2
+\left(\frac{2\pi}{b}\right)^2}.
$$

The condition at $z=0$ selects $\sinh(\gamma_{12}z)$, while normalization at $z=c$ fixes its denominator. Hence

$$
\boxed{
u=V_0
\sin\frac{\pi x}{a}
\sin\frac{2\pi y}{b}
\frac{\sinh(\gamma_{12}z)}
{\sinh(\gamma_{12}c)}}.
$$

Two $x$ derivatives contribute $-(\pi/a)^2u$, two $y$ derivatives contribute $-(2\pi/b)^2u$, and two $z$ derivatives contribute $\gamma_{12}^2u$; their sum is zero. The dimensions are consistent because $\gamma_{12}$ has units of inverse length.

## Descriptive Questions

1. Explain why the sign of the separation constant is chosen to satisfy homogeneous boundary conditions on two opposite edges.
2. Derive the Fourier coefficient formula for arbitrary data prescribed on one edge of a rectangle.
3. Explain how two transverse integer labels arise when Laplace's equation is separated in a rectangular box.
4. Discuss how discontinuous data at a corner are represented by the interior Fourier-series solution.

## Numerical Problems

1. For the first mode with $a=0.40\,\mathrm{m}$, $b=0.20\,\mathrm{m}$, and $V_0=100\,\mathrm{V}$, evaluate $u$ at $x=0.20\,\mathrm{m}$, $y=0.10\,\mathrm{m}$.
   **Final answer:** $u=100\sinh(\pi/4)/\sinh(\pi/2)=37.7470\,\mathrm{V}$.
2. On a unit square, the top-edge data are $f(x)=x(1-x)\,\mathrm{V}$. Find the first two sine coefficients.
   **Final answer:** $B_1=8/\pi^3=0.258012\,\mathrm{V}$ and $B_2=0$.
3. In a box with $a=0.30\,\mathrm{m}$ and $b=0.40\,\mathrm{m}$, find $\gamma_{21}$.
   **Final answer:** $\gamma_{21}=\pi\sqrt{(2/a)^2+(1/b)^2}=22.3681\,\mathrm{m^{-1}}$.
4. In a square with $a=b$, find the vertical amplitude factor of the $n=1$ mode halfway between its zero bottom edge and prescribed top edge.
   **Final answer:** $\sinh(\pi/2)/\sinh\pi=0.199268$.

The Fourier coefficients, boundary values, PDE residuals, and numerical evaluations are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Laplace's equation — Wikipedia](https://en.wikipedia.org/wiki/Laplace%27s_equation)
2. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 13, “Partial Differential Equations,” Wiley.
3. Richard Haberman, *Applied Partial Differential Equations with Fourier Series and Boundary Value Problems*, 5th ed., Chapter 2, §2.5, “Laplace's Equation: Solutions and Qualitative Properties,” Pearson.
4. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., Chapter 12, “Partial Differential Equations,” Wiley.

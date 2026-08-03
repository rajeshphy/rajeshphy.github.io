---
title: "Vibrational Modes of a Stretched String and Rectangular Membrane"
summary: "Separated standing-wave solutions and normal-mode frequencies for fixed string and rectangular membrane boundaries."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, wave-equation, normal-modes]
permalink: /bsc/sem-ii/stretched-string-rectangular-membrane/
hidden: true
---

The syllabus asks for solutions of the wave equation, not its derivation. We therefore take

$$
\boxed{u_{tt}=c^2u_{xx}}
$$

as given for a string, where $[c]={\rm length}/{\rm time}$.

## String fixed at both ends

Let $0<x<L$ and impose

$$
u(0,t)=u(L,t)=0.
$$

Set $u(x,t)=X(x)T(t)$. Then

$$
XT''=c^2X''T,
\qquad
\frac{T''}{c^2T}=\frac{X''}{X}=-k^2.
$$

The separated equations are

$$
X''+k^2X=0,
\qquad
T''+c^2k^2T=0.
$$

The spatial solution is $X=A\cos kx+B\sin kx$. The condition $X(0)=0$ gives $A=0$, and $X(L)=0$ gives

$$
\sin(kL)=0,
\qquad
k_n=\frac{n\pi}{L}.
$$

Thus

$$
\boxed{
u(x,t)=\sum_{n=1}^{\infty}
\left[A_n\cos(\omega_nt)+B_n\sin(\omega_nt)\right]
\sin\frac{n\pi x}{L}},
$$

with

$$
\boxed{\omega_n=ck_n=\frac{n\pi c}{L}},
\qquad
f_n=\frac{\omega_n}{2\pi}=\frac{nc}{2L}.
$$

The coefficients follow from the initial displacement and velocity by sine-series orthogonality.

## Rectangular membrane

For $0<x<a$, $0<y<b$, take the given two-dimensional wave equation

$$
u_{tt}=c^2(u_{xx}+u_{yy})
$$

with all four edges fixed. Put $u=XYT$. Division by $c^2XYT$ gives

$$
\frac{T''}{c^2T}=\frac{X''}{X}+\frac{Y''}{Y}.
$$

Choose

$$
\frac{X''}{X}=-k_x^2,
\qquad
\frac{Y''}{Y}=-k_y^2.
$$

Fixed edges require

$$
X_m=\sin\frac{m\pi x}{a},
\qquad
Y_n=\sin\frac{n\pi y}{b}.
$$

The time equation is

$$
T''+\omega_{mn}^2T=0,
$$

where

$$
\boxed{
\omega_{mn}=c\pi
\sqrt{\left(\frac ma\right)^2+\left(\frac nb\right)^2}}.
$$

One normal mode is therefore

$$
\boxed{
u_{mn}=A_{mn}
\sin\frac{m\pi x}{a}
\sin\frac{n\pi y}{b}
\cos(\omega_{mn}t+\delta_{mn})}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/string-rectangular-modes.png' | relative_url }}" alt="Equation-generated fixed-string modes and nodal lines of a rectangular membrane mode" loading="lazy">
  <figcaption>The string curves are \(\sin(n\pi x/L)\). The membrane panel shows the nodal lines of \(\sin(2\pi x/a)\sin(3\pi y/b)\); the boundary itself is also nodal.</figcaption>
</figure>

The dimensions are consistent: each term under the square root has dimension ${\rm length}^{-2}$, so $[\omega_{mn}]={\rm time}^{-1}$.

The separated string and membrane modes are substituted into their given wave equations in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

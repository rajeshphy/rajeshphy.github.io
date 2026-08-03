---
title: "One-Dimensional Heat-Flow Equation"
summary: "Separated temperature modes in a finite rod, Fourier coefficients, and exponential decay rates."
date: 2025-06-16 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, heat-equation, separation-of-variables]
permalink: /bsc/sem-ii/one-dimensional-heat-flow/
hidden: true
---

The syllabus asks for the solution, not the derivation, of the one-dimensional heat equation. Take

$$
\boxed{\frac{\partial T}{\partial t}
=\kappa\frac{\partial^2T}{\partial x^2}}
$$

as given, where $[\kappa]={\rm length}^2/{\rm time}$.

Consider a rod $0<x<L$ whose ends are held at zero temperature:

$$
T(0,t)=T(L,t)=0,
\qquad
T(x,0)=f(x).
$$

Put $T(x,t)=X(x)G(t)$. Then

$$
XG'=\kappa X''G.
$$

After division by $\kappa XG$,

$$
\frac{G'}{\kappa G}=\frac{X''}{X}=-k^2.
$$

Thus

$$
X''+k^2X=0,
\qquad
G'+\kappa k^2G=0.
$$

The boundary conditions select

$$
X_n=\sin\frac{n\pi x}{L},
\qquad
k_n=\frac{n\pi}{L},
$$

and the time equation gives

$$
G_n(t)=\exp\!\left[-\kappa
\left(\frac{n\pi}{L}\right)^2t\right].
$$

Therefore

$$
\boxed{
T(x,t)=\sum_{n=1}^{\infty}B_n
\sin\frac{n\pi x}{L}
e^{-\kappa(n\pi/L)^2t}}.
$$

At $t=0$ this must equal $f(x)$. Multiply by $\sin(m\pi x/L)$ and integrate. Orthogonality gives

$$
\boxed{B_n=\frac2L\int_0^L f(x)
\sin\frac{n\pi x}{L}dx}.
$$

As an exact two-mode example, take

$$
f(x)=T_0\left(\sin\frac{\pi x}{L}
+\frac12\sin\frac{3\pi x}{L}\right).
$$

Only $B_1=T_0$ and $B_3=T_0/2$ are nonzero, so

$$
\boxed{
\frac{T(x,t)}{T_0}
=\sin\frac{\pi x}{L}e^{-\kappa\pi^2t/L^2}
+\frac12\sin\frac{3\pi x}{L}e^{-9\kappa\pi^2t/L^2}}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/heat-flow-decay.png' | relative_url }}" alt="Equation-generated temperature profiles in a rod at increasing dimensionless times" loading="lazy">
  <figcaption>The plotted two-mode solution is shown at increasing \(\tau=\kappa\pi^2t/L^2\). The third spatial mode decays as \(e^{-9\tau}\), nine times faster in the exponent than the first.</figcaption>
</figure>

For one mode, the decay time is

$$
\tau_n=\frac{1}{\kappa k_n^2}
=\frac{L^2}{\kappa n^2\pi^2}.
$$

Its units are time, and the $n^{-2}$ dependence shows why fine spatial structure disappears first. The heat-equation and boundary residuals are zero in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

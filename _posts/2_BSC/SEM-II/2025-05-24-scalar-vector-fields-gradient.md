---
title: "Scalar and Vector Fields, Directional Derivatives, and the Gradient"
summary: "Fields, directional and normal derivatives, and the geometrical meaning of the gradient."
date: 2025-05-24 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, vector-calculus, gradient]
permalink: /bsc/sem-ii/scalar-vector-fields-gradient/
hidden: true
---

A field assigns a physical quantity to every point. A scalar field assigns one number,

$$
\phi:\mathbb R^3\to\mathbb R,
\qquad (x,y,z)\mapsto\phi(x,y,z),
$$

whereas a vector field assigns a vector,

$$
\mathbf A=A_x\hat{\mathbf x}+A_y\hat{\mathbf y}+A_z\hat{\mathbf z}.
$$

The dimensions belong to the field: if $T$ is temperature, then $[T]=\mathrm{K}$ and $[\partial T/\partial x]=\mathrm{K\,m^{-1}}$.

## Change of a scalar field

For $d\mathbf r=dx\,\hat{\mathbf x}+dy\,\hat{\mathbf y}+dz\,\hat{\mathbf z}$, the first-order Taylor expansion is

$$
d\phi=\frac{\partial\phi}{\partial x}dx
+\frac{\partial\phi}{\partial y}dy
+\frac{\partial\phi}{\partial z}dz.
$$

Define

$$
\nabla=\hat{\mathbf x}\partial_x+\hat{\mathbf y}\partial_y+\hat{\mathbf z}\partial_z,
\qquad
\nabla\phi=\phi_x\hat{\mathbf x}+\phi_y\hat{\mathbf y}+\phi_z\hat{\mathbf z}.
$$

Then

$$
\boxed{d\phi=\nabla\phi\cdot d\mathbf r}.
$$

Because $d\phi$ is a scalar, $\nabla\phi$ transforms as a vector under rotations of Cartesian axes.

## Directional derivative

Move from $\mathbf r_0$ along a unit vector $\hat{\mathbf n}$:

$$
\mathbf r(s)=\mathbf r_0+s\hat{\mathbf n},
\qquad \frac{d\mathbf r}{ds}=\hat{\mathbf n}.
$$

The chain rule gives

$$
\begin{aligned}
\frac{d\phi}{ds}
&=\phi_x\frac{dx}{ds}+\phi_y\frac{dy}{ds}+\phi_z\frac{dz}{ds}\\
&=\nabla\phi\cdot\hat{\mathbf n}.
\end{aligned}
$$

Thus

$$
\boxed{D_{\hat{\mathbf n}}\phi=\hat{\mathbf n}\cdot\nabla\phi}.
$$

The vector must be normalized when a derivative *per unit distance* is required. For a nonzero displacement direction $\mathbf v$,

$$
\hat{\mathbf v}=\frac{\mathbf v}{\lvert\mathbf v\rvert},
\qquad
D_{\hat{\mathbf v}}\phi
=\nabla\phi\cdot\frac{\mathbf v}{\lvert\mathbf v\rvert}.
$$

If $\alpha$ is the angle between $\hat{\mathbf n}$ and $\nabla\phi$,

$$
D_{\hat{\mathbf n}}\phi=\lvert\nabla\phi\rvert\cos\alpha.
$$

The maximum value $\lvert\nabla\phi\rvert$ occurs along $\nabla\phi$; the minimum $-\lvert\nabla\phi\rvert$ occurs in the opposite direction.

## Geometrical interpretation and normal derivative

On a level surface $\phi(x,y,z)=C$, a tangent displacement $d\mathbf r_{\parallel}$ leaves $\phi$ unchanged. Therefore

$$
0=d\phi=\nabla\phi\cdot d\mathbf r_{\parallel}.
$$

Hence $\nabla\phi$ is normal to the level surface wherever $\nabla\phi\ne\mathbf0$. Choose the unit normal in the direction of increasing $\phi$,

$$
\hat{\mathbf n}=\frac{\nabla\phi}{\lvert\nabla\phi\rvert},
$$

then the normal derivative is

$$
\boxed{\frac{\partial\phi}{\partial n}
=\hat{\mathbf n}\cdot\nabla\phi=\lvert\nabla\phi\rvert}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-1/gradient-level-curves.png' | relative_url }}" alt="Level curves of x squared plus y squared with gradient arrows normal to each curve" loading="lazy">
  </div>
  <figcaption>For \(\phi=x^2+y^2\), the level curves are circles and \(\nabla\phi=(2x,2y)\) is radial. The plotted curves and arrows come directly from these equations.</figcaption>
</figure>

For $\phi=x^2+y^2+3z$,

$$
\nabla\phi=2x\hat{\mathbf x}+2y\hat{\mathbf y}+3\hat{\mathbf z}.
$$

At $(1,-1,0)$, along $\hat{\mathbf n}=(2,1,2)/3$,

$$
D_{\hat{\mathbf n}}\phi=(2,-2,3)\cdot\frac{(2,1,2)}3
=\frac{4-2+6}{3}=\frac83.
$$

If the opposite orientation is chosen, the normal derivative is $-\lvert\nabla\phi\rvert$. The units $[\nabla\phi]=[\phi]/\mathrm{length}$ confirm that the gradient is a spatial rate of change.

At a regular point $\mathbf r_0$ of the level surface, where $\nabla\phi(\mathbf r_0)\ne\mathbf0$, its tangent plane is

$$
\boxed{\nabla\phi(\mathbf r_0)\cdot(\mathbf r-\mathbf r_0)=0}.
$$

If $\nabla\phi(\mathbf r_0)=\mathbf0$, this first-order equation does not determine a unique normal. For a time-dependent field sampled by a moving observer, $\phi=\phi(\mathbf r(t),t)$, the same chain rule gives

$$
\boxed{\frac{d\phi}{dt}=\frac{\partial\phi}{\partial t}
+\frac{d\mathbf r}{dt}\cdot\nabla\phi}.
$$

The first term is local temporal change; the second is change caused by motion through the spatial gradient.

## Solved Problems

1. A temperature field is $T=300+2x^2-yz$ K, with $x,y,z$ measured in metres and the numerical coefficients carrying the corresponding SI units. At $P=(1,2,-1)$, find the directional derivative towards $Q=(3,1,1)$, the direction and magnitude of steepest increase, and the tangent plane to the isotherm through $P$.

   The displacement and its unit vector are

   $$
   \mathbf v=Q-P=(2,-1,2),\qquad
   \lvert\mathbf v\rvert=3,\qquad
   \hat{\mathbf v}=\frac{(2,-1,2)}3.
   $$

   Since

   $$
   \nabla T=(4x,-z,-y)\ \mathrm{K\,m^{-1}},
   $$

   at $P$ one has $\nabla T=(4,1,-2)\ \mathrm{K\,m^{-1}}$. Therefore

   $$
   D_{\hat{\mathbf v}}T
   =(4,1,-2)\cdot\frac{(2,-1,2)}3
   =1\ \mathrm{K\,m^{-1}}.
   $$

   The steepest-increase direction and rate are

   $$
   \hat{\mathbf n}_{\max}=\frac{(4,1,-2)}{\sqrt{21}},
   \qquad \lvert\nabla T\rvert=\sqrt{21}\ \mathrm{K\,m^{-1}}.
   $$

   Finally, the tangent plane is

   $$
   (4,1,-2)\cdot(x-1,y-2,z+1)=0,
   \qquad \boxed{4x+y-2z=8}.
   $$

   The positive derivative towards $Q$ means that the temperature initially rises along that direction. The unit-vector normalization supplies the required kelvin-per-metre units.

2. Let $\phi=x^2y+z$ and let a particle follow $\mathbf r(t)=(t,t^2,1-t)$. Find $d\phi/dt$ at $t=1$ in two independent ways.

   Direct substitution gives

   $$
   \phi(\mathbf r(t))=t^2(t^2)+(1-t)=t^4+1-t,
   $$

   and hence

   $$
   \left.\frac{d\phi}{dt}\right\rvert_{t=1}
   =\left.(4t^3-1)\right\rvert_{t=1}=3.
   $$

   Alternatively,

   $$
   \nabla\phi=(2xy,x^2,1),\qquad
   \frac{d\mathbf r}{dt}=(1,2t,-1).
   $$

   At $t=1$, $\mathbf r=(1,1,0)$, so

   $$
   \nabla\phi\cdot\frac{d\mathbf r}{dt}
   =(2,1,1)\cdot(1,2,-1)=3.
   $$

   The agreement is the chain-rule check: the field value is increasing at three units of $\phi$ per unit of the path parameter.

## Descriptive Questions

1. Starting from the first-order Taylor expansion, derive the gradient and the directional derivative along an arbitrary unit vector.
2. Prove that $\nabla\phi$ is perpendicular to a regular level surface, and obtain the equation of its tangent plane.
3. Distinguish scalar and vector fields using physical examples, dimensions, and their transformation under a rotation of Cartesian axes.
4. Use the Cauchy–Schwarz inequality to establish the maximum and minimum directional derivatives and explain the sign of an oriented normal derivative.

## Numerical Problems

1. The temperature is $T=20+x^2+3y^2$ °C, with distances in metres. Find its directional derivative at $(2,-1)$ along $(3,4)$.

   **Answer:** $-12/5\ \mathrm{^\circ C\,m^{-1}}$.

2. For $\phi=xe^y+z^2$, find the unit direction and magnitude of maximum increase at $(1,0,-1)$.

   **Answer:** direction $(1,1,-2)/\sqrt6$; maximum rate $\sqrt6$.

3. Find the tangent plane to $x^2+2y^2+3z^2=6$ at $(1,1,1)$.

   **Answer:** $x+2y+3z=6$.

4. For $\phi=x^2y-yz$, calculate the directional derivative at $(1,2,3)$ along $(2,-2,1)$.

   **Answer:** $10/3$.

5. A particle follows $\mathbf r(s)=(\cos s,\sin s,s)$ through $\phi=x^2+y^2+z^2$. Find $d\phi/ds$ at $s=\pi$.

   **Answer:** $2\pi$.

6. On the plane $x+y+z=3$, take the normal outward from $x+y+z\leq3$. Find the normal derivative of $\phi=x^2+y^2+z^2$ at $(1,1,1)$.

   **Answer:** $2\sqrt3$.

All symbolic reductions and numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every printed residual is zero.

## References

1. [Gradient — Wikipedia](https://en.wikipedia.org/wiki/Gradient)
2. [OpenStax, *Calculus Volume 3*, §4.6: Directional Derivatives and the Gradient](https://openstax.org/books/calculus-volume-3/pages/4-6-directional-derivatives-and-the-gradient)
3. George B. Arfken, Hans J. Weber, and Frank E. Harris, *Mathematical Methods for Physicists*, 7th ed., Chapter 3, §§3.1–3.6.

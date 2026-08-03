---
title: "Gauss, Green, and Stokes Theorems"
summary: "Integral theorems connecting local derivatives with flux and circulation on boundaries."
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, divergence-theorem, greens-theorem, stokes-theorem]
permalink: /bsc/sem-ii/gauss-green-stokes-theorems/
hidden: true
---

The integral theorems express one geometrical principle: an accumulated local derivative inside a region equals a field integral over its boundary.

The classical statements require piecewise smooth boundaries and continuously differentiable field components on an open region containing the domain. Orientation is part of each theorem: closed surfaces use the outward normal, while the positive direction around an open surface follows from its chosen normal by the right-hand rule.

## Gauss divergence theorem

Let $V$ have closed boundary $S=\partial V$ with outward orientation. For a small cell,

$$
\oint_{\partial(\Delta V)}\mathbf A\cdot d\mathbf S
=(\nabla\cdot\mathbf A)\Delta V+o(\Delta V).
$$

On adding all cells, fluxes through shared interior faces cancel because neighbouring outward normals are opposite. In the limit,

$$
\boxed{
\iiint_V(\nabla\cdot\mathbf A)\,dV
=\iint_{\partial V}\mathbf A\cdot d\mathbf S}.
$$

For $\mathbf A=x\hat{\mathbf x}+y\hat{\mathbf y}+z\hat{\mathbf z}$ inside $r\leq R$,

$$
\iiint_V\nabla\cdot\mathbf A\,dV
=3\frac{4\pi R^3}{3}=4\pi R^3.
$$

On the sphere, $\mathbf A=R\hat{\mathbf r}$ and $d\mathbf S=\hat{\mathbf r}R^2\sin\theta\,d\theta d\varphi$, so

$$
\iint_S\mathbf A\cdot d\mathbf S
=R^3\int_0^{2\pi}d\varphi\int_0^\pi\sin\theta\,d\theta
=4\pi R^3.
$$

## Stokes theorem

Let an oriented surface $S$ have boundary $C=\partial S$. The right-hand rule fixes the positive direction around $C$. Circulations on shared edges of small surface patches cancel, leaving

$$
\boxed{
\iint_S(\nabla\times\mathbf A)\cdot d\mathbf S
=\oint_{\partial S}\mathbf A\cdot d\boldsymbol\ell}.
$$

For $\mathbf A=-y\hat{\mathbf x}+x\hat{\mathbf y}$ on $x^2+y^2\leq R^2$,

$$
\nabla\times\mathbf A=2\hat{\mathbf z},
\qquad
\iint_S2\,dS=2\pi R^2.
$$

On $C$, $\mathbf r=R(\cos\varphi,\sin\varphi)$ gives

$$
\mathbf A=R(-\sin\varphi,\cos\varphi),
\quad d\boldsymbol\ell=R(-\sin\varphi,\cos\varphi)d\varphi,
$$

and therefore

$$
\oint_C\mathbf A\cdot d\boldsymbol\ell
=R^2\int_0^{2\pi}d\varphi=2\pi R^2.
$$

## Green's theorems

For a positively oriented curve $C$ bounding a plane region $D$, Stokes theorem applied to $\mathbf A=P\hat{\mathbf x}+Q\hat{\mathbf y}$ gives

$$
\boxed{
\oint_C(P\,dx+Q\,dy)
=\iint_D\left(Q_x-P_y\right)dA}.
$$

The planar flux form is

$$
\boxed{
\oint_C(P\,dy-Q\,dx)
=\iint_D\left(P_x+Q_y\right)dA}.
$$

From $\nabla\cdot(u\nabla v)=\nabla u\cdot\nabla v+u\nabla^2v$ and Gauss' theorem,

$$
\boxed{
\iiint_V(\nabla u\cdot\nabla v+u\nabla^2v)dV
=\iint_Su\frac{\partial v}{\partial n}dS}.
$$

Subtracting the equation with $u,v$ exchanged gives

$$
\boxed{
\iiint_V(u\nabla^2v-v\nabla^2u)dV
=\iint_S\left(u\frac{\partial v}{\partial n}
-v\frac{\partial u}{\partial n}\right)dS}.
$$

These are Green's first and second identities. The surface $S$ is the complete boundary of $V$, and $\partial/\partial n=\hat{\mathbf n}\cdot\nabla$ uses its outward normal.

## Conservation law from Gauss' theorem

Let $\rho(\mathbf r,t)$ be a conserved density and $\mathbf J$ its outward flux density. For any fixed volume $V$,

$$
\frac{d}{dt}\iiint_V\rho\,dV
=-\iint_{\partial V}\mathbf J\cdot d\mathbf S.
$$

Gauss' theorem converts the surface flux to a volume integral:

$$
\iiint_V\left(\frac{\partial\rho}{\partial t}
+\nabla\cdot\mathbf J\right)dV=0.
$$

Since this holds for every sufficiently small volume,

$$
\boxed{\frac{\partial\rho}{\partial t}+\nabla\cdot\mathbf J=0}.
$$

If a field is singular inside the region, the usual hypotheses fail. One must excise the singular point or line and include the new inner boundary; applying a theorem as though the field were smooth can miss a finite flux or circulation.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-1/integral-theorems-boundaries.png' | relative_url }}" alt="Closed volume, oriented surface and planar region with their boundaries" loading="lazy">
  </div>
  <figcaption>Gauss relates a volume to its closed surface; Stokes relates an oriented surface to its edge; Green is the planar case with counterclockwise positive orientation.</figcaption>
</figure>

## Solved Problems

1. Verify Gauss' theorem for $\mathbf A=(x^2,y^2,z^2)$ on the unit cube $0\leq x,y,z\leq1$.

   The divergence is

   $$
   \nabla\cdot\mathbf A=2x+2y+2z.
   $$

   Its volume integral is

   $$
   \begin{aligned}
   \iiint_V\nabla\cdot\mathbf A\,dV
   &=2\iiint_V(x+y+z)\,dV\\
   &=2\left(\frac12+\frac12+\frac12\right)=3.
   \end{aligned}
   $$

   Directly, the faces $x=0$, $y=0$, and $z=0$ contribute zero. On each opposite face the outward component equals $1$, and its area is $1$, so

   $$
   \iint_{\partial V}\mathbf A\cdot d\mathbf S
   =1+1+1=3.
   $$

   Both sides have dimensions of field times area. The positive value represents net outward flux.

2. Use Green's circulation theorem to evaluate

   $$
   \oint_C(-y^2\,dx+x^2\,dy)
   $$

   around the rectangle $0\leq x\leq2$, $0\leq y\leq1$, traversed counterclockwise.

   Here $P=-y^2$ and $Q=x^2$, so

   $$
   Q_x-P_y=2x+2y.
   $$

   Therefore

   $$
   \begin{aligned}
   \oint_C(P\,dx+Q\,dy)
   &=\int_0^2\int_0^1(2x+2y)\,dy\,dx\\
   &=\int_0^2(2x+1)\,dx\\
   &=\left[x^2+x\right]_0^2
   =\boxed{6}.
   \end{aligned}
   $$

   The sign is positive for counterclockwise orientation. Reversing $C$ would change the answer to $-6$.

3. Let $C$ be the triangular path $O\to B\to C_1\to O$, where $O=(0,0,0)$, $B=(1,0,0)$, and $C_1=(0,1,1)$. Use Stokes' theorem to find the circulation of

   $$
   \mathbf A=-\frac y2\hat{\mathbf x}+\frac x2\hat{\mathbf y}.
   $$

   The ordered vertices give the oriented vector area

   $$
   \mathbf S_{\mathrm{vec}}
   =\frac12(\overrightarrow{OB}\times\overrightarrow{OC_1})
   =\frac12(1,0,0)\times(0,1,1)
   =\left(0,-\frac12,\frac12\right).
   $$

   Since

   $$
   \nabla\times\mathbf A=\hat{\mathbf z},
   $$

   Stokes' theorem gives

   $$
   \oint_C\mathbf A\cdot d\boldsymbol\ell
   =(\nabla\times\mathbf A)\cdot\mathbf S_{\mathrm{vec}}
   =\boxed{\frac12}.
   $$

   The positive sign follows from the vertex order and its induced normal; reversing the traversal reverses the circulation.

## Descriptive Questions

1. Derive Gauss' divergence theorem by subdividing a volume and explaining the cancellation of fluxes across internal faces.
2. State and derive Stokes' theorem by patching oriented surface elements, including the induced boundary orientation.
3. Obtain both planar forms of Green's theorem and derive Green's first and second identities from the divergence theorem.
4. Derive the local continuity equation from integral conservation, and explain why an interior singularity requires an excised boundary.

## Numerical Problems

1. Inside the ball $r\leq2\ \mathrm{m}$, an unknown source field satisfies

   $$
   \nabla\cdot\mathbf A=\alpha r^2.
   $$

   The measured outward flux through the boundary is $256\pi/5$ in the corresponding field-area units. Use Gauss' theorem to determine $\alpha$.

   **Answer:** $\Phi=4\pi\alpha\int_0^2r^4\,dr=128\pi\alpha/5$, so $\alpha=2$ in the corresponding units.

2. For the unit ball, use Green's first identity with $u=1$ and $v=x^2+y^2+z^2$ to evaluate $\iint_S u\,\partial v/\partial n\,dS$.

   **Answer:** $8\pi$.

3. Use Green's area formula to find the area enclosed by the counterclockwise astroid

   $$
   x=2\cos^3t,\qquad y=2\sin^3t,
   \qquad 0\leq t\leq2\pi,
   $$

   with $x$ and $y$ measured in metres.

   **Answer:** $\mathcal A=\dfrac12\oint_C(x\,dy-y\,dx)=\dfrac{3\pi}{2}\ \mathrm{m^2}$.

4. Find the outward flux of $\mathbf F=(x^3,y^3)$ across the unit circle in the plane.

   **Answer:** $3\pi/2$.

5. Let $S$ be the outward-oriented upper unit hemisphere and let

   $$
   \mathbf A=(z,x,y).
   $$

   Use Stokes' theorem and the equatorial boundary, oriented counterclockwise as viewed from $+z$, to find the flux of $\nabla\times\mathbf A$ through $S$.

   **Answer:** $\iint_S(\nabla\times\mathbf A)\cdot d\mathbf S=\oint_{\partial S}\mathbf A\cdot d\boldsymbol\ell=\pi$.

6. A uniform density in a fixed $5\ \mathrm{m^3}$ region decreases at $0.2\ \mathrm{kg\,m^{-3}\,s^{-1}}$. Find the net outward mass flux through its boundary.

   **Answer:** $1\ \mathrm{kg\,s^{-1}}$ outward.

All symbolic reductions and numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-1/unit-1-coordinate-checks.mac' | relative_url }}); every printed residual is zero.

## References

1. [Vector calculus — Wikipedia](https://en.wikipedia.org/wiki/Vector_calculus)
2. [OpenStax, *Calculus Volume 3*, §6.4: Green's Theorem](https://openstax.org/books/calculus-volume-3/pages/6-4-greens-theorem)
3. [OpenStax, *Calculus Volume 3*, §6.7: Stokes' Theorem](https://openstax.org/books/calculus-volume-3/pages/6-7-stokes-theorem)
4. [OpenStax, *Calculus Volume 3*, §6.8: The Divergence Theorem](https://openstax.org/books/calculus-volume-3/pages/6-8-the-divergence-theorem)
5. George B. Arfken, Hans J. Weber, and Frank E. Harris, *Mathematical Methods for Physicists*, 7th ed., Chapter 3, §§3.7–3.9.

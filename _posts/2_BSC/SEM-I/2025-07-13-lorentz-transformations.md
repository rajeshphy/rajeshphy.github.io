---
title: "Lorentz Transformations from the Light Postulate"
summary: "A first-principles derivation of the direct and inverse Lorentz transformations and the invariant spacetime interval."
date: 2025-07-13 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - lorentz-transformation
permalink: /bsc/sem-i/lorentz-transformations/
---

Use the standard configuration: $S'$ moves with constant velocity $v\hat{\mathbf x}$ relative to $S$, the axes are parallel, and the origins coincide at $t=t'=0$. We require $\lvert v\rvert<c$. Homogeneity of space and time requires a linear transformation. Since the origin $x'=0$ follows $x=vt$,

$$
x'=A(x-vt).
$$

Write the most general linear time relation as $t'=B(t-Dx)$. A light pulse emitted at the common origin satisfies $x=ct$ and $x'=ct'$. Substitution gives

$$
A(c-v)t=cB(1-Dc)t. \tag{1}
$$

For the pulse moving toward $-x$, $x=-ct$ and $x'=-ct'$, so

$$
A(-c-v)t=-cB(1+Dc)t,
$$

or

$$
A(c+v)=cB(1+Dc). \tag{2}
$$

Adding and subtracting (1) and (2),

$$
2Ac=2cB\quad\Rightarrow\quad A=B,
$$

$$
2Av=2c^2BD\quad\Rightarrow\quad D=\frac{v}{c^2}.
$$

Thus

$$
x'=A(x-vt),
\qquad
t'=A\left(t-\frac{vx}{c^2}\right).
$$

The relativity principle and reciprocity make the inverse transformation identical in form after $v\to-v$ and interchange of primed and unprimed coordinates:

$$
x=A(x'+vt'),
\qquad
t=A\left(t'+\frac{vx'}{c^2}\right).
$$

Insert the direct expressions into the first inverse equation:

$$
\begin{aligned}
x
&=A\left[A(x-vt)+vA\left(t-\frac{vx}{c^2}\right)\right]\\
&=A^2x\left(1-\frac{v^2}{c^2}\right).
\end{aligned}
$$

Therefore

$$
A^2(1-\beta^2)=1,
\qquad
A=\gamma\equiv\frac{1}{\sqrt{1-\beta^2}},
$$

where the positive root is selected by continuity with $A=1$ at $v=0$. The **Lorentz transformations** are

$$
\boxed{x'=\gamma(x-vt)},\qquad
\boxed{t'=\gamma\left(t-\frac{vx}{c^2}\right)},
$$

$$
\boxed{y'=y},\qquad \boxed{z'=z}.
$$

Their inverse is obtained by changing the sign of $v$:

$$
\boxed{x=\gamma(x'+vt')},\qquad
\boxed{t=\gamma\left(t'+\frac{vx'}{c^2}\right)},
\qquad y=y',\quad z=z'.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/lorentz-coordinates.png' | relative_url }}" alt="Spacetime coordinate lines of a moving Lorentz frame inside the light cone" loading="lazy">
  <figcaption>The $ct'$ axis is $x=vt$, while the $x'$ axis is $ct=(v/c)x$; each tilts toward, but never crosses, its neighboring light line $x=\pm ct$.</figcaption>
</figure>

## Interval check

Direct substitution gives

$$
\begin{aligned}
c^2t'^2-x'^2
&=\gamma^2\left[
c^2\left(t-\frac{vx}{c^2}\right)^2-(x-vt)^2
\right]\\
&=\gamma^2\left[
c^2t^2-2vtx+\frac{v^2x^2}{c^2}
-x^2+2vtx-v^2t^2
\right]\\
&=\gamma^2(1-\beta^2)(c^2t^2-x^2)\\
&=c^2t^2-x^2.
\end{aligned}
$$

Including the unchanged transverse coordinates,

$$
\boxed{c^2t'^2-x'^2-y'^2-z'^2
=c^2t^2-x^2-y^2-z^2}.
$$

This invariant will be used to classify event order. For fixed event coordinates in the non-relativistic limit $\lvert v\rvert/c\to0$, $\gamma\to1$ and $vx/c^2\to0$, recovering $x'\simeq x-vt$ and $t'\simeq t$.

The inverse transformation, light-ray invariance, and interval identity are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/lorentz-transformations.mac' | relative_url }}); every printed residual is zero.

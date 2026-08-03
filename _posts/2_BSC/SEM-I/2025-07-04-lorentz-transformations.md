---
title: "Lorentz Transformations from the Light Postulate"
summary: "A first-principles derivation of the direct and inverse Lorentz transformations and the invariant spacetime interval."
date: 2025-07-04 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - lorentz-transformation
permalink: /bsc/sem-i/lorentz-transformations/
---

Use the standard configuration: $S^{\prime}$ moves with constant velocity $v\hat{\mathbf x}$ relative to $S$, the axes are parallel, and the origins coincide at $t=t^{\prime}=0$. We require $\lvert v\rvert<c$. Homogeneity of space and time requires a linear transformation. Since the origin $x^{\prime}=0$ follows $x=vt$,

$$
x^{\prime}=A(x-vt).
$$

Write the most general linear time relation as $t^{\prime}=B(t-Dx)$. A light pulse emitted at the common origin satisfies $x=ct$ and $x^{\prime}=ct^{\prime}$. Substitution gives

$$
A(c-v)t=cB(1-Dc)t. \tag{1}
$$

For the pulse moving toward $-x$, $x=-ct$ and $x^{\prime}=-ct^{\prime}$, so

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
x^{\prime}=A(x-vt),
\qquad
t^{\prime}=A\left(t-\frac{vx}{c^2}\right).
$$

The relativity principle and reciprocity make the inverse transformation identical in form after $v\to-v$ and interchange of primed and unprimed coordinates:

$$
x=A(x^{\prime}+vt^{\prime}),
\qquad
t=A\left(t^{\prime}+\frac{vx^{\prime}}{c^2}\right).
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
\boxed{x^{\prime}=\gamma(x-vt)},\qquad
\boxed{t^{\prime}=\gamma\left(t-\frac{vx}{c^2}\right)},
$$

$$
\boxed{y^{\prime}=y},\qquad \boxed{z^{\prime}=z}.
$$

Their inverse is obtained by changing the sign of $v$:

$$
\boxed{x=\gamma(x^{\prime}+vt^{\prime})},\qquad
\boxed{t=\gamma\left(t^{\prime}+\frac{vx^{\prime}}{c^2}\right)},
\qquad y=y^{\prime},\quad z=z^{\prime}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable Lorentz-coordinate diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/lorentz-coordinates.png' | relative_url }}" alt="Spacetime coordinate lines of a moving Lorentz frame inside the light cone" loading="lazy">
  </div>
  <figcaption>The $ct^{\prime}$ axis is $x=vt$, while the $x^{\prime}$ axis is $ct=(v/c)x$; each tilts toward, but never crosses, its neighboring light line $x=\pm ct$.</figcaption>
</figure>

## Interval check

Direct substitution gives

$$
\begin{aligned}
c^2(t^{\prime})^2-(x^{\prime})^2
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
\boxed{c^2(t^{\prime})^2-(x^{\prime})^2-(y^{\prime})^2-(z^{\prime})^2
=c^2t^2-x^2-y^2-z^2}.
$$

This invariant will be used to classify event order. For fixed event coordinates in the non-relativistic limit $\lvert v\rvert/c\to0$, $\gamma\to1$ and $vx/c^2\to0$, recovering $x^{\prime}\simeq x-vt$ and $t^{\prime}\simeq t$.

## Solved Problems

### 1. Transforming an event and checking its interval

Frame $S^{\prime}$ moves along $+x$ at $v=0.600c$ relative to $S$. An event has $x=600\ \mathrm m$ and $t=3.00\ \mu\mathrm s$ in $S$. Find $(x^{\prime},t^{\prime})$ and verify the spacetime interval. Use $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$.

For $\beta=0.600$,

$$
\gamma=\frac{1}{\sqrt{1-0.600^2}}=1.25.
$$

The direct transformation gives

$$
\begin{aligned}
x^{\prime}
&=\gamma(x-vt)\\
&=1.25\left[600-(0.600)(3.00\times10^8)(3.00\times10^{-6})\right]\mathrm m\\
&=\boxed{75.0\ \mathrm m},
\end{aligned}
$$

and

$$
\begin{aligned}
t^{\prime}
&=\gamma\left(t-\frac{vx}{c^2}\right)\\
&=1.25\left[3.00-\frac{(0.600)(600)}{300}\right]\mu\mathrm s\\
&=\boxed{2.25\ \mu\mathrm s}.
\end{aligned}
$$

In $S$, $ct=900\ \mathrm m$, so

$$
c^2t^2-x^2=(900)^2-(600)^2=4.50\times10^5\ \mathrm{m^2}.
$$

In $S^{\prime}$, $ct^{\prime}=675\ \mathrm m$, and

$$
c^2(t^{\prime})^2-(x^{\prime})^2=(675)^2-(75)^2
=4.50\times10^5\ \mathrm{m^2}.
$$

The positive interval is unchanged, so the event lies inside the future light cone of the common origin. As $v\to0$, $x^{\prime}\to x$ and $t^{\prime}\to t$.

### 2. Two collinear Lorentz boosts

Frame $S^{\prime}$ moves at $v_1=0.600c$ relative to $S$, and $S^{\prime\prime}$ moves at $v_2=0.800c$ relative to $S^{\prime}$, both along $+x$. Find the velocity and Lorentz factor of $S^{\prime\prime}$ relative to $S$ by composing the transformations.

Write $\beta_i=v_i/c$. Applying the two position transformations gives

$$
\begin{aligned}
x^{\prime\prime}
&=\gamma_2(x^{\prime}-v_2t^{\prime})\\
&=\gamma_1\gamma_2
\left[(1+\beta_1\beta_2)x-(v_1+v_2)t\right].
\end{aligned}
$$

Factor the coefficient of $x$:

$$
x^{\prime\prime}=\gamma_1\gamma_2(1+\beta_1\beta_2)
\left[x-\frac{v_1+v_2}{1+v_1v_2/c^2}t\right].
$$

It has the standard Lorentz form, hence

$$
\beta=\frac{\beta_1+\beta_2}{1+\beta_1\beta_2}
=\frac{0.600+0.800}{1+(0.600)(0.800)}
=\boxed{\frac{35}{37}\simeq0.94595}.
$$

Also,

$$
\gamma
=\gamma_1\gamma_2(1+\beta_1\beta_2)
=\left(\frac54\right)\left(\frac53\right)\left(\frac{37}{25}\right)
=\boxed{\frac{37}{12}\simeq3.0833}.
$$

Both velocities were defined positive, so the resultant is along $+x$ and remains below $c$. If $v_2\to0$, the result becomes $v_1$; when both speeds are small compared with $c$, the denominator tends to one and the Galilean sum is recovered.

## Descriptive Questions

1. Derive the Lorentz transformation from linearity, the two light rays $x=\pm ct$, and reciprocity between inertial frames.
2. Explain why the positive root of the normalization factor is selected when deriving $\gamma$.
3. Obtain the inverse Lorentz transformation and show explicitly that it recovers the original event coordinates.
4. Prove that the spacetime interval is invariant under a standard Lorentz boost and state its physical significance.

## Numerical Problems

1. An event has $ct=500\ \mathrm m$ and $x=500/3\ \mathrm m$ in $S$. Apart from $v=0$, find the boost along $+x$ for which its transformed coordinate time is unchanged, $t^{\prime}=t$, and then find $x^{\prime}$. **Answer:** $v=+0.600c$ and $x^{\prime}=-500/3\ \mathrm m\simeq-166.7\ \mathrm m$.
2. For $v=0.600c$, an event has $x^{\prime}=120\ \mathrm m$, $t^{\prime}=1.00\ \mu\mathrm s$. Use the inverse transformation. **Answer:** $x=375\ \mathrm m$, $t=1.55\ \mu\mathrm s$.
3. Calculate the Lorentz factor at $v=0.960c$. **Answer:** $\gamma=25/7\simeq3.571$.
4. A light event has $x=900\ \mathrm m$, $t=3.00\ \mu\mathrm s$. Transform it to a frame moving at $0.800c$ along $+x$. **Answer:** $x^{\prime}=300\ \mathrm m$, $t^{\prime}=1.00\ \mu\mathrm s$, so $x^{\prime}=ct^{\prime}$.
5. Two events satisfy $c\Delta t=500\ \mathrm m$ and $\Delta x=300\ \mathrm m$. Find $\Delta s^2$ and the proper time. **Answer:** $\Delta s^2=1.60\times10^5\ \mathrm{m^2}$, $\Delta\tau=1.333\ \mu\mathrm s$.
6. An event on the moving origin has $x=480\ \mathrm m$ at $t=2.00\ \mu\mathrm s$ in $S$. Find the velocity of $S^{\prime}$ relative to $S$. **Answer:** $v=x/t=+0.800c$.

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/lorentz-transformations.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Lorentz transformation,” Wikipedia](https://en.wikipedia.org/wiki/Lorentz_transformation).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 3, “Einstein and the Lorentz–Einstein Transformations.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.1, “The Special Theory of Relativity.”

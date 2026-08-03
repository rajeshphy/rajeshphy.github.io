---
title: "Taylor and Laurent Expansions, Residues, and the Residue Theorem"
summary: "Series from Cauchy's formula, annular Laurent expansions, residue calculation, and contour sums over enclosed poles."
date: 2025-07-30 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, laurent-series, residue-theorem]
permalink: /bsc/sem-ii/taylor-laurent-residues/
hidden: true
---

## Taylor expansion

Let $f$ be analytic inside a circle containing $z$ and centered at $z_0$. Cauchy's formula is

$$
f(z)=\frac{1}{2\pi i}
\oint_C\frac{f(\zeta)}{\zeta-z}d\zeta.
$$

Write

$$
\frac1{\zeta-z}
=\frac1{\zeta-z_0}
\frac1{1-\dfrac{z-z_0}{\zeta-z_0}}.
$$

When $\lvert z-z_0\rvert<\lvert\zeta-z_0\rvert$, the geometric series gives

$$
\frac1{\zeta-z}
=\sum_{n=0}^{\infty}
\frac{(z-z_0)^n}{(\zeta-z_0)^{n+1}}.
$$

Substitution into Cauchy's formula yields

$$
f(z)=\sum_{n=0}^{\infty}a_n(z-z_0)^n,
$$

where

$$
a_n=\frac{1}{2\pi i}
\oint_C\frac{f(\zeta)}{(\zeta-z_0)^{n+1}}d\zeta
=\frac{f^{(n)}(z_0)}{n!}.
$$

Thus

$$
\boxed{
f(z)=\sum_{n=0}^{\infty}
\frac{f^{(n)}(z_0)}{n!}(z-z_0)^n}.
$$

## Laurent expansion

If $f$ is analytic only in an annulus

$$
r_1<\lvert z-z_0\rvert<r_2,
$$

negative as well as nonnegative powers may occur:

$$
\boxed{
f(z)=\sum_{n=-\infty}^{\infty}
a_n(z-z_0)^n}.
$$

The coefficients have the single contour formula

$$
\boxed{
a_n=\frac{1}{2\pi i}
\oint_C\frac{f(\zeta)}
{(\zeta-z_0)^{n+1}}d\zeta},
$$

where $C$ is any positively oriented circle inside the annulus.

For example,

$$
\frac1{z(1-z)}
=\frac1z(1+z+z^2+\cdots)
=\frac1z+1+z+z^2+\cdots
$$

for $0<\lvert z\rvert<1$. For $\lvert z\rvert>1$,

$$
\frac1{z(1-z)}
=-\frac1{z^2}\frac1{1-1/z}
=-\frac1{z^2}-\frac1{z^3}-\cdots.
$$

The same function has different Laurent expansions in different annuli.

The boundaries of an annulus of convergence pass through singularities of the function. A Laurent expansion about $z_0$ is therefore determined not only by its center but also by which singularities lie inside and outside the chosen annulus.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-3/laurent-annulus-residue.png' | relative_url }}" alt="Annulus of convergence with a contour around the center and the residue coefficient highlighted" loading="lazy">
  </div>
  <figcaption>A Laurent series belongs to an annulus bounded by singularities. The residue at \(z_0\) is the coefficient \(a_{-1}\), isolated by one positive circuit around the center.</figcaption>
</figure>

## Residues

The residue of $f$ at an isolated singularity $z_0$ is

$$
\boxed{\operatorname{Res}(f,z_0)=a_{-1}}.
$$

For a simple pole,

$$
\boxed{
\operatorname{Res}(f,z_0)
=\lim_{z\to z_0}(z-z_0)f(z)}.
$$

For a pole of order $m$,

$$
\boxed{
\operatorname{Res}(f,z_0)
=\frac1{(m-1)!}
\lim_{z\to z_0}
\frac{d^{m-1}}{dz^{m-1}}
\left[(z-z_0)^mf(z)\right]}.
$$

## Residue theorem

Let $f$ be analytic inside and on a positively oriented contour $C$ except for isolated singularities $z_1,\ldots,z_N$. Remove small positively oriented circles around them. Cauchy-Goursat on the remaining region gives the outer integral equal to the sum of the small-circle integrals:

$$
\oint_Cf(z)dz
=\sum_{k=1}^N\oint_{C_k}f(z)dz.
$$

In each Laurent series, every term integrates to zero except $a_{-1}(z-z_k)^{-1}$:

$$
\oint_{C_k}(z-z_k)^n dz
=
\begin{cases}
2\pi i,&n=-1,\\
0,&n\ne-1.
\end{cases}
$$

Therefore

$$
\boxed{
\oint_C f(z)dz
=2\pi i\sum_{k=1}^N\operatorname{Res}(f,z_k)}.
$$

The Laurent coefficients and sample residues are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

## Solved Problems

1. Find the Laurent expansions about $z=0$ of

   $$
   f(z)=\frac1{(z-1)(z-3)}
   $$

   in the three regions separated by its singularities.

   Partial fractions give

   $$
   f(z)=-\frac1{2(z-1)}+\frac1{2(z-3)}.
   $$

   For $\lvert z\rvert<1$, expand both factors in nonnegative powers:

   $$
   -\frac1{2(z-1)}
   =\frac12\sum_{n=0}^{\infty}z^n,
   $$

   $$
   \frac1{2(z-3)}
   =-\frac16\sum_{n=0}^{\infty}\left(\frac z3\right)^n.
   $$

   Thus

   $$
   \boxed{
   f(z)=\frac12\sum_{n=0}^{\infty}z^n
   -\frac16\sum_{n=0}^{\infty}\left(\frac z3\right)^n,
   \quad \lvert z\rvert<1}.
   $$

   For $1<\lvert z\rvert<3$, the first factor must use powers of $1/z$:

   $$
   \boxed{
   f(z)=-\frac12\sum_{n=0}^{\infty}z^{-n-1}
   -\frac16\sum_{n=0}^{\infty}\left(\frac z3\right)^n}.
   $$

   Finally, for $\lvert z\rvert>3$, both factors use negative powers:

   $$
   \boxed{
   f(z)=-\frac12\sum_{n=0}^{\infty}z^{-n-1}
   +\frac12\sum_{n=0}^{\infty}3^nz^{-n-1}}.
   $$

   Each geometric expansion converges precisely in the stated annulus; crossing $\lvert z\rvert=1$ or $\lvert z\rvert=3$ crosses a pole.

2. Evaluate

   $$
   \oint_{\lvert z\rvert=3}
   \frac{z\,dz}{(z-1)^2(z+2)}
   $$

   counterclockwise.

   At the double pole $z=1$,

   $$
   \begin{aligned}
   \operatorname{Res}(f,1)
   &=\left.\frac{d}{dz}\left(\frac z{z+2}\right)\right\rvert_{z=1}\\
   &=\left.\frac{2}{(z+2)^2}\right\rvert_{z=1}
   =\frac29.
   \end{aligned}
   $$

   At the simple pole $z=-2$,

   $$
   \operatorname{Res}(f,-2)
   =\left.\frac z{(z-1)^2}\right\rvert_{z=-2}
   =-\frac29.
   $$

   Both poles lie inside the circle, but their residues cancel. Hence

   $$
   \boxed{
   \oint_{\lvert z\rvert=3}
   \frac{z\,dz}{(z-1)^2(z+2)}=0}.
   $$

3. Find the residue of $f(z)=ze^{1/z}$ at the essential singularity $z=0$ and evaluate its integral around the positively oriented unit circle.

   Expand

   $$
   ze^{1/z}
   =z\left(1+\frac1z+\frac1{2!z^2}
   +\frac1{3!z^3}+\cdots\right).
   $$

   Therefore

   $$
   ze^{1/z}
   =z+1+\frac1{2z}+\frac1{6z^2}+\cdots.
   $$

   The coefficient of $z^{-1}$ is $1/2$, so

   $$
   \operatorname{Res}(ze^{1/z},0)=\frac12.
   $$

   The residue theorem gives

   $$
   \boxed{
   \oint_{\lvert z\rvert=1}ze^{1/z}\,dz
   =2\pi i\left(\frac12\right)=\pi i}.
   $$

## Descriptive Questions

1. Derive Taylor's expansion from Cauchy's integral formula and state how the nearest singularity determines its radius of convergence.
2. Explain why Laurent expansions about the same center differ in distinct annuli.
3. Derive the residue formulas for simple and higher-order poles.
4. Prove the residue theorem by excising small circles around all enclosed isolated singularities.

## Numerical Problems

1. Find the coefficient of $z^5$ in the Taylor expansion of $e^{2z}$.

   **Answer:** $4/15$.

2. Find the radius of convergence about $z=0$ of the Taylor series for $1/(1+z^2)$.

   **Answer:** $1$.

3. Find $\operatorname{Res}(1/(z^2+4),2i)$.

   **Answer:** $1/(4i)=-i/4$.

4. Find $\operatorname{Res}(\sin z/z^3,0)$.

   **Answer:** $0$.

5. Evaluate $\oint_{\lvert z\rvert=2}(z^2+1)\,dz/[z(z-1)]$ counterclockwise.

   **Answer:** $2\pi i$.

6. Find the coefficient $a_{-1}$ in the Laurent expansion of $e^z/z^4$ about $z=0$.

   **Answer:** $1/6$.

All added series coefficients, residues, and contour sums are verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}); every printed residual is zero.

## References

1. [Laurent series — Wikipedia](https://en.wikipedia.org/wiki/Laurent_series)
2. [MIT OpenCourseWare 18.04, lecture notes: Topics 7 and 8](https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/resources/lecture-notes/)
3. James Ward Brown and Ruel V. Churchill, *Complex Variables and Applications*, 9th ed., Chapters 5 and 6.

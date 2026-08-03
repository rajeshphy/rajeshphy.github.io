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

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/laurent-annulus-residue.png' | relative_url }}" alt="Annulus of convergence with a contour around the center and the residue coefficient highlighted" loading="lazy">
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

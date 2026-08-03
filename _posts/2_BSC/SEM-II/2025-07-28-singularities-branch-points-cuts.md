---
title: "Singularities, Branch Points, and Branch Cuts"
summary: "Removable singularities, poles, essential singularities, and the cuts that make multivalued functions single-valued."
date: 2025-07-28 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, singularities, branch-cuts]
permalink: /bsc/sem-ii/singularities-branch-points-cuts/
hidden: true
---

A point $z_0$ is an isolated singularity of $f$ if $f$ is analytic in a punctured disk

$$
0<\lvert z-z_0\rvert<R
$$

but is not analytic at $z_0$ itself.

## Removable singularity

If $\lim_{z\to z_0}f(z)=L$ is finite, define $f(z_0)=L$. The singularity is then removed.

For

$$
f(z)=\frac{z^2-1}{z-1},
$$

factorization gives, for $z\ne1$,

$$
f(z)=\frac{(z-1)(z+1)}{z-1}=z+1.
$$

Therefore

$$
\lim_{z\to1}f(z)=2.
$$

Setting $f(1)=2$ makes the function analytic at $z=1$.

## Pole

The point $z_0$ is a pole of order $m$ if

$$
\boxed{
\lim_{z\to z_0}(z-z_0)^mf(z)=A,
\qquad 0<\lvert A\rvert<\infty},
$$

and no smaller positive integer has this property.

For

$$
f(z)=\frac{1}{(z-z_0)^m},
$$

$z_0$ is a pole of order $m$. The magnitude diverges as $\lvert z-z_0\rvert^{-m}$.

## Essential singularity

An isolated singularity that is neither removable nor a pole is essential. For

$$
f(z)=e^{1/z},
$$

take $z=x>0$ and let $x\to0$: then $e^{1/x}\to\infty$. Along $z=x<0$, however, $e^{1/x}\to0$. The limit is not finite, so the singularity is not removable. For every fixed $m$,

$$
z^me^{1/z}\to\infty
$$

along $z=x\to0^+$, so no finite pole order exists. Therefore $z=0$ is essential.

## Branch points and branch cuts

Write

$$
z=re^{i(\theta+2\pi k)}.
$$

Then

$$
\sqrt z=\sqrt r\,e^{i(\theta+2\pi k)/2}
=(-1)^k\sqrt r\,e^{i\theta/2}.
$$

After one circuit around the origin, $\theta\mapsto\theta+2\pi$ and $\sqrt z$ changes sign. The value does not return to itself, so $z=0$ is a branch point.

Similarly,

$$
\log z=\ln r+i(\theta+2\pi k)
$$

changes by $2\pi i$ after one circuit. A branch cut removes a curve joining branch points or extending from a branch point to infinity, preventing such a circuit inside the chosen domain. For the principal branches, one common choice is the negative real axis, with

$$
-\pi<\arg z<\pi.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/singularities-branch-cut.png' | relative_url }}" alt="Complex plane showing an isolated pole, a punctured neighborhood, and a branch cut from a branch point" loading="lazy">
  <figcaption>An isolated singularity has a complete punctured disk around it. A branch point does not: a cut is introduced so a circuit cannot change the chosen value of \(\sqrt z\) or \(\log z\).</figcaption>
</figure>

The cut is a convention; the multivalued behavior at the branch point is intrinsic.

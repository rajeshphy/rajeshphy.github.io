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

More generally, define a branch of a noninteger power by

$$
z^\alpha=\exp\!\bigl(\alpha\log z\bigr).
$$

One positive circuit sends

$$
z^\alpha\longmapsto e^{2\pi i\alpha}z^\alpha.
$$

The value returns after one circuit only when $\alpha$ is an integer. If $\alpha=p/q$ in lowest terms, it returns after $q$ circuits.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-3/singularities-branch-cut.png' | relative_url }}" alt="Complex plane showing an isolated pole, a punctured neighborhood, and a branch cut from a branch point" loading="lazy">
  </div>
  <figcaption>An isolated singularity has a complete punctured disk around it. A branch point does not: a cut is introduced so a circuit cannot change the chosen value of \(\sqrt z\) or \(\log z\).</figcaption>
</figure>

The cut is a convention; the multivalued behavior at the branch point is intrinsic.

## Solved Problems

1. Classify the apparent singularity at $z=0$ of

   $$
   f(z)=\frac{e^z-1-z}{z^2},
   $$

   and give the value that removes it.

   The exponential series gives

   $$
   e^z=1+z+\frac{z^2}{2!}+\frac{z^3}{3!}+\cdots.
   $$

   Hence

   $$
   e^z-1-z=\frac{z^2}{2}+\frac{z^3}{6}+O(z^4),
   $$

   so, for $z\ne0$,

   $$
   f(z)=\frac12+\frac z6+O(z^2).
   $$

   Therefore

   $$
   \lim_{z\to0}f(z)=\frac12,
   $$

   and $z=0$ is removable. Defining $\boxed{f(0)=1/2}$ makes the extended function analytic.

2. Classify the exceptional points of

   $$
   f(z)=\frac{\sqrt z}{(z-2)^2}
   $$

   when $\sqrt z$ is the principal square root.

   The principal root is

   $$
   \sqrt z=\sqrt r\,e^{i\theta/2},
   \qquad -\pi<\theta<\pi,
   $$

   so its branch cut is the nonpositive real axis. After one circuit around $z=0$, the root changes sign; therefore $z=0$ is a branch point, not an isolated singularity.

   The point $z=2$ lies in the cut plane and $\sqrt2\ne0$. Moreover,

   $$
   \lim_{z\to2}(z-2)^2f(z)=\sqrt2.
   $$

   Thus $\boxed{z=2\text{ is a pole of order }2}$, while $\boxed{z=0\text{ is a branch point}}$.

3. Find the jump of the principal logarithm across its negative-real-axis cut.

   For $r>0$, approach $-r$ from above. The principal argument tends to $\pi$, so

   $$
   \operatorname{Log}(-r+i0)=\ln r+i\pi.
   $$

   From below, the principal argument tends to $-\pi$, so

   $$
   \operatorname{Log}(-r-i0)=\ln r-i\pi.
   $$

   Their difference is

   $$
   \boxed{\operatorname{Log}(-r+i0)
   -\operatorname{Log}(-r-i0)=2\pi i}.
   $$

   The finite jump records the $2\pi$ change of argument; it cannot be removed while retaining a single-valued logarithm on a domain containing a complete circuit around the origin.

## Descriptive Questions

1. Distinguish removable singularities, poles, and essential singularities using limiting criteria.
2. Explain why a branch point is not an isolated singularity and why introducing a cut makes a selected branch single-valued.
3. Derive the monodromy factor for $z^\alpha$ and determine when repeated circuits restore the original value.
4. Compare the intrinsic location of branch points with the conventional placement of branch cuts.

## Numerical Problems

1. Determine whether $1/[(z-2)(z+5)]$ is analytic on the vertical strip $-1<\operatorname{Re}z<1$, and whether it is analytic on the left half-plane $\operatorname{Re}z<0$.

   **Answer:** analytic on the strip; not analytic on the left half-plane, which contains the simple pole $z=-5$.

2. Locate the poles of $\tan(1/z)$ and determine the consequence for $z=0$.

   **Answer:** $z_k=2/[(2k+1)\pi]$, $k\in\mathbb Z$; they accumulate at $0$, so $z=0$ is a non-isolated singularity.

3. Near $z=z_0$, let
   $f(z)=(z-z_0)^5F(z)$ and $g(z)=G(z)/(z-z_0)^3$, where $F$ and $G$ are analytic and nonzero at $z_0$. Classify $f(z)g(z)$ and $g(z)/f(z)$ at $z_0$.

   **Answer:** $fg$ has a removable singularity at $z_0$; its analytic extension has a zero of order $2$. The quotient $g/f$ has a pole of order $8$.

4. On the principal square-root branch, solve $\sqrt z=-1+i$.

   **Answer:** no solution. Squaring gives $z=-2i$, but the principal value is $\sqrt{-2i}=1-i$.

5. By what factor does $z^{2/3}$ change after one positive circuit around the origin, and after how many circuits does it return?

   **Answer:** factor $e^{4\pi i/3}$; it returns after $3$ circuits.

6. Find the principal logarithm of $1-i\sqrt3$.

   **Answer:** $\ln2-i\pi/3$.

All added limits, pole orders, series coefficients, and monodromy checks are verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}); every printed residual is zero.

## References

1. [Isolated singularity — Wikipedia](https://en.wikipedia.org/wiki/Isolated_singularity)
2. [NIST Digital Library of Mathematical Functions, §4.2: Logarithm, Exponential, Powers, and Branches](https://dlmf.nist.gov/4.2)
3. [MIT OpenCourseWare 18.04, complex-variables lecture notes](https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/resources/lecture-notes/)
4. James Ward Brown and Ruel V. Churchill, *Complex Variables and Applications*, 9th ed., Chapters 3 and 6.

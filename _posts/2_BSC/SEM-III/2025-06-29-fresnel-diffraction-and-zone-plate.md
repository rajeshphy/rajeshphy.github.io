---
title: "Fresnel Diffraction and the Zone Plate"
summary: "Fresnel assumptions, half-period zones, rectilinear propagation, zone-plate foci, Fresnel integrals, and edge, slit, and wire diffraction."
date: 2025-06-29 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, fresnel-diffraction, half-period-zones, zone-plate, fresnel-integrals]
permalink: /bsc/sem-iii/fresnel-diffraction-zone-plate/
hidden: true
---

Fresnel diffraction occurs when the source or observation distance is finite, so the curvature and quadratic phase of the wavefront cannot be neglected.

## Fresnel's assumptions

Fresnel supplements Huygens's construction with the following assumptions:

1. Every element $dS$ of a wavefront emits a secondary disturbance of the same frequency.
2. Its amplitude at an observation point is proportional to the incident amplitude, to $dS$, to an inclination factor $K(\chi)$, and inversely proportional to its propagation distance. The factor is greatest in the forward direction and vanishes in the backward direction; in the Fresnel-Kirchhoff form $K(\chi)\simeq(1+\cos\chi)/2$.
3. Each contribution carries its optical-path phase. The observed field is the vector sum of all secondary fields. A common $\pi/2$ phase lag assigned to secondary wavelets does not affect the relative phase between zones.

These assumptions retain amplitude, path length, phase, and obliquity rather than treating the new wavefront only as a geometrical envelope.

## Half-period zones for a plane wave

Let a plane wave illuminate a wavefront and let the axial observation point $P$ be a distance $b$ away. Divide the wavefront into annuli whose paths to $P$ increase successively by $\lambda/2$. If $r_n$ is the radius of the $n$th boundary,

$$
\sqrt{b^2+r_n^2}-b=\frac{n\lambda}{2}.
$$

Squaring without approximation,

$$
b^2+r_n^2=b^2+nb\lambda+\frac{n^2\lambda^2}{4},
$$

so

$$
\boxed{r_n^2=nb\lambda+\frac{n^2\lambda^2}{4}}.
$$

When $b\gg n\lambda$, the second term is small relative to the first and

$$
\boxed{r_n\simeq\sqrt{nb\lambda}}.
$$

The phase changes by $\pi$ from one zone to the next. If the slowly changing magnitudes of the successive zone contributions are $a_1,a_2,a_3,\ldots$, the axial amplitude is

$$
A=a_1-a_2+a_3-a_4+\cdots.
$$

Grouping neighboring terms shows strong cancellation. Since the $a_n$ decrease gradually, the unobstructed resultant is approximately $a_1/2$. Inside a broad unobstructed wavefront, neighboring contributions cancel and light appears to propagate rectilinearly. At an aperture or obstacle edge the cancellation is incomplete, producing diffraction fringes.

## Zone plate and multiple foci

An amplitude zone plate makes alternate half-period zones transparent. If its boundaries obey

$$
\boxed{r_n^2=n\lambda f_1},
$$

then the exposed zones contribute in phase at the principal axial focus

$$
\boxed{f_1=\frac{r_n^2}{n\lambda}}.
$$

At an axial distance $f_1/q$, the phase step between adjacent original zones is $q\pi$. Alternate transparent zones again add in phase whenever $q$ is odd. Hence the diffracted focal orders are

$$
\boxed{f_q=\frac{f_1}{q}},
\qquad
q=\pm1,\pm3,\pm5,\ldots
$$

Positive orders are real foci and negative orders are virtual foci; an undeviated zero order is also present. Because $f_1=r_n^2/(n\lambda)$,

$$
f_1\propto\frac1\lambda,
$$

so a zone plate is strongly chromatic.

## Fresnel integrals and the Cornu representation

For source-edge distance $a$ and edge-screen distance $b$, introduce the dimensionless transverse coordinate

$$
\boxed{u=x\sqrt{\frac{2(a+b)}{\lambda ab}}}.
$$

For a plane incident wave, $a\to\infty$ and $u=x\sqrt{2/(\lambda b)}$. Define

$$
\boxed{C(u)=\int_0^u\cos\left(\frac{\pi s^2}{2}\right)ds},
\qquad
\boxed{S(u)=\int_0^u\sin\left(\frac{\pi s^2}{2}\right)ds}.
$$

The point $(C(u),S(u))$ traces the Cornu spiral. A chord joining two parameter values represents the complex amplitude admitted between those two limits.

### Straight edge

Let the open part of the wavefront extend from $-\infty$ to $u$. Since

$$
C(\infty)=S(\infty)=\frac12,
\qquad
C(-\infty)=S(-\infty)=-\frac12,
$$

the complex amplitude relative to the completely unobstructed field $E_0$ is

$$
\frac{E_{\rm edge}}{E_0}
=\frac{[1/2+C(u)]+i[1/2+S(u)]}{1+i}.
$$

Therefore

$$
\boxed{\frac{I_{\rm edge}(u)}{I_0}
=\frac12\left\{\left[\frac12+C(u)\right]^2
+\left[\frac12+S(u)\right]^2\right\}}.
$$

This normalization gives $I/I_0\to0$ deep in the geometrical shadow, $I/I_0=1/4$ at the geometrical edge $u=0$, and $I/I_0\to1$ far in the illuminated region, with damped bright and dark oscillations near the edge.

### Slit

If the slit edges correspond to $u_1$ and $u_2$, its field is the Cornu-spiral chord

$$
\frac{E_{\rm slit}}{E_0}
=\frac{[C(u_2)-C(u_1)]+i[S(u_2)-S(u_1)]}{1+i}.
$$

Thus

$$
\boxed{\frac{I_{\rm slit}}{I_0}
=\frac12\left\{[C(u_2)-C(u_1)]^2
+[S(u_2)-S(u_1)]^2\right\}}.
$$

As the observation point moves, both $u_1$ and $u_2$ change, generating the Fresnel slit pattern rather than a far-field sinc pattern.

### Wire

A wire blocks the same interval that the complementary slit transmits. Babinet's principle gives

$$
E_{\rm wire}+E_{\rm slit}=E_0,
$$

so

$$
\boxed{\frac{E_{\rm wire}}{E_0}
=1-\frac{[C(u_2)-C(u_1)]+i[S(u_2)-S(u_1)]}{1+i}}.
$$

Away from the undeviated geometrical beam, $E_0$ contributes no diffracted field and the slit and wire diffracted fields are equal in magnitude and opposite in phase. Their off-axis diffraction structures therefore have the same intensity, while the total intensity near the geometrical beam differs because the unobstructed field is present for the wire complement.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable Fresnel-diffraction diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-2/fresnel-zone-edge.png' | relative_url }}" alt="Equation-generated half-period zones, multiple zone-plate foci, Cornu spiral, and straight-edge, slit, and wire Fresnel patterns" loading="lazy">
  </div>
  <figcaption>Zone boundaries use $r_n\simeq\sqrt{n\lambda b}$; every plotted edge, slit, and wire curve uses the displayed normalized Fresnel-integral formula.</figcaption>
</figure>

## Solved Problems

### Problem 1: Equal areas of paraxial half-period zones

Show that successive half-period zones for a plane wave have approximately equal area.

For observation distance $b$,

$$
r_n^2\simeq n\lambda b,
\qquad
r_{n-1}^2\simeq(n-1)\lambda b.
$$

The area of the $n$th annulus is therefore

$$
\begin{aligned}
A_n
&=\pi(r_n^2-r_{n-1}^2)\\
&=\pi\big[n\lambda b-(n-1)\lambda b\big]\\
&=\boxed{\pi\lambda b}.
\end{aligned}
$$

It is independent of $n$. This equal-area result explains why neighboring zone amplitudes change slowly and nearly cancel because their phases differ by $\pi$.

### Problem 2: A Babinet-complement amplitude

At one observation point, suppose a slit transmits the normalized complex field

$$
\frac{E_{\mathrm{slit}}}{E_0}=\frac{1+i}{4}.
$$

Find the complementary wire field and both normalized intensities.

Babinet's amplitude relation gives

$$
\frac{E_{\mathrm{wire}}}{E_0}
=1-\frac{E_{\mathrm{slit}}}{E_0}
=1-\frac{1+i}{4}
=\frac{3-i}{4}.
$$

Thus

$$
\frac{I_{\mathrm{slit}}}{I_0}
=\left\lvert\frac{1+i}{4}\right\rvert^2
=\frac{1^2+1^2}{16}
=\boxed{\frac18},
$$

$$
\frac{I_{\mathrm{wire}}}{I_0}
=\left\lvert\frac{3-i}{4}\right\rvert^2
=\frac{3^2+(-1)^2}{16}
=\boxed{\frac58}.
$$

The intensities need not add to one; Babinet's relation is a complex-amplitude relation.

## Descriptive Questions

1. What additional amplitude and phase assumptions does Fresnel add to Huygens's construction?
2. How does cancellation between successive half-period zones explain approximate rectilinear propagation?
3. Why does an amplitude zone plate have several odd-order foci and strong chromatic aberration?
4. How does a Cornu-spiral chord describe straight-edge, slit, and wire diffraction?

## Numerical Problems

1. For a plane wave, take $x=0.500\,\mathrm{mm}$, $b=1.00\,\mathrm m$, and $\lambda=500\,\mathrm{nm}$. Evaluate $u=x\sqrt{2/(\lambda b)}$.

   **Answer:** $\boldsymbol{u=1.00}$.

2. Find the paraxial radius of the 10th half-period zone for $b=1.00\,\mathrm m$ and $\lambda=500\,\mathrm{nm}$.

   **Answer:** $\boldsymbol{r_{10}=\sqrt5\,\mathrm{mm}\simeq2.236\,\mathrm{mm}}$.

3. A zone plate has first-zone radius $r_1=0.500\,\mathrm{mm}$ at $\lambda=500\,\mathrm{nm}$. Find its principal and third-order focal distances.

   **Answer:** $\boldsymbol{f_1=0.500\,\mathrm m,\quad f_3=0.1667\,\mathrm m}$.

4. Evaluate the normalized straight-edge intensity exactly at the geometrical boundary, where $u=0$.

   **Answer:** $\boldsymbol{I_{\mathrm{edge}}/I_0=1/4=0.250}$.

5. For a Fresnel slit, the endpoint differences are
$C(u_2)-C(u_1)=0.80$ and $S(u_2)-S(u_1)=0.60$. Evaluate the normalized intensity.

   **Answer:** $\boldsymbol{I_{\mathrm{slit}}/I_0=0.500}$.

The zone radii, focal orders, Fresnel normalization limits, Babinet example, and all worked answers are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-2/mj4-unit-2-checks.mac' | relative_url }}).

## References

1. [Fresnel diffraction — Wikipedia](https://en.wikipedia.org/wiki/Fresnel_diffraction)
2. [Ajoy Ghatak, *Optics*, 8th ed. — McGraw Hill](https://www.mheducation.co.in/optics-9789355328595-india)
3. [Francis A. Jenkins and Harvey E. White, *Fundamentals of Optics* — Google Books bibliographic record](https://books.google.com/books/about/Fundamentals_of_Optics.html?id=4SPCJ0wtFSUC)

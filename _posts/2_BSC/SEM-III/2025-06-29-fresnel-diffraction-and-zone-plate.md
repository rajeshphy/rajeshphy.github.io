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

The zone radii, focal orders, and Fresnel normalization limits are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-2/mj4-unit-2-checks.mac' | relative_url }}).

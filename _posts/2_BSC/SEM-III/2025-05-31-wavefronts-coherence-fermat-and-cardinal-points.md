---
title: "Wavefronts, Coherence, Fermat's Principle, and Cardinal Points"
summary: "Electromagnetic light, wavefront propagation, Huygens construction, coherence, reflection and refraction, mirror and lens formulae, and cardinal points."
date: 2025-05-31 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, electromagnetic-light, wavefront, coherence, fermat-principle, cardinal-points]
permalink: /bsc/sem-iii/wavefronts-coherence-fermat-cardinal-points/
hidden: true
---

## Electromagnetic nature of light

In charge-free vacuum, Maxwell's equations include

$$
\boldsymbol\nabla\cdot\mathbf E=0,
\quad
\boldsymbol\nabla\cdot\mathbf B=0,
\quad
\boldsymbol\nabla\times\mathbf E=-\frac{\partial\mathbf B}{\partial t},
\quad
\boldsymbol\nabla\times\mathbf B=\mu_0\epsilon_0
\frac{\partial\mathbf E}{\partial t}.
$$

Take the curl of Faraday's law and use the vector identity

$$
\boldsymbol\nabla\times(\boldsymbol\nabla\times\mathbf E)
=\boldsymbol\nabla(\boldsymbol\nabla\cdot\mathbf E)-\nabla^2\mathbf E.
$$

It follows that

$$
-\nabla^2\mathbf E
=-\mu_0\epsilon_0\frac{\partial^2\mathbf E}{\partial t^2}.
$$

The same step applied to $\mathbf B$ gives

$$
\boxed{\nabla^2\mathbf E=\frac1{c^2}\frac{\partial^2\mathbf E}{\partial t^2}},
\qquad
\boxed{\nabla^2\mathbf B=\frac1{c^2}\frac{\partial^2\mathbf B}{\partial t^2}},
$$

with

$$
\boxed{c=\frac1{\sqrt{\mu_0\epsilon_0}}}.
$$

For a plane wave, Maxwell's curl equations require

$$
\boxed{\mathbf E\perp\mathbf B\perp\mathbf k},
\qquad
\boxed{B_0=\frac{E_0}{c}}.
$$

The energy flow is along $\mathbf E\times\mathbf B$, the direction of propagation.

## Wavefronts, Huygens's principle, and coherence

A wavefront is a surface of constant phase. Rays are normal to wavefronts in an isotropic medium. Plane waves have parallel plane wavefronts; point sources have concentric spherical wavefronts. Successive fronts whose phases differ by $2\pi$ are separated along a ray by one wavelength $\lambda=v/f$.

Huygens's principle states that every point of a wavefront acts as a source of secondary wavelets. After time $\Delta t$, each wavelet has advanced by $v\Delta t$, and their forward envelope is the new wavefront. At a boundary, the construction uses speed $v_1$ before the boundary and $v_2$ after it. Its geometry gives

$$
\frac{\sin i}{\sin r}=\frac{v_1}{v_2}=\frac{n_2}{n_1},
$$

which is Snell's law.

Temporal coherence is phase correlation at one point at different times. A source of frequency width $\Delta\nu$ has an order-of-magnitude coherence time and length

$$
\tau_c\sim\frac1{\Delta\nu},
\qquad
\boxed{\ell_c=v\tau_c}.
$$

Stable interference requires an optical-path difference no greater than the source's coherence length. Spatial coherence is phase correlation at different points of the same wavefront; it determines whether separated apertures can act as mutually coherent sources.

## Fermat's principle and the ray laws

For refractive index $n$, the optical path between $A$ and $B$ is

$$
\boxed{\mathcal L=\int_A^B n\,ds}.
$$

Fermat's principle states that the physical ray makes the first variation stationary:

$$
\boxed{\delta\mathcal L=0}.
$$

Let a ray cross a plane interface at a variable horizontal coordinate $x$. If the fixed endpoints are at perpendicular distances $a$ and $b$, with horizontal separation $d$, then

$$
\mathcal L(x)=n_1\sqrt{a^2+x^2}
+n_2\sqrt{b^2+(d-x)^2}.
$$

Stationarity gives

$$
0=\frac{d\mathcal L}{dx}
=n_1\frac{x}{\sqrt{a^2+x^2}}
-n_2\frac{d-x}{\sqrt{b^2+(d-x)^2}}.
$$

The two ratios are $\sin i$ and $\sin r$, so

$$
\boxed{n_1\sin i=n_2\sin r}.
$$

The incident ray, refracted ray, and interface normal are coplanar. For reflection, both segments lie in the same medium; the same variation gives $\sin i=\sin r$, and for $0\le i,r<\pi/2$,

$$
\boxed{i=r}.
$$

The incident ray, reflected ray, and normal are also coplanar.

## Spherical surface, thin lens, and spherical mirror

Use the Cartesian sign convention: light travels from left to right, the vertex is the origin, and distances to the right are positive. Thus a real object on the left has $u<0$.

At height $h$ on a paraxial spherical refracting surface, the signed small-angle geometry gives

$$
i\simeq-\frac hu+\frac hR,
\qquad
r\simeq-\frac hv+\frac hR.
$$

Substituting these into $n_1i=n_2r$ and cancelling $h$ yields

$$
\boxed{\frac{n_2}{v}-\frac{n_1}{u}
=\frac{n_2-n_1}{R}}.
$$

For the first surface of a thin lens in air,

$$
\frac n{v_1}-\frac1u=\frac{n-1}{R_1}.
$$

For the second surface, whose separation from the first is neglected,

$$
\frac1v-\frac n{v_1}=\frac{1-n}{R_2}.
$$

Adding eliminates the intermediate image:

$$
\boxed{\frac1v-\frac1u=\frac1f},
\qquad
\boxed{\frac1f=(n-1)\left(\frac1{R_1}-\frac1{R_2}\right)}.
$$

Reflection can be represented in the surface equation by replacing the refracted index by $-n_1$. This gives the paraxial spherical-mirror formula

$$
\boxed{\frac1v+\frac1u=\frac2R=\frac1f},
\qquad
\boxed{f=\frac R2}.
$$

Under this convention a concave mirror has $R<0$ and $f<0$.

## The six cardinal points

A centered paraxial optical system has three pairs of cardinal points:

1. **Principal points $H_1,H_2$.** Their perpendicular planes are conjugate with unit transverse magnification. Object distance $s$ is measured from the first principal plane and image distance $s'$ from the second.
2. **Focal points $F_1,F_2$.** A ray directed toward the front focus $F_1$ emerges parallel to the axis. A parallel incident ray emerges through the rear focus $F_2$. Planes normal to the axis through these points are the focal planes.
3. **Nodal points $N_1,N_2$.** A ray directed toward $N_1$ emerges as if from $N_2$ with the same physical angle to the axis.

If the system power is $\Phi$, the Gaussian equation referred to the principal planes is

$$
\boxed{\frac{n_2}{s'}-\frac{n_1}{s}=\Phi}.
$$

Putting the image or object at infinity gives the oriented front and rear focal lengths:

$$
\boxed{f_1=H_1F_1=-\frac{n_1}{\Phi}},
\qquad
\boxed{f_2=H_2F_2=\frac{n_2}{\Phi}}.
$$

The nodal-point offsets are

$$
\boxed{H_1N_1=H_2N_2
=\frac{n_2-n_1}{\Phi}=f_1+f_2}.
$$

Therefore, when the entrance and exit media have the same refractive index, $N_1=H_1$ and $N_2=H_2$. These definitions and reference planes allow a thick multi-element system to be treated by the same Gaussian imaging equation as a single equivalent element.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable Huygens-and-cardinal-points diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-1/huygens-cardinal.png' | relative_url }}" alt="Huygens construction for refraction and cardinal points of a centered optical system" loading="lazy">
  </div>
  <figcaption>The refracted wavelet geometry enforces Snell's law; principal planes provide the reference surfaces for a thick optical system.</figcaption>
</figure>

The electromagnetic wave speed, Fermat stationarity, surface/lens formulae, and cardinal-point relations are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-1/mj4-unit-1-checks.mac' | relative_url }}).

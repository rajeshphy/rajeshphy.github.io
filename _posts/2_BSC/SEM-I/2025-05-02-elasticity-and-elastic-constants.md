---
title: "Elasticity and Elastic Constants"
date: 2025-05-02 09:00:00 +0530
categories:
  - bsc-i
tags: [elasticity, hookes-law, elastic-moduli, poisson-ratio]
permalink: /bsc/sem-i/elasticity-and-elastic-constants/
---

An external force changes the relative positions of the particles of a solid. When the force is removed, interatomic forces tend to restore the original configuration. A deformation is **elastic** if the body recovers its original dimensions after the load is removed.

## Stress, strain and Hooke's law

For a rod of original length $L$ and cross-sectional area $A$, an axial tensile force $F$ produces an extension $\Delta L$. The normal stress and longitudinal strain are

$$
\sigma=\frac{F}{A},
\qquad
\epsilon_l=\frac{\Delta L}{L}.
$$

Within the proportional range, Hooke's law states that stress is proportional to strain:

$$
\boxed{\sigma=Y\epsilon_l},
$$

where $Y$ is Young's modulus. Stress has dimension $[ML^{-1}T^{-2}]$ and strain is dimensionless, so every elastic modulus has the dimension of pressure.

![Stress-strain curve and the longitudinal and transverse strains of a stretched rod]({{ '/assets/images/bsc/sem-i/unit-1/stress-strain-elasticity.png' | relative_url }})

On the stress-strain diagram, $O$ to $P$ is the straight-line or proportional region, with slope

$$
Y=\frac{d\sigma}{d\epsilon_l}.
$$

Up to the elastic limit $E$, unloading restores the original dimensions. Beyond $E$, permanent strain remains. Plastic flow begins near the yield point $Y_p$; the engineering stress reaches its greatest value at the ultimate point $U$ and the specimen finally breaks at $B$. Only the initial straight segment obeys the simple equation $\sigma=Y\epsilon_l$.

The editable source of the diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/stress-strain-elasticity.tex' | relative_url }}).

## Elastic moduli

Three elementary deformations define the usual elastic moduli.

**Young's modulus.** Under axial loading,

$$
Y=\frac{\text{normal stress}}{\text{longitudinal strain}}
=\frac{F/A}{\Delta L/L}.
$$

**Bulk modulus.** If a uniform external pressure $p$ changes the volume from $V$ to $V+\Delta V$,

$$
K=-\frac{p}{\Delta V/V}.
$$

The minus sign makes $K$ positive because compression gives $\Delta V<0$.

**Shear modulus or modulus of rigidity.** If tangential stress $\tau$ produces engineering shear strain $\gamma_s$, then

$$
G=\frac{\tau}{\gamma_s}.
$$

For a small shear angle $\phi$, $\gamma_s=\tan\phi\simeq\phi$.

## Poisson's ratio

When a rod is stretched, it normally contracts in a transverse direction. If a transverse dimension changes from $d$ to $d+\Delta d$, then

$$
\epsilon_t=\frac{\Delta d}{d},
\qquad
\boxed{\nu=-\frac{\epsilon_t}{\epsilon_l}}.
$$

Under tension, $\epsilon_l>0$ and $\epsilon_t<0$, so $\nu$ is positive for ordinary materials.

## Relations among the elastic constants

For a homogeneous isotropic solid in the linear range, only two elastic constants are independent. For a mechanically stable ordinary isotropic solid, $K>0$ and $G>0$, which imply

$$
\boxed{-1<\nu<\frac12}.
$$

The upper limit corresponds to the incompressible limit $K\to\infty$; it is not reached by a material with finite bulk modulus.

### Relation between $Y$, $K$ and $\nu$

Apply equal compressive stresses $-p$ along the three mutually perpendicular axes. Along $x$, the direct strain is $-p/Y$. Each of the stresses along $y$ and $z$ produces a lateral strain $+\nu p/Y$ along $x$. By superposition,

$$
\epsilon_x=-\frac{p}{Y}+\frac{\nu p}{Y}+\frac{\nu p}{Y}
=-\frac{p}{Y}(1-2\nu).
$$

The three normal strains are equal. To first order,

$$
\frac{\Delta V}{V}=\epsilon_x+\epsilon_y+\epsilon_z
=-\frac{3p}{Y}(1-2\nu).
$$

Using $K=-p/(\Delta V/V)$ gives

$$
\boxed{Y=3K(1-2\nu)}.
$$

### Relation between $Y$, $G$ and $\nu$

A state of pure shear stress $\tau$ has principal stresses $+\tau$ and $-\tau$ along directions at $45^\circ$ to the sheared faces. The corresponding principal strains are

$$
\epsilon_+=\frac{\tau-\nu(-\tau)}{Y}
=\frac{(1+\nu)\tau}{Y},
$$

$$
\epsilon_-=
\frac{-\tau-\nu\tau}{Y}
=-\frac{(1+\nu)\tau}{Y}.
$$

For this small deformation the engineering shear strain is their difference:

$$
\gamma_s=\epsilon_+-\epsilon_-
=\frac{2(1+\nu)\tau}{Y}.
$$

Since $G=\tau/\gamma_s$,

$$
\boxed{Y=2G(1+\nu)}.
$$

### Equivalent forms

Eliminating $\nu$ between the two relations gives

$$
\boxed{Y=\frac{9KG}{3K+G}},
\qquad
\boxed{\nu=\frac{3K-2G}{2(3K+G)}}.
$$

The requested expressions for Poisson's ratio in terms of other elastic constants may also be written as

$$
\boxed{
\nu=\frac{Y}{2G}-1
=\frac{3K-Y}{6K}
=\frac{3K-2G}{2(3K+G)}
}.
$$

The relations are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/elastic-constants.mac' | relative_url }}); every displayed residual is zero.

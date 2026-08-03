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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable elasticity diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-1/stress-strain-elasticity.png' | relative_url }}" alt="Stress-strain curve and the longitudinal and transverse strains of a stretched rod" loading="lazy">
</div>

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

## Elastic strain energy

Loading a linearly elastic specimen quasistatically from zero stress to $\sigma$ stores work per unit volume equal to the area under the stress--strain line:

$$
u=\int_0^{\epsilon_l}\sigma\,d\epsilon_l
=\int_0^{\epsilon_l}Y\epsilon_l\,d\epsilon_l.
$$

Hence

$$
\boxed{
u=\frac12\sigma\epsilon_l
=\frac{\sigma^2}{2Y}
=\frac12Y\epsilon_l^2
}.
$$

For a uniform rod of volume $AL$, this gives

$$
U=uAL=\frac12F\Delta L.
$$

The factor $1/2$ is essential: during gradual loading the force rises from zero to $F$, so its average value is $F/2$. This expression applies only while unloading retraces the linear elastic path.

## Solved Problems

### 1. Extension, lateral contraction and stored energy of a wire

A wire has length $L=2.00\ \mathrm{m}$, diameter $d=1.00\ \mathrm{mm}$, Young's modulus $Y=2.00\times10^{11}\ \mathrm{Pa}$ and Poisson's ratio $\nu=0.300$. It is pulled by $F=100\ \mathrm{N}$ within its elastic range. Find its longitudinal extension, change in diameter and stored elastic energy.

The original cross-sectional area is

$$
A=\frac{\pi d^2}{4}
=\frac{\pi(1.00\times10^{-3})^2}{4}
=7.854\times10^{-7}\ \mathrm{m^2}.
$$

Therefore

$$
\sigma=\frac{F}{A}=1.273\times10^8\ \mathrm{Pa},
\qquad
\epsilon_l=\frac{\sigma}{Y}=6.366\times10^{-4}.
$$

The extension is

$$
\boxed{\Delta L=\epsilon_lL
=1.273\times10^{-3}\ \mathrm{m}
=1.273\ \mathrm{mm}}.
$$

The transverse strain carries the contraction sign:

$$
\epsilon_t=-\nu\epsilon_l
=-1.910\times10^{-4},
$$

so

$$
\boxed{\Delta d=\epsilon_td
=-1.910\times10^{-7}\ \mathrm{m}
=-0.191\ \mathrm{\mu m}}.
$$

Finally,

$$
\boxed{U=\frac12F\Delta L=6.366\times10^{-2}\ \mathrm{J}}.
$$

The negative $\Delta d$ denotes contraction, not a negative diameter. As checks, $\sigma/Y$ is dimensionless and $2U=F\Delta L$.

### 2. Recovering $Y$ and $\nu$ from $K$ and $G$

An isotropic solid has bulk modulus $K=75.0\ \mathrm{GPa}$ and shear modulus $G=30.0\ \mathrm{GPa}$. Determine Young's modulus and Poisson's ratio, and test whether the constants describe a stable isotropic solid.

Using the equivalent forms,

$$
\begin{aligned}
Y
&=\frac{9KG}{3K+G}\\
&=\frac{9(75.0)(30.0)}{3(75.0)+30.0}\ \mathrm{GPa}\\
&=79.41\ \mathrm{GPa},
\end{aligned}
$$

and

$$
\begin{aligned}
\nu
&=\frac{3K-2G}{2(3K+G)}\\
&=\frac{3(75.0)-2(30.0)}{2[3(75.0)+30.0]}\\
&=0.3235.
\end{aligned}
$$

Thus

$$
\boxed{Y=79.41\ \mathrm{GPa},\qquad \nu=0.3235}.
$$

Both $K$ and $G$ are positive, and $-1<0.3235<1/2$, so the stability conditions are satisfied. Substitution into $Y=2G(1+\nu)$ returns $79.41\ \mathrm{GPa}$, providing an independent consistency check.

## Descriptive Questions

1. Distinguish the proportional limit, elastic limit, yield point and ultimate tensile point on an engineering stress--strain curve.
2. Derive $Y=3K(1-2\nu)$ by superposing three mutually perpendicular normal stresses.
3. Explain why only two elastic constants are independent for a homogeneous isotropic solid.
4. Show from positivity of $K$ and $G$ why the admissible range of Poisson's ratio is $-1<\nu<1/2$.

## Numerical Problems

1. An isotropic block of initial volume $250\ \mathrm{cm^3}$ is subjected to a uniaxial tensile stress of $30.0\ \mathrm{MPa}$. If $Y=3.00\ \mathrm{GPa}$ and $\nu=0.400$, find its first-order change in volume.

   **Final answer:**

   $$
   \begin{aligned}
   \frac{\Delta V}{V}
   &=\epsilon_l+2\epsilon_t
   =(1-2\nu)\frac{\sigma}{Y}
   =2.00\times10^{-3},\\
   \Delta V&=+0.500\ \mathrm{cm^3}.
   \end{aligned}
   $$

2. A liquid of volume $0.0200\ \mathrm{m^3}$ has bulk modulus $2.20\ \mathrm{GPa}$. Find its volume change when the external pressure increases by $5.00\ \mathrm{MPa}$.

   **Final answer:** $\Delta V=-4.55\times10^{-5}\ \mathrm{m^3}=-45.5\ \mathrm{cm^3}$.

3. A cube of side $0.100\ \mathrm{m}$ is sheared by a tangential force of $12.0\ \mathrm{kN}$ on its top face. If $G=30.0\ \mathrm{GPa}$, find the top-face displacement.

   **Final answer:** $x=4.00\ \mathrm{\mu m}$.

4. An isotropic material has $Y=70.0\ \mathrm{GPa}$ and $\nu=0.350$. Calculate $G$ and $K$.

   **Final answer:** $G=25.93\ \mathrm{GPa}$, $K=77.78\ \mathrm{GPa}$.

5. Find the elastic energy density in a specimen stressed uniaxially to $120\ \mathrm{MPa}$ if $Y=200\ \mathrm{GPa}$.

   **Final answer:** $u=3.60\times10^4\ \mathrm{J\,m^{-3}}$.

6. A cube is subjected to mutually perpendicular normal stresses $\sigma_x=+100\ \mathrm{MPa}$, $\sigma_y=+40.0\ \mathrm{MPa}$ and $\sigma_z=-20.0\ \mathrm{MPa}$, where positive stress denotes tension. If $Y=200\ \mathrm{GPa}$ and $\nu=0.300$, find the normal strain along $x$.

   **Final answer:**

   $$
   \begin{aligned}
   \epsilon_x
   &=\frac{\sigma_x-\nu(\sigma_y+\sigma_z)}{Y}\\
   &=+4.70\times10^{-4}
   \quad\text{(elongation)}.
   \end{aligned}
   $$

All symbolic identities and numerical answers above are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/elastic-constants.mac' | relative_url }}).

## References

1. [Elasticity (physics) -- Wikipedia](https://en.wikipedia.org/wiki/Elasticity_%28physics%29).
2. [OpenStax, *University Physics Volume 1*, Section 12.3: Stress, Strain, and Elastic Modulus](https://openstax.org/books/university-physics-volume-1/pages/12-3-stress-strain-and-elastic-modulus).
3. [R. P. Feynman, R. B. Leighton and M. Sands, *The Feynman Lectures on Physics*, Vol. II, Chapter 38: Elasticity](https://www.feynmanlectures.caltech.edu/II_38.html).

---
title: "Surface Tension, Contact Angle and Virtual Work"
date: 2025-05-11 09:00:00 +0530
categories:
  - bsc-i
tags: [surface-tension, surface-energy, contact-angle, excess-pressure, virtual-work]
permalink: /bsc/sem-i/surface-tension-contact-angle-virtual-work/
---

A molecule well inside a liquid is attracted in all directions. A molecule near the surface has fewer neighbours on the vapour side, so work must be done to create new surface.

If reversible work $dW$ creates an area $dA$ at fixed temperature,

$$
\boxed{\gamma=\frac{dW}{dA}},
$$

where $\gamma$ is the surface energy per unit area. Since

$$
[\gamma]=\mathrm{J\,m^{-2}}=\mathrm{N\,m^{-1}},
$$

the same quantity is also the tangential force per unit length across a line drawn in the surface. This force description is **surface tension**.

## Principle of virtual work

A virtual displacement is an infinitesimal change compatible with the constraints. In quasistatic equilibrium, the first-order work supplied by the applied forces equals the corresponding increase of potential or surface energy:

$$
\boxed{\delta W_{\rm applied}-\delta U=0}.
$$

Consider a rectangular frame carrying a soap film, with a movable side of length $L$. If the side is displaced through $\delta x$, the two faces of the film gain area

$$
\delta A=2L\,\delta x.
$$

The surface-energy increase is $\delta U=2\gamma L\,\delta x$. Virtual work gives

$$
F\,\delta x=2\gamma L\,\delta x,
$$

so

$$
\boxed{F=2\gamma L}.
$$

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable surface-tension diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-1/surface-virtual-work.png' | relative_url }}" alt="Virtual-work balances for a soap film, a spherical drop and a liquid contact angle" loading="lazy">
</div>

## Excess pressure across a curved surface

For one interface whose principal sections bulge toward the lower-pressure phase, take $R_1$ and $R_2$ as their positive radii of curvature. The Young-Laplace relation gives the pressure excess on the opposite, higher-pressure side:

$$
\boxed{\Delta p=p_{\rm high}-p_{\rm low}
=\gamma\left(\frac{1}{R_1}+\frac{1}{R_2}\right)}.
$$

The spherical result follows directly from virtual work. Let a liquid drop of radius $R$ expand virtually by $dR$. Then

$$
dV=4\pi R^2\,dR,
\qquad
dA=8\pi R\,dR.
$$

The pressure work creates surface energy:

$$
\Delta p\,dV=\gamma\,dA.
$$

Therefore

$$
\Delta p(4\pi R^2\,dR)
=\gamma(8\pi R\,dR),
$$

and for a liquid drop or an air bubble in a liquid, each of which has one interface,

$$
\boxed{\Delta p=\frac{2\gamma}{R}}.
$$

A soap bubble has an inner and an outer interface. Its surface-energy change is $2\gamma\,dA$, so

$$
\boxed{\Delta p=\frac{4\gamma}{R}}.
$$

For a cylindrical interface of radius $R$ and fixed length $L$,

$$
dV=2\pi RL\,dR,
\qquad
dA=2\pi L\,dR.
$$

Virtual work then gives

$$
\boxed{\Delta p=\frac{\gamma}{R}},
$$

in agreement with the general relation because the two principal radii are $R$ and $\infty$.

## Angle of contact

At the line where solid, liquid and vapour meet, the **angle of contact** $\theta$ is measured through the liquid between the tangent to the liquid-vapour surface and the solid surface.

Let $\gamma_{SV}$, $\gamma_{SL}$ and $\gamma_{LV}$ denote the solid-vapour, solid-liquid and liquid-vapour interfacial tensions. A virtual advance $dx$ of the contact line replaces solid-vapour area by solid-liquid area. Per unit length of the contact line, the surface-energy change is

$$
dU=(\gamma_{SL}-\gamma_{SV})\,dx
+\gamma_{LV}\cos\theta\,dx.
$$

At equilibrium $dU=0$. Hence Young's equation is

$$
\boxed{\gamma_{SV}-\gamma_{SL}
=\gamma_{LV}\cos\theta}.
$$

Thus $\theta<90^\circ$ corresponds to preferential wetting of the solid, while $\theta>90^\circ$ corresponds to non-wetting.

The editable three-part diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/surface-virtual-work.tex' | relative_url }}).

## Capillary rise and depression

Let a vertical capillary of internal radius $a$ meet a liquid of density $\rho$ at contact angle $\theta$. Surface tension acts along the contact circle. Its vertical component is

$$
F_\gamma=2\pi a\gamma\cos\theta.
$$

Neglecting the meniscus volume, the weight of a column of signed height $h$ relative to the outer free surface is

$$
W=\rho g\pi a^2h.
$$

Equating the two gives Jurin's relation

$$
\boxed{h=\frac{2\gamma\cos\theta}{\rho ga}}.
$$

The sign is carried by $\cos\theta$: a wetting liquid with $\theta<90^\circ$ rises, whereas a non-wetting liquid with $\theta>90^\circ$ is depressed. The same result follows from the spherical-meniscus pressure jump $2\gamma/R_m$, with $R_m=a/\cos\theta$, balanced by $\rho gh$.

## Solved Problems

### 1. Rise of water in a glass capillary

Water has $\gamma=0.0720\ \mathrm{N\,m^{-1}}$, $\rho=998\ \mathrm{kg\,m^{-3}}$ and contact angle $\theta=20.0^\circ$ in a glass capillary of radius $a=0.250\ \mathrm{mm}$. Find the equilibrium rise and the corresponding capillary pressure.

Jurin's relation gives

$$
\begin{aligned}
h
&=\frac{2(0.0720)\cos20.0^\circ}
{(998)(9.81)(0.250\times10^{-3})}\\
&=5.529\times10^{-2}\ \mathrm{m}.
\end{aligned}
$$

Thus

$$
\boxed{h=5.53\ \mathrm{cm}}.
$$

The hydrostatic pressure difference is

$$
\boxed{\rho gh=5.41\times10^2\ \mathrm{Pa}}.
$$

It is positive as a pressure magnitude, while $h>0$ records a rise. The independent surface value $2\gamma\cos\theta/a$ is also $5.41\times10^2\ \mathrm{Pa}$, checking the force and pressure descriptions.

### 2. Pressure and work during expansion of a soap bubble

A soap bubble of surface tension $\gamma=0.0300\ \mathrm{N\,m^{-1}}$ expands quasistatically from $R_i=1.00\ \mathrm{mm}$ to $R_f=1.20\ \mathrm{mm}$. Find the initial and final excess pressures and the work done against surface tension.

Because a soap bubble has two interfaces,

$$
\Delta p_i=\frac{4\gamma}{R_i}
=\frac{4(0.0300)}{1.00\times10^{-3}}
=120\ \mathrm{Pa},
$$

$$
\Delta p_f=\frac{4\gamma}{R_f}
=\frac{4(0.0300)}{1.20\times10^{-3}}
=100\ \mathrm{Pa}.
$$

The increase in the energy of both surfaces is

$$
\begin{aligned}
W
&=2\gamma[4\pi R_f^2-4\pi R_i^2]\\
&=8\pi\gamma(R_f^2-R_i^2)\\
&=3.318\times10^{-7}\ \mathrm{J}.
\end{aligned}
$$

Therefore

$$
\boxed{\Delta p_i=120\ \mathrm{Pa},\quad
\Delta p_f=100\ \mathrm{Pa},\quad
W=3.318\times10^{-7}\ \mathrm{J}}.
$$

The falling excess pressure is physically consistent with increasing radius. Direct integration, $\int_{R_i}^{R_f}(4\gamma/R)(4\pi R^2\,dR)$, returns the same work and verifies the two-surface factor.

## Descriptive Questions

1. Explain why surface energy per unit area and surface tension force per unit length have the same SI unit and physical coefficient.
2. Use virtual work to derive the excess pressure inside a liquid drop and then modify the argument for a soap bubble.
3. Derive Young's contact-angle equation by considering a virtual displacement of the three-phase contact line.
4. Derive Jurin's law and explain, using its sign, why water rises but mercury is depressed in clean glass capillaries.

## Numerical Problems

1. A soap film of surface tension $0.0250\ \mathrm{N\,m^{-1}}$ supports a movable wire $0.0800\ \mathrm{m}$ long. Find the force required for equilibrium.

   **Final answer:** $F=4.00\times10^{-3}\ \mathrm{N}$.

2. Find the excess pressure inside a water drop of radius $0.500\ \mathrm{mm}$ if $\gamma=0.0720\ \mathrm{N\,m^{-1}}$.

   **Final answer:** $\Delta p=288\ \mathrm{Pa}$.

3. A long cylindrical liquid jet has radius $0.250\ \mathrm{mm}$ and surface tension $\gamma=0.0600\ \mathrm{N\,m^{-1}}$. Neglecting end effects, find its excess pressure.

   **Final answer:** $\Delta p=\gamma/R=240\ \mathrm{Pa}$.

4. For a liquid on a solid, $\gamma_{SV}=0.0500\ \mathrm{N\,m^{-1}}$, $\gamma_{SL}=0.0200\ \mathrm{N\,m^{-1}}$ and $\gamma_{LV}=0.0400\ \mathrm{N\,m^{-1}}$. Find the equilibrium contact angle.

   **Final answer:** $\theta=41.4^\circ$.

5. Mercury in glass has $\gamma=0.485\ \mathrm{N\,m^{-1}}$, $\rho=1.3546\times10^4\ \mathrm{kg\,m^{-3}}$ and $\theta=135^\circ$. Find $h$ in a capillary of radius $0.500\ \mathrm{mm}$.

   **Final answer:** $h=-10.32\ \mathrm{mm}$ (depression).

6. A drop of radius $2.00\ \mathrm{mm}$ and surface tension $0.0500\ \mathrm{N\,m^{-1}}$ breaks into eight equal drops without loss of liquid. Find the increase in surface energy.

   **Final answer:** $\Delta U=2.513\times10^{-6}\ \mathrm{J}$.

The virtual-work identities, capillary balance and all numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/surface-virtual-work.mac' | relative_url }}).

## References

1. [Young--Laplace equation -- Wikipedia](https://en.wikipedia.org/wiki/Young%E2%80%93Laplace_equation).
2. [OpenStax, *College Physics 2e*, Section 11.8: Cohesion and Adhesion in Liquids](https://openstax.org/books/college-physics-2e/pages/11-8-cohesion-and-adhesion-in-liquids-surface-tension-and-capillary-action).
3. [MIT OpenCourseWare, 18.357 *Interfacial Phenomena*: Lecture Notes](https://ocw.mit.edu/courses/18-357-interfacial-phenomena-fall-2010/pages/lecture-notes/).

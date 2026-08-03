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

![Virtual-work balances for a soap film, a spherical drop and a liquid contact angle]({{ '/assets/images/bsc/sem-i/unit-1/surface-virtual-work.png' | relative_url }})

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

The editable three-part diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/surface-virtual-work.tex' | relative_url }}). The film, curved-surface and contact-angle balances are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/surface-virtual-work.mac' | relative_url }}); every displayed residual is zero.

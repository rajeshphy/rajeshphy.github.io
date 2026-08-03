---
title: "Linear, Circular, and Elliptical Polarization"
summary: "Polarization ellipse derived from orthogonal field components, with linear and circular limits."
date: 2025-07-28 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-iii, polarization]
permalink: /bsc/sem-v/mj-8/unit-iii/linear-circular-elliptical-polarization/
---

For a monochromatic wave travelling along $+z$, the transverse electric field can have two orthogonal components:

$$E_x=A\cos\psi,
\qquad
E_y=B\cos(\psi+\delta),
\qquad
\psi=kz-\omega t.$$

$A$ and $B$ are nonnegative peak amplitudes in $\mathrm{V\,m^{-1}}$, and $\delta$ is their phase difference. At a fixed point in space, the tip of $\mathbf E$ traces the polarization curve as time advances.

## Derivation of the polarization ellipse

Expand the second component:

$$\frac{E_y}{B}=\cos\psi\cos\delta-\sin\psi\sin\delta.$$

Since $E_x/A=\cos\psi$,

$$\sin\psi\sin\delta
=\frac{E_x}{A}\cos\delta-\frac{E_y}{B}.$$

Square this equation and use $\sin^2\psi=1-\cos^2\psi=1-(E_x/A)^2$. After collecting terms,

$$\boxed{\left(\frac{E_x}{A}\right)^2
+\left(\frac{E_y}{B}\right)^2
-2\frac{E_xE_y}{AB}\cos\delta
=\sin^2\delta}.$$

This is the equation of an ellipse in the transverse plane. Linear and circular polarization are special limiting forms.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-iii/polarization-states.png' | relative_url }}" alt="Equation-generated linear circular and elliptical polarization curves" loading="lazy">
  <figcaption>Three polarization states generated directly from the two-component field equations. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-iii/polarization-states.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Linear polarization

If $\delta=0$ or $\pi$, the right-hand side of the ellipse equation vanishes and the two components are proportional:

$$\delta=0:\quad E_y=\frac BA E_x,$$

$$\delta=\pi:\quad E_y=-\frac BA E_x.$$

The field oscillates along a fixed straight line. Linear polarization also results if either $A=0$ or $B=0$, regardless of phase.

## Circular polarization

If the components have equal amplitude and differ in phase by a quarter cycle,

$$A=B=E_0,
\qquad
\delta=\pm\frac\pi2,$$

then

$$E_x^2+E_y^2=E_0^2.$$

The field magnitude is constant and its direction rotates uniformly. The signs $+\pi/2$ and $-\pi/2$ give opposite handedness. A handedness label must always be accompanied by the viewing or propagation convention; here the sign of $\delta$ unambiguously records the state.

## Elliptical polarization

All other fully polarized combinations with both components present produce an ellipse. The orientation angle $\theta$ of its principal axis relative to $x$ follows by eliminating the mixed term through a rotation of coordinates:

$$\boxed{\tan2\theta=\frac{2AB\cos\delta}{A^2-B^2}}.$$

Define the ellipticity angle $\chi$ by $\tan\chi=b/a$, where $a\ge b$ are the semi-major and semi-minor axes and the sign carries the rotation sense. Then

$$\boxed{\sin2\chi=\frac{2AB\sin\delta}{A^2+B^2}},
\qquad -45^\circ\le\chi\le45^\circ.$$

$\chi=0$ is linear, while $\lvert\chi\rvert=45^\circ$ is circular. Elliptical polarization is therefore the general state, with linear and circular states obtained by particular amplitude and phase relations.

The eliminated-phase ellipse identity is checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/polarization-rotation.mac' | relative_url }}); its printed residual is zero.

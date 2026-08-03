---
title: "Linear, Circular, and Elliptical Polarization"
summary: "Polarization ellipse derived from orthogonal field components, with linear and circular limits."
date: 2025-07-15 09:00:00 +0530
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

<figure class="diagram-figure diagram-pan" tabindex="0">
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

## Solved Problems

### 1. Orientation and ellipticity from component data

A fully polarized wave has $A=4.00\ \mathrm{V\,m^{-1}}$, $B=3.00\ \mathrm{V\,m^{-1}}$, and phase difference $\delta=60.0^\circ$. Find the polarization-ellipse azimuth $\theta$ and ellipticity angle $\chi$ in the conventions used above.

**Solution.** The azimuth must be evaluated with the signs of both numerator and denominator retained:

$$2\theta=\operatorname{atan2}
\!\left(2AB\cos\delta,A^2-B^2\right).$$

Here

$$2AB\cos\delta=12.0\ \mathrm{(V\,m^{-1})^2},
\qquad
A^2-B^2=7.00\ \mathrm{(V\,m^{-1})^2},$$

so

$$\theta=\frac12\operatorname{atan2}(12,7)=29.87^\circ.$$

For the ellipticity,

$$\sin2\chi=\frac{2AB\sin\delta}{A^2+B^2}
=\frac{24\sin60^\circ}{25}=0.8314,$$

and therefore

$$\chi=28.12^\circ.$$

Thus

$$\boxed{\theta=29.87^\circ,\qquad \chi=+28.12^\circ}.$$

The positive sign of $\chi$ follows the stated algebraic phase convention; a verbal handedness label would additionally require a viewing convention. The amplitude-squared units cancel in both ratios, so the angles are dimensionless. Since $0<\lvert\chi\rvert<45^\circ$, the state is elliptical, with $b/a=\tan\lvert\chi\rvert\approx0.535$. Letting $\delta\to0$ makes $\chi\to0$, the linear limit.

### 2. Identifying a constant-magnitude rotating field

At a fixed plane, a wave is described by

$$E_x=E_0\cos\psi,
\qquad
E_y=E_0\sin\psi.$$

Classify the polarization, determine the relative phase in the article's cosine convention, and state the rotation sense at $z=0$ as time increases.

**Solution.** Write

$$E_y=E_0\cos\!\left(\psi-\frac\pi2\right),$$

so $A=B=E_0$ and $\delta=-\pi/2$. The magnitude is

$$E_x^2+E_y^2=E_0^2(\cos^2\psi+\sin^2\psi)=E_0^2,$$

which is constant. The state is therefore circular:

$$\boxed{A=B=E_0,\qquad \delta=-\frac\pi2,\qquad
E_x^2+E_y^2=E_0^2}.$$

At $z=0$, $\psi=-\omega t$; just after $t=0$, the field turns from $+x$ toward $-y$. This explicit statement avoids an ambiguous handedness word. Both components have unit $\mathrm{V\,m^{-1}}$, and their squared sum has unit $\mathrm{V^2\,m^{-2}}$. If either amplitude tends to zero, the circle collapses to a line.

## Descriptive Questions

1. Derive the polarization ellipse by eliminating the common phase between two orthogonal field components.
2. State all amplitude and phase conditions that produce linear or circular polarization.
3. Why is a handedness label incomplete unless the propagation direction and viewing convention are specified?
4. Explain the geometrical meanings and allowed ranges of the azimuth $\theta$ and ellipticity angle $\chi$.

## Numerical Problems

1. For $A=B=5.00\ \mathrm{V\,m^{-1}}$ and $\delta=\pi$, find the polarization line.
   **Final answer:** $\boxed{E_y=-E_x}$, linear polarization at $-45^\circ$ to $+x$.
2. For $A=6.00\ \mathrm{V\,m^{-1}}$, $B=2.00\ \mathrm{V\,m^{-1}}$, and $\delta=\pi/2$, find the minor-to-major axis ratio.
   **Final answer:** $\boxed{b/a=1/3}$.
3. For $A=5.00\ \mathrm{V\,m^{-1}}$, $B=2.00\ \mathrm{V\,m^{-1}}$, and $\delta=45.0^\circ$, find $\theta$ and $\chi$.
   **Final answer:** $\boxed{\theta=16.98^\circ,\qquad \chi=14.59^\circ}$.

The general ellipse identity is checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/polarization-rotation.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Polarization (waves) - Wikipedia](https://en.wikipedia.org/wiki/Polarization_%28waves%29)
2. [RP Photonics Encyclopedia, Polarization of Light](https://www.rp-photonics.com/polarization_of_light.html)
3. Eugene Hecht, *Optics*, 5th ed., Chapter 8, “Polarization.”

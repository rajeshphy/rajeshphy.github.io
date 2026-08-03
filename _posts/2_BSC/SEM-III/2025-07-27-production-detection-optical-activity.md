---
title: "Production and Detection of Polarized Light and Optical Activity"
summary: "Polarizer-analyzer tests for linear, circular, and elliptical light, Malus's law, and optical rotation from circular birefringence."
date: 2025-07-27 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, polarized-light, malus-law, polarization-detection, optical-activity]
permalink: /bsc/sem-iii/production-detection-optical-activity/
hidden: true
---

An ideal polarizer transmits the electric-field component along its transmission axis. The same element used to test an unknown state is called an analyzer.

## Malus's law and the test for plane polarization

Let plane-polarized light of amplitude $E_0$ meet an analyzer whose axis $\hat{\mathbf a}$ makes angle $\theta$ with the incident vibration direction $\hat{\mathbf p}$. Projection on the analyzer axis gives

$$
\mathbf E_{\mathrm{out}}
=(E_0\hat{\mathbf p}\cdot\hat{\mathbf a})\hat{\mathbf a}
=E_0\cos\theta\,\hat{\mathbf a}.
$$

Since time-averaged intensity is proportional to the squared amplitude,

$$
\boxed{I=I_P\cos^2\theta}.
$$

This is Malus's law. A rotating analyzer gives two maxima and two complete extinctions in one revolution, identifying plane-polarized light. Plane polarization can be produced by a Nicol prism or by reflection at the Brewster angle.

An unpolarized beam has all transverse azimuths with equal probability. Averaging Malus's factor gives

$$
\left\langle\cos^2\theta\right\rangle
=\frac{1}{2\pi}\int_0^{2\pi}\cos^2\theta\,\mathrm d\theta
=\frac12,
$$

so an ideal polarizer transmits half its intensity.

## Circular polarization

To produce circular polarization:

1. use a polarizer to obtain a linear field;
2. set its vibration at $45^\circ$ to the fast and slow axes of a quarter-wave plate;
3. let the plate introduce a relative phase $\pm\pi/2$ between the equal components.

The resulting field can be written

$$
E_x=E_0\cos\psi,
\qquad
E_y=\pm E_0\sin\psi.
$$

For an analyzer at azimuth $\beta$,

$$
E_a=E_0(\cos\psi\cos\beta
\pm\sin\psi\sin\beta).
$$

Time averaging gives

$$
\left\langle E_a^2\right\rangle
=\frac{E_0^2}{2}(\cos^2\beta+\sin^2\beta)
=\frac{E_0^2}{2},
$$

independent of $\beta$. A rotating analyzer alone therefore cannot distinguish circular light from unpolarized light. Insert a quarter-wave plate first: it adds or removes a quarter-wave retardation, turning circular light into linear light. The following analyzer then gives complete extinction.

## Elliptical polarization

Linearly polarized light incident on a quarter-wave plate at an angle other than $0^\circ$, $45^\circ$, or $90^\circ$ has two unequal non-zero components in quadrature and becomes elliptically polarized. In axes along the ellipse,

$$
E_x=a\cos\psi,
\qquad
E_y=b\sin\psi,
\qquad a\ne b.
$$

A rotating analyzer transmits average intensity proportional to

$$
\left\langle(E_x\cos\beta+E_y\sin\beta)^2\right\rangle
=\frac12\left(a^2\cos^2\beta+b^2\sin^2\beta\right).
$$

It varies between values proportional to $a^2$ and $b^2$ but never vanishes when both axes are non-zero. To confirm elliptical polarization, align a quarter-wave plate with the ellipse axes. It cancels their $\pi/2$ phase difference, producing linear light; a following analyzer then gives extinction.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/production-detection.png' | relative_url }}" alt="Optical sequences for producing and detecting plane, circular, and elliptical polarization" loading="lazy">
  <figcaption>A rotating analyzer detects linear light directly; a quarter-wave plate before the analyzer distinguishes circular and elliptical light from unpolarized light.</figcaption>
</figure>

## Optical activity

An optically active medium rotates the azimuth of plane-polarized light without changing it into an ellipse in the ideal lossless case. The mechanism is circular birefringence: left- and right-circular components propagate with different refractive indices $n_L$ and $n_R$.

Choose circular unit vectors

$$
\hat{\mathbf e}_L=\frac{\hat{\mathbf x}-i\hat{\mathbf y}}{\sqrt2},
\qquad
\hat{\mathbf e}_R=\frac{\hat{\mathbf x}+i\hat{\mathbf y}}{\sqrt2}.
$$

A field initially along $x$ is their equal superposition:

$$
\hat{\mathbf x}=\frac{\hat{\mathbf e}_L+\hat{\mathbf e}_R}{\sqrt2}.
$$

After travelling distance $l$ through the medium, the two phase advances are

$$
\phi_L=\frac{2\pi n_Ll}{\lambda},
\qquad
\phi_R=\frac{2\pi n_Rl}{\lambda}.
$$

With $\bar\phi=(\phi_L+\phi_R)/2$ and $\Delta\phi=\phi_L-\phi_R$, the output field is

$$
\begin{aligned}
\mathbf E_{\mathrm{out}}
&\propto \frac{e^{i\phi_L}\hat{\mathbf e}_L
+e^{i\phi_R}\hat{\mathbf e}_R}{\sqrt2}\\
&=e^{i\bar\phi}
\left[
\hat{\mathbf x}\cos\left(\frac{\Delta\phi}{2}\right)
+\hat{\mathbf y}\sin\left(\frac{\Delta\phi}{2}\right)
\right].
\end{aligned}
$$

The common phase $e^{i\bar\phi}$ does not affect the vibration direction. The plane has rotated through

$$
\boxed{\alpha=\frac{\Delta\phi}{2}
=\frac{\pi l}{\lambda}(n_L-n_R)},
$$

with the sign fixed by the circular-basis and viewing convention. A rotating analyzer measures this rotation because its extinction position shifts by $\alpha$.

For a solution of concentration $c$, the specific rotation at stated temperature $T$ and wavelength $\lambda$ is defined by

$$
\boxed{[\alpha]^T_\lambda=\frac{\alpha}{lc}}.
$$

When $l$ is measured in decimetres and $c$ in $\mathrm{g\,mL^{-1}}$, its conventional unit is $\mathrm{degree\,dm^{-1}(g\,mL^{-1})^{-1}}$. Positive and negative rotations are called dextrorotatory and levorotatory, respectively, after the observation convention has been fixed.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/optical-activity-malus.png' | relative_url }}" alt="Optical rotation as differential phase of circular components with an equation-generated Malus-law analyzer curve" loading="lazy">
  <figcaption>Circular birefringence rotates the linear vibration by half the relative circular phase; the analyzer minimum shifts by the same angle.</figcaption>
</figure>

The analyzer averages and circular-basis recombination are checked with zero residuals in the [Unit III polarization Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-3/polarization-checks.mac' | relative_url }}).

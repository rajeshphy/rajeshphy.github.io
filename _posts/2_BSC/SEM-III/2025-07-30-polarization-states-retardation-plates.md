---
title: "Retardation Plates, the Babinet Compensator, and Polarization States"
summary: "Quarter- and half-wave plates, continuously variable retardation, and linear, circular, and elliptical polarization states."
date: 2025-07-30 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, polarization-ellipse, quarter-wave-plate, half-wave-plate, babinet-compensator]
permalink: /bsc/sem-iii/polarization-states-retardation-plates/
hidden: true
---

At a fixed point in a monochromatic beam travelling along $z$, resolve the electric field along two perpendicular transverse axes:

$$
E_x=a\cos\psi,
\qquad
E_y=b\cos(\psi-\delta),
\qquad
\psi=\omega t-kz.
$$

The phase difference $\delta$ determines the path traced by the tip of $\mathbf E$.

## Derivation of the polarization ellipse

Define

$$
X=\frac{E_x}{a}=\cos\psi,
\qquad
Y=\frac{E_y}{b}=\cos\psi\cos\delta+\sin\psi\sin\delta.
$$

Then

$$
Y-X\cos\delta=\sin\psi\sin\delta.
$$

Squaring this equation and using $\sin^2\psi=1-X^2$,

$$
(Y-X\cos\delta)^2=(1-X^2)\sin^2\delta.
$$

Expanding and collecting terms gives

$$
X^2+Y^2-2XY\cos\delta=\sin^2\delta,
$$

or

$$
\boxed{
\frac{E_x^2}{a^2}+\frac{E_y^2}{b^2}
-\frac{2E_xE_y}{ab}\cos\delta
=\sin^2\delta}.
$$

This equation classifies the polarization:

- **Linear polarization:** If $\delta=m\pi$, then $E_y/b=(-1)^mE_x/a$, so the tip moves on a straight line. A field along either coordinate axis is also linear.
- **Circular polarization:** If $a=b$ and $\delta=(2m+1)\pi/2$, then $E_x^2+E_y^2=a^2$. The field magnitude is constant while its direction rotates.
- **Elliptical polarization:** In the general case the tip traces an ellipse. The sign of $\delta$ fixes the sense of rotation; a handedness label is meaningful only after specifying whether the observer looks with or against the direction of propagation.

Linear and circular polarization are therefore limiting cases of elliptical polarization.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/polarization-ellipse.png' | relative_url }}" alt="Equation-generated electric-field trajectories for linear, circular, and two elliptical polarization states" loading="lazy">
  <figcaption>Each trajectory is generated parametrically from $E_x=a\cos\psi$ and $E_y=b\cos(\psi-\delta)$.</figcaption>
</figure>

## Retardation by a birefringent plate

Let the plate's fast and slow axes have refractive indices $n_f$ and $n_s$, with $n_s>n_f$. A vacuum wavelength $\lambda$ accumulates phases

$$
\phi_f=\frac{2\pi n_fd}{\lambda},
\qquad
\phi_s=\frac{2\pi n_sd}{\lambda}
$$

while crossing thickness $d$. The slow component therefore lags the fast component by

$$
\boxed{\delta=\phi_s-\phi_f
=\frac{2\pi}{\lambda}(n_s-n_f)d}.
$$

The plate changes relative phase, not the component amplitudes, when absorption and reflection losses are neglected.

### Quarter-wave plate

A quarter-wave plate produces an odd multiple of $\pi/2$ retardation:

$$
\delta=\frac{(2m+1)\pi}{2},
\qquad
\boxed{d=\frac{(2m+1)\lambda}{4(n_s-n_f)}}.
$$

If incident linear polarization makes $45^\circ$ with the plate axes, its components are equal. The plate makes them differ in phase by $\pi/2$, so the output is circular. At any other non-zero angle to both axes, the component amplitudes are unequal and the output is elliptical. Conversely, a suitable quarter-wave plate converts circular or elliptical light into linear light.

### Half-wave plate

A half-wave plate produces an odd multiple of $\pi$ retardation:

$$
\delta=(2m+1)\pi,
\qquad
\boxed{d=\frac{(2m+1)\lambda}{2(n_s-n_f)}}.
$$

Let the incident linear field make angle $\alpha$ with the fast axis. Before the plate its components are proportional to

$$
\begin{pmatrix}\cos\alpha\\ \sin\alpha\end{pmatrix}.
$$

The half-wave retardation changes the relative sign, giving

$$
\begin{pmatrix}\cos\alpha\\ -\sin\alpha\end{pmatrix}.
$$

Thus the output makes angle $-\alpha$ with the fast axis. If the fast axis is at angle $\phi$ and the incident azimuth is $\theta$, then $\alpha=\theta-\phi$ and

$$
\boxed{\theta_{\rm out}=2\phi-\theta}.
$$

The half-wave plate therefore rotates the plane of polarization through twice the angle between the incident vibration and the plate axis, with the sign set by their relative orientation.

## Babinet compensator

A Babinet compensator uses two birefringent wedges with mutually perpendicular fast axes. Let the local thicknesses traversed in the two wedges be $t_1$ and $t_2$. Because their axes are interchanged, their retardations have opposite signs. The net retardation is

$$
\boxed{\delta_B=\frac{2\pi(n_s-n_f)}{\lambda}(t_1-t_2)}.
$$

Sliding one wedge changes $t_1-t_2$ continuously. At the position where $t_1=t_2$, the two retardations cancel. The compensator can therefore supply a continuously adjustable retardation of either sign, unlike a fixed quarter- or half-wave plate. An unknown retardation is measured by adjusting the compensator until an analyzer shows the chosen compensation condition; the calibrated wedge displacement then gives $t_1-t_2$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/retarders-babinet.png' | relative_url }}" alt="Fast and slow components through quarter-wave and half-wave plates and the crossed-axis wedges of a Babinet compensator" loading="lazy">
  <figcaption>Fixed plates supply selected phase delays; crossed wedges make the net delay proportional to their local thickness difference.</figcaption>
</figure>

The ellipse elimination, wave-plate special cases, and half-wave rotation are checked with zero residuals in the [Unit III polarization Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-3/polarization-checks.mac' | relative_url }}).

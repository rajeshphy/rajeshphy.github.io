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
  <div class="diagram-pan" role="region" aria-label="Scrollable polarization-trajectory diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/polarization-ellipse.png' | relative_url }}" alt="Equation-generated electric-field trajectories for linear, circular, and two elliptical polarization states" loading="lazy">
  </div>
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
  <div class="diagram-pan" role="region" aria-label="Scrollable retarders-and-Babinet-compensator diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/retarders-babinet.png' | relative_url }}" alt="Fast and slow components through quarter-wave and half-wave plates and the crossed-axis wedges of a Babinet compensator" loading="lazy">
  </div>
  <figcaption>Fixed plates supply selected phase delays; crossed wedges make the net delay proportional to their local thickness difference.</figcaption>
</figure>

## Solved Problems

### 1. Minimum thickness of a quarter-wave plate

A birefringent material has $n_s-n_f=0.00900$ at wavelength $600\,\mathrm{nm}$. Find the least thickness that acts as a quarter-wave plate.

**Step 1: Set the least quarter-wave retardation.** For $m=0$,

$$
\frac{2\pi}{\lambda}(n_s-n_f)d=\frac{\pi}{2}.
$$

**Step 2: Solve for the thickness.**

$$
\begin{aligned}
d&=\frac{\lambda}{4(n_s-n_f)}\\
&=\frac{600\times10^{-9}}{4(0.00900)}\,\mathrm{m}\\
&=1.667\times10^{-5}\,\mathrm{m}
=16.67\,\mu\mathrm{m}.
\end{aligned}
$$

Substitution gives $2\pi(0.00900)(16.67\,\mu\mathrm{m})/(600\,\mathrm{nm})=\pi/2$ to the stated precision.

### 2. Rotation by a half-wave plate

The incident plane-polarization azimuth is $\theta=20^\circ$, and the fast axis of a half-wave plate is at $\phi=35^\circ$ in the same reference frame. Find the output azimuth and the rotation of the plane.

**Step 1: Use the half-wave mapping.**

$$
\theta_{\rm out}=2\phi-\theta.
$$

**Step 2: Substitute the angles.**

$$
\theta_{\rm out}=2(35^\circ)-20^\circ=50^\circ.
$$

The polarization-plane rotation is therefore

$$
\theta_{\rm out}-\theta=50^\circ-20^\circ=30^\circ.
$$

The incident and output directions make equal and opposite angles, $-15^\circ$ and $+15^\circ$, with the plate axis, which checks the reflection-like azimuth rule.

## Descriptive Questions

1. How is the polarization ellipse obtained by eliminating the common phase from two perpendicular field components?
2. Under what input conditions does a quarter-wave plate produce circular rather than elliptical polarization?
3. Why does a half-wave plate rotate a plane-polarized vibration through twice its angle with the plate axis?
4. How does a Babinet compensator provide a continuously adjustable retardation of either sign?

## Numerical Problems

1. A plate has thickness $75.0\,\mu\mathrm{m}$ and $n_s-n_f=0.0100$ at $\lambda=500\,\mathrm{nm}$. Find its retardation and identify its equivalent first-order action.

   **Answer:** $\delta=3\pi\,\mathrm{rad}$, equivalent modulo $2\pi$ to a half-wave plate.

2. Right-circularly polarized light has normalized Jones vector $\mathbf J_{\mathrm{in}}=2^{-1/2}(1,i)^{\mathsf T}$. It enters a quarter-wave plate whose fast axis is $x$ and slow axis is $y$; take the slow-component phase factor as $e^{-i\pi/2}=-i$. Find the output Jones vector and identify the polarization.

   **Answer:** $\mathbf J_{\mathrm{out}}=2^{-1/2}(1,1)^{\mathsf T}$; the output is linearly polarized at $+45^\circ$ to the fast axis.

3. A Babinet compensator has $n_s-n_f=0.00900$, local thickness difference $t_1-t_2=20.0\,\mu\mathrm{m}$, and $\lambda=600\,\mathrm{nm}$. Find its net retardation.

   **Answer:** $\delta_B=0.600\pi\,\mathrm{rad}=108^\circ$.

4. A field has components $E_x=3\cos\psi$ and $E_y=4\sin\psi$ in common amplitude units. Identify the polarization and give the maximum-to-minimum transmitted-intensity ratio for an analyzer aligned successively with the principal axes.

   **Answer:** Elliptical polarization with semiaxes $3$ and $4$; $I_{\max}/I_{\min}=16/9$.

The solved results and all numerical answers are verified by exact residuals in the [Unit III polarization Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-3/polarization-checks.mac' | relative_url }}).

## References

1. [Waveplate - Wikipedia](https://en.wikipedia.org/wiki/Waveplate)
2. F. A. Jenkins and H. E. White, *Fundamentals of Optics*, McGraw-Hill, sections on retardation plates and compensators.
3. Max Born and Emil Wolf, *Principles of Optics*, Cambridge University Press, sections on polarization states and birefringent plates.
4. Ajoy Ghatak, *Optics*, McGraw Hill Education, chapters on wave plates and polarization analysis.

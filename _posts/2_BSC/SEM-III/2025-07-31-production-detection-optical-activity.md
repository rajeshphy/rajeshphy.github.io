---
title: "Production and Detection of Polarized Light and Optical Activity"
summary: "Polarizer-analyzer tests for linear, circular, and elliptical light, Malus's law, and optical rotation from circular birefringence."
date: 2025-07-31 09:00:00 +0530
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
  <div class="diagram-pan" role="region" aria-label="Scrollable polarization-production-and-detection diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/production-detection.png' | relative_url }}" alt="Optical sequences for producing and detecting plane, circular, and elliptical polarization" loading="lazy">
  </div>
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
  <div class="diagram-pan" role="region" aria-label="Scrollable optical-activity-and-Malus-law diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/optical-activity-malus.png' | relative_url }}" alt="Optical rotation as differential phase of circular components with an equation-generated Malus-law analyzer curve" loading="lazy">
  </div>
  <figcaption>Circular birefringence rotates the linear vibration by half the relative circular phase; the analyzer minimum shifts by the same angle.</figcaption>
</figure>

## Solved Problems

### 1. Successive polarizer and analyzer

Unpolarized light of intensity $12.0\,\mathrm{W\,m^{-2}}$ passes through an ideal polarizer and then an analyzer whose axis is $30^\circ$ from the polarizer axis. Find the final intensity.

**Step 1: Average over the unpolarized input.** An ideal polarizer transmits half:

$$
I_P=\frac{I_0}{2}=6.00\,\mathrm{W\,m^{-2}}.
$$

**Step 2: Apply Malus's law to the analyzer.**

$$
\begin{aligned}
I&=I_P\cos^230^\circ\\
&=6.00\left(\frac{\sqrt3}{2}\right)^2\\
&=4.50\,\mathrm{W\,m^{-2}}.
\end{aligned}
$$

The total transmission fraction is $(1/2)(3/4)=3/8$, and $(3/8)(12.0)=4.50$, which independently checks the result.

### 2. Specific rotation and a second solution

A solution rotates plane-polarized light through $+13.2^\circ$ in a tube of length $2.00\,\mathrm{dm}$ at concentration $0.200\,\mathrm{g\,mL^{-1}}$. Find its specific rotation and predict the rotation for a $3.00\,\mathrm{dm}$ tube at concentration $0.100\,\mathrm{g\,mL^{-1}}$ at the same temperature and wavelength.

**Step 1: Calculate the specific rotation.**

$$
[\alpha]^T_\lambda
=\frac{\alpha}{lc}
=\frac{13.2}{(2.00)(0.200)}
=33.0\,\mathrm{degree\,dm^{-1}(g\,mL^{-1})^{-1}}.
$$

**Step 2: Apply it to the second tube.**

$$
\alpha^{\prime}=[\alpha]^T_\lambda l^{\prime}c^{\prime}
=(33.0)(3.00)(0.100)=9.90^\circ.
$$

The positive sign is retained because neither the substance nor the viewing convention has changed.

## Descriptive Questions

1. How does a rotating analyzer distinguish plane-polarized light from circular and unpolarized light?
2. How are circularly polarized light and its handedness produced and detected with a quarter-wave plate?
3. Why does elliptically polarized light show unequal analyzer maxima and minima but no complete extinction?
4. How does circular birefringence rotate a plane-polarized vibration without making it elliptical in an ideal medium?

## Numerical Problems

1. Without an active sample, an analyzer gives extinction at $15^\circ$. After inserting the sample, the nearest recorded extinction is at $167^\circ$. Since an analyzer axis repeats after $180^\circ$, find the signed rotation of smallest magnitude.

   **Answer:** $\alpha=(167^\circ-15^\circ)-180^\circ=-28.0^\circ$, a negative rotation under the stated convention.

2. Circularly polarized light has intensity $8.00\,\mathrm{W\,m^{-2}}$. Find the intensity after an ideal linear analyzer at any azimuth.

   **Answer:** $I=4.00\,\mathrm{W\,m^{-2}}$, independent of analyzer azimuth.

3. Principal electric-field amplitudes of elliptically polarized light are in the ratio $3:1$. Find the ratio of maximum to minimum analyzer intensities and state whether complete extinction occurs.

   **Answer:** $I_{\max}/I_{\min}=9$; no complete extinction occurs.

4. An optically active medium has $n_L-n_R=2.00\times10^{-6}$ at $\lambda=500\,\mathrm{nm}$. Find the rotation after $l=0.100\,\mathrm{m}$.

   **Answer:** $\alpha=0.400\pi\,\mathrm{rad}=72.0^\circ$.

The solved results and all numerical answers are verified by exact residuals in the [Unit III polarization Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-3/polarization-checks.mac' | relative_url }}).

## References

1. [Optical rotation - Wikipedia](https://en.wikipedia.org/wiki/Optical_rotation)
2. F. A. Jenkins and H. E. White, *Fundamentals of Optics*, McGraw-Hill, sections on polarization analysis and optical activity.
3. Max Born and Emil Wolf, *Principles of Optics*, Cambridge University Press, sections on polarization and circular birefringence.
4. Ajoy Ghatak, *Optics*, McGraw Hill Education, chapters on production and detection of polarized light.

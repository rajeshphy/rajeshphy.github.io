---
title: "Retardation Plates, Babinet Compensator, and Polarization Analysis"
summary: "Production and detection of polarization, quarter- and half-wave plates, Babinet compensation, and Stokes analysis."
date: 2025-07-26 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-iii, wave-plates, babinet-compensator]
permalink: /bsc/sem-v/mj-8/unit-iii/retardation-plates-babinet-polarization-analysis/
---

A phase-retardation plate is a uniform birefringent plate cut so that two orthogonal linear eigenpolarizations travel with refractive indices $n_f$ and $n_s$, where $n_s>n_f$. The corresponding fast and slow components emerge with a controlled relative phase.

## Retardation from optical path difference

For plate thickness $d$, the two phase advances are

$$\varphi_f=\frac{2\pi}{\lambda_0}n_fd,
\qquad
\varphi_s=\frac{2\pi}{\lambda_0}n_sd.$$

The slow-minus-fast retardation is

$$\boxed{\delta=\varphi_s-\varphi_f
=\frac{2\pi}{\lambda_0}(n_s-n_f)d}.$$

$\delta$ is dimensionless and is normally quoted in radians or degrees.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-iii/retarders-babinet.png' | relative_url }}" alt="Phase-retardation plate and crossed-wedge Babinet compensator with equation-derived retardance" loading="lazy">
  <figcaption>Fixed thickness gives a wave plate; a crossed-wedge thickness difference gives continuously variable retardation. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-iii/retarders-babinet.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Quarter-wave plate

A quarter-wave plate requires

$$\delta=(2m+1)\frac\pi2,$$

so its allowed thicknesses are

$$\boxed{d_{\lambda/4}=\frac{(2m+1)\lambda_0}{4\lvert n_s-n_f\rvert}},
\qquad m=0,1,2,\ldots$$

If linearly polarized light enters at $45^\circ$ to the plate axes, its two components have equal amplitudes. The plate introduces a $\pm\pi/2$ phase difference, producing circular polarization. If both components are nonzero but unequal, the output is elliptical; input exactly along either plate axis remains linear.

## Half-wave plate

A half-wave plate requires

$$\delta=(2m+1)\pi,$$

and therefore

$$\boxed{d_{\lambda/2}=\frac{(2m+1)\lambda_0}{2\lvert n_s-n_f\rvert}}.$$

Let an incident linear field make angle $\theta$ with the fast axis. Its Jones vector is proportional to $(\cos\theta,\sin\theta)$. Apart from an overall phase, the half-wave plate changes it to

$$\begin{pmatrix}\cos\theta\\-\sin\theta\end{pmatrix},$$

which is linear at angle $-\theta$. The plane of polarization is therefore rotated through magnitude $2\theta$ about the plate axis. A half-wave plate also reverses the handedness of elliptical or circular polarization.

## Production of polarized light

Plane-polarized light is produced by transmitting an unpolarized beam through a Nicol prism or another linear polarizer. If its transmission axis is $\hat{\mathbf a}$, only the field projection $(\mathbf E\cdot\hat{\mathbf a})\hat{\mathbf a}$ is transmitted.

Circularly polarized light is produced by sending plane-polarized light through a quarter-wave plate with the incident plane at $45^\circ$ to the fast and slow axes. Elliptically polarized light is produced when both orthogonal components are nonzero and either their amplitudes are unequal or their phase difference is not an integer multiple of $\pi$.

## Detection with an analyzer

For a linear analyzer whose axis makes angle $\theta$ with a linearly polarized input, the transmitted field is $E_0\cos\theta$. Hence Malus's law is

$$\boxed{I=I_0\cos^2\theta}.$$

On rotating the analyzer:

- linear polarization gives complete extinction twice per revolution;
- circular polarization gives angle-independent transmitted intensity; and
- elliptical polarization gives alternating nonzero maximum and minimum intensity.

A quarter-wave plate followed by a linear analyzer distinguishes circular from unpolarized light: a correctly oriented quarter-wave plate converts circular light to linear light, which can be extinguished, whereas unpolarized light cannot be completely extinguished.

## Babinet compensator

An ideal Babinet compensator uses two wedges of the same birefringent material with crossed optic axes. At transverse position $x$, their thickness difference is $\Delta t(x)=t_1(x)-t_2(x)$. Because the fast direction of one wedge is the slow direction of the other, the common thickness cancels and the net retardation is

$$\boxed{\delta(x)=\frac{2\pi}{\lambda_0}(n_e-n_o)\Delta t(x)}.$$

Translating a wedge changes $\Delta t$ continuously. A zero-order line occurs where $\Delta t=0$; successive equal-retardation lines differ by an optical path of one wavelength. The compensator is used to measure small phase differences, determine birefringence or wavelength, compensate an unknown retardation, and reduce an elliptically polarized state to a linear state for analysis.

## Quantitative analysis with Stokes parameters

Let $E_x$ and $E_y$ be complex peak amplitudes. Choose the convention

$$\boxed{\begin{aligned}
S_0&=\lvert E_x\rvert^2+\lvert E_y\rvert^2,\\
S_1&=\lvert E_x\rvert^2-\lvert E_y\rvert^2,\\
S_2&=2\Re(E_xE_y^{\ast}),\\
S_3&=-2\Im(E_xE_y^{\ast}).
\end{aligned}}$$

$S_0$ is proportional to total intensity. $S_1$ is obtained from horizontal and vertical analyzer readings, $S_2$ from $+45^\circ$ and $-45^\circ$ readings, and $S_3$ from a quarter-wave plate followed by the analyzer. For completely polarized light,

$$\boxed{S_0^2=S_1^2+S_2^2+S_3^2}.$$

The polarization-ellipse azimuth and ellipticity are

$$\boxed{\theta=\frac12\tan^{-1}\!\left(\frac{S_2}{S_1}\right)},
\qquad
\boxed{\chi=\frac12\sin^{-1}\!\left(\frac{S_3}{S_0}\right)}.$$

The quadrant of the azimuth is fixed by the signs of both $S_1$ and $S_2$. The quarter- and half-wave Jones identities are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/polarization-rotation.mac' | relative_url }}); every printed residual is zero.

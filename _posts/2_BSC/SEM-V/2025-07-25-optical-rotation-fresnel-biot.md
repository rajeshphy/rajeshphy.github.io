---
title: "Optical Rotation: Biot's Laws and Fresnel's Theory"
summary: "Circular birefringence, rotation-angle calculation, experimental verification, and specific rotation."
date: 2025-07-25 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-iii, optical-rotation, specific-rotation]
permalink: /bsc/sem-v/mj-8/unit-iii/optical-rotation-biot-fresnel-specific-rotation/
---

An optically active medium rotates the plane of linearly polarized light about the propagation axis. Define the signed azimuth $\alpha$ by $\mathbf E_{\rm out}\propto\hat{\mathbf x}\cos\alpha+\hat{\mathbf y}\sin\alpha$; thus positive $\alpha$ turns the polarization from $+x$ toward $+y$ in the chosen transverse coordinates.

## Fresnel's circular-birefringence theory

A linearly polarized field can be resolved into equal-amplitude left- and right-circular components. At $z=0$ their superposition is linear. In an optically active medium the two circular eigenwaves have different refractive indices $n_L$ and $n_R$:

$$k_L=\frac{2\pi n_L}{\lambda_0},
\qquad
k_R=\frac{2\pi n_R}{\lambda_0}.$$

After distance $l$, their relative phase is

$$\Delta\varphi=(k_L-k_R)l.$$

For the $e^{-i\omega t}$ time convention, choose the circular basis

$$\hat{\mathbf e}_L=\frac{\hat{\mathbf x}-i\hat{\mathbf y}}{\sqrt2},
\qquad
\hat{\mathbf e}_R=\frac{\hat{\mathbf x}+i\hat{\mathbf y}}{\sqrt2}.$$

Apart from a common phase, their recombination after propagation is

$$\mathbf E\propto
\hat{\mathbf e}_L e^{i\Delta\varphi/2}
+\hat{\mathbf e}_R e^{-i\Delta\varphi/2}.$$

Expanding the circular vectors gives

$$\mathbf E\propto
\hat{\mathbf x}\cos\frac{\Delta\varphi}{2}
+\hat{\mathbf y}\sin\frac{\Delta\varphi}{2},$$

which is still linear but rotated through half the circular phase difference. Thus

$$\boxed{\alpha=\frac{\Delta\varphi}{2}
=\frac{(k_L-k_R)l}{2}
=\frac{\pi l}{\lambda_0}(n_L-n_R)}.$$

Changing the order $L-R$ reverses the algebraic sign but not the physical conclusion: optical rotation is caused by circular birefringence.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-iii/optical-rotation.png' | relative_url }}" alt="Fresnel decomposition of linear polarization into circular eigenwaves and recombination at a rotated angle" loading="lazy">
  <figcaption>Unequal circular phase constants rotate the linear superposition by half their accumulated phase difference. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-iii/optical-rotation.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Biot's laws of rotatory polarization

For a fixed substance, temperature, and wavelength, Biot's observations are summarized by

$$\boxed{\alpha\propto l}.$$

For a solution at sufficiently low concentration $c$,

$$\boxed{\alpha\propto c},$$

so together

$$\boxed{\alpha=[\alpha]_{\lambda}^{T}lc}.$$

Rotations of independent optically active constituents are additive with their algebraic signs. Away from absorption bands, Biot's approximate wavelength law is

$$\boxed{\alpha\propto\frac1{\lambda_0^2}}.$$

The superscript $T$ and subscript $\lambda$ on the specific rotation record temperature and wavelength because both affect the measured value.

## Specific rotation and angle calculation

For a solution, specific rotation is defined by

$$\boxed{[\alpha]_{\lambda}^{T}=\frac{\alpha}{lc}}.$$

In common laboratory convention, $\alpha$ is in degrees, $l$ in decimetres, and $c$ in $\mathrm{g\,mL^{-1}}$. The unit is then

$$\mathrm{degree\,dm^{-1}(g\,mL^{-1})^{-1}}.$$

Once $[\alpha]_{\lambda}^{T}$, $l$, and $c$ are known, the rotation is calculated directly as

$$\boxed{\alpha=[\alpha]_{\lambda}^{T}lc}.$$

For a pure active liquid of mass density $\rho_m$, the analogous relation is $\alpha=[\alpha]_{\lambda}^{T}l\rho_m$ when the same concentration convention is used.

Fresnel's form provides the corresponding microscopic-wave calculation:

$$\boxed{n_L-n_R=\frac{\alpha\lambda_0}{\pi l}}$$

when $\alpha$ is expressed in radians.

## Experimental verification of Fresnel's theory

A direct verification uses a compound prism assembled from alternating wedges of right-handed and left-handed quartz, with their optic axes parallel to the incident direction. Reversing the crystal handedness interchanges the indices experienced by the two circular eigenwaves. At each oblique internal boundary the left- and right-circular components are therefore refracted by slightly different amounts; the wedge orientations make these small deviations accumulate. Two separated emerging beams are obtained. A quarter-wave plate and analyzer identify them as oppositely circularly polarized. Their spatial separation is direct evidence that $n_L\ne n_R$, the central assumption of Fresnel's theory.

A monochromatic source is followed by a linear polarizer, a tube of optically active material of known length, and a rotatable analyzer. First record an analyzer reference angle at extinction with the empty tube or solvent. Insert the active sample and rotate the analyzer to restore extinction. The signed analyzer shift is $\alpha$.

The circular-birefringence theory and Biot relations predict three direct tests:

1. Tubes of different length at fixed concentration and wavelength give a straight line through the origin when $\alpha$ is plotted against $l$.
2. Solutions of different concentration at fixed length and wavelength give a straight line through the origin when $\alpha$ is plotted against $c$.
3. Measurements at several wavelengths away from absorption give an approximately straight line when $\alpha$ is plotted against $1/\lambda_0^2$.

The persistence of linear output together with a rotated extinction direction supports Fresnel's decomposition: the two circular components acquire unequal phase but, in the ideal non-dichroic case, retain equal amplitudes.

The half-relative-phase rotation formula is checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/polarization-rotation.mac' | relative_url }}); its printed residual is zero.

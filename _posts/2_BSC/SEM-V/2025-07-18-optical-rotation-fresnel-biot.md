---
title: "Optical Rotation: Biot's Laws and Fresnel's Theory"
summary: "Circular birefringence, rotation-angle calculation, experimental verification, and specific rotation."
date: 2025-07-18 09:00:00 +0530
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

<figure class="diagram-figure diagram-pan" tabindex="0">
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

## Solved Problems

### 1. Rotation by a sugar solution

A solution has specific rotation

$$[\alpha]_{\lambda}^{T}=+66.5\ \mathrm{degree\,dm^{-1}(g\,mL^{-1})^{-1}}.$$

Its path length is $2.00\ \mathrm{dm}$ and concentration is $0.120\ \mathrm{g\,mL^{-1}}$. Find the signed optical rotation.

**Solution.** Use the same length and concentration units carried by the tabulated specific rotation:

$$\alpha=[\alpha]_{\lambda}^{T}lc.$$

Therefore

$$\alpha=(+66.5)(2.00)(0.120)^\circ=+15.96^\circ.$$

Thus

$$\boxed{\alpha=+15.96^\circ}.$$

The positive sign means rotation in the positive azimuth convention declared at the start of the article; it should not be interpreted without that convention. The units $\mathrm{dm}$ and $\mathrm{g\,mL^{-1}}$ cancel their inverse factors in $[\alpha]$. If either length or concentration tends to zero, the rotation tends to zero linearly, as Biot's laws require.

### 2. Circular birefringence from a measured rotation

A $589\ \mathrm{nm}$ beam acquires a signed rotation $\alpha=+2.50^\circ$ after travelling $l=0.100\ \mathrm m$ in an ideal optically active medium. Find $n_L-n_R$ in the circular-basis convention used above.

**Solution.** First convert the measured angle to radians:

$$\alpha=2.50\frac{\pi}{180}=0.04363\ \mathrm{rad}.$$

Fresnel's relation gives

$$n_L-n_R=\frac{\alpha\lambda_0}{\pi l}
=\frac{(0.04363)(589\times10^{-9})}{\pi(0.100)}
=8.181\times10^{-8}.$$

Hence

$$\boxed{n_L-n_R=+8.18\times10^{-8}}.$$

The positive sign is tied to the article's $L-R$ basis and azimuth convention; interchanging the circular labels reverses both signs consistently. Refractive-index difference is dimensionless because $\lambda_0/l$ is dimensionless and radians carry no physical unit. If $n_L-n_R\to0$, the predicted rotation vanishes.

## Descriptive Questions

1. Starting from circular eigenwaves, explain why the rotation of a linear polarization is half their accumulated relative phase.
2. State Biot's length, concentration, additivity, and approximate wavelength laws together with their conditions of use.
3. Distinguish specific rotation from the refractive-index difference responsible for circular birefringence.
4. Describe Fresnel's compound-prism evidence for oppositely circular eigenwaves and explain what observation supports $n_L\ne n_R$.

## Numerical Problems

1. Two independent constituents produce rotations $+13.2^\circ$ and $-4.7^\circ$ under identical conditions. Find the net rotation.
   **Final answer:** $\boxed{\alpha_{\rm net}=+8.5^\circ}$.
2. A sample rotates by $12.0^\circ$ at $546\ \mathrm{nm}$. Using Biot's approximate $1/\lambda^2$ law, estimate its rotation at $436\ \mathrm{nm}$.
   **Final answer:** $\boxed{\alpha(436\ \mathrm{nm})=18.82^\circ}$.

The half-relative-phase identity is checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/polarization-rotation.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Optical rotation - Wikipedia](https://en.wikipedia.org/wiki/Optical_rotation)
2. [RP Photonics Encyclopedia, Optical Activity](https://www.rp-photonics.com/optical_activity.html)
3. [IUPAC Gold Book, Optical Rotatory Power](https://goldbook.iupac.org/terms/view/O04313/pdf)

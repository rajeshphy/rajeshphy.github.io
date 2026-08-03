---
title: "Anisotropic Crystals, Double Refraction, and the Nicol Prism"
summary: "Uniaxial and biaxial crystals, ordinary and extraordinary waves, double refraction, and Nicol-prism operation."
date: 2025-07-27 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-iii, double-refraction, nicol-prism]
permalink: /bsc/sem-v/mj-8/unit-iii/crystals-double-refraction-nicol-prism/
---

In an isotropic dielectric, $\mathbf D=\epsilon\mathbf E$ with one scalar $\epsilon$. In an anisotropic crystal the permittivity is a tensor. Along its principal axes,

$$\begin{pmatrix}D_x\\D_y\\D_z\end{pmatrix}
=\begin{pmatrix}
\epsilon_x&0&0\\0&\epsilon_y&0\\0&0&\epsilon_z
\end{pmatrix}
\begin{pmatrix}E_x\\E_y\\E_z\end{pmatrix}.$$

Different field directions can therefore experience different refractive indices.

## Uniaxial and biaxial crystals

A uniaxial crystal has two equal principal indices:

$$n_x=n_y=n_o,\qquad n_z=n_e.$$

The $z$ direction is the optic axis. The optical indicatrix is

$$\boxed{\frac{x^2+y^2}{n_o^2}+\frac{z^2}{n_e^2}=1}.$$

$n_o$ is the ordinary refractive index and $n_e$ is the principal extraordinary refractive index. A positive uniaxial crystal has $n_e>n_o$; a negative uniaxial crystal has $n_e<n_o$.

A biaxial crystal has three unequal principal indices,

$$n_x\ne n_y\ne n_z,$$

and two optic-axis directions along which the two permitted refractive indices coincide.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-iii/crystals-nicol.png' | relative_url }}" alt="Uniaxial refractive-index surfaces and Nicol prism separating ordinary and extraordinary rays" loading="lazy">
  <figcaption>The wave-normal index surfaces meet along the optic axis; the Nicol prism removes the ordinary ray by total internal reflection. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-iii/crystals-nicol.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

The indicatrix and the directional index surface are different geometric constructions. If the radial distance is chosen to equal the extraordinary index for a wave-normal direction, the latter obeys

$$\frac{x^2+y^2}{n_e^2}+\frac{z^2}{n_o^2}=1.$$

It touches the ordinary sphere of radius $n_o$ along the optic axis, where the two indices coincide, as shown in the figure.

## Light propagation in a uniaxial crystal

Let the wave normal $\mathbf k$ make angle $\vartheta$ with the optic axis. Maxwell's equations and the anisotropic constitutive relation admit two transverse displacement eigenvectors.

For the ordinary wave, $\mathbf D_o$ is perpendicular to the principal section, the plane containing $\mathbf k$ and the optic axis. Its index is independent of direction:

$$\boxed{n_o(\vartheta)=n_o}.$$

For the extraordinary wave, $\mathbf D_e$ lies in the principal section. Its direction-dependent index follows from the indicatrix:

$$\boxed{\frac1{n_e^2(\vartheta)}
=\frac{\cos^2\vartheta}{n_o^2}
+\frac{\sin^2\vartheta}{n_e^2}}.$$

At $\vartheta=0$, both waves see $n_o$ and no angular splitting occurs. At $\vartheta=90^\circ$, the extraordinary wave sees the principal value $n_e$.

For the ordinary wave, the energy-flow direction $\mathbf S$ is parallel to the wave normal in the usual construction. For the extraordinary wave, anisotropy generally makes $\mathbf S$ nonparallel to $\mathbf k$; this walk-off contributes to spatial ray separation.

## Double refraction and polarization

At an interface, the tangential component of $\mathbf k$ is common to both allowed transmitted eigenwaves. Because their refractive indices differ, they generally have different wave-normal and energy-flow directions. An incident beam therefore separates into

- an ordinary ray obeying Snell's law with constant $n_o$, polarized perpendicular to the principal section; and
- an extraordinary ray with direction-dependent $n_e(\vartheta)$, polarized in the principal section.

The two polarizations are orthogonal. Isolating either separated ray produces plane-polarized light; this is polarization by double refraction.

## Nicol prism: construction

A Nicol prism is made from a calcite rhombohedron cut diagonally through a principal section. The cut faces are polished and cemented with a thin layer of Canada balsam. The end faces admit and transmit the beam, while a side face is arranged to absorb the rejected ray.

Near the sodium D line, representative indices are

$$n_e\approx1.486,
\qquad
n_b\approx1.55,
\qquad
n_o\approx1.658,$$

where $n_b$ is the Canada-balsam index. Calcite is negative uniaxial because $n_e<n_o$.

## Nicol prism: working

The ordinary ray travels from effective index $n_o$ toward the lower balsam index $n_b$. Its critical angle is

$$\boxed{\theta_{c,o}=\sin^{-1}\!\left(\frac{n_b}{n_o}\right)
\approx\sin^{-1}\!\left(\frac{1.55}{1.658}\right)
\approx69.2^\circ}.$$

The prism cut makes the ordinary-ray incidence exceed this value, so the ordinary ray is totally internally reflected toward the side and removed.

The extraordinary ray has an effective index near $n_e<n_b$ for the intended geometry. It passes into the balsam rather than undergoing total internal reflection, crosses the second calcite half, and emerges. The output contains one extraordinary eigenpolarization and is therefore plane polarized.

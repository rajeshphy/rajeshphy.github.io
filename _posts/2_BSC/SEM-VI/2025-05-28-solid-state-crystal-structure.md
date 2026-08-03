---
title: "Crystal Structure and X-ray Diffraction"
summary: "Direct and reciprocal lattices, bases, unit cells, Miller indices, Brillouin zones, structure factors, and Bragg diffraction."
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, crystal-structure, reciprocal-lattice, x-ray-diffraction]
permalink: /bsc/sem-vi/solid-state/crystal-structure-x-ray-diffraction/
hidden: true
---

A crystal is specified by a periodic set of translation vectors and by the atoms attached to every translated point. This separation between **lattice** and **basis** is the organizing idea behind crystal geometry and diffraction.

## Amorphous and crystalline solids

A crystalline solid has long-range translational order: its microscopic density satisfies

$$
\rho(\mathbf r+\mathbf R)=\rho(\mathbf r)
$$

for every lattice translation $\mathbf R$. An amorphous solid has short-range bonding order but no translation that reproduces the structure throughout the sample. Consequently, a crystal gives sharp reciprocal-lattice diffraction peaks, whereas an amorphous solid gives broad maxima.

## Translation vectors, basis, and unit cells

Choose three non-coplanar primitive vectors $\mathbf a_1,\mathbf a_2,\mathbf a_3$. Every lattice point is

$$
\boxed{\mathbf R=n_1\mathbf a_1+n_2\mathbf a_2+n_3\mathbf a_3},
\qquad n_i\in\mathbb Z.
$$

The set is closed under translations because $\mathbf R-\mathbf R^{\prime}$ is another integer combination of the same vectors. If a basis contains atoms at positions $\boldsymbol\tau_s$ within one cell, all atomic positions are

$$
\boxed{\mathbf r_{n_1n_2n_3,s}=\mathbf R+\boldsymbol\tau_s}.
$$

A primitive cell contains one lattice point after boundary sharing is counted. Its volume is

$$
\boxed{v_c=\left\lvert\mathbf a_1\cdot(\mathbf a_2\times\mathbf a_3)\right\rvert}
$$

with SI unit $\mathrm{m^3}$. A conventional cell may contain several lattice points but displays the crystal symmetry more clearly. For example, the conventional cubic cells contain $1$, $2$, and $4$ lattice points for simple cubic (sc), body-centred cubic (bcc), and face-centred cubic (fcc), respectively.

A structure is centrosymmetric if an origin can be chosen such that every basis element at $\boldsymbol\tau$ has an equivalent element at $-\boldsymbol\tau$ modulo a lattice vector. If no such inversion centre exists, it is non-centrosymmetric. Translational periodicity alone does not decide this property; it depends on the basis as well as the lattice.

The seven crystal systems and their fourteen three-dimensional Bravais lattices are

| Crystal system | Bravais centring |
|---|---|
| triclinic | P |
| monoclinic | P, C |
| orthorhombic | P, C, I, F |
| tetragonal | P, I |
| trigonal | R |
| hexagonal | P |
| cubic | P, I, F |

Here P, C, I, F, and R denote primitive, base-centred, body-centred, face-centred, and rhombohedral lattices.

## Miller indices

Suppose a plane intercepts the crystallographic axes at $p\mathbf a_1,q\mathbf a_2,r\mathbf a_3$. Take the reciprocals $1/p,1/q,1/r$ and clear fractions to the smallest integers. The result $(hkl)$ labels the family of parallel planes. An infinite intercept gives index zero; a negative index is written with a bar.

For a cubic crystal of side $a$, a plane through intercepts $a/h,a/k,a/l$ obeys

$$
\frac{x}{a/h}+\frac{y}{a/k}+\frac{z}{a/l}=1,
$$

or

$$
hx+ky+lz=a.
$$

Its normal is parallel to $(h,k,l)$. Adjacent parallel planes have equations $hx+ky+lz=ma$, so their perpendicular separation is

$$
\boxed{d_{hkl}=\frac{a}{\sqrt{h^2+k^2+l^2}}}
\qquad\text{(cubic lattice)}.
$$

## Reciprocal lattice

Define reciprocal primitive vectors by

$$
\boxed{
\mathbf b_1=2\pi\frac{\mathbf a_2\times\mathbf a_3}{\mathbf a_1\cdot(\mathbf a_2\times\mathbf a_3)}
}
$$

and cyclic permutations. Direct substitution gives

$$
\boxed{\mathbf a_i\cdot\mathbf b_j=2\pi\delta_{ij}}.
$$

Every reciprocal vector is

$$
\mathbf G=h\mathbf b_1+k\mathbf b_2+l\mathbf b_3,
$$

and therefore

$$
e^{i\mathbf G\cdot\mathbf R}
=e^{i2\pi(hn_1+kn_2+ln_3)}=1.
$$

Thus $\mathbf k$ and $\mathbf k+\mathbf G$ produce the same phase at equivalent lattice points. The reciprocal primitive-cell volume is

$$
\boxed{v_c^*=\mathbf b_1\cdot(\mathbf b_2\times\mathbf b_3)=\frac{(2\pi)^3}{v_c}},
$$

with unit $\mathrm{m^{-3}}$.

For the $(hkl)$ plane family, $\mathbf G_{hkl}$ is normal to the planes and its phase changes by $2\pi$ between neighbours. Hence

$$
\boxed{d_{hkl}=\frac{2\pi}{\lvert\mathbf G_{hkl}\rvert}}.
$$

For conventional cubic side $a$:

$$
\begin{array}{c|c|c}
\text{direct lattice}&\text{reciprocal lattice}&\text{reciprocal conventional side}\\ \hline
\text{sc}&\text{sc}&2\pi/a\\
\text{bcc}&\text{fcc}&4\pi/a\\
\text{fcc}&\text{bcc}&4\pi/a
\end{array}
$$

For example, primitive bcc vectors may be chosen as

$$
\mathbf a_1=\frac a2(-1,1,1),\quad
\mathbf a_2=\frac a2(1,-1,1),\quad
\mathbf a_3=\frac a2(1,1,-1).
$$

The reciprocal construction gives

$$
\mathbf b_1=\frac{2\pi}{a}(0,1,1),\quad
\mathbf b_2=\frac{2\pi}{a}(1,0,1),\quad
\mathbf b_3=\frac{2\pi}{a}(1,1,0),
$$

which are primitive vectors of an fcc lattice.

## Brillouin zones

The first Brillouin zone is the Wigner-Seitz cell of the reciprocal lattice. For each nonzero $\mathbf G$, the plane

$$
\boxed{\mathbf k\cdot\mathbf G=\frac{G^2}{2}}
$$

is the perpendicular bisector between $\mathbf 0$ and $\mathbf G$. The nearest such planes enclose the first zone. Therefore the first zones of direct sc, bcc, and fcc lattices are respectively a cube, a rhombic dodecahedron, and a truncated octahedron, because their reciprocal lattices are sc, fcc, and bcc.

The same plane is a Bragg plane. Elastic scattering by $\mathbf G$ changes $\mathbf k$ to $\mathbf k^{\prime}=\mathbf k-\mathbf G$. Since $\lvert\mathbf k^{\prime}\rvert=\lvert\mathbf k\rvert$,

$$
(\mathbf k-\mathbf G)^2=\mathbf k^2
\quad\Longrightarrow\quad
\mathbf k\cdot\mathbf G=\frac{G^2}{2}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-1/crystal-reciprocal-diffraction.png' | relative_url }}" alt="Direct lattice with basis, reciprocal-lattice Bragg plane, and X-ray reflection from adjacent crystal planes">
  </div>
  <figcaption>A basis is repeated by direct-lattice translations. In reciprocal space the perpendicular bisector of $\mathbf G$ is a Brillouin-zone boundary and Bragg plane. In real space, rays reflected from planes separated by $d$ acquire path difference $2d\sin\theta$.</figcaption>
</figure>

## X-ray diffraction and Bragg's law

X-ray wavelengths are comparable to interplanar spacings. Consider elastic scattering from two adjacent planes separated by $d$. If the glancing angle to the planes is $\theta$, the lower ray travels an extra distance $d\sin\theta$ before and after scattering. Constructive interference requires

$$
2d\sin\theta=n\lambda,
$$

so

$$
\boxed{2d_{hkl}\sin\theta=n\lambda}.
$$

This is Bragg's law. The angle between incident and diffracted beams is $2\theta$. Because $\lvert\sin\theta\rvert\leq1$, a reflection exists only if $n\lambda\leq2d_{hkl}$.

The same result follows from the scattering vector

$$
\mathbf Q=\mathbf k_f-\mathbf k_i,
\qquad \lvert\mathbf k_i\rvert=\lvert\mathbf k_f\rvert=\frac{2\pi}{\lambda}.
$$

Translation through $\mathbf R$ multiplies the scattered amplitude by $e^{i\mathbf Q\cdot\mathbf R}$. All cells add in phase only when

$$
\boxed{\mathbf Q=\mathbf G},
$$

the Laue condition. Its magnitude is $Q=2k\sin\theta=4\pi\sin\theta/\lambda$. Using $G=2\pi n/d$ gives Bragg's law.

## Atomic and geometrical factors

The amplitude from the electrons of one atom is its atomic form factor

$$
\boxed{f_j(\mathbf Q)=\int \rho_j(\mathbf r)e^{i\mathbf Q\cdot\mathbf r}\,d^3r},
$$

where $\rho_j$ is the electron-number density and $f_j(0)=Z_j$. The basis atoms interfere through the geometrical or structure factor

$$
\boxed{F_{hkl}=\sum_j f_j(\mathbf G_{hkl})
e^{i\mathbf G_{hkl}\cdot\boldsymbol\tau_j}},
\qquad I_{hkl}\propto\lvert F_{hkl}\rvert^2.
$$

For identical atoms in a conventional bcc cell at $(0,0,0)$ and $(a/2,a/2,a/2)$,

$$
F_{hkl}=f\left[1+e^{i\pi(h+k+l)}\right].
$$

Therefore $F=2f$ if $h+k+l$ is even and $F=0$ if it is odd. For fcc positions $(0,0,0)$, $(0,a/2,a/2)$, $(a/2,0,a/2)$, and $(a/2,a/2,0)$,

$$
F_{hkl}=f\left[1+e^{i\pi(k+l)}+e^{i\pi(h+l)}+e^{i\pi(h+k)}\right].
$$

It equals $4f$ when $h,k,l$ are all even or all odd, and vanishes otherwise. These systematic absences distinguish lattice geometries even when their conventional cells have the same cubic shape.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-1/crystal-structure.mac' | relative_url }})

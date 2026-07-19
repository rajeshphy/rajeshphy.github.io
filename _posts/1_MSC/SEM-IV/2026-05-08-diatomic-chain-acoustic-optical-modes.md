---
title: "Diatomic Linear Chain: Acoustic and Optical Modes"
summary: "Dispersion, eigenvectors, limiting frequencies, frequency gap, and mass-ratio dependence of a one-dimensional diatomic lattice."
date: 2026-05-08 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - diatomic-chain
  - acoustic-phonons
  - optical-phonons
permalink: /msc/sem-iv/diatomic-chain-acoustic-optical-modes/
hidden: true
---

A crystal with two atoms in its primitive cell has two displacement amplitudes for each polarization and wave vector. Even in one dimension this produces two normal-mode branches. One branch approaches zero frequency at long wavelength and is called acoustic; the other remains at finite frequency at the zone centre and is called optical. The diatomic chain gives an exact mechanical model of branch formation, acoustic--optical splitting, and the influence of unequal masses.

## Geometry and harmonic equations

Consider an infinite linear chain with alternating masses $M_1$ and $M_2$. The primitive-cell length is $a$. In cell $n$, the equilibrium positions are

$$
x_{n1}=na,
\qquad
x_{n2}=na+\frac{a}{2}.
$$

Let $u_n$ be the longitudinal displacement of mass $M_1$ and $v_n$ that of mass $M_2$. Every nearest-neighbour pair is coupled by a spring of force constant $C$. The potential energy is

$$
U=\frac{C}{2}\sum_n
\left[(v_n-u_n)^2+(u_{n+1}-v_n)^2\right].
$$

The kinetic energy is

$$
T=\frac12\sum_n
\left(M_1\dot u_n^2+M_2\dot v_n^2\right).
$$

Differentiation of $U$ gives the coupled equations

$$
\boxed{
M_1\ddot u_n=C(v_n+v_{n-1}-2u_n)
},
$$

and

$$
\boxed{
M_2\ddot v_n=C(u_n+u_{n+1}-2v_n)
}.
$$

The two neighbours of $M_1$ are $M_2$ atoms in cells $n$ and $n-1$, while those of $M_2$ are $M_1$ atoms in cells $n$ and $n+1$.

## Bloch form and secular equation

Use amplitudes whose phases include the equilibrium position of each basis atom:

$$
u_n=Ue^{i(kna-\omega t)},
$$

$$
v_n=Ve^{i[k(na+a/2)-\omega t]}.
$$

Then

$$
v_n+v_{n-1}
=2V\cos\frac{ka}{2}\,e^{i(kna-\omega t)},
$$

and

$$
u_n+u_{n+1}
=2U\cos\frac{ka}{2}\,
e^{i[k(na+a/2)-\omega t]}.
$$

The amplitude equations are

$$
\begin{pmatrix}
2C-M_1\omega^2 & -2C\cos(ka/2)\\
-2C\cos(ka/2) & 2C-M_2\omega^2
\end{pmatrix}
\begin{pmatrix}U\\V\end{pmatrix}=0.
$$

A nonzero displacement requires the determinant to vanish:

$$
(2C-M_1\omega^2)(2C-M_2\omega^2)
-4C^2\cos^2\frac{ka}{2}=0.
$$

On using $1-\cos^2(ka/2)=\sin^2(ka/2)$,

$$
\boxed{
M_1M_2\omega^4
-2C(M_1+M_2)\omega^2
+4C^2\sin^2\frac{ka}{2}=0
}.
$$

This quadratic equation in $\omega^2$ gives

$$
\boxed{
\omega_{\pm}^2(k)
=C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)
\pm C\sqrt{
\left(\frac{1}{M_1}+\frac{1}{M_2}\right)^2
-\frac{4}{M_1M_2}\sin^2\frac{ka}{2}}
}.
$$

The lower sign is the acoustic branch,

$$
\omega_{\mathrm{ac}}(k)=\omega_-(k),
$$

and the upper sign is the optical branch,

$$
\omega_{\mathrm{op}}(k)=\omega_+(k).
$$

Both branches are periodic under $k\mapsto k+2\pi/a$. Since $a$ is the primitive-cell length, their first Brillouin zone is

$$
-\frac{\pi}{a}\leq k\leq\frac{\pi}{a}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/diatomic-chain-dispersion.png' | relative_url }}" alt="Alternating-mass diatomic chain with acoustic and optical dispersion branches and the zone-boundary frequency gap">
  <figcaption>The two displacement amplitudes in each primitive cell produce acoustic and optical branches. For unequal masses the branches are separated at the zone boundary; the gap grows as the mass contrast increases and closes when the two masses become equal.</figcaption>
</figure>

## Sum and product of the branch frequencies

The two roots of the secular equation obey

$$
\boxed{
\omega_{\mathrm{ac}}^2+\omega_{\mathrm{op}}^2
=2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)
},
$$

and

$$
\boxed{
\omega_{\mathrm{ac}}^2\omega_{\mathrm{op}}^2
=\frac{4C^2}{M_1M_2}\sin^2\frac{ka}{2}
}.
$$

The sum of the squared frequencies is independent of $k$. As the acoustic branch rises from the zone centre, the optical branch must decrease. Their product vanishes at $k=0$ because translational invariance requires an acoustic zero mode.

## Zone-centre frequencies and eigenvectors

At $k=0$ the branch frequencies are

$$
\boxed{\omega_{\mathrm{ac}}(0)=0},
$$

and

$$
\boxed{
\omega_{\mathrm{op}}^2(0)
=2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)
=\frac{2C}{\mu}
},
$$

where

$$
\mu=\frac{M_1M_2}{M_1+M_2}
$$

is the reduced mass of the two-atom basis.

The amplitude ratio follows from the first row of the matrix equation:

$$
\boxed{
\frac{V}{U}
=\frac{2C-M_1\omega^2}
{2C\cos(ka/2)}
}.
$$

For the acoustic mode at $k=0$ and $\omega=0$,

$$
\frac{V}{U}=1.
$$

The two atoms move in phase with equal displacement. Every bond retains its equilibrium length under the exact $k=0$ translation, so there is no restoring force.

For the optical mode at $k=0$,

$$
\frac{V}{U}=-\frac{M_1}{M_2}.
$$

Thus the atoms move in opposite directions, and

$$
M_1U+M_2V=0.
$$

The centre of mass of each cell remains fixed. If the two sublattices carry opposite effective charges, this relative motion produces an oscillating dipole moment and can couple to infrared electromagnetic radiation, which motivates the term optical mode.

## Dynamical matrix and mass-normalized eigenvectors

Define mass-weighted amplitudes

$$
e_1=\sqrt{M_1}U,
\qquad
e_2=\sqrt{M_2}V.
$$

The eigenvalue equation becomes

$$
\mathbf D(k)\mathbf e=\omega^2\mathbf e,
$$

with the real symmetric dynamical matrix

$$
\boxed{
\mathbf D(k)=
\begin{pmatrix}
2C/M_1 & -2C\cos(ka/2)/\sqrt{M_1M_2}\\
-2C\cos(ka/2)/\sqrt{M_1M_2} & 2C/M_2
\end{pmatrix}
}.
$$

Its eigenvalues are $\omega_{\mathrm{ac}}^2$ and $\omega_{\mathrm{op}}^2$. Because $\mathbf D$ is real symmetric, the mass-weighted eigenvectors can be chosen orthonormal:

$$
\sum_{\kappa=1}^{2}e_{\kappa s}(k)e_{\kappa s'}(k)=\delta_{ss'}.
$$

In terms of physical displacement amplitudes, the same relation is

$$
\sum_{\kappa=1}^{2}M_\kappa
U_{\kappa s}^*(k)U_{\kappa s'}(k)=\delta_{ss'}.
$$

This mass metric is essential when normal coordinates are quantized.

## Long-wavelength acoustic and optical limits

Let

$$
A=C\left(\frac{1}{M_1}+\frac{1}{M_2}\right).
$$

For $\lvert ka\rvert\ll1$,

$$
\sin^2\frac{ka}{2}\simeq\frac{k^2a^2}{4}.
$$

Expanding the square root in the exact dispersion yields

$$
\boxed{
\omega_{\mathrm{ac}}^2(k)
\simeq\frac{Ca^2}{2(M_1+M_2)}k^2
},
$$

and therefore

$$
\boxed{
v_s=\lim_{k\to0}\frac{\omega_{\mathrm{ac}}}{\lvert k\rvert}
=a\sqrt{\frac{C}{2(M_1+M_2)}}
}.
$$

There are two springs per cell in series for a slowly varying extension, giving an effective cell stiffness $C/2$, while the cell mass is $M_1+M_2$. The elastic interpretation is therefore consistent with the exact lattice calculation.

For the optical branch,

$$
\boxed{
\omega_{\mathrm{op}}^2(k)
\simeq2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)
-\frac{Ca^2}{2(M_1+M_2)}k^2
}.
$$

Its curvature is negative near the zone centre: the optical frequency decreases as $\lvert k\rvert$ increases. For $k>0$ sufficiently close to zero, this branch has negative group velocity $d\omega_{\mathrm{op}}/dk<0$.

## Zone-boundary modes

At $k=\pi/a$,

$$
\cos\frac{ka}{2}=0.
$$

The off-diagonal elements of the amplitude matrix vanish, so the two sublattices decouple. The two frequencies are

$$
\omega^2=\frac{2C}{M_1},
\qquad
\omega^2=\frac{2C}{M_2}.
$$

Suppose $M_h$ is the heavier mass and $M_l$ the lighter mass. Since $M_h>M_l$,

$$
\boxed{
\omega_{\mathrm{ac}}\left(\frac{\pi}{a}\right)
=\sqrt{\frac{2C}{M_h}}
},
$$

and

$$
\boxed{
\omega_{\mathrm{op}}\left(\frac{\pi}{a}\right)
=\sqrt{\frac{2C}{M_l}}
}.
$$

For the acoustic-edge mode, only the heavy sublattice moves; the light sublattice is stationary. For the optical-edge mode, only the light sublattice moves. This follows directly from the diagonal matrix at the boundary. The atoms of either moving sublattice in adjacent cells have opposite phases because $e^{ikna}=(-1)^n$.

## Acoustic--optical frequency gap

For unequal masses, the acoustic branch occupies

$$
0\leq\omega\leq\sqrt{\frac{2C}{M_h}},
$$

whereas the optical branch occupies

$$
\sqrt{\frac{2C}{M_l}}
\leq\omega\leq
\sqrt{2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)}.
$$

No normal mode occurs in the angular-frequency interval

$$
\sqrt{\frac{2C}{M_h}}<\omega<\sqrt{\frac{2C}{M_l}}.
$$

The actual gap width is therefore

$$
\boxed{
\Delta\omega_{\mathrm{gap}}
=\sqrt{\frac{2C}{M_l}}
-\sqrt{\frac{2C}{M_h}}
}.
$$

In ordinary frequency units,

$$
\boxed{
\Delta f_{\mathrm{gap}}
=\frac{1}{2\pi}
\left(
\sqrt{\frac{2C}{M_l}}
-\sqrt{\frac{2C}{M_h}}
\right)
}.
$$

This is a gap in the spectrum of the ideal mechanical chain, not an LO--TO splitting. Longitudinal--transverse optical splitting in polar three-dimensional crystals requires the long-range electric field of an infrared-active mode.

## Dependence on the mass ratio

Define the mass ratio

$$
r=\frac{M_h}{M_l}\geq1.
$$

The ratio of the optical lower edge to the acoustic upper edge is

$$
\boxed{
\frac{\omega_{\mathrm{op,min}}}
{\omega_{\mathrm{ac,max}}}=\sqrt r
}.
$$

The gap relative to its optical edge is

$$
\frac{\Delta\omega_{\mathrm{gap}}}
{\omega_{\mathrm{op,min}}}
=1-\frac{1}{\sqrt r},
$$

and relative to its acoustic edge it is

$$
\frac{\Delta\omega_{\mathrm{gap}}}
{\omega_{\mathrm{ac,max}}}
=\sqrt r-1.
$$

For $r=1$, the branches meet at the zone boundary and the gap vanishes. When $M_1=M_2=M$, the supposed two-atom cell is not primitive: the true translation period is $a/2$. The two formulas reduce within $\lvert k\rvert\leq\pi/a$ to

$$
\omega_{\mathrm{ac}}^2
=\frac{4C}{M}\sin^2\frac{ka}{4},
$$

and

$$
\omega_{\mathrm{op}}^2
=\frac{4C}{M}\cos^2\frac{ka}{4}.
$$

They are the lower and upper folded portions of the single monatomic dispersion for lattice spacing $a/2$. Their contact at $k=\pi/a$ is consequently a zone-folding contact rather than an avoided crossing.

As $r$ increases at fixed $M_l$ and $C$, the acoustic boundary frequency falls as $r^{-1/2}$, while the optical boundary frequency remains fixed. The frequency gap widens. At the same time the sound speed

$$
v_s=a\sqrt{\frac{C}{2M_l(1+r)}}
$$

decreases because the mass per cell increases.

## Worked numerical example

Take a mechanical chain with

$$
M_1=23.00u,
\qquad
M_2=35.45u,
\qquad
C=100\,\mathrm{N\,m^{-1}},
\qquad
a=0.564\,\mathrm{nm}.
$$

Here $M_2$ is the heavier mass. The zone-centre optical frequency is

$$
f_{\mathrm{op}}(0)
=\frac{1}{2\pi}
\sqrt{2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right)}
=14.79\,\mathrm{THz}.
$$

At the zone boundary,

$$
f_{\mathrm{ac,max}}
=\frac{1}{2\pi}\sqrt{\frac{2C}{M_2}}
=9.277\,\mathrm{THz},
$$

and

$$
f_{\mathrm{op,min}}
=\frac{1}{2\pi}\sqrt{\frac{2C}{M_1}}
=11.52\,\mathrm{THz}.
$$

The forbidden frequency interval is therefore

$$
9.277\,\mathrm{THz}<f<11.52\,\mathrm{THz},
$$

with width

$$
\Delta f_{\mathrm{gap}}=2.240\,\mathrm{THz}.
$$

The mass ratio is

$$
r=\frac{35.45}{23.00}=1.541,
$$

and the edge ratio $\sqrt r=1.241$ agrees with $11.52/9.277$.

The long-wavelength acoustic speed is

$$
v_s=a\sqrt{\frac{C}{2(M_1+M_2)}}
=1.280\times10^4\,\mathrm{m\,s^{-1}}.
$$

At $k=\pi/(2a)$, direct substitution into the two branches gives

$$
f_{\mathrm{ac}}=5.504\,\mathrm{THz},
\qquad
f_{\mathrm{op}}=13.73\,\mathrm{THz}.
$$

These two frequencies at the same wave vector correspond to distinct eigenvectors and are independent normal modes.

## Preparation questions

1. Derive the coupled equations of motion for a diatomic chain with alternating masses and identical nearest-neighbour force constants.
2. Obtain the secular equation and the acoustic and optical dispersion relations.
3. Derive the eigenvector ratio $V/U$. Describe the two zone-centre modes in terms of their relative displacement and centre-of-mass motion.
4. Expand both dispersion branches for $\lvert ka\rvert\ll1$ and obtain the acoustic sound speed.
5. Determine the frequencies and displacement patterns at $k=\pi/a$ when $M_1>M_2$.
6. Derive the acoustic--optical frequency gap and express its relative width in terms of $r=M_h/M_l$.
7. Explain why the gap vanishes for equal masses and interpret the resulting branches as a folded monatomic dispersion.
8. Construct the mass-weighted dynamical matrix and prove the orthogonality relation for its two eigenvectors.
9. For $M_1=40u$, $M_2=80u$, and $C=50\,\mathrm{N\,m^{-1}}$, calculate the acoustic maximum, optical minimum, and gap width in terahertz.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/diatomic-chain-acoustic-optical-modes.mac' | relative_url }})

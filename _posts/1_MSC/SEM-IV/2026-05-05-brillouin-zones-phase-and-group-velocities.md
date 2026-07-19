---
title: "Brillouin Zones, Phase Velocity, and Group Velocity"
summary: "Reciprocal-space equivalence, one-dimensional Brillouin zones, wave packets, and phase and group velocities in a dispersive lattice."
date: 2026-05-05 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - brillouin-zones
  - phase-velocity
  - group-velocity
permalink: /msc/sem-iv/brillouin-zones-phase-and-group-velocities/
hidden: true
---

A crystalline lattice is invariant under discrete translations rather than under arbitrary translations. This changes the classification of waves: wave vectors that differ by a reciprocal-lattice vector produce the same phase at every equivalent lattice site. Brillouin zones organize these equivalent wave vectors, while phase and group velocities describe two different aspects of a dispersive lattice wave.

Throughout this discussion, a one-dimensional monatomic lattice has direct-lattice points $R_n=na$ and reciprocal-lattice points $G_m=2\pi m/a$.

## Reciprocal lattice of a one-dimensional crystal

A reciprocal-lattice vector $G$ is defined by

$$
e^{iG R_n}=1
$$

for every direct-lattice vector $R_n=na$. Therefore

$$
Gna=2\pi\times\text{integer}
$$

for every integer $n$, which gives

$$
\boxed{G_m=\frac{2\pi m}{a}},
\qquad m\in\mathbb Z.
$$

For a lattice wave sampled at the atomic positions,

$$
u_n=u\,e^{ikna},
$$

the replacement $k\mapsto k+G_m$ gives

$$
e^{i(k+G_m)na}=e^{ikna}e^{i2\pi mn}=e^{ikna}.
$$

Hence $k$ and $k+G_m$ label the same lattice displacement pattern. The physically inequivalent wave vector is the reduced wave vector

$$
q=k-G_m
$$

chosen to lie in one primitive interval of reciprocal space.

This equivalence concerns a field evaluated on the lattice sites. A continuous interpolation between the sites may look different for $k$ and $k+G_m$, but the atoms have identical displacements and therefore the harmonic crystal has no way to distinguish the two labels.

## Brillouin-zone construction in one dimension

The first Brillouin zone is the Wigner--Seitz cell of the reciprocal lattice. The reciprocal point nearest to the origin on the right is $2\pi/a$, and the perpendicular bisector between it and the origin is $k=\pi/a$. The corresponding boundary on the left is $k=-\pi/a$. Thus


$$
\boxed{-\frac{\pi}{a}\leq k\leq\frac{\pi}{a}}.
$$

The second Brillouin zone consists of the two intervals

$$
\frac{\pi}{a}\leq k\leq\frac{2\pi}{a},
\qquad
-\frac{2\pi}{a}\leq k\leq-\frac{\pi}{a},
$$

and the third consists of the intervals from $2\pi/a$ to $3\pi/a$ and from $-3\pi/a$ to $-2\pi/a$. Later zones extend in the same way. Zone boundaries are planes of Bragg reflection. In one dimension, elastic reflection from reciprocal vector $G$ relates $k$ and $k-G$, and the degeneracy condition

$$
k^2=(k-G)^2
$$

gives

$$
k=\frac{G}{2}.
$$

For the shortest nonzero reciprocal vector $G=2\pi/a$, this is $k=\pi/a$, the first-zone boundary. The corresponding displacement has

$$
u_n\propto e^{i\pi n}=(-1)^n,
$$

so adjacent atoms move in opposite directions.

For a chain of $N$ cells and length $L=Na$, Born--von Karman periodicity gives

$$
k_s=\frac{2\pi s}{L}.
$$

The separation of adjacent allowed points is $2\pi/L$, while the first-zone length is $2\pi/a$. It therefore contains $N$ inequivalent allowed wave vectors, one per primitive cell and one per longitudinal branch; because the two endpoints differ by a reciprocal-lattice vector, only one of them is counted.

## Extended-, reduced-, and repeated-zone descriptions

For a nearest-neighbour monatomic chain,

$$
\omega(k)=2\sqrt{\frac{C}{M}}
\left\lvert\sin\frac{ka}{2}\right\rvert.
$$

There are three equivalent ways of displaying this information.

In the **extended-zone scheme**, $k$ is not immediately reduced when a zone boundary is crossed; the dispersion is continued into successive zones. For the single branch of a monatomic nearest-neighbour chain, this continuation follows the periodic function $\omega(k)$. The interval $\pi/a<k<2\pi/a$ contains no new monatomic normal modes: every point in it is equivalent to a point $-\pi/a<q<0$ after subtracting $2\pi/a$.

In the **reduced-zone scheme**, every wave vector is translated into the first Brillouin zone. If several physical branches exist, as in a crystal with more than one atom per primitive cell, they appear as several functions of the same reduced wave vector.

In the **repeated-zone scheme**, the complete set of reduced-zone branches is explicitly copied into every reciprocal cell. This representation makes reciprocal-space periodicity and scattering by reciprocal vectors especially transparent. For a one-branch monatomic model its curve coincides with the periodic extended plot, although the bookkeeping becomes distinct when several branches are present.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/brillouin-zone-folding.png' | relative_url }}" alt="One-dimensional reciprocal lattice, first Brillouin zone, and folding of wavevectors into the reduced-zone scheme">
  <figcaption>Bragg planes bisect the reciprocal-lattice vectors and bound the first Brillouin zone. Wavevectors differing by a reciprocal vector represent the same lattice phase pattern, so an extended-zone wavevector can be folded to its reduced representative.</figcaption>
</figure>

## Phase velocity

For a monochromatic component

$$
u(x,t)=A\cos(kx-\omega t+\phi),
$$

a surface of constant phase satisfies

$$
kx-\omega t+\phi=\text{constant}.
$$

Differentiation gives the phase velocity

$$
\boxed{v_p=\frac{\omega}{k}}
$$

for signed $k$. Its magnitude is $\omega/\lvert k\rvert$. The phase velocity is the speed of a crest of a single sinusoidal component; it is not, in general, the speed at which a localized disturbance or energy propagates.

For the positive-$k$ part of the first Brillouin zone,

$$
\omega(k)=2\sqrt{\frac{C}{M}}\sin\frac{ka}{2},
$$

so

$$
\boxed{
v_p(k)=a\sqrt{\frac{C}{M}}
\frac{\sin(ka/2)}{ka/2}
}.
$$

As $k\to0$, $\sin(ka/2)/(ka/2)\to1$ and $v_p\to v_s=a\sqrt{C/M}$. For finite $k$, $v_p$ decreases below $v_s$ because of lattice dispersion.

At an atomic site, the phase advance between adjacent atoms is $ka$ only modulo $2\pi$. Consequently, the quantity $\omega/k$ depends on which equivalent extended-zone label is chosen. A unique phase velocity should therefore be quoted using the reduced wave vector and an explicitly stated branch.

## Group velocity from a wave packet

A localized disturbance is constructed from a narrow interval of wave vectors near $k_0$:

$$
u(x,t)=\int A(k)e^{i[kx-\omega(k)t]}\,dk.
$$

Write $k=k_0+\delta k$ and expand the frequency:

$$
\omega(k)=\omega_0
+\left(\frac{d\omega}{dk}\right)_{k_0}\delta k
+\frac12\left(\frac{d^2\omega}{dk^2}\right)_{k_0}(\delta k)^2+\cdots.
$$

If the spectral width is sufficiently narrow that the quadratic and higher terms can initially be neglected, then

$$
u(x,t)=e^{i(k_0x-\omega_0t)}
\int A(k_0+\delta k)
e^{i\delta k(x-v_gt)}\,d(\delta k),
$$

where

$$
\boxed{v_g=\left.\frac{d\omega}{dk}\right\rvert_{k_0}}.
$$

The rapidly oscillating carrier travels with the phase velocity, while its envelope travels with the group velocity. In a lossless harmonic lattice, the time-averaged energy velocity of a normal-mode packet equals $v_g$. The second derivative $d^2\omega/dk^2$ controls the spreading of a packet with finite spectral width.

For $0<k<\pi/a$ in the monatomic chain,

$$
\boxed{
v_g(k)=a\sqrt{\frac{C}{M}}\cos\frac{ka}{2}
}.
$$

Thus

$$
\frac{v_p}{v_s}=\frac{\sin(ka/2)}{ka/2},
\qquad
\frac{v_g}{v_s}=\cos\frac{ka}{2}.
$$

Both velocities approach $v_s$ as $k\to0$. At the first-zone boundary,

$$
v_g\left(\frac{\pi}{a}\right)=0,
$$

whereas

$$
v_p\left(\frac{\pi}{a}\right)
=\frac{2a}{\pi}\sqrt{\frac{C}{M}}.
$$

The zone-boundary pattern is a standing wave under Bragg reflection. Its phase pattern remains well defined, but a narrow packet centred exactly at the extremum of $\omega(k)$ has zero first-order energy-transport velocity.

## Negative group velocity and reciprocal-space reduction

Use the positive-frequency extended-zone expression in the interval $0<k<2\pi/a$:

$$
\omega(k)=2\sqrt{\frac{C}{M}}\sin\frac{ka}{2}.
$$

Its derivative is

$$
v_g=a\sqrt{\frac{C}{M}}\cos\frac{ka}{2}.
$$

For

$$
\frac{\pi}{a}<k<\frac{2\pi}{a},
$$

$\cos(ka/2)<0$, and therefore $v_g<0$ although $k>0$ and $\omega/k>0$. The envelope and energy move toward decreasing $x$, while the carrier phase associated with the chosen extended-zone label advances toward increasing $x$.

This result contains no contradiction. Set

$$
q=k-\frac{2\pi}{a}.
$$

Then $-\pi/a<q<0$, and at every lattice site

$$
e^{ikna}=e^{iqna}.
$$

The same state has a negative reduced wave vector and a negative group velocity. The positive extended-zone $k$ was a redundant label. What remains physically meaningful is the slope of the dispersion on the chosen branch and the corresponding direction of energy flow.

Negative group velocity can also occur for a genuine branch whose frequency decreases with increasing reduced $k$, such as the optical branch of a simple diatomic chain. It means $d\omega/dk<0$; it does not imply negative frequency or negative energy.

## Phase and group velocities in the long-wavelength expansion

Let $x=ka/2$. The series

$$
\frac{\sin x}{x}=1-\frac{x^2}{6}+O(x^4),
\qquad
\cos x=1-\frac{x^2}{2}+O(x^4)
$$

give

$$
v_p=v_s\left[1-\frac{(ka)^2}{24}+O((ka)^4)\right],
$$

and

$$
v_g=v_s\left[1-\frac{(ka)^2}{8}+O((ka)^4)\right].
$$

The group velocity departs from the sound speed three times as rapidly as the phase velocity at the leading dispersive order.

## Worked numerical example

Take

$$
M=39.1u,
\qquad
a=0.520\,\mathrm{nm},
\qquad
C=18.0\,\mathrm{N\,m^{-1}}.
$$

The sound speed is

$$
v_s=a\sqrt{\frac{C}{M}}=8.658\times10^3\,\mathrm{m\,s^{-1}}.
$$

For a reduced wave vector

$$
k_1=0.60\frac{\pi}{a},
$$

the frequency is

$$
\omega_1
=2\sqrt{\frac{C}{M}}\sin(0.30\pi)
=2.694\times10^{13}\,\mathrm{s^{-1}},
$$

or

$$
f_1=4.288\,\mathrm{THz}.
$$

The two velocities are

$$
v_p=\frac{\omega_1}{k_1}
=7.432\times10^3\,\mathrm{m\,s^{-1}},
$$

and

$$
v_g=v_s\cos(0.30\pi)
=5.089\times10^3\,\mathrm{m\,s^{-1}}.
$$

Now choose the equivalent extended-zone label

$$
k_2=1.40\frac{\pi}{a}.
$$

It has the same frequency because $\sin(0.70\pi)=\sin(0.30\pi)$, but

$$
v_g(k_2)=v_s\cos(0.70\pi)
=-5.089\times10^3\,\mathrm{m\,s^{-1}}.
$$

Subtracting $2\pi/a$ gives $q=-0.60\pi/a$, the reduced-zone representation of the same state. The apparent positive extended-zone phase velocity $\omega_1/k_2$ has no unique lattice interpretation because the phase advance per cell is defined modulo $2\pi$.

## Preparation questions

1. Construct the reciprocal lattice and the first three Brillouin zones of a one-dimensional lattice of period $a$.
2. Prove that $k$ and $k+G$ give the same atomic displacement pattern when $G$ is a reciprocal-lattice vector.
3. Use Born--von Karman boundary conditions to determine the spacing and number of allowed $k$ points in the first Brillouin zone.
4. Define phase and group velocity and derive both quantities for the nearest-neighbour monatomic chain.
5. Starting from a narrow Fourier superposition, show that the wave-packet envelope moves at $d\omega/dk$.
6. Why is the group velocity zero at the first-zone boundary? Relate the result to Bragg reflection.
7. Demonstrate, using an extended-zone wave vector, how a lattice wave can have positive phase velocity and negative group velocity.
8. Derive the leading $k^2$ corrections to $v_p$ and $v_g$ in the long-wavelength limit.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/brillouin-zones-phase-and-group-velocities.mac' | relative_url }})

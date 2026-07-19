---
title: "Harmonic Lattice Dynamics and the Monatomic Linear Chain"
summary: "Harmonic approximation, force constants, normal modes, and the dispersion of a one-dimensional monatomic crystal."
date: 2026-05-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - lattice-dynamics
  - monatomic-chain
  - phonons
permalink: /msc/sem-iv/harmonic-lattice-and-monatomic-chain/
hidden: true
---

Lattice dynamics describes the collective motion of atoms about their equilibrium positions. The equilibrium structure is fixed by the minimum of the many-ion potential energy, whereas the frequencies and displacement patterns of small oscillations are determined by the curvature of that potential at the minimum. The harmonic approximation converts the coupled motion into a normal-mode problem and is the starting point for the theory of phonons, heat capacity, thermal transport, and the optical response of crystals.

## Expansion of the crystal potential energy

Let the equilibrium position of atom $\kappa$ in cell $l$ be $\mathbf R_l+\boldsymbol\tau_\kappa$, and let $u_{l\kappa,\alpha}$ denote its displacement in Cartesian direction $\alpha$. The potential energy is expanded about equilibrium as

$$
\begin{aligned}
U
={}&U_0
+\sum_{l\kappa\alpha}
\left(\frac{\partial U}{\partial u_{l\kappa,\alpha}}\right)_0
u_{l\kappa,\alpha}\\
&+\frac12\sum_{l\kappa\alpha}
\sum_{l'\kappa'\beta}
\Phi_{\alpha\beta}(l\kappa,l'\kappa')
u_{l\kappa,\alpha}u_{l'\kappa',\beta}+O(u^3),
\end{aligned}
$$

where

$$
\Phi_{\alpha\beta}(l\kappa,l'\kappa')
=\left(
\frac{\partial^2U}
{\partial u_{l\kappa,\alpha}\partial u_{l'\kappa',\beta}}
\right)_0
$$

is a harmonic force constant. At mechanical equilibrium the linear term vanishes. Neglecting cubic and higher terms gives

$$
U_{\mathrm h}=U_0+\frac12\sum_{l\kappa\alpha,l'\kappa'\beta}
\Phi_{\alpha\beta}(l\kappa,l'\kappa')
u_{l\kappa,\alpha}u_{l'\kappa',\beta}.
$$

The symmetry of second derivatives implies

$$
\Phi_{\alpha\beta}(l\kappa,l'\kappa')
=\Phi_{\beta\alpha}(l'\kappa',l\kappa).
$$

A rigid translation of the entire crystal cannot change its potential energy. Consequently, the force constants obey the acoustic sum rule

$$
\boxed{
\sum_{l'\kappa'}
\Phi_{\alpha\beta}(l\kappa,l'\kappa')=0
}
$$

for every $l,\kappa,\alpha,$ and $\beta$. This relation is the microscopic origin of zero-frequency translational modes at wave vector $\mathbf k=0$.

Newton's equation in the harmonic approximation is

$$
M_\kappa\ddot u_{l\kappa,\alpha}
=-\sum_{l'\kappa'\beta}
\Phi_{\alpha\beta}(l\kappa,l'\kappa')u_{l'\kappa',\beta}.
$$

Because the coefficients are independent of time and periodic in the cell labels, the equations admit collective wave solutions. Their allowed frequencies are obtained by diagonalizing the dynamical matrix.

## Monatomic chain with nearest-neighbour forces

Consider $N$ identical atoms of mass $M$ at equilibrium positions

$$
x_n^{(0)}=na,
$$

where $a$ is the lattice constant. Let $u_n(t)$ be the longitudinal displacement of the $n$th atom. If adjacent atoms are connected by identical harmonic bonds of force constant $C$, the extension of the bond between atoms $n$ and $n+1$ is $u_{n+1}-u_n$. The kinetic and potential energies are

$$
T=\frac{M}{2}\sum_n\dot u_n^2,
\qquad
U=\frac{C}{2}\sum_n(u_{n+1}-u_n)^2.
$$

The force on atom $n$ contains contributions from its right and left bonds:

$$
\begin{aligned}
F_n
&=C(u_{n+1}-u_n)-C(u_n-u_{n-1})\\
&=C(u_{n+1}+u_{n-1}-2u_n).
\end{aligned}
$$

Thus the equation of motion is

$$
\boxed{
M\ddot u_n=C(u_{n+1}+u_{n-1}-2u_n)
}.
$$

This is a discrete wave equation. It differs from the continuum wave equation because the acceleration at one site is determined by finite differences rather than by a spatial derivative.

## Normal-mode dispersion relation

Take a travelling-wave displacement

$$
u_n(t)=u(k)e^{i(kna-\omega t)}.
$$

Then

$$
u_{n+1}=u_ne^{ika},
\qquad
u_{n-1}=u_ne^{-ika},
\qquad
\ddot u_n=-\omega^2u_n.
$$

Substitution into the equation of motion gives

$$
-M\omega^2
=C(e^{ika}+e^{-ika}-2)
=2C(\cos ka-1).
$$

Using $1-\cos ka=2\sin^2(ka/2)$,

$$
\boxed{
\omega^2(k)=\frac{4C}{M}\sin^2\left(\frac{ka}{2}\right)
},
$$

or, for a non-negative frequency,

$$
\boxed{
\omega(k)=2\sqrt{\frac{C}{M}}
\left\lvert\sin\frac{ka}{2}\right\rvert
}.
$$

The frequency is periodic in reciprocal space:

$$
\omega\left(k+\frac{2\pi m}{a}\right)=\omega(k),
\qquad m\in\mathbb Z.
$$

Displacements labelled by $k$ and $k+2\pi m/a$ are identical at every lattice point because

$$
e^{i(k+2\pi m/a)na}=e^{ikna}e^{i2\pi mn}=e^{ikna}.
$$

It is therefore sufficient to retain one primitive reciprocal-space interval, usually the first Brillouin zone $-\pi/a\leq k\leq\pi/a$.

At $k=0$, all atoms have the same displacement. No bond is stretched, so $\omega(0)=0$. At the zone boundary $k=\pi/a$, adjacent atoms move with opposite phase, the bond extensions are maximal for a given displacement amplitude, and

$$
\boxed{\omega_{\max}=2\sqrt{\frac{C}{M}}}.
$$

The bounded frequency is a direct consequence of discreteness. A continuum elastic medium has no corresponding upper frequency within its range of validity.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/monatomic-chain-dispersion.png' | relative_url }}" alt="Nearest-neighbour monatomic chain and its periodic phonon dispersion, with normalized phase and group velocities shown geometrically">
  <figcaption>A monatomic nearest-neighbour chain has one acoustic branch. The first-zone dispersion is linear near the origin and flattens at the boundary. At the marked wavevector, the secant and tangent slopes give the normalized phase and group velocities, respectively.</figcaption>
</figure>

## Long-wavelength elastic limit

When $\lvert ka\rvert\ll1$,

$$
\sin\frac{ka}{2}\simeq\frac{ka}{2},
$$

and hence

$$
\omega(k)\simeq a\sqrt{\frac{C}{M}}\lvert k\rvert.
$$

The sound speed is therefore

$$
\boxed{v_s=a\sqrt{\frac{C}{M}}}.
$$

The same result follows directly from continuum elasticity. Let $u_n(t)$ be the value of a smooth field $u(x,t)$ at $x=na$. Taylor expansion gives

$$
u_{n+1}+u_{n-1}-2u_n
=a^2\frac{\partial^2u}{\partial x^2}+O(a^4).
$$

The discrete equation becomes

$$
\frac{M}{a}\frac{\partial^2u}{\partial t^2}
=Ca\frac{\partial^2u}{\partial x^2}.
$$

Thus the mass per unit length is $\rho_{1\mathrm D}=M/a$, the one-dimensional elastic modulus is $Y_{1\mathrm D}=Ca$, and

$$
v_s=\sqrt{\frac{Y_{1\mathrm D}}{\rho_{1\mathrm D}}}
=a\sqrt{\frac{C}{M}}.
$$

The continuum approximation reproduces the exact lattice result only near the centre of the Brillouin zone.

## Allowed wave vectors in a finite periodic chain

Impose Born--von Karman periodic boundary conditions,

$$
u_{n+N}=u_n.
$$

For a normal mode this requires

$$
e^{ikNa}=1,
$$

so the allowed wave vectors are

$$
\boxed{k_s=\frac{2\pi s}{Na}},
$$

where $s$ takes any $N$ consecutive integer values. There are exactly $N$ inequivalent $k$ values in the first Brillouin zone, equal to the number of mechanical degrees of freedom for longitudinal motion of $N$ atoms. Modes with $k$ and $-k$ are distinct complex travelling waves of the same frequency; real standing waves are formed from their linear combinations.

Introduce the discrete Fourier transform

$$
u_n=\frac{1}{\sqrt N}\sum_k Q_k e^{ikna},
\qquad
Q_k=\frac{1}{\sqrt N}\sum_n u_n e^{-ikna}.
$$

For real displacements, $Q_{-k}=Q_k^*$. Orthogonality,

$$
\sum_{n=0}^{N-1}e^{i(k-k')na}=N\delta_{kk'},
$$

reduces the harmonic energy to independent modes:

$$
H=\frac12\sum_k
\left[M\lvert\dot Q_k\rvert^2
+M\omega^2(k)\lvert Q_k\rvert^2\right].
$$

Each normal coordinate is therefore an independent harmonic oscillator. Quantization replaces the energy of each mode by $\hbar\omega(k)(n_k+1/2)$; the associated quantum is a phonon.

## Interactions beyond nearest neighbours

Suppose atoms separated by $sa$ interact through an effective longitudinal force constant $C_s$, with $C_s=C_{-s}$ and $C_s\geq0$ for simple stabilizing central springs. The equation of motion can be written

$$
M\ddot u_n=\sum_{s=1}^{\infty}C_s
(u_{n+s}+u_{n-s}-2u_n).
$$

The dispersion becomes

$$
\boxed{
\omega^2(k)=\frac{2}{M}\sum_{s=1}^{\infty}
C_s[1-\cos(ska)]
}.
$$

Its long-wavelength form is

$$
\omega^2(k)\simeq
\frac{a^2k^2}{M}\sum_{s=1}^{\infty}s^2C_s,
$$

so

$$
v_s=a\sqrt{\frac{1}{M}\sum_{s=1}^{\infty}s^2C_s}.
$$

Longer-range forces alter the shape of the dispersion and the sound speed, but translational invariance still enforces $\omega(0)=0$. More general effective force constants need not all be positive individually; mechanical stability requires that the full dynamical matrix have non-negative eigenvalues for every $k$.

## Worked numerical example

Consider a monatomic chain with

$$
M=39.1\,u,
\qquad
a=0.520\,\mathrm{nm},
\qquad
C=18.0\,\mathrm{N\,m^{-1}},
$$

where $u=1.66053906660\times10^{-27}\,\mathrm{kg}$. The atomic mass is

$$
M=6.493\times10^{-26}\,\mathrm{kg},
$$

and the characteristic angular frequency is

$$
\sqrt{\frac{C}{M}}=1.665\times10^{13}\,\mathrm{s^{-1}}.
$$

The zone-boundary frequency is

$$
\omega_{\max}=3.330\times10^{13}\,\mathrm{s^{-1}},
\qquad
f_{\max}=\frac{\omega_{\max}}{2\pi}=5.300\,\mathrm{THz}.
$$

The long-wavelength sound speed is

$$
v_s=a\sqrt{\frac{C}{M}}
=8.658\times10^3\,\mathrm{m\,s^{-1}}.
$$

At $k=\pi/(2a)$,

$$
\omega=2\sqrt{\frac{C}{M}}\sin\frac{\pi}{4}
=2.355\times10^{13}\,\mathrm{s^{-1}},
$$

and therefore

$$
f=3.748\,\mathrm{THz}.
$$

The exact value is below the linear-elastic estimate $v_s k/(2\pi)=4.163\,\mathrm{THz}$ because the lattice dispersion bends away from its tangent as the zone boundary is approached.

## Preparation questions

1. Starting from a Taylor expansion of the crystal potential, define the harmonic force constants and derive the acoustic sum rule.
2. Derive the equation of motion and dispersion relation for a monatomic chain with nearest-neighbour force constant $C$.
3. Explain why $k$ and $k+2\pi m/a$ describe the same displacement pattern on a monatomic lattice.
4. Obtain the long-wavelength sound speed from both the exact dispersion and the continuum elastic equation.
5. Apply Born--von Karman boundary conditions to a chain of $N$ atoms and count its independent longitudinal normal modes.
6. Show that the Fourier normal coordinates diagonalize the harmonic energy of the monatomic chain.
7. Derive the dispersion relation when first- and second-neighbour force constants $C_1$ and $C_2$ are both present.
8. For $M=50u$, $a=0.40\,\mathrm{nm}$, and $C=25\,\mathrm{N\,m^{-1}}$, calculate the sound speed and maximum phonon frequency.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/harmonic-lattice-and-monatomic-chain.mac' | relative_url }})

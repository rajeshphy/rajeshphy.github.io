---
title: "Quantization of Elastic Waves and Phonons"
summary: "Normal coordinates, canonical quantization of lattice vibrations, creation and annihilation operators, zero-point motion, and phonon crystal momentum."
date: 2026-05-11 09:00:00 +0530
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
  - elastic-waves
  - phonons
  - canonical-quantization
  - normal-modes
  - zero-point-motion
permalink: /msc/sem-iv/quantization-elastic-waves-and-phonons/
hidden: true
---

In the harmonic approximation, a crystal is a system of coupled oscillators. Its normal modes are independent at the classical level, and each normal mode becomes a quantum harmonic oscillator after canonical quantization. A **phonon** is one quantum of such a normal mode. The mode label contains both a wavevector and a branch index; it does not identify a particular atom carrying the excitation.

The derivation below first diagonalizes the harmonic-crystal Hamiltonian and then quantizes its normal coordinates. The continuum elastic-wave result follows as the long-wavelength limit of the same construction.

## Harmonic Hamiltonian of a crystal

Let $l$ label primitive cells and let $\kappa=1,\ldots,r$ label the atoms in a cell. The equilibrium position of atom $(l,\kappa)$ is

$$
\mathbf R_l+\boldsymbol\tau_\kappa,
$$

and its small displacement is $\mathbf u_{l\kappa}$. Expanding the potential energy about a stable equilibrium gives

$$
H=\frac12\sum_{l\kappa}M_\kappa
\dot{\mathbf u}_{l\kappa}^{\,2}
+\frac12\sum_{l\kappa\alpha}
\sum_{l'\kappa'\beta}
u_{l\kappa\alpha}
\Phi_{l\kappa\alpha,l'\kappa'\beta}
u_{l'\kappa'\beta}.
$$

Here

$$
\Phi_{l\kappa\alpha,l'\kappa'\beta}
=\left.
\frac{\partial^2 U}
{\partial u_{l\kappa\alpha}\partial u_{l'\kappa'\beta}}
\right\rvert_{\mathrm{eq}}
$$

is the force-constant matrix. There is no term linear in displacement because every atom is in mechanical equilibrium. The harmonic approximation neglects cubic and higher terms; consequently, normal modes neither decay nor exchange energy in this approximation.

Born--von Karman boundary conditions on $N$ primitive cells make the allowed wavevectors discrete. Translational invariance permits normal-mode solutions of the form

$$
u_{l\kappa\alpha}(t)
=\frac{1}{\sqrt{M_\kappa}}
e_{\kappa\alpha}(\mathbf q,s)
e^{i(\mathbf q\cdot\mathbf R_l-\omega t)}.
$$

The polarization vectors obey the dynamical-matrix eigenvalue equation

$$
\sum_{\kappa'\beta}
D_{\kappa\alpha,\kappa'\beta}(\mathbf q)
e_{\kappa'\beta}(\mathbf q,s)
=\omega_{\mathbf q s}^{\,2}
e_{\kappa\alpha}(\mathbf q,s),
$$

where

$$
D_{\kappa\alpha,\kappa'\beta}(\mathbf q)
=\frac{1}{\sqrt{M_\kappa M_{\kappa'}}}
\sum_{l'}
\Phi_{0\kappa\alpha,l'\kappa'\beta}
e^{i\mathbf q\cdot(\mathbf R_{l'}-\mathbf R_0)}.
$$

For each $\mathbf q$, this is a Hermitian $3r\times3r$ matrix. Its eigenvectors may be chosen to satisfy

$$
\sum_{\kappa\alpha}
e_{\kappa\alpha}^{*}(\mathbf q,s)
e_{\kappa\alpha}(\mathbf q,s')=\delta_{ss'}.
$$

For real force constants one can choose

$$
\mathbf e_\kappa(-\mathbf q,s)
=\mathbf e_\kappa^{*}(\mathbf q,s),
\qquad
\omega_{-\mathbf q s}=\omega_{\mathbf q s}.
$$

## Normal coordinates

Expand an arbitrary real displacement field in the complete set of normal modes:

$$
u_{l\kappa\alpha}
=\frac{1}{\sqrt{NM_\kappa}}
\sum_{\mathbf q s}
e_{\kappa\alpha}(\mathbf q,s)
Q_{\mathbf q s}
e^{i\mathbf q\cdot\mathbf R_l}.
$$

Reality requires

$$
Q_{-\mathbf q s}=Q_{\mathbf q s}^{*}.
$$

Define the normal-coordinate velocity

$$
\Pi_{\mathbf q s}=\dot Q_{\mathbf q s}.
$$

Classically, $\Pi_{-\mathbf q s}=\Pi_{\mathbf q s}^{*}$. After quantization the corresponding operator reality conditions are

$$
Q_{\mathbf q s}^{\dagger}=Q_{-\mathbf q s},
\qquad
\Pi_{\mathbf q s}^{\dagger}=\Pi_{-\mathbf q s}.
$$

Using polarization orthonormality and the dynamical-matrix eigenvalue equation, the Hamiltonian becomes

$$
\boxed{
H=\frac12\sum_{\mathbf q s}
\left[
\Pi_{\mathbf q s}\Pi_{-\mathbf q s}
+\omega_{\mathbf q s}^{\,2}
Q_{\mathbf q s}Q_{-\mathbf q s}
\right].
}
$$

Thus the coupled atomic displacements have been transformed into independent normal oscillators. Because the sum contains both $\mathbf q$ and $-\mathbf q$, the momentum canonically conjugate to $Q_{\mathbf q s}$ is

$$
P_{\mathbf q s}
=\frac{\partial L}{\partial\dot Q_{\mathbf q s}}
=\Pi_{-\mathbf q s}.
$$

Therefore the canonical commutator may be written

$$
[Q_{\mathbf q s},\Pi_{\mathbf q's'}]
=i\hbar\,\delta_{\mathbf q,-\mathbf q'}\delta_{ss'}.
$$

## Creation and annihilation operators

Define bosonic operators by

$$
Q_{\mathbf q s}
=\sqrt{\frac{\hbar}{2\omega_{\mathbf q s}}}
\left(a_{\mathbf q s}+a_{-\mathbf q s}^{\dagger}\right),
$$

$$
\Pi_{\mathbf q s}
=-i\sqrt{\frac{\hbar\omega_{\mathbf q s}}{2}}
\left(a_{\mathbf q s}-a_{-\mathbf q s}^{\dagger}\right).
$$

The canonical commutator is equivalent to

$$
[a_{\mathbf q s},a_{\mathbf q's'}^{\dagger}]
=\delta_{\mathbf q\mathbf q'}\delta_{ss'},
\qquad
[a_{\mathbf q s},a_{\mathbf q's'}]=0.
$$

Substitution into the normal-coordinate Hamiltonian gives

$$
\boxed{
H=\sum_{\mathbf q s}
\hbar\omega_{\mathbf q s}
\left(a_{\mathbf q s}^{\dagger}a_{\mathbf q s}+\frac12\right).
}
$$

The number operator

$$
\hat n_{\mathbf q s}
=a_{\mathbf q s}^{\dagger}a_{\mathbf q s}
$$

has eigenvalues $0,1,2,\ldots$. Acting on a number state,

$$
a_{\mathbf q s}^{\dagger}
\lvert n_{\mathbf q s}\rangle
=\sqrt{n_{\mathbf q s}+1}
\lvert n_{\mathbf q s}+1\rangle,
$$

$$
a_{\mathbf q s}
\lvert n_{\mathbf q s}\rangle
=\sqrt{n_{\mathbf q s}}
\lvert n_{\mathbf q s}-1\rangle.
$$

Creation or destruction of one phonon changes the vibrational energy by $\hbar\omega_{\mathbf q s}$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/phonon-quantization.png' | relative_url }}" alt="Classical normal mode mapped to a quantum harmonic oscillator ladder with phonon creation and annihilation transitions">
  <figcaption>Each classical normal coordinate becomes an independent quantum harmonic oscillator. Adjacent number states differ by one phonon and by the energy $\hbar\omega_{\mathbf q s}$; the ground state retains the zero-point energy $\hbar\omega_{\mathbf q s}/2$.</figcaption>
</figure>

## Quantized displacement and momentum fields

In terms of phonon operators, the atomic displacement is

$$
\boxed{
u_{l\kappa\alpha}
=\frac{1}{\sqrt{NM_\kappa}}
\sum_{\mathbf q s}
\sqrt{\frac{\hbar}{2\omega_{\mathbf q s}}}
\left[
e_{\kappa\alpha}(\mathbf q,s)
a_{\mathbf q s}e^{i\mathbf q\cdot\mathbf R_l}
+e_{\kappa\alpha}^{*}(\mathbf q,s)
a_{\mathbf q s}^{\dagger}e^{-i\mathbf q\cdot\mathbf R_l}
\right].
}
$$

The conjugate atomic momentum is

$$
\boxed{
p_{l\kappa\alpha}
=-i\sqrt{\frac{M_\kappa}{N}}
\sum_{\mathbf q s}
\sqrt{\frac{\hbar\omega_{\mathbf q s}}{2}}
\left[
e_{\kappa\alpha}(\mathbf q,s)
a_{\mathbf q s}e^{i\mathbf q\cdot\mathbf R_l}
-e_{\kappa\alpha}^{*}(\mathbf q,s)
a_{\mathbf q s}^{\dagger}e^{-i\mathbf q\cdot\mathbf R_l}
\right].
}
$$

These expressions satisfy

$$
[u_{l\kappa\alpha},p_{l'\kappa'\beta}]
=i\hbar\,
\delta_{ll'}\delta_{\kappa\kappa'}\delta_{\alpha\beta}.
$$

They are also the starting point for calculating neutron, x-ray, electron--phonon and infrared matrix elements. Every one-phonon amplitude contains the characteristic factor

$$
\sqrt{\frac{\hbar}{2M_\kappa\omega_{\mathbf q s}}}.
$$

Low-frequency modes therefore have larger displacement amplitudes than high-frequency modes of the same participating mass.

## Quantization of a one-dimensional elastic wave

Consider a uniform elastic medium of length $L$, mass per unit length $\mu$, tension or one-dimensional elastic coefficient $T$, and transverse displacement $u(x,t)$. Its Hamiltonian is

$$
H=\frac12\int_0^L
\left[
\frac{\pi^2(x)}{\mu}
+T\left(\frac{\partial u}{\partial x}\right)^2
\right]dx,
$$

where $\pi(x)=\mu\dot u(x)$ and

$$
[u(x),\pi(x')]=i\hbar\delta(x-x').
$$

Periodic boundary conditions give $q=2\pi n/L$ and the elastic-wave dispersion

$$
\omega_q=c\lvert q\rvert,
\qquad
c=\sqrt{\frac{T}{\mu}}.
$$

The quantized field is

$$
u(x)=\sum_q
\sqrt{\frac{\hbar}{2\mu L\omega_q}}
\left(a_qe^{iqx}+a_q^{\dagger}e^{-iqx}\right),
$$

$$
\pi(x)=-i\sum_q
\sqrt{\frac{\hbar\mu\omega_q}{2L}}
\left(a_qe^{iqx}-a_q^{\dagger}e^{-iqx}\right),
$$

and

$$
H=\sum_q\hbar\omega_q
\left(a_q^{\dagger}a_q+\frac12\right).
$$

The $q=0$ mode is a rigid translation with $\omega=0$, not an internal harmonic vibration. It is removed by fixing the centre of mass or treated separately as free translational motion. A real crystal replaces the continuum spectrum by lattice branches and supplies a natural Brillouin-zone cutoff.

## Zero-point motion and thermal occupation

Even the phonon vacuum has the energy

$$
\boxed{E_0=\frac12\sum_{\mathbf q s}
\hbar\omega_{\mathbf q s}.}
$$

This zero-point energy cannot be removed when comparing structures whose phonon spectra differ. It contributes, for example, to isotope-dependent equilibrium volumes and structural stability. The mean-square displacement of an atom contains a zero-point term because

$$
\langle n\lvert
(a+a^{\dagger})^2
\rvert n\rangle=2n+1.
$$

For a mode $(\mathbf q,s)$, its contribution is proportional to

$$
\frac{\hbar}{2NM_\kappa\omega_{\mathbf q s}}
\left(2n_{\mathbf q s}+1\right)
\lvert\mathbf e_\kappa(\mathbf q,s)\rvert^2.
$$

At temperature $T$, a harmonic phonon mode has the Bose--Einstein mean occupation

$$
\boxed{
\bar n_{\mathbf q s}
=\frac{1}{
\exp(\hbar\omega_{\mathbf q s}/k_{\mathrm B}T)-1}.
}
$$

Its mean energy is

$$
\langle E_{\mathbf q s}\rangle
=\hbar\omega_{\mathbf q s}
\left(\bar n_{\mathbf q s}+\frac12\right).
$$

## Phonon wavevector, momentum and crystal momentum

The wavevector $\mathbf q$ is defined modulo a reciprocal-lattice vector $\mathbf G$ because

$$
e^{i(\mathbf q+\mathbf G)\cdot\mathbf R_l}
=e^{i\mathbf q\cdot\mathbf R_l}.
$$

It is therefore sufficient to label phonons by $\mathbf q$ in the first Brillouin zone. A one-phonon state transforms under a primitive translation $\mathbf R$ with phase $e^{i\mathbf q\cdot\mathbf R}$, so it carries **crystal momentum** $\hbar\mathbf q$, defined modulo $\hbar\mathbf G$.

Crystal momentum is not generally the mechanical centre-of-mass momentum of the ions. The latter is

$$
\mathbf P_{\mathrm{mech}}
=\sum_{l\kappa}\mathbf p_{l\kappa},
$$

for which the lattice sum selects the uniform $\mathbf q=0$ translation. A finite-$\mathbf q$ normal mode can have zero net mechanical momentum while possessing non-zero crystal momentum. In a phonon interaction, discrete translational symmetry gives

$$
\sum_{\mathrm{initial}}\mathbf q
-\sum_{\mathrm{final}}\mathbf q
=\mathbf G.
$$

Processes with $\mathbf G=0$ are called normal processes. Those with $\mathbf G\ne0$ are Umklapp processes; the lattice absorbs the difference in crystal momentum.

## Worked example: quantized mode of a monatomic chain

For a nearest-neighbour monatomic chain,

$$
\omega(q)=2\sqrt{\frac{C}{M}}
\left\lvert\sin\frac{qa}{2}\right\rvert.
$$

Take

$$
C=60.0\,\mathrm{N\,m^{-1}},\qquad
M=28.0u,\qquad
a=0.500\,\mathrm{nm},
$$

and $q=\pi/(2a)$. Then

$$
\omega=\sqrt{\frac{2C}{M}}
=5.080\times10^{13}\,\mathrm{rad\,s^{-1}},
$$

$$
f=\frac{\omega}{2\pi}=8.086\,\mathrm{THz},
\qquad
\hbar\omega=33.44\,\mathrm{meV}.
$$

At $300\,\mathrm K$,

$$
\bar n
=\frac{1}{\exp(33.44/25.85)-1}
=0.378.
$$

For a periodic chain of $N=1000$ identical atoms, the displacement coefficient multiplying $a_q+a_{-q}^{\dagger}$ at any one atom is

$$
u_{1\mathrm{ph}}
=\sqrt{\frac{\hbar}{2NM\omega}}
=1.49\times10^{-13}\,\mathrm m.
$$

The corresponding mean-square contribution in a number state is $(2n+1)u_{1\mathrm{ph}}^2$. The factor $1/\sqrt N$ expresses the fact that a normalized extended mode is shared by all $N$ atoms.

## Preparation questions

1. Starting from the harmonic-crystal Hamiltonian, introduce mass-weighted normal coordinates and show that the Hamiltonian is a sum of independent oscillators.
2. Derive the quantized displacement and conjugate-momentum operators of a crystal and verify their equal-time commutator.
3. Explain the physical meanings of $a_{\mathbf q s}^{\dagger}$, $a_{\mathbf q s}$ and $a_{\mathbf q s}^{\dagger}a_{\mathbf q s}$.
4. Quantize a one-dimensional elastic wave with periodic boundary conditions and discuss the treatment of its zero-frequency mode.
5. Derive the zero-point and thermal contributions of one mode to the mean-square atomic displacement.
6. Distinguish phonon crystal momentum from the true mechanical momentum of the ions. Explain normal and Umklapp processes.
7. A monatomic chain has $C=40\,\mathrm{N\,m^{-1}}$, $M=32u$ and $a=0.40\,\mathrm{nm}$. Find the phonon energy and Bose occupation at $T=200\,\mathrm K$ for $q=\pi/(2a)$.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/quantization-elastic-waves-and-phonons.mac' | relative_url }})

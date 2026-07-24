---
title: "Electronic Spectra of Diatomic Molecules"
summary: "Born–Oppenheimer separation and the electronic, vibrational, and rotational structure of a diatomic band spectrum."
date: 2026-05-08 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - electronic-spectra
  - born-oppenheimer-approximation
  - diatomic-molecule
permalink: /msc/sem-ii/molecular-spectra/electronic-spectra-of-diatomic-molecules/
hidden: true
---

An electronic transition in a molecule differs from one in an isolated atom
because the nuclei can vibrate and the whole molecule can rotate. Every
electronic state therefore carries a set of vibrational levels, and every
vibrational level carries a set of rotational levels.

## Separation of electronic and nuclear motion

After removal of the centre-of-mass motion, write the molecular Hamiltonian as

$$
\widehat H
=-\frac{\hbar^2}{2\mu_N}\nabla_R^2
 +\widehat H_{\mathrm e}(\mathbf r;R).
$$

Here $R$ is the internuclear separation, $\mu_N$ is the nuclear reduced mass,
and $\mathbf r$ denotes all electronic coordinates. The electronic
Hamiltonian contains the electronic kinetic energy and all Coulomb
interactions, including the nuclear repulsion at the fixed value of $R$.

Because nuclei are much heavier than electrons, their motion is slower.
First hold $R$ fixed and solve

$$
\widehat H_{\mathrm e}(\mathbf r;R)
\phi_n(\mathbf r;R)
=U_n(R)\phi_n(\mathbf r;R).
$$

The eigenvalue $U_n(R)$ is a potential-energy curve for the nuclear motion in
electronic state $n$. Expand the complete wavefunction as

$$
\Psi(\mathbf r,R)=\sum_n\phi_n(\mathbf r;R)\chi_n(R).
$$

When the nuclear kinetic operator acts on one product,

$$
\begin{aligned}
\nabla_R^2(\phi_n\chi_n)
={}&\phi_n\nabla_R^2\chi_n
 +2(\nabla_R\phi_n)\cdot(\nabla_R\chi_n)\\
&+\chi_n\nabla_R^2\phi_n.
\end{aligned}
$$

The last two terms couple different electronic states. The
Born–Oppenheimer approximation neglects these derivative couplings. Projection
onto $\phi_n$ then gives the nuclear equation

$$
\left[
-\frac{\hbar^2}{2\mu_N}\nabla_R^2+U_n(R)
\right]\chi_n=E\chi_n.
$$

Thus each electronic state supplies its own equilibrium bond length, force
constant, vibrational frequency, and rotational constant.

## Hierarchy of molecular term values

Near the minimum $R_e$ of one electronic potential,

$$
U_n(R)
\simeq U_n(R_e)+\frac12k_n(R-R_e)^2.
$$

Quantizing the nuclear vibration and rotation gives, to leading order,

$$
\boxed{
\frac{E(n,v,J)}{hc}
=T_e(n)+G_n(v)+F_{n,v}(J),
}
$$

where

$$
T_e(n)=\frac{U_n(R_e)-U_0(R_{e,0})}{hc},
$$

$$
G_n(v)\simeq
\widetilde\nu_{e,n}\left(v+\frac12\right),
\qquad
\widetilde\nu_{e,n}
=\frac{1}{2\pi c}\sqrt{\frac{k_n}{\mu_N}},
$$

and

$$
F_{n,v}(J)\simeq B_{n,v}J(J+1),
\qquad
B_{n,v}
=\frac{h}{8\pi^2c\mu_N}
\left\langle R^{-2}\right\rangle_{n,v}.
$$

Since electronic binding energies are much larger than vibrational spacings,
which in turn are much larger than rotational spacings, the typical order is

$$
\Delta E_{\mathrm{electronic}}
\gg\Delta E_{\mathrm{vibrational}}
\gg\Delta E_{\mathrm{rotational}}.
$$

Electronic spectra accordingly occur mainly in the visible and ultraviolet,
but each electronic transition appears as a system of vibrational bands, and
each sufficiently resolved band consists of rotational lines.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/electronic-vibrational-rotational-hierarchy.png' | relative_url }}" alt="Nested molecular energy structure showing two widely separated electronic states, vibrational levels within each state, and closely spaced rotational levels within one vibrational level" loading="lazy">
  <figcaption>Molecular energy is resolved on three scales: electronic states contain vibrational manifolds, and each vibrational state contains rotational levels.</figcaption>
</figure>

## Wavenumber of an individual line

Let double primes label the lower state and single primes label the upper
state. The photon condition is

$$
hc\widetilde\nu
=E(n',v',J')-E(n'',v'',J'').
$$

Dividing by $hc$ and using the term-value decomposition gives

$$
\begin{aligned}
\widetilde\nu
={}&
\left[T_e'-T_e''\right]
 +\left[G'(v')-G''(v'')\right]\\
&+\left[F'_{v'}(J')-F''_{v''}(J'')\right].
\end{aligned}
$$

For fixed $v'$ and $v''$, the first two brackets are constant. They define
the vibrational band origin,

$$
\widetilde\nu_{v'v''}
=T_e'-T_e''+G'(v')-G''(v'').
$$

The last bracket produces the rotational fine structure around that origin.
Changing $v'$ and $v''$ produces the different bands of the electronic band
system.

## Transition moment and electronic selection rules

For electric-dipole absorption, the transition amplitude is proportional to

$$
\mathbf M_{fi}
=\int
\Psi_f^*(\mathbf r,R)\,
\widehat{\boldsymbol\mu}\,
\Psi_i(\mathbf r,R)\,
d\mathbf r\,dR.
$$

Using one Born–Oppenheimer product for each state,

$$
\mathbf M_{fi}
=\int
\chi_{v'}^*(R)\,
\mathbf M_{\mathrm e}(R)\,
\chi_{v''}(R)\,dR,
$$

where

$$
\mathbf M_{\mathrm e}(R)
=\int
\phi_{n'}^*(\mathbf r;R)
\widehat{\boldsymbol\mu}
\phi_{n''}(\mathbf r;R)\,d\mathbf r.
$$

Therefore an energy difference alone is insufficient: the transition moment
must also be nonzero.

For a linear molecule, let $\Lambda$ be the magnitude of the projection of
electronic orbital angular momentum on the internuclear axis. The values
$\Lambda=0,1,2,\ldots$ are denoted by
$\Sigma,\Pi,\Delta,\ldots$. With total electronic spin $S$, a basic electronic
term symbol is

$$
{}^{2S+1}\Lambda.
$$

Only a homonuclear diatomic molecule possesses inversion symmetry about its
centre, so only its states carry the additional labels $g$ and $u$. Reflection
in a plane containing the internuclear axis supplies the $+$ or $-$ label only
for a $\Sigma$ state.

The dipole operator is a vector, so its body-fixed components carry
projections $0,\pm1$. Conservation of the projected angular momentum gives

$$
\Delta\Lambda=0,\pm1.
$$

The electric dipole does not act on spin, so in the absence of strong
spin–orbit mixing,

$$
\Delta S=0.
$$

For a homonuclear molecule, the dipole is odd under inversion. The integrand
has even overall parity only when the two electronic states have opposite
inversion parity:

$$
g\leftrightarrow u
\quad\text{is allowed},\qquad
g\leftrightarrow g,\;u\leftrightarrow u
\quad\text{are forbidden}.
$$

These symmetry rules identify which electronic band systems can carry
electric-dipole intensity. Conservation of total angular momentum in an
electric-dipole transition further gives

$$
\Delta J=0,\pm1,
\qquad
J=0\not\leftrightarrow J'=0.
$$

The $\Delta J=-1,0,+1$ sets form the $P$, $Q$, and $R$ branches. For a
$\Sigma\leftrightarrow\Sigma$ transition the $Q$-branch matrix element
vanishes, leaving only $P$ and $R$. The vibrational overlap determines how
the electronic intensity is distributed among the bands that satisfy these
electronic and rotational conditions. Spin–orbit or vibronic mixing can lend
weak intensity to a nominally forbidden band, but such intensity reflects
state mixing rather than violation of the electric-dipole rules.

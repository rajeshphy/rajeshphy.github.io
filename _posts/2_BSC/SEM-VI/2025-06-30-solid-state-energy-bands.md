---
title: "Energy Bands and the Kronig-Penney Model"
summary: "Bloch bands, Brillouin-zone gaps, the Kronig-Penney dispersion, effective mass, and metal, semiconductor, and insulator band structures."
date: 2025-06-30 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, band-theory, kronig-penney-model, effective-mass]
permalink: /bsc/sem-vi/solid-state/energy-bands-kronig-penney/
hidden: true
---

Isolated atoms have discrete levels. In a crystal, overlap between equivalent atomic states and the periodic ionic potential broaden those levels into allowed bands separated by forbidden energy gaps.

## Bloch form and bands

For a one-dimensional lattice of period $a$,

$$
V(x+a)=V(x).
$$

The translation operator by $a$ commutes with the Hamiltonian, so an energy eigenfunction may also be an eigenfunction of translation:

$$
\psi_k(x+a)=e^{ika}\psi_k(x).
$$

Writing $u_k(x)=e^{-ikx}\psi_k(x)$ gives

$$
\boxed{\psi_k(x)=e^{ikx}u_k(x)},
\qquad u_k(x+a)=u_k(x).
$$

This is Bloch's form. Since $e^{i(k+G)na}=e^{ikna}$ for $G=2\pi m/a$, wave vectors differing by $G$ are equivalent; one may take $-\pi/a<k\leq\pi/a$.

For each $k$, the periodic boundary-value problem has a sequence $E_n(k)$. As $k$ varies continuously through the first Brillouin zone, each sequence forms an energy band.

## Origin of a gap at a Brillouin-zone boundary

For a weak periodic potential

$$
V(x)=\sum_GU_Ge^{iGx},
$$

the Fourier component $U_G$ couples free-electron waves $\lvert k\rangle$ and $\lvert k-G\rangle$. At the zone boundary $k=G/2$ their free energies are equal:

$$
E_k^0=\frac{\hbar^2k^2}{2m}
=\frac{\hbar^2(k-G)^2}{2m}=E_{k-G}^0.
$$

Within this degenerate pair the Schrödinger equation becomes

$$
\begin{pmatrix}
E_0-E&U_G\\
U_G^*&E_0-E
\end{pmatrix}
\begin{pmatrix}c_k\\c_{k-G}\end{pmatrix}=0.
$$

The determinant condition is

$$
(E_0-E)^2-\lvert U_G\rvert^2=0,
$$

so

$$
E_{\pm}=E_0\pm\lvert U_G\rvert,
\qquad
\boxed{E_g=E_+-E_-=2\lvert U_G\rvert}.
$$

The two combinations form standing waves with different probability densities relative to the ions and therefore different potential energies. Bragg reflection at $k=G/2$ is the reciprocal-space origin of the band gap.

## Delta-barrier Kronig-Penney model

An exactly soluble periodic model uses barriers of strength $H$:

$$
V(x)=H\sum_{n=-\infty}^{\infty}\delta(x-na),
$$

where $H$ has unit $\mathrm{J\,m}$. Between barriers, $V=0$ and

$$
\frac{d^2\psi}{dx^2}+q^2\psi=0,
\qquad
q=\frac{\sqrt{2mE}}{\hbar}.
$$

Across a barrier at $x=0$, $\psi$ is continuous. Integrating the Schrödinger equation from $-\epsilon$ to $+\epsilon$ gives

$$
-\frac{\hbar^2}{2m}\left[\psi^{\prime}(0^+)-\psi^{\prime}(0^-)\right]
+H\psi(0)=0,
$$

so

$$
\boxed{\psi^{\prime}(0^+)-\psi^{\prime}(0^-)=\frac{2mH}{\hbar^2}\psi(0)}.
$$

Represent the state by the column $(\psi,\psi^{\prime})^T$. Free propagation through distance $a$ gives

$$
P_a=
\begin{pmatrix}
\cos qa&\sin qa/q\\
-q\sin qa&\cos qa
\end{pmatrix},
$$

while crossing a delta barrier gives

$$
D=
\begin{pmatrix}
1&0\\
2mH/\hbar^2&1
\end{pmatrix}.
$$

One cell has transfer matrix $M=DP_a$. Bloch's condition requires its eigenvalues to be $e^{\pm ika}$. Since $\det M=1$, their sum equals the trace:

$$
2\cos ka=\operatorname{Tr}M
=2\cos qa+\frac{2mH}{\hbar^2q}\sin qa.
$$

Defining the dimensionless barrier strength

$$
P=\frac{mHa}{\hbar^2}
$$

gives the Kronig-Penney relation

$$
\boxed{\cos ka=\cos qa+P\frac{\sin qa}{qa}}.
$$

The left side must lie between $-1$ and $1$. Therefore an energy $E=\hbar^2q^2/(2m)$ is allowed only when

$$
\boxed{\left\lvert\cos qa+P\frac{\sin qa}{qa}\right\rvert\leq1}.
$$

Intervals violating this condition are forbidden gaps. Increasing $P$ strengthens the periodic potential, narrows the allowed bands, and widens the gaps.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-2/kronig-penney-bands.png' | relative_url }}" alt="Kronig-Penney allowed-band condition and direct and indirect semiconductor band edges">
  </div>
  <figcaption>The Kronig-Penney curve is generated from $F(x)=\cos x+P\sin x/x$ with $P=2$; energies are allowed only where $\lvert F\rvert\leq1$. The band-edge parabolas distinguish direct gaps, whose extrema share one $k$, from indirect gaps, whose extrema occur at different $k$.</figcaption>
</figure>

## Effective mass

The group velocity of a wave packet in band $n$ is

$$
v_n(k)=\frac1\hbar\frac{dE_n}{dk}.
$$

Under a slowly varying external force $F$, crystal momentum obeys

$$
\hbar\frac{dk}{dt}=F.
$$

Therefore

$$
\frac{dv}{dt}
=\frac1\hbar\frac{d^2E}{dk^2}\frac{dk}{dt}
=\frac{F}{\hbar^2}\frac{d^2E}{dk^2}.
$$

Writing this as $F=m^*dv/dt$ defines

$$
\boxed{\frac1{m^*}=\frac1{\hbar^2}\frac{d^2E}{dk^2}}.
$$

Near an extremum $k_0$,

$$
E(k)\simeq E(k_0)+\frac{\hbar^2(k-k_0)^2}{2m^*}.
$$

A band minimum has positive curvature and $m^*>0$; a band maximum has negative electron effective mass. Missing electrons near a nearly full band are more conveniently described as positively charged holes with positive effective mass.

## Metals, semiconductors, and insulators

At zero temperature, electrons fill states up to the Fermi level.

- A **metal** has a partially filled band or overlapping bands. Empty states arbitrarily close in energy allow an electric field to change occupations and produce current.
- A **semiconductor** has a filled valence band and empty conduction band separated by a relatively small gap. Thermal or optical excitation produces mobile conduction electrons and valence-band holes.
- An **insulator** has the same filled-band arrangement but a sufficiently large gap that ordinary thermal excitation produces negligible carriers.

The classification depends on band filling and the gap, not simply on whether isolated atoms possess bound electrons.

## Direct and indirect band gaps

Let $E_c(k)$ be the conduction band and $E_v(k)$ the valence band. If the conduction minimum and valence maximum occur at the same wave vector $k_0$, then

$$
\boxed{E_g^{\rm dir}=E_c(k_0)-E_v(k_0)}.
$$

A photon carries negligible crystal momentum compared with a Brillouin-zone dimension, so a direct optical transition is approximately vertical in an $E$-$k$ diagram: $\Delta k\simeq0$.

For an indirect semiconductor, the extrema occur at $k_c\ne k_v$:

$$
\boxed{E_g^{\rm ind}=E_c(k_c)-E_v(k_v)}.
$$

Momentum conservation then requires a phonon as well as a photon:

$$
\mathbf k_c=\mathbf k_v\pm\mathbf q_{\rm ph}+\mathbf G.
$$

The reciprocal vector $\mathbf G$ allows crystal momentum to be conserved modulo the reciprocal lattice. This additional phonon requirement makes near-edge optical absorption and emission weaker than in a direct-gap material.

## Solved Problems

### 1. Gap opened by a weak periodic potential

At a zone boundary the unperturbed energy is $E_0=5.00\ \mathrm{eV}$ and the relevant Fourier coefficient is $U_G=0.30\ \mathrm{eV}$. Find the split levels and the gap.

In the basis $\{\lvert k\rangle,\lvert k-G\rangle\}$, choose the phase of one basis state so that $U_G$ is real and positive. The secular equation is

$$
(E_0-E)^2-U_G^2=0.
$$

Therefore

$$
E-E_0=\pm U_G,
$$

and the two levels are

$$
E_-=5.00-0.30=4.70\ \mathrm{eV},
\qquad
E_+=5.00+0.30=5.30\ \mathrm{eV}.
$$

Hence

$$
\boxed{E_g=E_+-E_-=0.60\ \mathrm{eV}}.
$$

The mean energy remains $E_0$, so the coupling only splits the degeneracy. The dimensional check is immediate: $U_G$ and $E_g$ are both energies. In the limiting case $U_G\to0$, the gap closes and both levels return to $E_0$.

### 2. Effective mass from a measured band curvature

Near a conduction-band minimum, the energy rises by $0.200\ \mathrm{eV}$ when $\lvert k-k_0\rvert=0.100\ \mathrm{\mathring A^{-1}}$. Treat the band as parabolic and find $m^*/m_e$.

For positive curvature,

$$
\Delta E=\frac{\hbar^2(\Delta k)^2}{2m^*},
$$

so

$$
\frac{m^*}{m_e}
=\frac{\hbar^2(\Delta k)^2}{2m_e\Delta E}.
$$

Using $\hbar^2/(2m_e)=3.80998\ \mathrm{eV\,\mathring A^2}$,

$$
\frac{m^*}{m_e}
=\frac{(3.80998\ \mathrm{eV\,\mathring A^2})
(0.100\ \mathrm{\mathring A^{-1}})^2}
{0.200\ \mathrm{eV}}
=0.1905.
$$

Thus

$$
\boxed{m^*=0.1905\,m_e}.
$$

The sign is positive because the point is a minimum. The factors $\mathrm{eV}$ and $\mathrm{\mathring A}$ cancel, leaving the required dimensionless ratio. A flatter band would have smaller curvature and hence a larger $m^*$.

### 3. Allowed and forbidden Kronig--Penney energies

For barrier strength $P=2$, decide whether $qa=\pi/2$ and $qa=\pi$ are allowed.

Write

$$
F(x)=\cos x+P\frac{\sin x}{x},
\qquad x=qa.
$$

An energy is allowed only if $\lvert F(x)\rvert\leq1$. At $x=\pi/2$,

$$
F\left(\frac{\pi}{2}\right)
=0+2\frac{1}{\pi/2}
=\frac{4}{\pi}=1.2732.
$$

Because $4/\pi>1$, this energy is forbidden. At $x=\pi$,

$$
F(\pi)=\cos\pi+2\frac{\sin\pi}{\pi}=-1,
$$

so it is allowed exactly at a band edge. Thus

$$
\boxed{qa=\pi/2\ \text{is forbidden},\qquad qa=\pi\ \text{is a band edge}.}
$$

$F$ is dimensionless, as is the allowed-band bound. If $P\to0$, $F(x)\to\cos x$ and every positive free-particle energy is recovered.

## Descriptive Questions

1. Starting from translation symmetry, derive Bloch's form and explain why wave vectors differing by a reciprocal-lattice vector represent equivalent crystal states.
2. Use degenerate perturbation theory to explain how Bragg reflection opens an energy gap at a Brillouin-zone boundary.
3. Derive the effective-mass equation and explain why a nearly full valence band is described in terms of positively charged holes.
4. Distinguish direct and indirect band gaps using conservation of energy and crystal momentum in an optical transition.

## Numerical Problems

1. A Bloch state has $k=\pi/(3a)$. Find the phase factor acquired under translation through three lattice periods.

   **Answer:** $e^{i3ka}=e^{i\pi}=-1$.

2. A one-dimensional band is $E(k)=E_0-2t\cos(ka)$, with $t=0.80\ \mathrm{eV}$ and $a=0.40\ \mathrm{nm}$. Find the group velocity at $k=\pi/(2a)$.

   **Answer:** $v=(2ta/\hbar)\sin(ka)=9.72\times10^5\ \mathrm{m\,s^{-1}}$.

3. Neglecting exciton binding, find the longest wavelength that can excite a direct-gap semiconductor with $E_g=1.55\ \mathrm{eV}$.

   **Answer:** $\lambda_{\max}=hc/E_g=8.00\times10^{-7}\ \mathrm{m}=800\ \mathrm{nm}$.

4. A crystal contains $2.0\times10^{22}$ primitive cells. How many electrons fill one nondegenerate band when spin is included?

   **Answer:** $2N=4.0\times10^{22}$ electrons.

5. An electron wave packet experiences a constant force of magnitude $2.0\times10^{-15}\ \mathrm{N}$ for $0.50\ \mathrm{ps}$. Find the magnitude of its change in crystal wave vector.

   **Answer:** $\lvert\Delta k\rvert=F\Delta t/\hbar=9.48\times10^6\ \mathrm{m^{-1}}$.

6. The first-zone boundary of a one-dimensional lattice with $a=0.32\ \mathrm{nm}$ is $k=\pi/a$. Find the corresponding de Broglie wavelength.

   **Answer:** $\lambda=2\pi/k=2a=0.64\ \mathrm{nm}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-2/energy-bands.mac' | relative_url }})

## References

1. [Particle in a one-dimensional lattice (Kronig--Penney model), Wikipedia](https://en.wikipedia.org/wiki/Kronig%E2%80%93Penney_model)
2. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Chapters 7--8: “Energy Bands” and “Semiconductor Crystals.”
3. [MIT OpenCourseWare, 5.62 Physical Chemistry II, Lecture Summary 26: “Band Theory of Solids”](https://ocw.mit.edu/courses/5-62-physical-chemistry-ii-spring-2008/9af460995b9b6b9b3ad998e7cf2dfc25_26_562ln08.pdf)
4. [R. de L. Kronig and W. G. Penney, “Quantum Mechanics of Electrons in Crystal Lattices,” *Proceedings of the Royal Society A* 130 (1931)](https://doi.org/10.1098/rspa.1931.0019)

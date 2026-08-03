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
-\frac{\hbar^2}{2m}\left[\psi'(0^+)-\psi'(0^-)\right]
+H\psi(0)=0,
$$

so

$$
\boxed{\psi'(0^+)-\psi'(0^-)=\frac{2mH}{\hbar^2}\psi(0)}.
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

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-2/energy-bands.mac' | relative_url }})

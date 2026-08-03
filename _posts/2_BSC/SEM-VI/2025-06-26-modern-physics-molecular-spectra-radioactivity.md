---
title: "Molecular Spectra and Radioactivity"
summary: "Molecular bonding and spectra, principal spectroscopies and luminescence, followed by nuclear decay, fission, and fusion."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, modern-physics, molecular-spectra, radioactivity]
permalink: /bsc/sem-vi/modern-physics/molecular-spectra-radioactivity/
hidden: true
---

## Molecular bonds and hydrogen systems

When nuclei approach, electronic kinetic energy, electron-nucleus attraction, electron-electron repulsion, and nucleus-nucleus repulsion compete. In the Born-Oppenheimer approximation the slow nuclei are fixed while the electronic energy $E_e(R)$ is found; nuclear motion then occurs in

$$U(R)=E_e(R)+\frac{Z_1Z_2e^2}{4\pi\epsilon_0R}.$$

A minimum at $R=R_e$ defines a stable bond. For $\mathrm H_2^+$, let $S=\langle\phi_A\rvert\phi_B\rangle$ be the overlap of the two $1s$ orbitals. Then

$$
1=N_\pm^2\langle\phi_A\pm\phi_B\rvert\phi_A\pm\phi_B\rangle
=2N_\pm^2(1\pm S),
$$

and the normalized molecular orbitals and their expectation energies are

$$
\psi_\pm=\frac{\phi_A\pm\phi_B}{\sqrt{2(1\pm S)}},\qquad
E_\pm=\frac{H_{AA}\pm H_{AB}}{1\pm S}.
$$

The symmetric state concentrates charge between the nuclei and is bonding; the antisymmetric state has an internuclear node and is antibonding. In $\mathrm H_2$, two opposite-spin electrons occupy the bonding orbital. Their spatial state is symmetric and their spin singlet is antisymmetric, so the complete electronic state is antisymmetric as Pauli exclusion requires.

## Molecular rotation

A diatomic or linear molecule has one principal axis with negligible moment of inertia. A spherical top has $I_A=I_B=I_C$; a symmetric top has two equal moments and the third different; an asymmetric top has all three unequal. For a rigid diatomic rotor,

$$I=\mu R_e^2,\qquad H_{rot}=\frac{L^2}{2I},$$

so

$$E_J=\frac{\hbar^2}{2I}J(J+1)=hcB_eJ(J+1),\qquad B_e=\frac{h}{8\pi^2Ic}.$$

Electric-dipole rotational absorption has $\Delta J=+1$, giving

$$\tilde\nu_{J\to J+1}=\frac{E_{J+1}-E_J}{hc}=2B_e(J+1).$$

Thus adjacent lines are separated by $2B_e$. A permanent dipole is required.

## Molecular vibration and rovibration

Near equilibrium,

$$U(R)\simeq U(R_e)+\frac12k(R-R_e)^2,$$

and with $q=R-R_e$,

$$E_v=\hbar\omega\left(v+\frac12\right),\qquad \omega=\sqrt{\frac{k}{\mu}}.$$

The harmonic selection rule is $\Delta v=\pm1$ when the dipole moment changes with $q$. Combining rotation and vibration gives

$$E(v,J)=\hbar\omega\left(v+\frac12\right)+hcB_vJ(J+1).$$

For absorption $v=0\to1$, $\Delta J=-1$ forms the P branch and $\Delta J=+1$ the R branch. A diatomic electric-dipole spectrum has no $\Delta J=0$ Q branch.

Electronic excitation changes the molecular potential curve. Because electrons move much faster than nuclei, the nuclei are effectively fixed during a transition. It is therefore vertical on an energy-versus-$R$ diagram, and its vibrational intensity is proportional to the Franck-Condon factor

$$q_{v'v''}=\left\lvert\int\chi_{v'}^*(R)\chi_{v''}(R)\,dR\right\rvert^2.$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/modern/unit-2/molecular-nuclear-spectra.png' | relative_url }}" alt="Rigid rotor levels, harmonic vibrational levels, and radioactive decay curve">
  </div>
  <figcaption>Equation-generated scales: $E_J/hc=BJ(J+1)$, $E_v/\hbar\omega=v+1/2$, and $N/N_0=e^{-\lambda t}$ with the half-life marked at $\lambda t=\ln2$.</figcaption>
</figure>

## Spectroscopic methods and luminescence

UV-visible spectroscopy mainly probes electronic transitions; infrared spectroscopy probes vibrations for which $$(d\mu_{el}/dq)_0\ne0$$; Raman spectroscopy probes vibrations for which $$(d\alpha_{el}/dq)_0\ne0$$. In Raman scattering,

$$h\nu_s=h\nu_0-\Delta E\quad\text{(Stokes)},\qquad
h\nu_{as}=h\nu_0+\Delta E\quad\text{(anti-Stokes)}.$$

NMR places nuclear magnetic moments in a field: $\Delta E=\hbar\gamma B_0$ and resonance occurs at $\omega_0=\gamma B_0$. ESR applies the same principle to electron spins: $h\nu=g\mu_BB_0$. Absorption creates an excited state; radiative relaxation produces luminescence. Prompt spin-allowed emission is fluorescence, while delayed emission involving a metastable state is phosphorescence.

## Radioactive decay law

If each undecayed nucleus has decay probability $\lambda\,dt$ in time $dt$,

$$dN=-\lambda N\,dt.$$

Integrating from $(0,N_0)$ to $(t,N)$,

$$\int_{N_0}^{N}\frac{dN'}{N'}=-\lambda\int_0^t dt',$$

so

$$N=N_0e^{-\lambda t},\qquad A=-\frac{dN}{dt}=\lambda N.$$

The half-life and mean life are

$$T_{1/2}=\frac{\ln2}{\lambda},\qquad
\tau=\frac{\int_0^\infty t\lambda e^{-\lambda t}dt}{\int_0^\infty\lambda e^{-\lambda t}dt}=\frac1\lambda.$$

Nuclear stability reflects competition between short-range attraction, which saturates, and long-range proton-proton Coulomb repulsion. The binding energy

$$B=\left[Zm_p+(A-Z)m_n-M(A,Z)\right]c^2$$

measures the nuclear mass deficit. Alpha decay emits a $^4\mathrm{He}$ nucleus and changes $(A,Z)\to(A-4,Z-2)$. Quantum tunnelling through the Coulomb barrier explains why alpha energies and lifetimes are strongly correlated.

In beta-minus decay,

$$n\to p+e^-+\bar\nu_e,$$

and in beta-plus decay,

$$p\to n+e^++\nu_e.$$

Using nuclear masses, energy conservation gives

$$
Q_{\beta^-}=[M(A,Z)-M(A,Z+1)-m_e]c^2,
$$

$$
Q_{\beta^+}=[M(A,Z)-M(A,Z-1)-m_e]c^2.
$$

For neutral-atom masses the same bookkeeping gives $Q_{\beta^-}=[M_a(A,Z)-M_a(A,Z+1)]c^2$ and $Q_{\beta^+}=[M_a(A,Z)-M_a(A,Z-1)-2m_e]c^2$. The electron or positron has a continuous spectrum because $Q$ is shared with the (anti)neutrino and nuclear recoil. Pauli's neutrino restores event-by-event energy, momentum, and angular-momentum conservation.

Gamma decay changes the nuclear internal state without changing $A$ or $Z$. Pair creation requires

$$E_\gamma\ge2m_ec^2=1.022\ \mathrm{MeV}.$$

A free photon cannot create a pair in vacuum while conserving both energy and momentum; a nearby nucleus absorbs recoil momentum.

## Fission, fusion, and stellar energy

The mass defect converts to released energy through

$$Q=(m_{initial}-m_{final})c^2.$$

Heavy-nucleus fission produces two intermediate-mass fragments, prompt neutrons, and energy because the products have greater binding energy per nucleon. Neutrons can induce further fissions, giving a chain reaction.

Fusion of light nuclei also moves products toward greater binding energy per nucleon. Thermal nuclei must penetrate a Coulomb barrier, so appreciable thermonuclear rates require high temperature and quantum tunnelling. Stellar evolution is powered by fusion: hydrogen burning dominates main-sequence stars, and heavier fuels become accessible as sufficiently massive stellar cores contract and heat.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/modern/unit-2/molecular-radioactivity.mac' | relative_url }})

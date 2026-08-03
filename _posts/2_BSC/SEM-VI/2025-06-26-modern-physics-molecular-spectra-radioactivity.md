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

Isotopic substitution changes the reduced mass without substantially changing the electronic potential. Consequently

$$B_e\propto\frac1I\propto\frac1\mu,
\qquad \omega\propto\mu^{-1/2}.$$

Rotational isotope shifts are therefore larger, in fractional terms, than vibrational isotope shifts. This dependence permits bond lengths and isotopic masses to be inferred from spectra.

Electronic excitation changes the molecular potential curve. Because electrons move much faster than nuclei, the nuclei are effectively fixed during a transition. It is therefore vertical on an energy-versus-$R$ diagram, and its vibrational intensity is proportional to the Franck-Condon factor

$$q_{v^{\prime}v^{\prime\prime}}=\left\lvert\int\chi_{v^{\prime}}^*(R)\chi_{v^{\prime\prime}}(R)\,dR\right\rvert^2.$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/modern/unit-2/molecular-nuclear-spectra.png' | relative_url }}" alt="Rigid rotor levels, harmonic vibrational levels, and radioactive decay curve">
  </div>
  <figcaption>Equation-generated scales: $E_J/hc=BJ(J+1)$, $E_v/\hbar\omega=v+1/2$, and $N/N_0=e^{-\lambda t}$ with the half-life marked at $\lambda t=\ln2$.</figcaption>
</figure>

## Spectroscopic methods and luminescence

UV-visible spectroscopy mainly probes electronic transitions. An infrared-active vibration requires

$$\left(\frac{d\mu_{el}}{dq}\right)_0\ne0,$$

whereas a Raman-active vibration requires

$$\left(\frac{d\alpha_{el}}{dq}\right)_0\ne0.$$

In Raman scattering,

$$h\nu_s=h\nu_0-\Delta E\quad\text{(Stokes)},\qquad
h\nu_{as}=h\nu_0+\Delta E\quad\text{(anti-Stokes)}.$$

NMR places nuclear magnetic moments in a field: $\Delta E=\hbar\gamma B_0$ and resonance occurs at $\omega_0=\gamma B_0$. ESR applies the same principle to electron spins: $h\nu=g\mu_BB_0$. Absorption creates an excited state; radiative relaxation produces luminescence. Prompt spin-allowed emission is fluorescence, while delayed emission involving a metastable state is phosphorescence.

## Radioactive decay law

If each undecayed nucleus has decay probability $\lambda\,dt$ in time $dt$,

$$dN=-\lambda N\,dt.$$

Integrating from $(0,N_0)$ to $(t,N)$,

$$\int_{N_0}^{N}\frac{dN^{\prime}}{N^{\prime}}=-\lambda\int_0^t dt^{\prime},$$

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

## Solved Problems

### 1. Rotational line, moment of inertia, and bond length of CO

For $^{12}\mathrm C^{16}\mathrm O$, take $B_e=1.931\ \mathrm{cm^{-1}}$. Find the $J=2\to3$ absorption frequency and infer the bond length. Use $m_C=12.000000\ \mathrm u$ and $m_O=15.99491462\ \mathrm u$.

The rigid-rotor line position is

$$
\tilde\nu=2B_e(J+1)=2(1.931)(3)=11.586\ \mathrm{cm^{-1}}.
$$

Since frequency is $\nu=c\tilde\nu$ when $c$ is in $\mathrm{cm\,s^{-1}}$,

$$
\nu=(2.99792458\times10^{10})(11.586)
=3.47340\times10^{11}\ \mathrm{Hz}=347.340\ \mathrm{GHz}.
$$

Converting $B_e$ to $\mathrm{m^{-1}}$ in the inertia formula gives

$$
I=\frac{h}{8\pi^2c(100B_e)}=1.44965\times10^{-46}\ \mathrm{kg\,m^2}.
$$

The reduced mass and bond length are

$$
\mu=\frac{m_Cm_O}{m_C+m_O}=1.13850\times10^{-26}\ \mathrm{kg},
\qquad
R_e=\sqrt{\frac I\mu}=1.12841\times10^{-10}\ \mathrm m.
$$

Thus the bond length is $1.12841$ Å. The calculation assumes a rigid rotor; centrifugal stretching makes high-$J$ spacings slightly smaller.

### 2. Activity and fraction decayed

A radionuclide has half-life $8.00\ \mathrm d$ and initial activity $3.20\ \mathrm{MBq}$. Find its activity and the fraction of original nuclei that have decayed after $20.0\ \mathrm d$.

Using $\lambda=\ln2/T_{1/2}$,

$$
\frac{A(t)}{A_0}=e^{-\lambda t}
=2^{-t/T_{1/2}}=2^{-20/8}=0.1767767.
$$

Therefore

$$A(20\ \mathrm d)=0.565685\ \mathrm{MBq}.$$

Because $A/A_0=N/N_0$, the decayed fraction is

$$1-\frac{N}{N_0}=1-0.1767767=0.823223.$$

Thus $82.3223\%$ of the original nuclei have decayed. Both ratios are dimensionless; using days for both $t$ and $T_{1/2}$ avoids a hidden unit conversion.

## Descriptive Questions

1. Use the overlap and exchange terms of the $\mathrm H_2^+$ molecular orbitals to explain why the symmetric state is bonding and the antisymmetric state is antibonding.
2. Compare the physical selection criteria for infrared and Raman vibrational spectra, and explain how a vibration can be active in one method but inactive in the other.
3. State the Born-Oppenheimer and Franck-Condon approximations and explain why electronic transitions appear vertical on a molecular potential-energy diagram.
4. Explain the origin of the continuous beta spectrum and show how the neutrino restores energy, momentum, and angular-momentum conservation in each decay event.

## Numerical Problems

1. Treat HCl as a harmonic oscillator with force constant $k=480\ \mathrm{N\,m^{-1}}$. Using $m_H=1.007825\ \mathrm u$ and $m_{^{35}\mathrm{Cl}}=34.968853\ \mathrm u$, find its fundamental vibrational wavenumber.

   **Answer:** $\tilde\nu=2883.85\ \mathrm{cm^{-1}}$.

2. A molecule is excited by a $532.0\ \mathrm{nm}$ laser and has a Raman shift of $1600\ \mathrm{cm^{-1}}$. Find the first-Stokes wavelength.

   **Answer:** $\lambda_S=581.497\ \mathrm{nm}$.

3. Calculate the energy released in $^2\mathrm H+{}^3\mathrm H\to{}^4\mathrm{He}+n$ from the masses $2.014102$, $3.016049$, $4.002603$, and $1.008665\ \mathrm u$. Use $1\ \mathrm u\,c^2=931.49410242\ \mathrm{MeV}$.

   **Answer:** $Q=17.5894\ \mathrm{MeV}$, positive because the product mass is smaller.

4. Using neutral-atom masses $M(^{22}\mathrm{Na})=21.9944364\ \mathrm u$ and $M(^{22}\mathrm{Ne})=21.9913851\ \mathrm u$, find the ground-state $\beta^+$ $Q$ value. Take $m_ec^2=0.51099895\ \mathrm{MeV}$.

   **Answer:** $Q_{\beta^+}=1.82027\ \mathrm{MeV}$ after subtracting $2m_ec^2$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/modern/unit-2/molecular-radioactivity.mac' | relative_url }})

## References

1. [Molecular spectroscopy — Wikipedia](https://en.wikipedia.org/wiki/Molecular_spectroscopy)
2. [Radioactive decay — Wikipedia](https://en.wikipedia.org/wiki/Radioactive_decay)
3. C. N. Banwell and E. M. McCash, *Fundamentals of Molecular Spectroscopy*, 4th ed., chapters on rotational, vibrational, Raman, and electronic spectroscopy.
4. J. M. Hollas, *Modern Spectroscopy*, 4th ed., chapters 3–6 on molecular rotation, vibration, and electronic spectra.
5. K. S. Krane, *Introductory Nuclear Physics*, chapters 6–9 and 13 on radioactive decay, nuclear reactions, fission, and fusion.

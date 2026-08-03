---
title: "Bose-Einstein and Fermi-Dirac Statistics"
summary: "Quantum distributions, degenerate gases, condensation, photon thermodynamics, electron heat capacity, emissions, and Pauli paramagnetism."
date: 2025-07-26 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, statistical-mechanics, bose-einstein, fermi-dirac]
permalink: /bsc/sem-vi/statistical-mechanics/quantum-statistics/
hidden: true
---

For one-particle state $i$, put $x_i=e^{-\beta(\epsilon_i-\mu)}$. A bosonic state permits $n_i=0,1,2,\ldots$, so its grand partition factor and mean occupation are

$$
\Xi_i^{BE}=\sum_{n_i=0}^{\infty}x_i^{n_i}=\frac1{1-x_i},\qquad
\bar n_i=x_i\frac{\partial\ln\Xi_i}{\partial x_i}=\frac{x_i}{1-x_i}.
$$

A fermionic state permits only $n_i=0,1$, hence

$$
\Xi_i^{FD}=1+x_i,\qquad
\bar n_i=x_i\frac{\partial\ln\Xi_i}{\partial x_i}=\frac{x_i}{1+x_i}.
$$

Therefore

$$\boxed{\bar n_{BE}=\frac1{e^{\beta(\epsilon-\mu)}-1}},\qquad
\boxed{\bar n_{FD}=\frac1{e^{\beta(\epsilon-\mu)}+1}}.$$

The minus sign permits any boson occupation; the plus sign enforces fermion occupation $0$ or $1$. When $e^{\beta(\epsilon-\mu)}\gg1$, both reduce to Maxwell-Boltzmann statistics, $\bar n\simeq e^{-\beta(\epsilon-\mu)}$.

The degeneracy parameter $n\lambda_T^3$ locates this crossover: $n\lambda_T^3\ll1$ is classical, whereas values of order unity require quantum statistics. For bosons the denominator must remain positive, so $\mu$ cannot exceed the one-particle ground-state energy; choosing that energy as zero gives $\mu\le0$. Fermions have no analogous upper bound because Pauli exclusion already limits each state occupation.

## Bose gas and condensation

For free particles in three dimensions, the density of states is

$$g(\epsilon)=\frac{V}{4\pi^2}\left(\frac{2m}{\hbar^2}\right)^{3/2}\epsilon^{1/2}.$$

The excited population is

$$N_{ex}=\int_0^\infty\frac{g(\epsilon)d\epsilon}{z^{-1}e^{\beta\epsilon}-1},\qquad z=e^{\beta\mu}\le1.$$

With the thermal wavelength $\lambda_T=h/\sqrt{2\pi mk_BT}$ and Bose function

$$g_s(z)=\frac1{\Gamma(s)}\int_0^\infty\frac{x^{s-1}}{z^{-1}e^x-1}\,dx,$$

the particle number, pressure, and energy are

$$
N_{ex}=\frac{V}{\lambda_T^3}g_{3/2}(z),\qquad
P=\frac{k_BT}{\lambda_T^3}g_{5/2}(z),\qquad
U=\frac32PV.
$$

At fixed $T$, this is largest at $z=1$:

$$N_{ex}^{max}=\frac{V}{\lambda_T^3}\zeta(3/2).$$

When $N>N_{ex}^{max}$, the excess occupies the ground state. The critical temperature and condensed fraction are

$$T_c=\frac{2\pi\hbar^2}{mk_B}\left[\frac{N}{V\zeta(3/2)}\right]^{2/3},$$

$$\frac{N_0}{N}=1-\left(\frac{T}{T_c}\right)^{3/2}\quad(T<T_c).$$

Below $T_c$, $z=1$ and $g_s(1)=\zeta(s)$. Therefore the thermodynamic functions of the strongly degenerate ideal Bose gas are

$$
U=\frac32\frac{Vk_BT}{\lambda_T^3}\zeta(5/2),\qquad
S=\frac{U+PV}{T}=\frac52\frac{Vk_B}{\lambda_T^3}\zeta(5/2),
$$

$$
C_V=\left(\frac{\partial U}{\partial T}\right)_{V,N}
=\frac{15}{4}Nk_B\frac{\zeta(5/2)}{\zeta(3/2)}
\left(\frac{T}{T_c}\right)^{3/2}.
$$

Liquid helium-4 is a strongly interacting Bose liquid, so the ideal-gas formula is not quantitatively exact; nevertheless, macroscopic quantum occupation is central to its superfluid behavior.

## Photon gas and Bose derivation of Planck's law

Photon number is not conserved, hence $\mu=0$. Each mode has

$$\bar n=\frac1{e^{\beta h\nu}-1},$$

and multiplying $h\nu\bar n$ by the electromagnetic mode density $8\pi\nu^2/c^3$ reproduces Planck's law. Integrating gives

$$U=aVT^4,\qquad P=\frac{U}{3V},\qquad F=-PV=-\frac13aVT^4,$$

and from $S=(U+PV)/T$,

$$S=\frac43aVT^3,\qquad C_V=4aVT^3.$$

## Degenerate Fermi gas

At $T=0$, $f(\epsilon)=1$ below the Fermi energy and $0$ above it. For spin-$1/2$ particles,

$$
N=2\frac{V}{(2\pi)^3}\frac{4\pi k_F^3}{3}
=\frac{V}{3\pi^2}k_F^3,
$$

so

$$k_F=(3\pi^2n)^{1/3},\qquad E_F=\frac{\hbar^2k_F^2}{2m}.$$

The factor $2$ counts spin. Differentiating the state count gives the total density of states

$$
g_F(\epsilon)=\frac{V}{2\pi^2}
\left(\frac{2m}{\hbar^2}\right)^{3/2}\epsilon^{1/2}.
$$

The zero-temperature energy follows directly:

$$
U=\int_0^{E_F}\epsilon g_F(\epsilon)d\epsilon
=\frac35NE_F.
$$

For a nonrelativistic gas the kinetic relation $PV=2U/3$ then gives

$$P_0=\frac25\frac{N}{V}E_F.$$

Only electrons within about $k_BT$ of $E_F$ can change occupation. The Sommerfeld expansion

$$
\int_0^\infty\Phi(\epsilon)f(\epsilon)d\epsilon
=\int_0^\mu\Phi(\epsilon)d\epsilon
+\frac{\pi^2}{6}(k_BT)^2\Phi^{\prime}(\mu)+\cdots
$$

first applied to $N$ fixes the chemical potential, and then applied to $U$ gives

$$
\mu(T)=E_F\left[1-\frac{\pi^2}{12}\left(\frac{T}{T_F}\right)^2\right],
$$

$$
U=\frac35NE_F\left[1+\frac{5\pi^2}{12}
\left(\frac{T}{T_F}\right)^2\right].
$$

Therefore

$$
C_V=\frac{\pi^2}{2}Nk_B\frac{T}{T_F},\qquad
S=\frac{\pi^2}{2}Nk_B\frac{T}{T_F},\qquad T_F=E_F/k_B,
$$

which is linear in $T$ and much smaller than the classical value.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/statistical/unit-3/quantum-distributions.png' | relative_url }}" alt="Bose-Einstein and Fermi-Dirac occupations and condensate fraction">
  </div>
  <figcaption>Equation-generated Bose-Einstein, Fermi-Dirac, and Maxwell-Boltzmann occupations versus $(\epsilon-\mu)/(k_BT)$, together with $N_0/N=1-(T/T_c)^{3/2}$.</figcaption>
</figure>

## Thermionic and photoelectric emission

Electrons escaping a metal must overcome the work function $\phi$. In the high-energy tail the Fermi factor becomes Boltzmann-like. Integrating the outward normal flux gives

$$
J=e\frac{2}{h^3}\int_{p_z>p_0}\frac{p_z}{m}
e^{-[p^2/(2m)-E_F]/k_BT}\,d^3p,
$$

where $p_0^2/(2m)=E_F+\phi$. The two transverse Gaussian integrals give $2\pi mk_BT$, while

$$
\int_{p_0}^{\infty}\frac{p_z}{m}e^{-p_z^2/(2mk_BT)}dp_z
=k_BT\,e^{-p_0^2/(2mk_BT)}.
$$

Thus

$$J=A_RT^2e^{-\phi/k_BT},\qquad A_R=\frac{4\pi em_ek_B^2}{h^3},$$

for an ideal free-electron surface; real materials modify the prefactor. In photoelectric emission, one photon supplies $h\nu$ and

$$K_{max}=h\nu-\phi.$$

Thermionic emission is controlled by the thermal high-energy tail; photoemission is controlled by photon energy.

## Pauli spin paramagnetism

A weak field shifts spin energies by $\mp\mu_BB$. Only states near $E_F$ can repopulate. With $g_F(E_F)$ denoting the total two-spin density of states, each spin direction has density $g_F(E_F)/2$, so

$$
N_+-N_-
=\frac{g_F(E_F)}2(2\mu_BB)
=g_F(E_F)\mu_BB.
$$

Thus

$$M=\mu_B(N_+-N_-)/V,\qquad
\chi_P=\mu_0\mu_B^2\frac{g_F(E_F)}{V}=\frac{3\mu_0n\mu_B^2}{2E_F}.$$

Unlike Curie paramagnetism, $\chi_P$ is nearly temperature independent for $T\ll T_F$.

## Solved Problems

### 1. Bose condensation temperature and condensate fraction

An ideal gas of $^{87}\mathrm{Rb}$ atoms has number density $n=1.00\times10^{20}\ \mathrm{m^{-3}}$. Using $m=86.9091805\ \mathrm u$ and $\zeta(3/2)=2.61237535$, find $T_c$ and the condensate fraction at $T=T_c/2$.

At the transition, the excited states hold all particles:

$$
n=\frac{\zeta(3/2)}{\lambda_{T_c}^3}.
$$

Solving for temperature gives

$$
T_c=\frac{2\pi\hbar^2}{mk_B}
\left[\frac{n}{\zeta(3/2)}\right]^{2/3}
=3.98331\times10^{-7}\ \mathrm K.
$$

Thus $T_c=398.331\ \mathrm{nK}$. Below $T_c$,

$$
\frac{N_0}{N}=1-\left(\frac{T}{T_c}\right)^{3/2}
=1-\left(\frac12\right)^{3/2}=0.646447.
$$

About $64.6\%$ is condensed in the ideal-gas model. The fraction approaches one as $T\to0$ and vanishes continuously as $T\to T_c^-$.

### 2. Fermi scales and degeneracy pressure of conduction electrons

A metal has conduction-electron density $n=8.50\times10^{28}\ \mathrm{m^{-3}}$. Treat the electrons as a zero-temperature free Fermi gas and find $k_F$, $E_F$, $T_F$, and $P_0$.

State counting gives

$$
k_F=(3\pi^2n)^{1/3}=1.36023\times10^{10}\ \mathrm{m^{-1}}.
$$

Therefore

$$
E_F=\frac{\hbar^2k_F^2}{2m_e}
=1.12941\times10^{-18}\ \mathrm J=7.04936\ \mathrm{eV},
$$

$$
T_F=\frac{E_F}{k_B}=8.18044\times10^4\ \mathrm K,
$$

and

$$
P_0=\frac25nE_F=3.84007\times10^{10}\ \mathrm{Pa}.
$$

Room temperature is far below $T_F$, so the electrons are strongly degenerate. The pressure remains nonzero at $T=0$ because Pauli exclusion, not thermal motion, fills momentum states up to $k_F$.

## Descriptive Questions

1. Derive the Bose-Einstein and Fermi-Dirac occupation functions from their single-state grand partition factors, identifying where the sign difference enters.
2. Explain why a conserved ideal Bose gas condenses in three dimensions and derive the $T^{3/2}$ excited fraction below $T_c$.
3. Use the Sommerfeld expansion to explain why the electronic heat capacity is linear in $T$ and much smaller than the classical equipartition value.
4. Derive Pauli spin susceptibility from the field-induced transfer of electrons at the Fermi surface and contrast its temperature dependence with Curie's law.

## Numerical Problems

1. At an energy $\epsilon-\mu=2k_BT$, calculate the Bose-Einstein, Fermi-Dirac, and Maxwell-Boltzmann mean occupations of one state.

   **Answer:** $\bar n_{BE}=0.156518$, $\bar n_{FD}=0.119203$, and $\bar n_{MB}=0.135335$.

2. Estimate the ideal Richardson-Dushman current density from a metal with work function $4.50\ \mathrm{eV}$ at $2500\ \mathrm K$. Use $A_R=1.20173229\times10^6\ \mathrm{A\,m^{-2}\,K^{-2}}$.

   **Answer:** $J=6.36923\times10^3\ \mathrm{A\,m^{-2}}$.

3. Light of wavelength $400\ \mathrm{nm}$ illuminates a metal with work function $2.30\ \mathrm{eV}$. Find the maximum photoelectron energy and stopping potential.

   **Answer:** $K_{max}=0.799605\ \mathrm{eV}$ and $V_s=0.799605\ \mathrm V$.

4. Estimate the Pauli spin susceptibility for $n=5.00\times10^{28}\ \mathrm{m^{-3}}$ and $E_F=5.50\ \mathrm{eV}$.

   **Answer:** $\chi_P=9.19884\times10^{-6}$ in SI units.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/statistical/unit-3/quantum-statistics.mac' | relative_url }})

## References

1. [Particle statistics — Wikipedia](https://en.wikipedia.org/wiki/Particle_statistics)
2. R. K. Pathria and P. D. Beale, *Statistical Mechanics*, 3rd ed., chapters 6–8 on ideal Bose and Fermi gases.
3. C. Kittel and H. Kroemer, *Thermal Physics*, 2nd ed., chapters 6–8 on ideal gases, Fermi systems, and Bose systems.
4. N. W. Ashcroft and N. D. Mermin, *Solid State Physics*, chapters 2 and 31 on the free-electron gas and conduction-electron paramagnetism.
5. C. J. Pethick and H. Smith, *Bose-Einstein Condensation in Dilute Gases*, 2nd ed., chapter 2 on the ideal Bose gas.

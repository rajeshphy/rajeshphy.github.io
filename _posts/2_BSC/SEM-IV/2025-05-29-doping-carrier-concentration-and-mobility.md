---
title: "Doping, Carrier Concentration, and Mobility"
summary: "Charge neutrality, donor and acceptor doping, Fermi-level displacement, mobility, and conductivity."
date: 2025-05-29 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, doping, mobility]
permalink: /bsc/sem-iv/mj-7/doping-carrier-concentration-and-mobility/
hidden: true
---

Let $N_D^+$ and $N_A^-$ denote ionized donor and acceptor densities. The positive charge density is $q(p+N_D^+)$ and the magnitude of the negative charge density is $q(n+N_A^-)$. Electrical neutrality therefore requires

$$
q(p+N_D^+)-q(n+N_A^-)=0,
\qquad
\boxed{p+N_D^+=n+N_A^-}.
$$

When shallow dopants are fully ionized, $N_D^+=N_D$ and $N_A^-=N_A$. In non-degenerate thermal equilibrium the second relation is $np=n_i^2$, so neutrality and mass action determine both carrier concentrations, including compensation by dopants of the opposite type.

## Compensated n-type material

For $N_D>N_A$, define the positive net donor density

$$N=N_D-N_A.$$

Neutrality gives $n-p=N$. Eliminating $p$ with $p=n_i^2/n$ produces

$$
n-\frac{n_i^2}{n}=N
\quad\Longrightarrow\quad
n^2-Nn-n_i^2=0.
$$

Only the positive quadratic root is physical:

$$
\boxed{n=\frac{N+\sqrt{N^2+4n_i^2}}{2}},
\qquad
\boxed{p=\frac{n_i^2}{n}}.
$$

If $N\gg n_i$, expansion of the square root gives $n\simeq N+n_i^2/N\simeq N$ and $p\simeq n_i^2/N$. With

$$n=n_i\exp\!\left(\frac{E_F-E_i}{k_BT}\right),$$

the Fermi-level displacement is

$$\boxed{E_F-E_i=k_BT\ln\!\left(\frac{n}{n_i}\right)>0}.$$

## Compensated p-type material

For $N_A>N_D$, define $P=N_A-N_D>0$. Now $p-n=P$, and the same elimination gives

$$
\boxed{p=\frac{P+\sqrt{P^2+4n_i^2}}{2}},
\qquad
\boxed{n=\frac{n_i^2}{p}}.
$$

Since $p=n_i\exp[(E_i-E_F)/(k_BT)]$,

$$\boxed{E_F-E_i=-k_BT\ln\!\left(\frac{p}{n_i}\right)<0}.$$

The majority-carrier concentration is always positive; the sign appears in the displacement of $E_F$ from $E_i$. If heavy doping moves $E_F$ close to or inside a band, the non-degenerate exponential relations and $np=n_i^2$ approximation must be replaced by Fermi-Dirac integrals.

## Temperature dependence of carrier concentration

Shallow-doped material has three characteristic temperature ranges:

1. In **freeze-out**, only a fraction of the dopants is ionized, so $N_D^+<N_D$ or $N_A^-<N_A$ and the majority-carrier density rises rapidly with temperature.
2. In the **extrinsic range**, ionization is nearly complete and the majority concentration is approximately the net dopant density: $n\simeq N_D-N_A$ or $p\simeq N_A-N_D$.
3. In the **intrinsic range**, thermal pair generation dominates and $n\simeq p\simeq n_i$.

For parabolic bands with approximately temperature-independent effective masses,

$$
n_i=\sqrt{N_cN_v}\exp\!\left(-\frac{E_g}{2k_BT}\right),
\qquad N_c,N_v\propto T^{3/2},
$$

and hence

$$\boxed{n_i\propto T^{3/2}\exp\!\left(-\frac{E_g}{2k_BT}\right)}.$$

Even while the majority density is nearly constant in the extrinsic range, the minority density remains strongly temperature dependent through $p=n_i^2/n$ or $n=n_i^2/p$.

## Mobility and scattering

In the relaxation-time model, a carrier of charge $q_c$ and effective mass $m^*$ obeys

$$m^*\frac{d\mathbf v}{dt}=q_c\mathbf E-\frac{m^*\mathbf v}{\tau}.$$

At steady state, $d\mathbf v/dt=0$, so

$$
\mathbf v_d=\frac{q_c\tau}{m^*}\mathbf E,
\qquad
\boxed{\mu=\frac{\lvert q_c\rvert\tau}{m^*}}.
$$

The mobility $\mu$ is defined as a positive magnitude. Thus $\mathbf v_n=-\mu_n\mathbf E$ for electrons and $\mathbf v_p=+\mu_p\mathbf E$ for holes. If independent lattice and ionized-impurity scattering processes have relaxation times $\tau_L$ and $\tau_I$, their collision rates add:

$$
\frac1\tau=\frac1{\tau_L}+\frac1{\tau_I}
\quad\Longrightarrow\quad
\boxed{\frac1\mu=\frac1{\mu_L}+\frac1{\mu_I}}.
$$

Lattice scattering normally strengthens as temperature rises, while ionized-impurity scattering strengthens as dopant density rises. Over limited temperature ranges, simple models give $\mu_L\propto T^{-3/2}$ and $\mu_I\propto T^{3/2}/N_{\rm ion}$; these powers are approximations, not universal laws. Conductivity remains

$$\boxed{\sigma=q(n\mu_n+p\mu_p)},$$

so doping can increase carrier density even while impurity scattering reduces mobility.

## Solved Problems

### 1. Exact carrier balance in compensated n-type material

At $300\ \mathrm K$, let $N_D=8.00\times10^{21}\ \mathrm{m^{-3}}$, $N_A=2.00\times10^{21}\ \mathrm{m^{-3}}$, and $n_i=1.00\times10^{16}\ \mathrm{m^{-3}}$. Take $\mu_n=0.135\ \mathrm{m^2\,V^{-1}s^{-1}}$ and $\mu_p=0.0480\ \mathrm{m^2\,V^{-1}s^{-1}}$. Find $n$, $p$, $E_F-E_i$, $\sigma$, and $\rho$.

The net donor density is $N=6.00\times10^{21}\ \mathrm{m^{-3}}$. Therefore

$$
\begin{aligned}
n&=\frac{N+\sqrt{N^2+4n_i^2}}2
=6.00000000002\times10^{21}\ \mathrm{m^{-3}},\\
p&=\frac{n_i^2}{n}=1.667\times10^{10}\ \mathrm{m^{-3}}.
\end{aligned}
$$

Using $k_BT=0.0258520\ \mathrm{eV}$,

$$E_F-E_i=k_BT\ln(n/n_i)=+0.3440\ \mathrm{eV}.$$

The positive sign places $E_F$ above $E_i$, as required for n-type material. Finally,

$$
\sigma=q(n\mu_n+p\mu_p)=129.8\ \mathrm{S\,m^{-1}},
\qquad
\rho=7.706\times10^{-3}\ \Omega\,\mathrm m.
$$

Checks: $n-p=N_D-N_A$ and $np=n_i^2$ to the displayed precision, while $\sigma\rho=1$.

### 2. Combined lattice and impurity mobility

For electrons, suppose $\mu_L=0.180\ \mathrm{m^2\,V^{-1}s^{-1}}$ and $\mu_I=0.450\ \mathrm{m^2\,V^{-1}s^{-1}}$. If $n=3.00\times10^{21}\ \mathrm{m^{-3}}$ and holes are negligible, find the total mobility and resistivity.

Matthiessen's rule gives

$$
\mu=\left(\frac1{0.180}+\frac1{0.450}\right)^{-1}
=0.1286\ \mathrm{m^2\,V^{-1}s^{-1}}.
$$

Thus

$$
\sigma=qn\mu=61.80\ \mathrm{S\,m^{-1}},
\qquad
\rho=1.618\times10^{-2}\ \Omega\,\mathrm m.
$$

Mobility and resistivity are positive magnitudes. The combined mobility is smaller than either limiting mobility, which checks the added-scattering interpretation.

## Descriptive Questions

1. Derive the charge-neutrality equation for a semiconductor containing electrons, holes, ionized donors, and ionized acceptors.
2. Explain compensation and derive the exact majority- and minority-carrier concentrations for n-type material.
3. Describe the freeze-out, extrinsic, and intrinsic temperature ranges of a doped semiconductor.
4. Derive the relaxation-time expression for mobility and explain Matthiessen's rule.

## Numerical Problems

1. A compensated sample has measured equilibrium concentrations $n=5.00\times10^{20}\ \mathrm{m^{-3}}$ and $p=2.00\times10^{11}\ \mathrm{m^{-3}}$. Its total implanted impurity density is $N_D+N_A=1.40\times10^{21}\ \mathrm{m^{-3}}$, and all impurities are ionized. Infer $N_D$, $N_A$, and the acceptor compensation percentage $100N_A/N_D$.

   **Final answer:** $N_D=9.500\times10^{20}\ \mathrm{m^{-3}}$, $N_A=4.500\times10^{20}\ \mathrm{m^{-3}}$, and $100N_A/N_D=47.37\%$.

2. A semiconductor has $E_g=1.12\ \mathrm{eV}$ and $n_i(300\ \mathrm K)=1.00\times10^{16}\ \mathrm{m^{-3}}$. Assuming temperature-independent effective masses, use $n_i\propto T^{3/2}\exp[-E_g/(2k_BT)]$ to estimate $n_i(400\ \mathrm K)$.

   **Final answer:** $n_i(400)/n_i(300)=(400/300)^{3/2}\exp\!\left[\frac{E_g}{2k_B}\left(\frac{1}{300}-\frac{1}{400}\right)\right]=346.2$, so $n_i(400\ \mathrm K)=3.462\times10^{18}\ \mathrm{m^{-3}}$.

3. An electron has $m^*=0.26m_0$ and $\tau=2.00\times10^{-13}\ \mathrm s$. Find its mobility magnitude.

   **Final answer:** $\mu=0.1353\ \mathrm{m^2\,V^{-1}s^{-1}}$.

4. If lattice-limited mobility is $0.140\ \mathrm{m^2\,V^{-1}s^{-1}}$ at $300\ \mathrm K$ and varies as $T^{-3/2}$, find it at $400\ \mathrm K$.

   **Final answer:** $\mu_L(400\ \mathrm K)=0.09093\ \mathrm{m^2\,V^{-1}s^{-1}}$.

5. A mobility measurement gives $\mu=0.120\ \mathrm{m^2\,V^{-1}s^{-1}}$ while the independently known lattice-limited mobility is $\mu_L=0.200\ \mathrm{m^2\,V^{-1}s^{-1}}$. Use Matthiessen's rule to extract the impurity-limited mobility $\mu_I$.

   **Final answer:** $\mu_I=[1/\mu-1/\mu_L]^{-1}=0.300\ \mathrm{m^2\,V^{-1}s^{-1}}$.

6. At $300\ \mathrm K$, the lattice- and impurity-limited mobilities are $\mu_L=0.400\ \mathrm{m^2\,V^{-1}s^{-1}}$ and $\mu_I=0.0500\ \mathrm{m^2\,V^{-1}s^{-1}}$. If $\mu_L\propto T^{-3/2}$ and $\mu_I\propto T^{3/2}$, find the temperature at which the two limits are equal and the total mobility there.

   **Final answer:** Equating the limits gives $(T/300)^3=0.400/0.0500=8$, hence $T=600\ \mathrm K$. Both limiting mobilities are then $0.1414\ \mathrm{m^2\,V^{-1}s^{-1}}$, so Matthiessen's rule gives $\mu=0.07071\ \mathrm{m^2\,V^{-1}s^{-1}}$.

All symbolic reductions and numerical values are reproducible in the accessible [Maxima worksheet for doping, carrier concentration, and mobility]({{ '/assets/maxima/bsc/sem-iv/mj-7/doping-carrier-mobility-check.mac' | relative_url }}).

## References

1. [Wikipedia: Doping (semiconductor)](https://en.wikipedia.org/wiki/Doping_%28semiconductor%29)
2. [OpenStax University Physics Volume 3, Section 9.6: Semiconductors and Doping](https://openstax.org/books/university-physics-volume-3/pages/9-6-semiconductors-and-doping)
3. [MIT OpenCourseWare 6.720J, Lecture Notes: Semiconductor Statistics, Scattering, Drift, and Diffusion](https://ocw.mit.edu/courses/6-720j-integrated-microelectronic-devices-spring-2007/pages/lecture-notes/)

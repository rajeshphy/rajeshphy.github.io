---
title: "Fermi-Dirac Distribution and Carrier Equilibrium"
summary: "Fermi occupation, equilibrium electron and hole concentrations, and the mass-action law."
date: 2025-05-30 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, fermi-level, carrier-concentration]
permalink: /bsc/sem-iv/mj-7/fermi-dirac-distribution-and-carrier-equilibrium/
hidden: true
---

The Fermi level $E_F$ is the electron chemical potential. For a single-particle state of energy $E$, thermal equilibrium gives the Fermi-Dirac occupation probability

$$\boxed{f(E)=\frac{1}{1+\exp[(E-E_F)/(k_BT)]}}.$$

At $E=E_F$, $f=1/2$ at every nonzero temperature. If $\Delta=E-E_F$, then

$$f(E_F+\Delta)+f(E_F-\Delta)=1,$$

and the slope at the midpoint is

$$\left.\frac{df}{dE}\right\rvert_{E_F}=-\frac{1}{4k_BT}.$$

Thus increasing temperature broadens the transition about $E_F$ without changing its midpoint. In the limit $T\to0$, $f(E)$ becomes a step: states below $E_F$ are occupied and states above it are empty. A hole requires an empty valence-band state, so its probability is

$$\boxed{1-f(E)=\frac{1}{1+\exp[(E_F-E)/(k_BT)]}}.$$

## Electron concentration

The electron concentration is the number of available conduction-band states weighted by their occupation:

$$n=\int_{E_c}^{\infty}g_c(E)f(E)\,dE.$$

For a non-degenerate semiconductor with $E_c-E_F\gtrsim3k_BT$, the exponential in the denominator is large and

$$f(E)\simeq\exp\!\left[-\frac{E-E_F}{k_BT}\right].$$

For a three-dimensional parabolic band,

$$g_c(E)=\frac{1}{2\pi^2}\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}\sqrt{E-E_c}.$$

Set $\epsilon=E-E_c$. Separating the band-edge factor gives

$$
n=\frac{1}{2\pi^2}\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}
e^{-(E_c-E_F)/(k_BT)}
\int_0^\infty\epsilon^{1/2}e^{-\epsilon/(k_BT)}\,d\epsilon.
$$

With $u=\epsilon/(k_BT)$,

$$
\int_0^\infty\epsilon^{1/2}e^{-\epsilon/(k_BT)}\,d\epsilon
=(k_BT)^{3/2}\Gamma\!\left(\frac32\right)
=(k_BT)^{3/2}\frac{\sqrt\pi}{2}.
$$

Using $h=2\pi\hbar$ then yields

$$
n=2\left(\frac{2\pi m_n^*k_BT}{h^2}\right)^{3/2}
e^{-(E_c-E_F)/(k_BT)}.
$$

Defining the effective conduction-band density of states

$$N_c=2\left(\frac{2\pi m_n^*k_BT}{h^2}\right)^{3/2},$$

we obtain

$$\boxed{n=N_c e^{-(E_c-E_F)/(k_BT)}}.$$

## Hole concentration

For the valence band, available hole states are weighted by $1-f(E)$. With $\epsilon=E_v-E\ge0$,

$$
p=\int_{-\infty}^{E_v}g_v(E)[1-f(E)]\,dE
=N_v e^{-(E_F-E_v)/(k_BT)},
$$

where

$$
\boxed{N_v=2\left(\frac{2\pi m_p^*k_BT}{h^2}\right)^{3/2}},
\qquad
\boxed{p=N_v e^{-(E_F-E_v)/(k_BT)}}.
$$

## Mass action and the intrinsic Fermi level

Multiplying the non-degenerate equilibrium concentrations cancels $E_F$:

$$
\begin{aligned}
np
&=N_cN_v\exp\!\left[-\frac{(E_c-E_F)+(E_F-E_v)}{k_BT}\right]\\
&=N_cN_v e^{-E_g/(k_BT)}
=n_i^2.
\end{aligned}
$$

Hence

$$\boxed{n_i=\sqrt{N_cN_v}\,e^{-E_g/(2k_BT)}}.$$

For intrinsic material, $n=p$ and $E_F=E_i$. Equating the electron and hole expressions and taking logarithms gives

$$
\boxed{E_i=\frac{E_c+E_v}{2}+\frac{k_BT}{2}\ln\!\left(\frac{N_v}{N_c}\right)}.
$$

Because $N_c\propto(m_n^*)^{3/2}$ and $N_v\propto(m_p^*)^{3/2}$,

$$
\boxed{E_i=\frac{E_c+E_v}{2}+\frac{3k_BT}{4}\ln\!\left(\frac{m_p^*}{m_n^*}\right)}.
$$

The intrinsic level is exactly at midgap only when the effective densities of states are equal. The relations $n=N_c e^{-(E_c-E_F)/(k_BT)}$, $p=N_v e^{-(E_F-E_v)/(k_BT)}$, and $np=n_i^2$ use the non-degenerate approximation; degenerate material requires Fermi-Dirac integrals.

## Solved Problems

### 1. Occupation on opposite sides of the Fermi level

At $T=300\ \mathrm K$, find the occupation probabilities at $E=E_F\pm0.100\ \mathrm{eV}$. Take $k_BT=0.0258520\ \mathrm{eV}$.

For the level above $E_F$,

$$
f(E_F+0.100)=\frac{1}{1+e^{0.100/0.0258520}}
=0.02047.
$$

For the level below $E_F$,

$$
f(E_F-0.100)=\frac{1}{1+e^{-0.100/0.0258520}}
=0.97953.
$$

Both probabilities are dimensionless and lie between $0$ and $1$. Their sum is $1.00000$, which checks the exact symmetry $f(E_F+\Delta)+f(E_F-\Delta)=1$; the positive energy offset lowers occupation.

### 2. Intrinsic level and equilibrium carriers

At $300\ \mathrm K$, a semiconductor has $N_c=2.80\times10^{25}\ \mathrm{m^{-3}}$, $N_v=1.04\times10^{25}\ \mathrm{m^{-3}}$, and $E_g=1.120\ \mathrm{eV}$. Find $n_i$ and the intrinsic-level displacement from midgap. Then find $n$ and $p$ if $E_F-E_i=+0.250\ \mathrm{eV}$.

First,

$$
n_i=\sqrt{N_cN_v}\,e^{-E_g/(2k_BT)}
=6.676\times10^{15}\ \mathrm{m^{-3}}.
$$

The intrinsic-level displacement is

$$
E_i-\frac{E_c+E_v}{2}
=\frac{k_BT}{2}\ln\!\left(\frac{N_v}{N_c}\right)
=-0.01280\ \mathrm{eV}.
$$

The negative sign places $E_i$ slightly below midgap because $N_v<N_c$. For $E_F-E_i=+0.250\ \mathrm{eV}$,

$$
\begin{aligned}
n&=n_i e^{(E_F-E_i)/(k_BT)}
=1.058\times10^{20}\ \mathrm{m^{-3}},\\
p&=n_i e^{-(E_F-E_i)/(k_BT)}
=4.214\times10^{11}\ \mathrm{m^{-3}}.
\end{aligned}
$$

The positive Fermi-level shift increases electrons and suppresses holes. The product check gives $np=4.457\times10^{31}\ \mathrm{m^{-6}}=n_i^2$.

## Descriptive Questions

1. State the Fermi-Dirac distribution and derive its value and slope at $E=E_F$.
2. Derive the non-degenerate conduction-electron concentration from the density-of-states integral.
3. Obtain the hole concentration and the equilibrium mass-action law.
4. Derive the intrinsic Fermi level and explain why it need not lie exactly at midgap.

## Numerical Problems

1. Spectroscopic occupation data give the Fermi-function slope $df/dE=-8.00\ \mathrm{eV^{-1}}$ at $E=E_F$. Use $[df/dE]_{E_F}=-1/(4k_BT)$ and $k_B=8.61733\times10^{-5}\ \mathrm{eV\,K^{-1}}$ to infer the carrier temperature.

   **Final answer:** $T=-[4k_B(df/dE)_{E_F}]^{-1}=362.6\ \mathrm K$.

2. At $300\ \mathrm K$, locate a state whose occupation probability is $0.900$ relative to $E_F$.

   **Final answer:** $E-E_F=-0.05680\ \mathrm{eV}$; the state lies $56.80\ \mathrm{meV}$ below $E_F$.

3. The Fermi-edge sensitivity can be written as $-df/dE=[4k_BT]^{-1}\operatorname{sech}^2[(E-E_F)/(2k_BT)]$. At $300\ \mathrm K$, find its full width at half maximum in energy.

   **Final answer:** Half maximum occurs when $\cosh[(E-E_F)/(2k_BT)]=\sqrt2$, so the full width is $4k_BT\operatorname{arcosh}(\sqrt2)=4k_BT\ln(1+\sqrt2)=0.09114\ \mathrm{eV}=91.14\ \mathrm{meV}$.

4. Calculate $N_c$ at $300\ \mathrm K$ for $m_n^*=0.26m_0$.

   **Final answer:** $N_c=3.327\times10^{24}\ \mathrm{m^{-3}}$.

5. In a non-degenerate parabolic conduction band, the equilibrium electron population per energy interval is proportional to $w(\epsilon)=\epsilon^{1/2}\exp[-\epsilon/(k_BT)]$, where $\epsilon=E-E_c$. At $300\ \mathrm K$, find the most probable excess energy and the mean excess energy.

   **Final answer:** Maximizing $w$ gives $\epsilon_{\rm mp}=k_BT/2=0.01293\ \mathrm{eV}$. The mean is $\langle\epsilon\rangle=k_BT\,\Gamma(5/2)/\Gamma(3/2)=3k_BT/2=0.03878\ \mathrm{eV}$.

6. At $300\ \mathrm K$, the intrinsic level is measured to lie $10.0\ \mathrm{meV}$ above midgap. Assuming parabolic bands, infer the effective-mass ratio $m_p^*/m_n^*$ from $E_i-E_{mid}=(3/4)k_BT\ln(m_p^*/m_n^*)$.

   **Final answer:** $m_p^*/m_n^*=\exp[4(0.0100)/(3k_BT)]=1.675$.

All distribution identities, carrier-equilibrium reductions, and numerical values are reproducible in the accessible [Maxima worksheet for Fermi-Dirac carrier equilibrium]({{ '/assets/maxima/bsc/sem-iv/mj-7/carrier-statistics-check.mac' | relative_url }}).

## References

1. [Wikipedia: Fermi-Dirac statistics](https://en.wikipedia.org/wiki/Fermi%E2%80%93Dirac_statistics)
2. [MIT OpenCourseWare 6.720J, Lecture 3: Carrier Statistics and the Fermi Level](https://ocw.mit.edu/courses/6-720j-integrated-microelectronic-devices-spring-2007/resources/lecture3/)
3. [MIT OpenCourseWare 6.720J, Readings for Semiconductor Carrier Statistics](https://ocw.mit.edu/courses/6-720j-integrated-microelectronic-devices-spring-2007/pages/readings/)

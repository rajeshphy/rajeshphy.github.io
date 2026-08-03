---
title: "Classical Statistics"
summary: "Ensembles, phase space, entropy, Maxwell-Boltzmann statistics, ideal-gas thermodynamics, Gibbs paradox, and equipartition."
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, statistical-mechanics, classical-statistics, partition-function]
permalink: /bsc/sem-vi/statistical-mechanics/classical-statistics/
hidden: true
---

A macrostate specifies macroscopic constraints such as $N,V,E$; a microstate specifies every microscopic coordinate and momentum compatible with them. For $N$ classical particles, a microstate is a point in $6N$-dimensional phase space $(\mathbf q_1,\ldots,\mathbf q_N;\mathbf p_1,\ldots,\mathbf p_N)$. The dimensionless number of states in an element is counted as

$$d\Gamma=\frac{d^{3N}q\,d^{3N}p}{N!h^{3N}},$$

where $h^{3N}$ sets the elementary phase-space cell and $N!$ removes permutations of identical particles.

## Ensembles and entropy

The microcanonical ensemble fixes $N,V,E$; the canonical ensemble fixes $N,V,T$ and permits energy exchange; the grand canonical ensemble fixes $V,T,\mu$ and permits energy and particle exchange. If a macrostate has multiplicity $\Omega$,

$$S=k_B\ln\Omega.$$

For independent systems, $\Omega_{AB}=\Omega_A\Omega_B$, hence $S_{AB}=S_A+S_B$.

In the canonical ensemble, maximizing total reservoir-plus-system entropy gives

$$p_r=\frac{e^{-\beta E_r}}{Z},\qquad Z=\sum_re^{-\beta E_r},\qquad \beta=\frac1{k_BT}.$$

Normalization determines $Z$. Differentiation yields

$$
\frac{\partial\ln Z}{\partial\beta}
=\frac1Z\sum_r(-E_r)e^{-\beta E_r}
=-U,
$$

so

$$U=-\frac{\partial\ln Z}{\partial\beta},\qquad F=-k_BT\ln Z,\qquad S=-\left(\frac{\partial F}{\partial T}\right)_{V,N}.$$

The second derivative measures canonical energy fluctuations:

$$
\left\langle(\Delta E)^2\right\rangle
=\frac{\partial^2\ln Z}{\partial\beta^2}
=k_BT^2C_V.
$$

For an extensive system $C_V\propto N$, while $U\propto N$, so $\sqrt{\langle(\Delta E)^2\rangle}/U\propto N^{-1/2}$. This is why canonical and microcanonical predictions agree for macroscopic matter even though energy fluctuates in the canonical ensemble.

## Maxwell-Boltzmann distribution

Let $n_i$ particles occupy a one-particle level $\epsilon_i$ of degeneracy $g_i$. For distinguishable placements with $n_i\ll g_i$, the multiplicity is proportional to

$$W=N!\prod_i\frac{g_i^{n_i}}{n_i!}.$$

Using $\ln n!\simeq n\ln n-n$ and maximizing $\ln W$ subject to $\sum_i n_i=N$ and $\sum_i n_i\epsilon_i=E$ gives

$$
\delta\left[\ln W-\alpha\sum_i n_i-\beta\sum_i n_i\epsilon_i\right]=0,
$$

and therefore

$$\ln g_i-\ln n_i-\alpha-\beta\epsilon_i=0.$$

Thus

$$\boxed{n_i=g_ie^{-\alpha}e^{-\beta\epsilon_i}},$$

with $\beta=1/(k_BT)$ and $e^{-\alpha}$ fixed by $N$.

## Ideal-gas partition function

For one nonrelativistic particle in volume $V$,

$$
z_1=\frac{V}{h^3}\int e^{-\beta p^2/2m}d^3p
=\frac{V}{h^3}\left(\int_{-\infty}^{\infty}e^{-\beta p_x^2/2m}dp_x\right)^3.
$$

Using $\int e^{-ax^2}dx=\sqrt{\pi/a}$,

$$z_1=\frac{V}{\lambda_T^3},\qquad \lambda_T=\frac{h}{\sqrt{2\pi mk_BT}}.$$

Indistinguishability gives

$$Z_N=\frac{z_1^N}{N!}=\frac1{N!}\left(\frac{V}{\lambda_T^3}\right)^N.$$

Then

$$
F=-k_BT\ln Z_N,\qquad
U=-\frac{\partial\ln Z_N}{\partial\beta}=\frac32Nk_BT,
$$

$$P=k_BT\left(\frac{\partial\ln Z_N}{\partial V}\right)_{T,N}=\frac{Nk_BT}{V}.$$

Since $H=U+PV$ and $\mu=(\partial F/\partial N)_{T,V}$, Stirling's approximation gives

$$
H=\frac52Nk_BT,\qquad
\mu=-k_BT\ln\left(\frac{V}{N\lambda_T^3}\right).
$$

Using Stirling's approximation in $S=k_B(\ln Z_N+\beta U)$ gives the Sackur-Tetrode expression

$$
S=Nk_B\left[\ln\left(\frac{V}{N}\left(\frac{2\pi mk_BT}{h^2}\right)^{3/2}\right)+\frac52\right].
$$

Without the factor $1/N!$, entropy would not be extensive and mixing identical gases would spuriously increase it. Dividing by permutations of identical particles resolves the Gibbs paradox.

## Maxwell speed distribution

The one-particle momentum probability is proportional to $e^{-\beta p^2/2m}$. Normalizing its three Cartesian Gaussian factors and using $p=mv$ gives

$$
f_{\mathbf v}(\mathbf v)
=\left(\frac{m}{2\pi k_BT}\right)^{3/2}
e^{-mv^2/(2k_BT)}.
$$

All directions with speeds between $v$ and $v+dv$ occupy the shell $d^3v=4\pi v^2dv$, hence

$$
f(v)=4\pi\left(\frac{m}{2\pi k_BT}\right)^{3/2}
v^2e^{-mv^2/(2k_BT)},\qquad
\int_0^\infty f(v)\,dv=1.
$$

Differentiating $\ln f=2\ln v-mv^2/(2k_BT)+\text{constant}$ gives the most probable speed:

$$
\frac{d\ln f}{dv}=\frac2v-\frac{mv}{k_BT}=0
\quad\Longrightarrow\quad
v_{mp}=\sqrt{\frac{2k_BT}{m}}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/statistical/unit-1/maxwell-phase-space.png' | relative_url }}" alt="Normalized Maxwell speed distributions at three temperatures">
  </div>
  <figcaption>The normalized Maxwell speed distribution $f(v)=4\pi(m/2\pi k_BT)^{3/2}v^2e^{-mv^2/2k_BT}$ at three temperatures; each curve is generated from the displayed equation and has unit area.</figcaption>
</figure>

## Equipartition and heat capacity

For a quadratic coordinate $x$ contributing $\epsilon=ax^2$, its canonical mean is

$$
\langle ax^2\rangle
=-\frac{\partial}{\partial\beta}\ln\int_{-\infty}^{\infty}e^{-\beta ax^2}dx
=-\frac{\partial}{\partial\beta}\ln\left(\sqrt{\frac{\pi}{\beta a}}\right)
=\frac1{2\beta}=\frac12k_BT.
$$

Each independent quadratic term contributes $k_BT/2$. A monatomic ideal gas has three translational momentum terms, hence $U=3Nk_BT/2$ and $C_V=3Nk_B/2$. A classical rigid diatomic molecule adds two rotational terms, predicting $C_V=5Nk_B/2$; a fully excited vibrational mode adds two more quadratic terms and contributes $Nk_B$. The law fails when level spacings are not small compared with $k_BT$, because quantum coordinates then cannot explore energy continuously.

## Solved Problems

### 1. Characteristic molecular speeds

Find the most probable, mean, and root-mean-square speeds of nitrogen molecules at $300\ \mathrm K$. Use $m_{N_2}=28.0134\ \mathrm u$.

The molecular mass is

$$m=(28.0134)(1.66053906660\times10^{-27})
=4.65173\times10^{-26}\ \mathrm{kg}.$$

Moments of the normalized Maxwell distribution give

$$
v_{mp}=\sqrt{\frac{2k_BT}{m}},\qquad
\bar v=\sqrt{\frac{8k_BT}{\pi m}},\qquad
v_{rms}=\sqrt{\frac{3k_BT}{m}}.
$$

At $300\ \mathrm K$,

$$v_{mp}=421.997\ \mathrm{m\,s^{-1}},$$

$$\bar v=476.173\ \mathrm{m\,s^{-1}},\qquad
v_{rms}=516.839\ \mathrm{m\,s^{-1}}.$$

Their order $v_{mp}<\bar v<v_{rms}$ reflects the long high-speed tail. Each expression has units $\sqrt{\mathrm{J/kg}}=\mathrm{m\,s^{-1}}$.

### 2. Testing the classical-gas condition

Helium gas at $300\ \mathrm K$ has number density $n=2.45\times10^{25}\ \mathrm{m^{-3}}$. For $m=4.002602\ \mathrm u$, calculate $\lambda_T$ and $n\lambda_T^3$.

The translational thermal wavelength is

$$
\lambda_T=\frac{h}{\sqrt{2\pi mk_BT}}
=5.03811\times10^{-11}\ \mathrm m=0.0503811\ \mathrm{nm}.
$$

Thus

$$
n\lambda_T^3=(2.45\times10^{25})
(5.03811\times10^{-11})^3
=3.13307\times10^{-6}.
$$

This dimensionless parameter is much smaller than unity, so wave packets overlap negligibly and Maxwell-Boltzmann statistics is self-consistent. The classical limit is approached as $T$ increases or $n$ decreases.

## Descriptive Questions

1. Derive the canonical probability distribution by treating the heat reservoir multiplicity to first order in the subsystem energy.
2. Starting from $W=N!\prod_i g_i^{n_i}/n_i!$, obtain the Maxwell-Boltzmann occupation law under fixed-$N$ and fixed-energy constraints.
3. Explain the roles of $h^{3N}$ and $N!$ in classical phase-space counting and show how indistinguishability restores extensive entropy.
4. Compare the microcanonical, canonical, and grand-canonical ensembles in terms of fixed variables and permitted exchanges; identify the appropriate equilibrium extremum in each case: maximum entropy for an isolated system, minimum Helmholtz free energy at fixed $N,V,T$, and minimum grand potential at fixed $\mu,V,T$.

## Numerical Problems

1. Find $U$ and $H$ for $2.00\ \mathrm{mol}$ of a monatomic ideal gas at $400\ \mathrm K$.

   **Answer:** $U=9.97736\ \mathrm{kJ}$ and $H=16.6289\ \mathrm{kJ}$.

2. One mole of ideal gas expands isothermally and reversibly from $V$ to $2V$. Find its entropy change.

   **Answer:** $\Delta S=R\ln2=5.76315\ \mathrm{J\,K^{-1}}$.

3. For a monatomic ideal gas containing $N=1.00\times10^{20}$ particles, find the canonical relative rms energy fluctuation $\sigma_E/U$.

   **Answer:** $\sigma_E/U=\sqrt{2/(3N)}=8.16497\times10^{-11}$.

4. One mole of a rigid diatomic ideal gas is heated through $100\ \mathrm K$ while vibration remains frozen. Find the heat absorbed at constant volume.

   **Answer:** $Q_V=(5/2)R\Delta T=2.07862\ \mathrm{kJ}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/statistical/unit-1/classical-statistics.mac' | relative_url }})

## References

1. [Maxwell-Boltzmann statistics — Wikipedia](https://en.wikipedia.org/wiki/Maxwell%E2%80%93Boltzmann_statistics)
2. F. Reif, *Fundamentals of Statistical and Thermal Physics*, chapters 6–9 on ensembles, canonical distributions, and ideal gases.
3. R. K. Pathria and P. D. Beale, *Statistical Mechanics*, 3rd ed., chapters 1, 3, and 4 on ensembles and classical gases.
4. K. Huang, *Statistical Mechanics*, 2nd ed., chapters 6–9 on classical ensembles, ideal gases, and the Gibbs paradox.

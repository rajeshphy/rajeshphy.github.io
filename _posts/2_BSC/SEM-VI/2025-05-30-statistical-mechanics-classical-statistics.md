---
title: "Classical Statistics"
summary: "Ensembles, phase space, entropy, Maxwell-Boltzmann statistics, ideal-gas thermodynamics, Gibbs paradox, and equipartition."
date: 2025-05-30 09:00:00 +0530
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

$$U=-\frac{\partial\ln Z}{\partial\beta},\qquad F=-k_BT\ln Z,qquad S=-\left(\frac{\partial F}{\partial T}\right)_{V,N}.$$

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

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/statistical/unit-1/classical-statistics.mac' | relative_url }})

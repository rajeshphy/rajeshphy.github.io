---
title: "Free Gaussian Wave Packet and Momentum Space"
date: 2025-06-28 09:00:00 +0530
categories:
  - bsc-v
tags: [wave-packets, fourier-transform, momentum-space, gaussian-spreading]
permalink: /bsc/sem-v/mj-11/gaussian-wave-packet-momentum-space/
---

A free-particle momentum eigenfunction extends over all space. A localized free particle must therefore be a wave packet: a continuous superposition of plane waves with different momenta.

Use the symmetric Fourier-transform pair

$$
\boxed{
\phi(p,t)=\frac1{\sqrt{2\pi\hbar}}
\int_{-\infty}^{\infty}\Psi(x,t)e^{-ipx/\hbar}dx
},
$$

$$
\boxed{
\Psi(x,t)=\frac1{\sqrt{2\pi\hbar}}
\int_{-\infty}^{\infty}\phi(p,t)e^{ipx/\hbar}dp
}.
$$

The opposite signs make the two operations inverse because

$$
\frac1{2\pi\hbar}\int_{-\infty}^{\infty}
e^{ip(x-x^{\prime})/\hbar}dp=\delta(x-x^{\prime}).
$$

Parseval's relation then gives

$$
\int\lvert\Psi(x,t)\rvert^2dx=\int\lvert\phi(p,t)\rvert^2dp=1.
$$

Thus $\Psi$ has units $\mathrm{m^{-1/2}}$, while $\phi$ has units $(\mathrm{kg\,m\,s^{-1}})^{-1/2}$.

## Operators in momentum space

Fourier transformation of $-i\hbar\partial_x\Psi$ and integration by parts give

$$
\begin{aligned}
\mathcal F[-i\hbar\partial_x\Psi]
&=\frac1{\sqrt{2\pi\hbar}}
\left[-i\hbar\Psi e^{-ipx/\hbar}\right]_{-\infty}^{\infty}\\
&\quad-\frac1{\sqrt{2\pi\hbar}}
\int\Psi(-i\hbar)\left(-\frac{ip}{\hbar}\right)e^{-ipx/\hbar}dx\\
&=p\phi(p,t),
\end{aligned}
$$

where the boundary term vanishes for a localized packet and $(-i)(-i)=-1$ supplies the displayed sign. Also,

$$
i\hbar\frac{\partial}{\partial p}e^{-ipx/\hbar}
=x e^{-ipx/\hbar}.
$$

Therefore

$$
\boxed{\hat p=p},\qquad
\boxed{\hat x=i\hbar\frac{\partial}{\partial p}}
$$

in momentum representation.

For a free particle, $\hat H=p^2/(2m)$, so

$$
i\hbar\frac{\partial\phi}{\partial t}
=\frac{p^2}{2m}\phi.
$$

At fixed $p$ this is a first-order equation with solution

$$
\boxed{\phi(p,t)=\phi(p,0)e^{-ip^2t/(2m\hbar)}}.
$$

The momentum probability $\lvert\phi(p,t)\rvert^2$ is constant; only its phase evolves.

## Initial minimum-uncertainty Gaussian

Take a packet centred at $x_0$ with mean momentum $p_0$ and initial position standard deviation $\sigma_0$:

$$
\Psi(x,0)=\frac1{(2\pi\sigma_0^2)^{1/4}}
\exp\!\left[-\frac{(x-x_0)^2}{4\sigma_0^2}
+\frac{ip_0(x-x_0)}{\hbar}\right].
$$

Its density is a normalized Gaussian,

$$
\lvert\Psi(x,0)\rvert^2
=\frac1{\sqrt{2\pi}\sigma_0}
e^{-(x-x_0)^2/(2\sigma_0^2)}.
$$

To transform it, put $y=x-x_0$ and complete the square:

$$
-\frac{y^2}{4\sigma_0^2}
-\frac{i(p-p_0)y}{\hbar}
=-\frac1{4\sigma_0^2}
\left[y+\frac{2i\sigma_0^2(p-p_0)}{\hbar}\right]^2
-\frac{\sigma_0^2(p-p_0)^2}{\hbar^2}.
$$

Using $\int_{-\infty}^{\infty}e^{-y^2/(4\sigma_0^2)}dy=2\sqrt\pi\sigma_0$ gives

$$
\boxed{
\phi(p,0)=
\left(\frac{2\sigma_0^2}{\pi\hbar^2}\right)^{1/4}
\exp\!\left[-\frac{\sigma_0^2(p-p_0)^2}{\hbar^2}
-\frac{ipx_0}{\hbar}\right]
}.
$$

The momentum density is Gaussian with

$$
\langle p\rangle=p_0,\qquad
\Delta p=\frac{\hbar}{2\sigma_0}.
$$

Since $\Delta x(0)=\sigma_0$,

$$
\Delta x(0)\Delta p=\frac\hbar2.
$$

## Free evolution and spreading

Insert $\phi(p,t)$ into the inverse transform. Completing its complex Gaussian square gives

$$
\boxed{
\begin{aligned}
\Psi(x,t)={}&\frac{1}{(2\pi\sigma_0^2)^{1/4}}
\frac{1}{\sqrt{1+i\tau}}\\
&\times\exp\!\left[
-\frac{(x-x_0-p_0t/m)^2}{4\sigma_0^2(1+i\tau)}
+\frac{ip_0}{\hbar}
\left(x-x_0-\frac{p_0t}{2m}\right)
\right],
\end{aligned}}
$$

where

$$
\tau=\frac{\hbar t}{2m\sigma_0^2}.
$$

The parameter $\tau$ is dimensionless: both $\hbar t$ and $m\sigma_0^2$ have units $\mathrm{kg\,m^2}$. Since

$$
\operatorname{Re}\!\left(\frac1{1+i\tau}\right)
=\frac1{1+\tau^2},
$$

taking the modulus squared gives

$$
\boxed{
\lvert\Psi(x,t)\rvert^2
=\frac1{\sqrt{2\pi}\,\sigma_t}
\exp\!\left[
-\frac{(x-x_0-p_0t/m)^2}{2\sigma_t^2}
\right]
},
$$

$$
\boxed{
\sigma_t=\sigma_0
\sqrt{1+\left(\frac{\hbar t}{2m\sigma_0^2}\right)^2}
}.
$$

The centre moves at $p_0/m$, the group velocity for $E=p^2/(2m)$. The momentum distribution does not broaden, but its components acquire different phases proportional to $p^2$, so the position distribution spreads. At $t=0$, $\sigma_t=\sigma_0$; for $\lvert t\rvert\gg2m\sigma_0^2/\hbar$, the width grows approximately as $\sigma_t\simeq\hbar\lvert t\rvert/(2m\sigma_0)$.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-11/unit-ii/gaussian-spreading.png' | relative_url }}" alt="Equation-generated free Gaussian density at three times" loading="lazy" decoding="async">
</figure>

The plotted curves use the derived centre and width. The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-ii/gaussian-spreading.tex' | relative_url }}) generates the figure, and the normalization, mean, variance, width, group-velocity, and free Schrödinger-equation checks return zero residuals in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/gaussian-packet-checks.mac' | relative_url }}).

## Solved Problems

### 1. Centre motion and spreading of an electron packet

A minimum-uncertainty electron packet starts at $x_0=0$ with $\sigma_0=0.100\ \mathrm{nm}$ and mean velocity $v_0=+1.00\times10^6\ \mathrm{m\,s^{-1}}$. Find its centre and width after $1.00\ \mathrm{fs}$.

**Solution.** The positive sign of $v_0$ fixes motion toward $+x$. The dimensionless spreading parameter is

$$
\tau=\frac{\hbar t}{2m_e\sigma_0^2}
=5.788.
$$

The packet centre follows the free group velocity:

$$
x_c(t)=x_0+v_0t
=\boxed{1.00\ \mathrm{nm}}.
$$

Its standard deviation becomes

$$
\begin{aligned}
\sigma_t
&=\sigma_0\sqrt{1+\tau^2}\\
&=(0.100\ \mathrm{nm})\sqrt{1+(5.788)^2}\\
&=\boxed{0.587\ \mathrm{nm}}.
\end{aligned}
$$

The factor $\hbar t/(m_e\sigma_0^2)$ is dimensionless because numerator and denominator both have units $\mathrm{kg\,m^2}$. Spreading enlarges the width but does not change its sign or the mean momentum. At $t=0$, $\tau=0$ and $\sigma_t=\sigma_0$; replacing $t$ by $-t$ reverses centre motion but gives the same width because $\tau$ is squared.

### 2. Spatial width inferred from a Gaussian momentum spread

A minimum-uncertainty Gaussian has momentum standard deviation $\Delta p=2.00\times10^{-24}\ \mathrm{kg\,m\,s^{-1}}$. Find its position standard deviation and the full width at half maximum of its position density.

**Solution.** For this Gaussian the uncertainty bound is saturated:

$$
\sigma_x\Delta p=\frac{\hbar}{2}.
$$

Hence

$$
\sigma_x=\frac{\hbar}{2\Delta p}
=2.636\times10^{-11}\ \mathrm m
=\boxed{0.02636\ \mathrm{nm}}.
$$

For a Gaussian probability density, the full width at half maximum is

$$
\begin{aligned}
\mathrm{FWHM}
&=2\sqrt{2\ln2}\,\sigma_x\\
&=\boxed{0.06208\ \mathrm{nm}}.
\end{aligned}
$$

Momentum spread is non-negative; it does not specify the sign of the mean momentum. The product has action units, and the FWHM-to-standard-deviation ratio is dimensionless. As $\Delta p\to0$, $\sigma_x\to\infty$, so a momentum eigenstate cannot also be localized.

## Descriptive Questions

1. Why do the opposite signs and common normalization in the Fourier-transform pair make the position and momentum representations inverse descriptions?
2. Derive the position and momentum operators in momentum space, including the boundary term needed in the integration by parts.
3. Why does the momentum distribution of a free Gaussian remain unchanged while its position distribution spreads?
4. Explain how the packet centre, group velocity, spreading time, and long-time width follow from the free-particle dispersion relation.

## Numerical Problems

1. An electron packet has $x_0=2.00\ \mathrm{nm}$ and $p_0=3.00\times10^{-24}\ \mathrm{kg\,m\,s^{-1}}$. Find its centre after $0.500\ \mathrm{ps}$.<br>
   **Final answer:** $\boxed{x_c=1.649\ \mathrm{\mu m}}$.
2. Find $\sigma_t/\sigma_0$ when the dimensionless spreading parameter is $\tau=2.00$.<br>
   **Final answer:** $\boxed{\sigma_t/\sigma_0=\sqrt5=2.236}$.
3. A minimum-uncertainty Gaussian has $\sigma_0=0.200\ \mathrm{nm}$. Find its momentum standard deviation.<br>
   **Final answer:** $\boxed{\Delta p=2.636\times10^{-25}\ \mathrm{kg\,m\,s^{-1}}}$.

The original Gaussian identities are checked in the topic worksheet linked above. Every added width, centre, and uncertainty value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Wave packet](https://en.wikipedia.org/wiki/Wave_packet)
2. [MIT OpenCourseWare 8.04, Lecture Note 7: Wavepackets, uncertainty, and free evolution](https://ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/6ca5bd79a2121967796f7c0b8f6f48c9_MIT8_04S16_LecNotes7.pdf)
3. [MIT OpenCourseWare 8.04, Lecture Note 8: Momentum space and expectation values](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/resources/mit8_04s16_lecnotes8/)

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
e^{ip(x-x')/\hbar}dp=\delta(x-x').
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

![Equation-generated free Gaussian density at three times]({{ '/assets/images/bsc/sem-v/mj-11/unit-ii/gaussian-spreading.png' | relative_url }})

The plotted curves use the derived centre and width. The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-ii/gaussian-spreading.tex' | relative_url }}) generates the figure, and the normalization, mean, variance, width, group-velocity, and free Schrödinger-equation checks return zero residuals in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/gaussian-packet-checks.mac' | relative_url }}).

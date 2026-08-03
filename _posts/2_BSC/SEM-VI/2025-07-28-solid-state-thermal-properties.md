---
title: "Thermal Properties of Solids"
summary: "One-dimensional lattice vibrations, phonon dispersion and density of states, and the Dulong-Petit, Einstein, and Debye heat capacities."
date: 2025-07-28 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, thermal-properties, phonon-dispersion, debye-theory]
permalink: /bsc/sem-vi/solid-state/thermal-properties/
hidden: true
---

Thermal energy in an insulating crystal is stored mainly in quantized lattice vibrations. Their dispersion fixes the number of modes at each frequency and therefore the temperature dependence of the specific heat.

## Monatomic and diatomic chains

For identical masses $M$ separated by $a$ and joined by springs of constant $C$,

$$
M\ddot u_n=C(u_{n+1}+u_{n-1}-2u_n).
$$

Substitution of $u_n=ue^{i(kna-\omega t)}$ gives

$$
-M\omega^2=C(e^{ika}+e^{-ika}-2),
$$

and hence

$$
\boxed{\omega=2\sqrt{\frac CM}\left\lvert\sin\frac{ka}{2}\right\rvert}.
$$

For $\lvert ka\rvert\ll1$, $\omega\simeq v_s\lvert k\rvert$ with $v_s=a\sqrt{C/M}$; at $\lvert k\rvert=\pi/a$, $d\omega/dk=0$.

For alternating masses $M_1,M_2$ in a cell of length $a$, the normal-mode amplitudes satisfy

$$
\begin{pmatrix}
2C-M_1\omega^2&-2C\cos(ka/2)\\
-2C\cos(ka/2)&2C-M_2\omega^2
\end{pmatrix}
\begin{pmatrix}U\\V\end{pmatrix}=0.
$$

Setting the determinant to zero gives

$$
M_1M_2\omega^4-2C(M_1+M_2)\omega^2
+4C^2\sin^2\frac{ka}{2}=0,
$$

so

$$
\boxed{
\omega_{\pm}^2=C\left(\frac1{M_1}+\frac1{M_2}\right)
\pm C\sqrt{\left(\frac1{M_1}+\frac1{M_2}\right)^2
-\frac{4\sin^2(ka/2)}{M_1M_2}}
}.
$$

The lower branch is acoustic: $\omega_-(0)=0$ and $U=V$ at long wavelength. The upper branch is optical: $\omega_+(0)\ne0$ and $M_1U+M_2V=0$ at $k=0$. Quantization turns each normal mode into an oscillator with

$$
E_n=\left(n+\frac12\right)\hbar\omega;
$$

one quantum is a phonon of energy $\hbar\omega$.

## Phonon density of states

For a three-dimensional isotropic acoustic branch, periodic boundary conditions place one $\mathbf k$ state in volume $(2\pi)^3/V$. The number of states in a shell $k$ to $k+dk$, including three polarizations, is

$$
dN_k=3\frac{V}{(2\pi)^3}4\pi k^2dk.
$$

With $\omega=v_sk$,

$$
g(\omega)=\frac{dN_k}{d\omega}
=\frac{3V\omega^2}{2\pi^2v_s^3}.
$$

Debye replaces the real branches by this form up to $\omega_D$ and fixes the cutoff by $\int_0^{\omega_D}g(\omega)d\omega=3N$. Therefore

$$
\boxed{g_D(\omega)=\frac{9N\omega^2}{\omega_D^3}},
\qquad 0\leq\omega\leq\omega_D.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-3/thermal-phonon-density.png' | relative_url }}" alt="Monatomic and diatomic phonon dispersions and quadratic Debye density of states">
  </div>
  <figcaption>The chain dispersions are generated from the exact nearest-neighbour equations, while the three-dimensional Debye density follows $g_D(\omega)=9N\omega^2/\omega_D^3$ and contains $3N$ modes.</figcaption>
</figure>

## Specific heat

Classical equipartition assigns $k_BT/2$ to each quadratic kinetic or potential term. Three vibrations per atom therefore give

$$
\boxed{C_V=3Nk_B=3R\ \text{per mole}},
$$

the Dulong-Petit law.

Einstein instead assigns one frequency $\omega_E$ to all $3N$ oscillators. With $x=\hbar\omega_E/(k_BT)=\Theta_E/T$,

$$
U_E=\frac{3N\hbar\omega_E}{e^x-1},
$$

and, since $dx/dT=-x/T$,

$$
\boxed{C_{V,E}=3Nk_B\frac{x^2e^x}{(e^x-1)^2}}.
$$

It approaches $3Nk_B$ for $T\gg\Theta_E$ and falls as $3Nk_Bx^2e^{-x}$ for $T\ll\Theta_E$.

Debye uses the full low-frequency density:

$$
U_D=\int_0^{\omega_D}\frac{\hbar\omega}{e^{\hbar\omega/k_BT}-1}g_D(\omega)d\omega.
$$

With $x=\hbar\omega/(k_BT)$ and $\Theta_D=\hbar\omega_D/k_B$,

$$
\boxed{
C_{V,D}=9Nk_B\left(\frac{T}{\Theta_D}\right)^3
\int_0^{\Theta_D/T}\frac{x^4e^x}{(e^x-1)^2}dx
}.
$$

At high temperature this tends to $3Nk_B$. At low temperature, $\int_0^\infty x^3/(e^x-1)dx=\pi^4/15$ gives

$$
\boxed{C_{V,D}=\frac{12\pi^4}{5}Nk_B
\left(\frac{T}{\Theta_D}\right)^3},
\qquad T\ll\Theta_D.
$$

The $T^3$ law follows directly from the quadratic three-dimensional acoustic density of states.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/thermal-properties.mac' | relative_url }})

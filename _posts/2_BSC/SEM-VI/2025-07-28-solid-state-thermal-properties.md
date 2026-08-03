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

## Solved Problems

### 1. Sound speed and zone-boundary frequency of a monatomic chain

A chain has atomic mass $M=4.65\times10^{-26}\ \mathrm{kg}$, nearest-neighbour force constant $C=25.0\ \mathrm{N\,m^{-1}}$, and spacing $a=0.250\ \mathrm{nm}$. Find the long-wavelength sound speed and the maximum phonon frequency.

The dispersion is

$$
\omega(k)=2\sqrt{\frac{C}{M}}
\left\lvert\sin\frac{ka}{2}\right\rvert.
$$

For $\lvert ka\rvert\ll1$, $\sin(ka/2)\simeq ka/2$, so

$$
\omega\simeq a\sqrt{\frac{C}{M}}\lvert k\rvert
\equiv v_s\lvert k\rvert.
$$

Hence

$$
v_s=(0.250\times10^{-9})
\sqrt{\frac{25.0}{4.65\times10^{-26}}}
=5.80\times10^3\ \mathrm{m\,s^{-1}}.
$$

At the first-zone boundary, $\lvert k\rvert=\pi/a$ and the sine factor is unity:

$$
\omega_{\max}=2\sqrt{\frac{C}{M}}
=4.64\times10^{13}\ \mathrm{rad\,s^{-1}},
$$

$$
\boxed{f_{\max}=\frac{\omega_{\max}}{2\pi}
=7.38\times10^{12}\ \mathrm{Hz}},
\qquad
\boxed{v_s=5.80\times10^3\ \mathrm{m\,s^{-1}}}.
$$

Because $C/M$ has unit $\mathrm{s^{-2}}$, both units follow correctly. The group velocity tends to $v_s$ as $k\to0$ and vanishes at the zone boundary, even though $\omega$ is then maximal.

### 2. Zone-centre optical mode of a diatomic chain

Alternating masses $M_1=3.30\times10^{-26}\ \mathrm{kg}$ and $M_2=5.50\times10^{-26}\ \mathrm{kg}$ are connected by springs with $C=20.0\ \mathrm{N\,m^{-1}}$. Find the two zone-centre frequencies and the optical-mode amplitude ratio.

At $k=0$, the general dispersion gives

$$
\omega_-^2(0)=0,
$$

and

$$
\omega_+^2(0)=2C\left(\frac{1}{M_1}+\frac{1}{M_2}\right).
$$

Thus

$$
\omega_+(0)
=\sqrt{40.0\left(
\frac{1}{3.30\times10^{-26}}+
\frac{1}{5.50\times10^{-26}}
\right)}
=4.40\times10^{13}\ \mathrm{rad\,s^{-1}},
$$

so

$$
\boxed{f_-(0)=0},
\qquad
\boxed{f_+(0)=7.01\ \mathrm{THz}}.
$$

The optical mode leaves the cell's centre of mass fixed:

$$
M_1U+M_2V=0,
\qquad
\boxed{\frac{U}{V}=-\frac{M_2}{M_1}=-1.67}.
$$

The negative sign shows that the two sublattices move oppositely. If the two masses become equal, the acoustic and optical descriptions reduce to the folded dispersion of a monatomic chain.

### 3. Low-temperature Debye heat capacity

A solid has Debye temperature $\Theta_D=300\ \mathrm{K}$. Find its molar heat capacity at $T=10.0\ \mathrm{K}$ using the low-temperature law.

Since $T/\Theta_D=1/30\ll1$, the Debye asymptote is valid:

$$
C_{V,m}=\frac{12\pi^4}{5}R
\left(\frac{T}{\Theta_D}\right)^3.
$$

Substitution gives

$$
C_{V,m}
=\frac{12\pi^4}{5}(8.31446)
\left(\frac{10.0}{300}\right)^3
=7.20\times10^{-2}\ \mathrm{J\,mol^{-1}K^{-1}}.
$$

Therefore

$$
\boxed{C_{V,m}=0.0720\ \mathrm{J\,mol^{-1}K^{-1}}}.
$$

The ratio $T/\Theta_D$ is dimensionless, leaving the units of $R$. The answer tends to zero as $T^3$ when $T\to0$, consistent with the third law; the low-temperature formula must not be extrapolated to $T\gtrsim\Theta_D$.

## Descriptive Questions

1. Derive the dispersion relation of a monatomic linear chain, identify its first Brillouin zone, and discuss phase and group velocities at its centre and boundary.
2. Obtain the acoustic and optical branches of a diatomic chain and describe the relative motion of the two atoms at $k=0$.
3. Derive the three-dimensional Debye density of states, including the mode-count condition that fixes the cutoff frequency.
4. Compare the assumptions and low- and high-temperature limits of the Dulong--Petit, Einstein, and Debye heat-capacity theories.

## Numerical Problems

1. A phonon has frequency $5.00\ \mathrm{THz}$. Find its energy in electronvolts and its mean Bose occupation at $300\ \mathrm{K}$.

   **Answer:** $hf=0.02068\ \mathrm{eV}$ and $\bar n=[e^{hf/(k_BT)}-1]^{-1}=0.816$.

2. In the Debye model, what fraction of all modes has $\omega<0.20\omega_D$? How many such modes are present if the crystal contains $10^{23}$ atoms?

   **Answer:** The fraction is $(0.20)^3=0.00800$; the number is $3N(0.00800)=2.40\times10^{21}$.

3. Calculate the Einstein molar heat capacity at $T=\Theta_E$.

   **Answer:** $C_{V,m}=3R\,e/(e-1)^2=22.96\ \mathrm{J\,mol^{-1}K^{-1}}$.

4. Find the zero-point energy of one normal mode of frequency $8.00\ \mathrm{THz}$.

   **Answer:** $E_0=hf/2=0.01654\ \mathrm{eV}$.

5. An acoustic phonon travels with $v_s=5.00\times10^3\ \mathrm{m\,s^{-1}}$ and has frequency $1.00\ \mathrm{THz}$. Find its long-wavelength wavelength.

   **Answer:** $\lambda=v_s/f=5.00\ \mathrm{nm}$.

6. In the classical limit, how much heat raises $0.250\ \mathrm{mol}$ of a solid by $20.0\ \mathrm{K}$ at constant volume?

   **Answer:** $Q=n(3R)\Delta T=1.25\times10^2\ \mathrm{J}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/thermal-properties.mac' | relative_url }})

## References

1. [Debye model, Wikipedia](https://en.wikipedia.org/wiki/Debye_model)
2. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Chapters 4--5: “Phonons I: Crystal Vibrations” and “Phonons II: Thermal Properties.”
3. [MIT OpenCourseWare, 5.62 Physical Chemistry II, Lecture 22: “Einstein and Debye Solids”](https://ocw.mit.edu/courses/5-62-physical-chemistry-ii-spring-2008/f5503fe67ee01eb4a10ce2e96e048a7e_22_562ln08.pdf)
4. [MIT OpenCourseWare, 5.62 Physical Chemistry II, Lecture 23: “Phonons: 1-D Linear Chain of Atoms”](https://ocw.mit.edu/courses/5-62-physical-chemistry-ii-spring-2008/86d804b712f38d00c750ab6d51ef175e_23_562ln08.pdf)

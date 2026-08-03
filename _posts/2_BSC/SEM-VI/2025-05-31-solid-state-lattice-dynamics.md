---
title: "Lattice Dynamics and Specific Heat"
summary: "Monatomic and diatomic chains, acoustic and optical phonons, phonon spectra, and the Dulong-Petit, Einstein, and Debye heat capacities."
date: 2025-05-31 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, lattice-dynamics, phonons, specific-heat]
permalink: /bsc/sem-vi/solid-state/lattice-dynamics-specific-heat/
hidden: true
---

Atoms in a crystal oscillate about equilibrium positions. For sufficiently small displacements, the interatomic potential may be truncated after its quadratic term; the coupled motion then separates into normal modes, and quantization of those modes produces phonons.

## Harmonic approximation

Let $u_n$ be a displacement from equilibrium. Expanding a bond energy about its minimum separation gives

$$
V=V_0+\left(\frac{dV}{du}\right)_0u
+\frac12\left(\frac{d^2V}{du^2}\right)_0u^2+O(u^3).
$$

Mechanical equilibrium makes the linear term zero. Defining the force constant

$$
C=\left(\frac{d^2V}{du^2}\right)_0>0
$$

gives $V-V_0=Cu^2/2$. The SI unit of $C$ is $\mathrm{N\,m^{-1}}$.

## Monatomic linear chain

Take identical masses $M$ separated by $a$, with nearest-neighbour springs of constant $C$. The right and left spring forces on atom $n$ are

$$
F_n^{(R)}=C(u_{n+1}-u_n),
\qquad
F_n^{(L)}=-C(u_n-u_{n-1}).
$$

Therefore

$$
\boxed{M\ddot u_n=C(u_{n+1}+u_{n-1}-2u_n)}.
$$

Use a normal mode

$$
u_n=u\,e^{i(kna-\omega t)}.
$$

Then $u_{n\pm1}=u_ne^{\pm ika}$ and $\ddot u_n=-\omega^2u_n$, so

$$
-M\omega^2=C(e^{ika}+e^{-ika}-2)
=2C(\cos ka-1).
$$

Since $1-\cos ka=2\sin^2(ka/2)$,

$$
\boxed{\omega(k)=2\sqrt{\frac CM}\left\lvert\sin\frac{ka}{2}\right\rvert}.
$$

Born-von Karman boundary conditions $u_{n+N}=u_n$ require

$$
e^{ikNa}=1,
\qquad
k=\frac{2\pi s}{Na}.
$$

There are $N$ inequivalent values in the first Brillouin zone $-\pi/a<k\leq\pi/a$. Near its centre, $\lvert ka\rvert\ll1$, so

$$
\omega\simeq a\sqrt{\frac CM}\lvert k\rvert,
\qquad
v_s=\left\lvert\frac{d\omega}{dk}\right\rvert_{k\to0}=a\sqrt{\frac CM}.
$$

At $k=0$ all atoms translate in phase and no spring is stretched; hence $\omega=0$. At $k=\pi/a$ adjacent atoms move oppositely and $\omega_{\max}=2\sqrt{C/M}$.

## Diatomic linear chain

Let a primitive cell of length $a$ contain masses $M_1$ at $na$ and $M_2$ at $na+a/2$. If $u_n$ and $v_n$ are their displacements, nearest-neighbour forces give

$$
M_1\ddot u_n=C(v_n+v_{n-1}-2u_n),
$$

$$
M_2\ddot v_n=C(u_n+u_{n+1}-2v_n).
$$

Choose phases at the equilibrium positions:

$$
u_n=Ue^{i(kna-\omega t)},
\qquad
v_n=Ve^{i[k(na+a/2)-\omega t]}.
$$

Then

$$
v_n+v_{n-1}=2V\cos\frac{ka}{2}\,e^{i(kna-\omega t)},
$$

and similarly $u_n+u_{n+1}=2U\cos(ka/2)e^{i[k(na+a/2)-\omega t]}$. Thus

$$
\begin{pmatrix}
2C-M_1\omega^2&-2C\cos(ka/2)\\
-2C\cos(ka/2)&2C-M_2\omega^2
\end{pmatrix}
\begin{pmatrix}U\\V\end{pmatrix}=0.
$$

A nonzero eigenvector requires

$$
(2C-M_1\omega^2)(2C-M_2\omega^2)
-4C^2\cos^2\frac{ka}{2}=0,
$$

or

$$
M_1M_2\omega^4-2C(M_1+M_2)\omega^2
+4C^2\sin^2\frac{ka}{2}=0.
$$

Solving the quadratic in $\omega^2$ gives

$$
\boxed{
\omega_{\pm}^2=C\left(\frac1{M_1}+\frac1{M_2}\right)
\pm C\sqrt{\left(\frac1{M_1}+\frac1{M_2}\right)^2
-\frac{4}{M_1M_2}\sin^2\frac{ka}{2}}
}.
$$

The minus sign is the acoustic branch and the plus sign the optical branch. At $k=0$,

$$
\omega_{\mathrm{ac}}=0,
\qquad
\omega_{\mathrm{op}}^2=2C\left(\frac1{M_1}+\frac1{M_2}\right).
$$

For the acoustic mode, $U=V$: the two sublattices move together. For the optical mode, the centre of mass remains fixed,

$$
M_1U+M_2V=0,
$$

so the sublattices move oppositely. Oppositely charged sublattices then create an oscillating dipole, which motivates the word optical.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-1/phonon-dispersion.png' | relative_url }}" alt="Monatomic chain and diatomic acoustic and optical phonon dispersion curves">
  </div>
  <figcaption>The plotted curves are the exact nearest-neighbour dispersions above. The monatomic chain has one acoustic branch; two masses per primitive cell give acoustic and optical branches, separated at the zone boundary when $M_1\ne M_2$.</figcaption>
</figure>

## Phonons and the spectrum of a three-dimensional solid

Each normal coordinate $Q_{\mathbf k s}$ is a harmonic oscillator of frequency $\omega_{\mathbf k s}$. Its allowed energies are

$$
E_{n,\mathbf k s}=\left(n+\frac12\right)\hbar\omega_{\mathbf k s}.
$$

Increasing $n$ by one creates a phonon of energy $\hbar\omega_{\mathbf k s}$ and crystal momentum $\hbar\mathbf k$ modulo a reciprocal vector. A three-dimensional crystal with $r$ atoms per primitive cell has $3r$ branches: three acoustic branches and $3r-3$ optical branches. Near $\mathbf k=0$, acoustic frequencies approach zero linearly; optical frequencies remain finite. Frequencies flatten and turn at zone boundaries because waves undergo Bragg reflection there. The complete collection of branch frequencies over the Brillouin zone is the phonon spectrum.

## Dulong-Petit law

Classically, each Cartesian atomic vibration has one quadratic kinetic and one quadratic potential term. Equipartition assigns $k_BT/2$ to each, so an atom has mean vibrational energy $3k_BT$. For $N$ atoms,

$$
U=3Nk_BT,
\qquad
\boxed{C_V=\left(\frac{\partial U}{\partial T}\right)_V=3Nk_B}.
$$

For one mole this is $C_V=3R\simeq24.94\ \mathrm{J\,mol^{-1}K^{-1}}$. The law is the high-temperature limit; it cannot explain the fall of $C_V$ at low temperature because it treats every mode as continuously excitable.

## Einstein theory

Einstein assigns the same angular frequency $\omega_E$ to all $3N$ oscillators. The thermal mean occupation is

$$
\bar n=\frac{1}{e^{\hbar\omega_E/k_BT}-1}.
$$

Dropping the temperature-independent zero-point energy, the internal energy is

$$
U_E=3N\hbar\omega_E\bar n
=\frac{3N\hbar\omega_E}{e^{\hbar\omega_E/k_BT}-1}.
$$

With $x=\hbar\omega_E/(k_BT)=\Theta_E/T$, differentiation uses $dx/dT=-x/T$:

$$
\begin{aligned}
C_{V,E}
&=3N\hbar\omega_E
\frac{e^x}{(e^x-1)^2}\frac{x}{T}\\
&=\boxed{3Nk_B\frac{x^2e^x}{(e^x-1)^2}}.
\end{aligned}
$$

For $T\gg\Theta_E$, $e^x-1\simeq x$ and $C_{V,E}\to3Nk_B$. For $T\ll\Theta_E$, $C_{V,E}\simeq3Nk_Bx^2e^{-x}$, so the heat capacity vanishes exponentially.

## Debye theory and the $T^3$ law

Debye retains the acoustic dispersion $\omega=v_s k$ up to a cutoff $\omega_D$ chosen to give exactly $3N$ modes. Counting states in a large volume produces a three-dimensional density proportional to $\omega^2$. In the isotropic average,

$$
g(\omega)=\frac{9N}{\omega_D^3}\omega^2,
\qquad 0\leq\omega\leq\omega_D,
$$

because

$$
\int_0^{\omega_D}g(\omega)d\omega
=\frac{9N}{\omega_D^3}\frac{\omega_D^3}{3}=3N.
$$

The thermal energy is

$$
U_D=\int_0^{\omega_D}
\frac{\hbar\omega}{e^{\hbar\omega/k_BT}-1}g(\omega)d\omega.
$$

Put $x=\hbar\omega/(k_BT)$ and $\Theta_D=\hbar\omega_D/k_B$. Then

$$
U_D=9Nk_BT\left(\frac{T}{\Theta_D}\right)^3
\int_0^{\Theta_D/T}\frac{x^3}{e^x-1}\,dx.
$$

Differentiation gives

$$
\boxed{
C_{V,D}=9Nk_B\left(\frac{T}{\Theta_D}\right)^3
\int_0^{\Theta_D/T}\frac{x^4e^x}{(e^x-1)^2}\,dx
}.
$$

At high temperature, each mode again has energy $k_BT$, so $C_{V,D}\to3Nk_B$. At low temperature the upper limit may be replaced by infinity. Using

$$
\int_0^\infty\frac{x^3}{e^x-1}dx=\frac{\pi^4}{15}
$$

gives

$$
U_D\simeq\frac{3\pi^4}{5}Nk_B\frac{T^4}{\Theta_D^3},
$$

and therefore

$$
\boxed{C_{V,D}\simeq\frac{12\pi^4}{5}Nk_B
\left(\frac{T}{\Theta_D}\right)^3}.
$$

This is Debye's $T^3$ law. It succeeds because low-temperature heat is carried by the long-wavelength acoustic modes whose three-dimensional density of states is proportional to $\omega^2$.

## Solved Problems

### 1. Evaluate a monatomic mode and its group velocity

A monatomic chain has $C=40\ \mathrm{N\,m^{-1}}$, $M=4.0\times10^{-26}\ \mathrm{kg}$, and $a=0.250\ \mathrm{nm}$. Find $\omega$ and $v_g=d\omega/dk$ at $k=\pi/(2a)$.

This wave number lies in the positive half of the first zone, so $\sin(ka/2)>0$ and the absolute value can be removed locally:

$$
\omega=2\sqrt{\frac CM}\sin\frac{ka}{2}.
$$

Here $ka/2=\pi/4$, hence

$$
\begin{aligned}
\omega
&=2\sqrt{\frac{40}{4.0\times10^{-26}}}\sin\frac{\pi}{4}\\
&=\boxed{4.472\times10^{13}\ \mathrm{rad\,s^{-1}}}.
\end{aligned}
$$

Differentiating before substitution,

$$
v_g=a\sqrt{\frac CM}\cos\frac{ka}{2},
$$

so

$$
\begin{aligned}
v_g
&=(2.50\times10^{-10})
\sqrt{\frac{40}{4.0\times10^{-26}}}\cos\frac{\pi}{4}\\
&=\boxed{5.590\times10^3\ \mathrm{m\,s^{-1}}}.
\end{aligned}
$$

The factor $\sqrt{C/M}$ has unit $\mathrm{s^{-1}}$, which checks both results. Also $v_g=v_s/\sqrt2<v_s$ here and tends to zero at the zone boundary, consistent with the flattening dispersion.

### 2. Resolve the zone-centre modes of a diatomic chain

At $k=0$, take $M_1=4.0\times10^{-26}\ \mathrm{kg}$, $M_2=2.0\times10^{-26}\ \mathrm{kg}$, and $C=40\ \mathrm{N\,m^{-1}}$. Find both frequencies and the optical amplitude ratio $V/U$.

The exact branch formula at $k=0$ gives

$$
\omega_{ac}=0,
$$

and

$$
\begin{aligned}
\omega_{op}
&=\sqrt{2C\left(\frac1{M_1}+\frac1{M_2}\right)}\\
&=\sqrt{80\left(\frac1{4.0\times10^{-26}}+
\frac1{2.0\times10^{-26}}\right)}\\
&=\boxed{7.746\times10^{13}\ \mathrm{rad\,s^{-1}}}.
\end{aligned}
$$

For the acoustic translation no spring changes length, so $U=V$. In the optical mode the centre of mass of a cell is stationary:

$$
M_1U+M_2V=0
\quad\Longrightarrow\quad
\boxed{\frac VU=-\frac{M_1}{M_2}=-2}.
$$

The minus sign denotes opposite sublattice motion, and the lighter mass has twice the displacement amplitude. The zero acoustic frequency is the required translational-invariance limit.

## Descriptive Questions

1. How is the monatomic-chain dispersion derived from nearest-neighbour force equations, and what are its zone-centre and zone-boundary limits?
2. How is the diatomic secular equation obtained, and how do its eigenvectors explain the acoustic-optical branch split?
3. Why does a crystal with $r$ atoms per primitive cell have three acoustic and $3r-3$ optical branches?
4. How do the assumptions and low- and high-temperature limits of the Dulong-Petit, Einstein, and Debye heat capacities compare?

## Numerical Problems

1. A ring contains $N=1000$ atoms separated by $a=0.250\ \mathrm{nm}$. Find the spacing of allowed wave numbers under Born-von Karman boundary conditions.

   **Answer:** $\Delta k=2\pi/(Na)=2.513\times10^7\ \mathrm{m^{-1}}$.
2. Find the energy in millielectronvolts of a phonon with ordinary frequency $5.00\ \mathrm{THz}$.

   **Answer:** $E=hf=20.678\ \mathrm{meV}$.
3. How many phonon branches occur when a three-dimensional primitive cell contains four atoms?

   **Answer:** $12$ branches: $3$ acoustic and $9$ optical.
4. Use the Einstein model to find the molar heat capacity for $\Theta_E=220\ \mathrm K$ at $T=150\ \mathrm K$.

   **Answer:** $C_{V,E}=20.915\ \mathrm{J\,mol^{-1}K^{-1}}$.
5. A solid has $\Theta_D=343\ \mathrm K$. Estimate its molar heat capacity at $20.0\ \mathrm K$ using the Debye low-temperature law.

   **Answer:** $C_{V,D}=0.385\ \mathrm{J\,mol^{-1}K^{-1}}$.
6. In the Debye model, a specimen contains $N=8.0\times10^{22}$ atoms. How many modes have $\omega\leq\omega_D/2$?

   **Answer:** $3N(1/2)^3=3.0\times10^{22}$ modes.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-1/lattice-dynamics.mac' | relative_url }})

## References

1. [Phonon](https://en.wikipedia.org/wiki/Phonon).
2. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Chapters 4–5, Wiley.
3. Neil W. Ashcroft and N. David Mermin, *Solid State Physics*, Chapters 22–25, Holt, Rinehart and Winston.

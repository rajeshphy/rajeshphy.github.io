---
title: "Linear Harmonic Oscillator in One and Three Dimensions"
date: 2025-07-16 09:00:00 +0530
categories:
  - bsc-v
tags: [harmonic-oscillator, hermite-polynomials, zero-point-energy, three-dimensional-oscillator]
permalink: /bsc/sem-v/mj-11/harmonic-oscillator-one-three-dimensions/
---

## One-dimensional harmonic oscillator

For

$$
V(x)=\frac12m\omega^2x^2,
$$

the stationary Schrödinger equation is

$$
-\frac{\hbar^2}{2m}\frac{d^2\psi}{dx^2}
+\frac12m\omega^2x^2\psi=E\psi.
$$

Introduce the dimensionless coordinate and energy

$$
\xi=\sqrt{\frac{m\omega}{\hbar}}x,
\qquad
\epsilon=\frac{E}{\hbar\omega}.
$$

The factor $m\omega/\hbar$ has units $\mathrm{m^{-2}}$. Since $d^2/dx^2=(m\omega/\hbar)d^2/d\xi^2$, division by $\hbar\omega/2$ gives

$$
\boxed{
\frac{d^2\psi}{d\xi^2}+(2\epsilon-\xi^2)\psi=0
}.
$$

For $\lvert\xi\rvert\gg1$, the $\xi^2$ term dominates and the equation is approximately $\psi''-\xi^2\psi\simeq0$. Its leading behaviours are $e^{-\xi^2/2}$ and $e^{+\xi^2/2}$; normalizability excludes the growing sign. Write

$$
\psi(\xi)=e^{-\xi^2/2}H(\xi).
$$

Differentiation gives

$$
\psi'=e^{-\xi^2/2}(H'-\xi H),
$$

$$
\psi''=e^{-\xi^2/2}
\left[H''-2\xi H'+(\xi^2-1)H\right].
$$

Substitution cancels the $\xi^2H$ terms and leaves

$$
\boxed{H''-2\xi H'+(2\epsilon-1)H=0}.
$$

Let $H=\sum_{j=0}^{\infty}a_j\xi^j$. Equating the coefficient of $\xi^j$ gives

$$
(j+2)(j+1)a_{j+2}
+(2\epsilon-1-2j)a_j=0,
$$

or

$$
\boxed{
a_{j+2}=\frac{2j+1-2\epsilon}{(j+2)(j+1)}a_j
}.
$$

If the series does not terminate, its large-$j$ behaviour reconstructs $e^{+\xi^2}$, making $\psi$ non-normalizable. Termination at degree $n$ requires the numerator to vanish at $j=n$:

$$
2n+1-2\epsilon=0.
$$

Hence

$$
\boxed{E_n=\left(n+\frac12\right)\hbar\omega},
\qquad n=0,1,2,\ldots .
$$

The terminating polynomials are Hermite polynomials $H_n(\xi)$. With the standard convention $H_n(\xi)=(-1)^ne^{\xi^2}d^n(e^{-\xi^2})/d\xi^n$, the normalized eigenfunctions are

$$
\boxed{
\psi_n(x)=
\left(\frac{m\omega}{\pi\hbar}\right)^{1/4}
\frac{H_n(\xi)}{\sqrt{2^n n!}}
e^{-\xi^2/2}
}.
$$

The normalization follows from

$$
\int_{-\infty}^{\infty}e^{-\xi^2}H_n(\xi)H_m(\xi)d\xi
=\sqrt\pi\,2^n n!\,\delta_{nm},
$$

and $dx=\sqrt{\hbar/(m\omega)}d\xi$. The eigenfunction parity is $(-1)^n$. The ground state has $E_0=\hbar\omega/2$, the zero-point energy required by the uncertainty principle.

## Three-dimensional isotropic oscillator

For

$$
V(x,y,z)=\frac12m\omega^2(x^2+y^2+z^2),
$$

the Hamiltonian separates exactly:

$$
\hat H=\hat H_x+\hat H_y+\hat H_z,
$$

$$
\hat H_x=-\frac{\hbar^2}{2m}\frac{\partial^2}{\partial x^2}
+\frac12m\omega^2x^2,
$$

with analogous expressions for $y$ and $z$. Put

$$
\Psi(x,y,z)=X(x)Y(y)Z(z).
$$

After substitution and division by $XYZ$,

$$
\frac{\hat H_xX}{X}
+\frac{\hat H_yY}{Y}
+\frac{\hat H_zZ}{Z}=E.
$$

Each term depends on a different coordinate, so each equals a constant $E_x,E_y,E_z$ with $E=E_x+E_y+E_z$. Applying the one-dimensional result to every factor gives

$$
\boxed{
\Psi_{n_xn_yn_z}(x,y,z)
=\psi_{n_x}(x)\psi_{n_y}(y)\psi_{n_z}(z)
},
$$

$$
\boxed{
E_{n_xn_yn_z}
=\left(n_x+n_y+n_z+\frac32\right)\hbar\omega
}.
$$

Here $n_x,n_y,n_z$ are independent non-negative integers. For total quantum number $N=n_x+n_y+n_z$, the energy is $(N+3/2)\hbar\omega$. The number of non-negative integer triples with that sum is

$$
g_N=\frac{(N+1)(N+2)}2.
$$

The normalized ground state is

$$
\boxed{
\Psi_{000}(\mathbf r)=
\left(\frac{m\omega}{\pi\hbar}\right)^{3/4}
e^{-m\omega r^2/(2\hbar)}
},
$$

with energy $3\hbar\omega/2$, one zero-point contribution from each Cartesian direction.

![Equation-generated oscillator potential, eigenfunctions, and energy spacing]({{ '/assets/images/bsc/sem-v/mj-11/unit-iii/harmonic-oscillator.png' | relative_url }})

The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-iii/harmonic-oscillator.tex' | relative_url }}) generates the figure. The dimensionless differential equation, Hermite-polynomial residuals, and 3D energy sum are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/oscillator-checks.mac' | relative_url }}).

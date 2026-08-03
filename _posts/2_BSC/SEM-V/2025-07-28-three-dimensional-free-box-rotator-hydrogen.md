---
title: "Three-Dimensional Free Particle, Box, Rigid Rotator, and Hydrogen Ground State"
date: 2025-07-28 09:00:00 +0530
categories:
  - bsc-v
tags: [three-dimensional-schrodinger-equation, box-potential, rigid-rotator, hydrogen-ground-state]
permalink: /bsc/sem-v/mj-11/three-dimensional-quantum-systems/
---

## Free particle in three dimensions

For $V(\mathbf r)=0$, the time-independent Schrödinger equation is

$$
-\frac{\hbar^2}{2m}\nabla^2\psi=E\psi.
$$

Try the plane wave

$$
\psi_{\mathbf k}(\mathbf r)=A e^{i\mathbf k\cdot\mathbf r}.
$$

Each spatial derivative supplies a factor $ik_j$, so

$$
\nabla^2e^{i\mathbf k\cdot\mathbf r}
=-(k_x^2+k_y^2+k_z^2)e^{i\mathbf k\cdot\mathbf r}
=-k^2e^{i\mathbf k\cdot\mathbf r}.
$$

Therefore

$$
\boxed{E=\frac{\hbar^2k^2}{2m}},
\qquad
\boxed{\mathbf p=\hbar\mathbf k}.
$$

The time-dependent state is

$$
\Psi_{\mathbf k}(\mathbf r,t)
=A e^{i(\mathbf k\cdot\mathbf r-\omega t)},
\qquad \omega=\frac{\hbar k^2}{2m}.
$$

No boundary restricts $\mathbf k$, so the energy is continuous. A plane wave is delta-normalized rather than square-normalized:

$$
\langle\mathbf r\vert\mathbf k\rangle
=\frac{e^{i\mathbf k\cdot\mathbf r}}{(2\pi)^{3/2}},
\qquad
\langle\mathbf k\vert\mathbf k^{\prime}\rangle
=\delta^{(3)}(\mathbf k-\mathbf k^{\prime}).
$$

## Three-dimensional rigid box potential

Let $V=0$ inside the rectangular region

$$
0<x<L_x,\qquad0<y<L_y,\qquad0<z<L_z,
$$

and $V=\infty$ outside. Set $\psi=X(x)Y(y)Z(z)$. Division of the interior equation by $XYZ$ gives

$$
-\frac{\hbar^2}{2m}
\left(\frac{X^{\prime\prime}}{X}+\frac{Y^{\prime\prime}}{Y}
+\frac{Z^{\prime\prime}}{Z}\right)=E.
$$

Each ratio depends on only one coordinate, so introduce constants $k_x^2,k_y^2,k_z^2$ satisfying

$$
X^{\prime\prime}+k_x^2X=0,
\quad
Y^{\prime\prime}+k_y^2Y=0,
\quad
Z^{\prime\prime}+k_z^2Z=0.
$$

The six rigid-wall conditions make every factor vanish at both of its endpoints. Hence

$$
k_x=\frac{n_x\pi}{L_x},\quad
k_y=\frac{n_y\pi}{L_y},\quad
k_z=\frac{n_z\pi}{L_z},
$$

where $n_x,n_y,n_z=1,2,3,\ldots$. The normalized product eigenfunctions are

$$
\boxed{
\psi_{n_xn_yn_z}=
\sqrt{\frac{8}{L_xL_yL_z}}
\sin\!\frac{n_x\pi x}{L_x}
\sin\!\frac{n_y\pi y}{L_y}
\sin\!\frac{n_z\pi z}{L_z}
},
$$

and the discrete energies are

$$
\boxed{
E_{n_xn_yn_z}=\frac{\pi^2\hbar^2}{2m}
\left(\frac{n_x^2}{L_x^2}
+\frac{n_y^2}{L_y^2}
+\frac{n_z^2}{L_z^2}\right)
}.
$$

Each sine contributes a normalization integral $L_j/2$, which explains the factor $\sqrt{8/(L_xL_yL_z)}$. The unconfined free particle has continuous $\mathbf k$; the same local differential equation acquires discrete $\mathbf k$ when rigid boundaries are imposed.

## Rigid rotator

A rigid rotator consists of a particle of reduced mass $\mu$ constrained to a fixed distance $a$ from a centre. Its moment of inertia is

$$
I=\mu a^2,
$$

and radial kinetic energy is absent. The Hamiltonian is

$$
\boxed{\hat H=\frac{\hat L^2}{2I}},
$$

where

$$
\hat L^2=-\hbar^2
\left[
\frac1{\sin\theta}\frac{\partial}{\partial\theta}
\left(\sin\theta\frac{\partial}{\partial\theta}\right)
+\frac1{\sin^2\theta}\frac{\partial^2}{\partial\phi^2}
\right].
$$

Set $Y(\theta,\phi)=\Theta(\theta)\Phi(\phi)$ in $\hat L^2Y=\lambda\hbar^2Y$. Multiplication by $\sin^2\theta/(\Theta\Phi)$ separates the variables:

$$
\frac1\Phi\frac{d^2\Phi}{d\phi^2}
=-m_\ell^2,
$$

$$
\frac1{\sin\theta}\frac d{d\theta}
\left(\sin\theta\frac{d\Theta}{d\theta}\right)
+\left[\lambda-\frac{m_\ell^2}{\sin^2\theta}\right]\Theta=0.
$$

The azimuthal solution is $\Phi\propto e^{im_\ell\phi}$. Single-valuedness, $\Phi(\phi+2\pi)=\Phi(\phi)$, requires

$$
m_\ell=0,\pm1,\pm2,\ldots .
$$

Regularity at the poles $\theta=0,\pi$ turns the polar equation into the associated Legendre problem and permits only

$$
\lambda=\ell(\ell+1),
\qquad
\ell=0,1,2,\ldots,
\qquad
\lvert m_\ell\rvert\leq\ell.
$$

The normalized angular eigenfunctions are the spherical harmonics $Y_\ell^{m_\ell}(\theta,\phi)$. Thus

$$
\boxed{E_\ell=\frac{\hbar^2}{2I}\ell(\ell+1)},
$$

with $2\ell+1$ allowed values of $m_\ell$ at each $\ell$. The factor $\hbar^2/I$ has units of energy.

## Hydrogen atom: s-state ground state

For electron-proton reduced mass $\mu$ and Coulomb potential

$$
V(r)=-\frac{e^2}{4\pi\varepsilon_0r}
=-\frac{\alpha}{r},
\qquad
\alpha=\frac{e^2}{4\pi\varepsilon_0},
$$

an s-state has $\ell=0$ and no angular dependence beyond the constant $Y_0^0=1/\sqrt{4\pi}$. Absorb that constant into the normalization and denote the complete spherically symmetric spatial wavefunction by $R(r)$. Then

$$
\nabla^2R=\frac1{r^2}\frac d{dr}\left(r^2\frac{dR}{dr}\right).
$$

The ground state must be finite at $r=0$ and decay as $r\to\infty$. Try the simplest function with those properties,

$$
R(r)=C e^{-r/a},\qquad a>0.
$$

Direct differentiation gives

$$
\nabla^2R
=\left(\frac1{a^2}-\frac{2}{ar}\right)R.
$$

Substitution into $\hat HR=ER$ yields

$$
\hat HR=
\left[
-\frac{\hbar^2}{2\mu a^2}
+\frac1r\left(\frac{\hbar^2}{\mu a}-\alpha\right)
\right]R.
$$

For this to be an eigenvalue equation with constant $E$, the coefficient of $1/r$ must vanish. Therefore

$$
\boxed{a=a_0=\frac{\hbar^2}{\mu\alpha}
=\frac{4\pi\varepsilon_0\hbar^2}{\mu e^2}},
$$

and

$$
\boxed{
E_1=-\frac{\hbar^2}{2\mu a_0^2}
=-\frac{\mu e^4}{2(4\pi\varepsilon_0)^2\hbar^2}
}.
$$

For $\mu\simeq m_e$, these are $a_0\simeq5.29\times10^{-11}\,\mathrm m$ and $E_1\simeq-13.6\,\mathrm{eV}$. Normalization over three-dimensional space requires

$$
1=4\pi\lvert C\rvert^2\int_0^\infty r^2e^{-2r/a_0}dr
=\pi a_0^3\lvert C\rvert^2.
$$

Thus the complete normalized s-state ground wavefunction is

$$
\boxed{
\psi_{100}(r)=\frac1{\sqrt{\pi a_0^3}}e^{-r/a_0}
}.
$$

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-11/unit-iii/three-dimensional-systems.png' | relative_url }}" alt="Equation-generated rigid box, rotator, and hydrogen ground-state geometry" loading="lazy" decoding="async">
</figure>

The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-iii/three-dimensional-systems.tex' | relative_url }}) generates the figure. Plane-wave, box, rotator, hydrogen eigenvalue, and hydrogen normalization residuals are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/three-dimensional-checks.mac' | relative_url }}).

## Solved Problems

### 1. Energy and degeneracy in a cubic quantum box

An electron is confined to a cubic rigid box of side $L=0.500\ \mathrm{nm}$. Find the energy and spatial degeneracy of the state labelled $(n_x,n_y,n_z)=(1,1,2)$.

**Solution.** For a cube,

$$
E_{n_xn_yn_z}
=\frac{\pi^2\hbar^2}{2m_eL^2}
\left(n_x^2+n_y^2+n_z^2\right).
$$

Here the positive integer sum is

$$
1^2+1^2+2^2=6,
$$

while the one-unit energy scale is

$$
\frac{\pi^2\hbar^2}{2m_eL^2}
=1.5041\ \mathrm{eV}.
$$

Therefore

$$
\boxed{E_{112}=6(1.5041)=9.025\ \mathrm{eV}}.
$$

The distinct permutations $(1,1,2)$, $(1,2,1)$, and $(2,1,1)$ have the same energy, so the spatial degeneracy is

$$
\boxed{g=3}.
$$

The energy is positive because an infinite box has zero interior potential and nonzero confinement kinetic energy. The factor $\hbar^2/(mL^2)$ has energy units. As $L\to\infty$, this energy and the separation between neighbouring box levels tend to zero.

### 2. Rotational energy spacing and characteristic frequency

A rigid rotator has moment of inertia $I=1.50\times10^{-46}\ \mathrm{kg\,m^2}$. Find the energy and degeneracy of its $\ell=2$ level, then express the energy spacing between the $\ell=2$ and $\ell=1$ levels as a frequency.

**Solution.** The level energy is

$$
E_\ell=\frac{\hbar^2}{2I}\ell(\ell+1).
$$

For $\ell=2$,

$$
\boxed{E_2=\frac{3\hbar^2}{I}
=1.388\times10^{-3}\ \mathrm{eV}},
$$

and the allowed $m_\ell=-2,-1,0,1,2$ give

$$
\boxed{g_2=2\ell+1=5}.
$$

The positive spacing between the two levels is

$$
\begin{aligned}
\Delta E
&=E_2-E_1\\
&=\frac{\hbar^2}{2I}[6-2]
=\frac{2\hbar^2}{I}
=9.255\times10^{-4}\ \mathrm{eV}.
\end{aligned}
$$

Thus

$$
\boxed{\nu=\frac{\Delta E}{h}
=2.24\times10^{11}\ \mathrm{Hz}}.
$$

Since $I$ has units $\mathrm{kg\,m^2}$, $\hbar^2/I$ has energy units. The frequency is simply the positive level spacing divided by Planck's constant; it characterizes the $\ell=2$ to $\ell=1$ separation without adding assumptions about a particular interaction. At $\ell=0$, the rotational energy is zero; as $I\to\infty$, all rotational spacings collapse toward zero.

## Descriptive Questions

1. Why is the spectrum continuous for a three-dimensional free particle but discrete when rigid boundaries are imposed?
2. Derive the rectangular-box eigenfunctions and explain how equal side lengths create degeneracies through quantum-number permutations.
3. How do single-valuedness in $\phi$ and regularity at the polar axes quantize $m_\ell$ and $\ell$ for a rigid rotator?
4. Why does the hydrogen ground-state exponential determine both the Bohr radius and the negative binding energy when substituted into the radial Schrödinger equation?

## Numerical Problems

1. Find the kinetic energy of a free electron with wave-number magnitude $5.00\times10^9\ \mathrm{m^{-1}}$.<br>
   **Final answer:** $\boxed{E=\hbar^2k^2/(2m_e)=0.9525\ \mathrm{eV}}$.
2. Find the ground-state energy of an electron in a cubic box of side $1.00\ \mathrm{nm}$.<br>
   **Final answer:** $\boxed{E_{111}=1.128\ \mathrm{eV}}$.
3. For hydrogen in its ground state, find the probability of locating the electron within one Bohr radius.<br>
   **Final answer:** $\boxed{P(r<a_0)=1-5e^{-2}=0.3233}$.

The original three-dimensional eigenvalue identities are checked in the topic worksheet linked above. Every added box, rotator, and hydrogen probability value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Rigid rotor](https://en.wikipedia.org/wiki/Rigid_rotor)
2. [MIT OpenCourseWare 8.04, lecture notes: Lectures 20-22 on three-dimensional quantum mechanics, angular momentum, and hydrogen](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/pages/lecture-notes/)
3. [MIT OpenCourseWare 8.04, Lectures 21-22: Hydrogen Atom](https://ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/e34ceed6a6ec944a3c761fcbbf48be5f_MIT8_04S16_LecNotes22.pdf)
4. [The Feynman Lectures on Physics, Vol. III, Chapter 19: The Hydrogen Atom and the Periodic Table](https://www.feynmanlectures.caltech.edu/III_19.html)

---
title: "Rotational Spectra of Diatomic Molecules"
summary: "Rigid-rotor dynamics, quantized rotational levels, electric-dipole selection rules, and the microwave line spectrum of a diatomic molecule."
date: 2026-05-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - rotational-spectra
  - rigid-rotor
  - diatomic-molecule
permalink: /msc/sem-ii/molecular-spectra/rotational-spectra-of-diatomic-molecules/
hidden: true
---

Consider two nuclei of masses $m_1$ and $m_2$ at positions
$\mathbf r_1$ and $\mathbf r_2$. Introduce the centre-of-mass and relative
coordinates

$$
\mathbf R=\frac{m_1\mathbf r_1+m_2\mathbf r_2}{m_1+m_2},
\qquad
\mathbf r=\mathbf r_1-\mathbf r_2.
$$

If $M=m_1+m_2$ and

$$
\mu=\frac{m_1m_2}{m_1+m_2}
$$

is the reduced mass, the inverse transformation is

$$
\mathbf r_1=\mathbf R+\frac{m_2}{M}\mathbf r,
\qquad
\mathbf r_2=\mathbf R-\frac{m_1}{M}\mathbf r.
$$

Substitution into the nuclear kinetic energy gives

$$
\begin{aligned}
T
&=\frac12m_1\dot{\mathbf r}_1^{\,2}
 +\frac12m_2\dot{\mathbf r}_2^{\,2}\\
&=\frac12m_1
\left(\dot{\mathbf R}+\frac{m_2}{M}\dot{\mathbf r}\right)^2
+\frac12m_2
\left(\dot{\mathbf R}-\frac{m_1}{M}\dot{\mathbf r}\right)^2\\
&=\frac12(m_1+m_2)\dot{\mathbf R}^{\,2}
+\frac{m_1m_2-m_2m_1}{M}
\dot{\mathbf R}\cdot\dot{\mathbf r}\\
&\quad
+\frac12\left(
\frac{m_1m_2^2+m_2m_1^2}{M^2}
\right)\dot{\mathbf r}^{\,2}\\
&=\frac12M\dot{\mathbf R}^{\,2}
+\frac12\frac{m_1m_2}{M}\dot{\mathbf r}^{\,2}\\
&=\frac12M\dot{\mathbf R}^{\,2}
+\frac12\mu\dot{\mathbf r}^{\,2}.
\end{aligned}
$$

The translational motion of the whole molecule therefore separates from its
internal motion. Spectroscopy concerns the second term.

## The rigid rotor

At rotational energies much smaller than the vibrational spacing, take the
internuclear distance to be fixed at its equilibrium value $r_e$. In spherical
coordinates,

$$
\dot{\mathbf r}^{\,2}
=\dot r^{\,2}+r^2\dot\theta^{\,2}
 +r^2\sin^2\theta\,\dot\phi^{\,2}.
$$

Putting $\dot r=0$ and $r=r_e$ gives

$$
T_{\mathrm{rot}}
=\frac12I\left(\dot\theta^{\,2}
 +\sin^2\theta\,\dot\phi^{\,2}\right),
\qquad
I=\mu r_e^2.
$$

Since the classical angular momentum satisfies
$L^2=2IT_{\mathrm{rot}}$, the quantum Hamiltonian is

$$
\widehat H_{\mathrm{rot}}=\frac{\widehat L^2}{2I}.
$$

The spherical harmonics obey

$$
\widehat L^2Y_J^M
=\hbar^2J(J+1)Y_J^M,
\qquad
J=0,1,2,\ldots,
$$

and hence

$$
\boxed{E_J=\frac{\hbar^2}{2I}J(J+1)}.
$$

For a given $J$, $M$ takes the $2J+1$ values
$-J,-J+1,\ldots,J$, so a field-free rotational level is $(2J+1)$-fold
degenerate.

Spectroscopic energies are usually divided by $hc$. Define the rotational
term value

$$
F(J)=\frac{E_J}{hc}=BJ(J+1),
$$

where

$$
\boxed{
B=\frac{\hbar^2}{2Ihc}
=\frac{h}{8\pi^2cI}
=\frac{h}{8\pi^2c\mu r_e^2}.
}
$$

Thus a measured rotational constant determines the molecular moment of
inertia and, if the isotopic masses are known, the bond length.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/rotational-levels.png' | relative_url }}" alt="Rigid-rotor energy levels proportional to J times J plus one, with adjacent allowed absorption transitions and their increasing wavenumbers" loading="lazy">
  <figcaption>Rigid-rotor levels are not equally spaced. Adjacent electric-dipole transitions nevertheless form an equally spaced spectral series because \(F(J+1)-F(J)=2B(J+1)\).</figcaption>
</figure>

## Electric-dipole selection rule

Let a heteronuclear molecule possess a permanent electric dipole
$\boldsymbol\mu_e=\mu_e\widehat{\mathbf r}$. In a radiation field polarized
along $z$, the perturbation contains

$$
\widehat H'(t)=-\mu_eE_0\cos\theta\cos\omega t.
$$

A transition is possible only if

$$
\left\langle J'M'\middle|\cos\theta\middle|JM\right\rangle\ne0.
$$

The spherical-harmonic recurrence relation is

$$
\begin{aligned}
\cos\theta\,Y_J^M
={}&
\sqrt{\frac{(J+1)^2-M^2}{(2J+1)(2J+3)}}\,Y_{J+1}^M\\
&+
\sqrt{\frac{J^2-M^2}{(2J-1)(2J+1)}}\,Y_{J-1}^M.
\end{aligned}
$$

Orthogonality of the spherical harmonics leaves only

$$
\Delta J=\pm1,
\qquad
\Delta M=0
$$

for $z$-polarized radiation. The other two polarizations give
$\Delta M=\pm1$, but the rotational rule remains $\Delta J=\pm1$. Absorption
raises the rotational quantum number, so $J\rightarrow J+1$.

A homonuclear diatomic molecule has no permanent electric dipole: exchanging
its identical nuclei reverses $\widehat{\mathbf r}$ without changing the
molecule, which requires $\boldsymbol\mu_e=-\boldsymbol\mu_e=0$. It therefore
has no pure electric-dipole rotational spectrum.

## Positions of the absorption lines

For $J\rightarrow J+1$,

$$
\begin{aligned}
\widetilde\nu_J
&=\frac{E_{J+1}-E_J}{hc}\\
&=B\left[(J+1)(J+2)-J(J+1)\right]\\
&=2B(J+1).
\end{aligned}
$$

Therefore

$$
\boxed{\widetilde\nu_J=2B,\,4B,\,6B,\ldots}
$$

and neighbouring lines have the constant separation

$$
\widetilde\nu_{J+1}-\widetilde\nu_J=2B.
$$

The photon energies lie mainly in the microwave or far-infrared region.
At thermal equilibrium the population of the lower level is proportional to

$$
N_J\propto(2J+1)
\exp\left[-\frac{hcBJ(J+1)}{k_{\mathrm B}T}\right].
$$

The degeneracy initially increases with $J$, whereas the Boltzmann factor
eventually decreases. Their competition produces a maximum in the observed
line-intensity envelope.

## Departure from perfect rigidity

Rotation stretches a real bond. Let $x=r-r_e$ and approximate the stretching
potential by $kx^2/2$. For a fixed $J$, the internal energy is

$$
E_J(x)
=\frac12kx^2
+\frac{\hbar^2J(J+1)}{2\mu(r_e+x)^2}.
$$

Define

$$
A_J=\frac{\hbar^2J(J+1)}{2\mu r_e^2}.
$$

For $|x|\ll r_e$,

$$
\frac1{(r_e+x)^2}
=\frac1{r_e^2}\left(1+\frac{x}{r_e}\right)^{-2}
\simeq\frac1{r_e^2}\left(1-\frac{2x}{r_e}\right).
$$

Therefore

$$
E_J(x)\simeq
A_J+\frac12kx^2-\frac{2A_J}{r_e}x.
$$

The stretched equilibrium for this rotational state follows from

$$
\frac{dE_J}{dx}=kx-\frac{2A_J}{r_e}=0,
$$

so

$$
x_J=\frac{2A_J}{kr_e}>0.
$$

Substitution back into the energy gives

$$
\begin{aligned}
E_J(x_J)
&=A_J+\frac12k\left(\frac{2A_J}{kr_e}\right)^2
-\frac{2A_J}{r_e}\left(\frac{2A_J}{kr_e}\right)\\
&=A_J-\frac{2A_J^2}{kr_e^2}.
\end{aligned}
$$

After division by $hc$, this has the form

$$
F(J)=BJ(J+1)-D[J(J+1)]^2,
\qquad D>0.
$$

Indeed,

$$
D=\frac{2hcB^2}{kr_e^2}
=\frac{4B^3}{\widetilde\nu_e^{\,2}},
$$

where
$k=4\pi^2c^2\mu\widetilde\nu_e^{\,2}$ has been used in the second equality.

Taking the difference of adjacent terms gives

$$
\begin{aligned}
\widetilde\nu_J
&=F(J+1)-F(J)\\
&=2B(J+1)-4D(J+1)^3.
\end{aligned}
$$

The correction is negative because centrifugal stretching increases $I$ and
therefore lowers the rotational energy. Consequently, the spacings contract
slightly at large $J$ instead of remaining exactly $2B$.

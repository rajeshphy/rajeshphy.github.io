---
title: "Energy Bands and Density of States"
summary: "Band formation and the three-dimensional conduction- and valence-band densities of states."
date: 2025-05-31 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, energy-bands, density-of-states]
permalink: /bsc/sem-iv/mj-7/energy-bands-and-density-of-states/
hidden: true
---

When $N$ isolated identical atoms are brought together to form a crystal, overlap between corresponding atomic orbitals removes their $N$-fold degeneracy. The resulting closely spaced levels form allowed bands in a macroscopic solid. Energy intervals containing no allowed states are forbidden gaps. For an intrinsic semiconductor at $0\ \mathrm K$, the valence band is full, the conduction band is empty, and

$$\boxed{E_g=E_c-E_v}.$$

The density of states answers how many one-electron states are available in an energy interval; the Fermi-Dirac function separately answers what fraction of them is occupied.

## Parabolic band edges and effective mass

Expand a band about an extremum $\mathbf k_0$. Since the first derivative vanishes there, the leading one-dimensional term is

$$
E(k)\simeq E(k_0)+\frac12
\left.\frac{d^2E}{dk^2}\right\rvert_{k_0}(k-k_0)^2.
$$

Defining

$$\boxed{\frac1{m^*}=\frac1{\hbar^2}\frac{d^2E}{dk^2}},$$

and measuring $k$ from the extremum gives, for one isotropic conduction-band valley,

$$\boxed{E(k)=E_c+\frac{\hbar^2k^2}{2m_n^*}}.$$

At a valence-band maximum the electron-band curvature is negative. Describing the missing electron as a positive-mass hole gives

$$\boxed{E(k)=E_v-\frac{\hbar^2k^2}{2m_p^*}},\qquad m_p^*>0.$$

Thus an electron effective mass follows the sign of band curvature, whereas the conventional hole mass is the positive magnitude associated with the downward valence-band curvature.

## Counting states in three dimensions

For a cube of volume $V=L^3$ with periodic boundary conditions, adjacent allowed components of $\mathbf k$ differ by $2\pi/L$. Each orbital state occupies the $k$-space volume $(2\pi)^3/V$. Including the two spin states, the number of states inside a sphere of radius $k$ is

$$
\mathcal N(k)
=2\frac{V}{(2\pi)^3}\frac{4\pi k^3}{3}
=\frac{Vk^3}{3\pi^2}.
$$

For the conduction band,

$$k=\frac{\sqrt{2m_n^*(E-E_c)}}{\hbar}.$$

Substitution gives the number of states per unit volume between $E_c$ and $E$:

$$
\frac{\mathcal N_c(E)}V
=\frac{1}{3\pi^2}
\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}(E-E_c)^{3/2}.
$$

The density of states per unit volume per unit energy is its derivative:

$$
\begin{aligned}
g_c(E)
&=\frac1V\frac{d\mathcal N_c}{dE}\\
&=\boxed{\frac{1}{2\pi^2}
\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}\sqrt{E-E_c}},
\qquad E\ge E_c.
\end{aligned}
$$

The same counting about a valence-band maximum gives

$$
\boxed{g_v(E)=\frac{1}{2\pi^2}
\left(\frac{2m_p^*}{\hbar^2}\right)^{3/2}\sqrt{E_v-E}},
\qquad E\le E_v.
$$

Both densities have units $\mathrm{J^{-1}m^{-3}}$ when energy is measured in joules. Integrating the conduction-band result over an interval $\Delta E$ recovers

$$
\int_{E_c}^{E_c+\Delta E}g_c(E)\,dE
=\frac{1}{3\pi^2}\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}(\Delta E)^{3/2}.
$$

The square-root density vanishes at the band edge but rises with energy. If there are $g_{\rm d}$ equivalent valleys, the total density of states is $g_{\rm d}$ times the single-valley result. When a quoted density-of-states effective mass already incorporates this degeneracy, it must not be multiplied again.

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/bands-dos-fermi.png' | relative_url }}" alt="Equation-generated valence and conduction densities of states with a Fermi-Dirac occupation curve">
  <figcaption>The square-root densities of states and the Fermi-Dirac occupation are distinct: allowed states are supplied by the bands, while $f(E)$ supplies their occupation probability.</figcaption>
</figure>
</div>

The editable source is [bands-dos-fermi.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/bands-dos-fermi.tex' | relative_url }}).

## Solved Problems

### 1. Effective mass from a measured band curvature

Near its minimum, a conduction band is fitted by

$$E(k)=E_c+(0.500\ \mathrm{eV\,nm^2})k^2,$$

where $k$ is in $\mathrm{nm^{-1}}$. Find $m_n^*/m_0$.

Comparing $E-E_c=Ak^2$ with $\hbar^2k^2/(2m_n^*)$ gives

$$m_n^*=\frac{\hbar^2}{2A}.$$

Since $\hbar^2/(2m_0)=0.0380998\ \mathrm{eV\,nm^2}$,

$$
\frac{m_n^*}{m_0}
=\frac{0.0380998}{0.500}
=0.07620.
$$

The positive curvature gives a positive electron effective mass. The units $\mathrm{eV\,nm^2}$ cancel in the ratio, and substituting $m_n^*$ back into $\hbar^2/(2m_n^*)$ returns the stated coefficient.

### 2. States near a conduction-band edge

For one isotropic valley with $m_n^*=0.26m_0$, find the number of states per unit volume from $E_c$ to $E_c+0.100\ \mathrm{eV}$ and the density of states at the upper edge.

Using SI units, $\Delta E=1.60218\times10^{-20}\ \mathrm J$. Hence

$$
\frac{\mathcal N_c}V
=\frac{1}{3\pi^2}\left(\frac{2m_n^*}{\hbar^2}\right)^{3/2}(\Delta E)^{3/2}
=1.904\times10^{25}\ \mathrm{m^{-3}}.
$$

At the upper edge,

$$
g_c(E_c+\Delta E)
=1.783\times10^{45}\ \mathrm{J^{-1}m^{-3}}
=2.856\times10^{20}\ \mathrm{eV^{-1}cm^{-3}}.
$$

Both quantities are positive. A compact integration check is

$$
\frac{\mathcal N_c}V=\frac23g_c(E_c+\Delta E)\Delta E
=1.904\times10^{19}\ \mathrm{cm^{-3}}.
$$

## Descriptive Questions

1. Explain how discrete atomic levels form allowed energy bands and forbidden gaps in a crystal.
2. Derive the effective-mass relation from the curvature of $E(k)$ and interpret the valence-band sign.
3. Count the allowed $k$ states in a three-dimensional sphere, including spin degeneracy.
4. Derive the conduction- and valence-band densities of states for isotropic parabolic bands.

## Numerical Problems

1. A conduction band follows $E(k)=E_c+(0.400\ \mathrm{eV\,nm^2})k^2$. Find the group velocity at $k=0.500\ \mathrm{nm^{-1}}$ using $v_g=\hbar^{-1}dE/dk$.

   **Final answer:** $v_g=6.077\times10^5\ \mathrm{m\,s^{-1}}$ in the positive-$k$ direction.

2. Find $k$ for a conduction electron $0.0800\ \mathrm{eV}$ above $E_c$ when $m_n^*=0.20m_0$.

   **Final answer:** $k=6.480\times10^8\ \mathrm{m^{-1}}=0.6480\ \mathrm{nm^{-1}}$.

3. Electrons occupy all spin-degenerate $k$ states inside a sphere of radius $k_0=1.00\ \mathrm{nm^{-1}}$ in a cubic sample of side $100\ \mathrm{nm}$. Using periodic boundary conditions, estimate the number of states $N=Vk_0^3/(3\pi^2)$.

   **Final answer:** $N=3.377\times10^4$ spin-degenerate states.

4. A parabolic conduction-band DOS obeys $g_c^2=B(E-E_c)$. Measurements give $g_c=2.00\times10^{20}\ \mathrm{eV^{-1}cm^{-3}}$ at $E=1.10\ \mathrm{eV}$ and $4.00\times10^{20}\ \mathrm{eV^{-1}cm^{-3}}$ at $E=1.40\ \mathrm{eV}$. Eliminate $B$ and infer the band-edge energy $E_c$.

   **Final answer:** $(4.00/2.00)^2=(1.40-E_c)/(1.10-E_c)=4$, so $E_c=1.00\ \mathrm{eV}$.

5. Six equivalent valleys each have a single-valley DOS of $4.00\times10^{19}\ \mathrm{eV^{-1}cm^{-3}}$ at a specified energy. Find the total DOS. If the single-valley density-of-states mass is $0.320m_0$, find the equivalent mass that incorporates valley degeneracy.

   **Final answer:** $g_{\rm total}=2.40\times10^{20}\ \mathrm{eV^{-1}cm^{-3}}$ and $m_{\rm DOS}=6^{2/3}(0.320m_0)=1.057m_0$.

6. At equal energy offsets from their edges, compare $g_v$ and $g_c$ when $m_p^*=0.50m_0$ and $m_n^*=0.25m_0$.

   **Final answer:** $g_v/g_c=(m_p^*/m_n^*)^{3/2}=2.828$.

All curvature identities, state-counting reductions, and numerical values are reproducible in the accessible [Maxima worksheet for energy bands and density of states]({{ '/assets/maxima/bsc/sem-iv/mj-7/energy-bands-density-of-states-check.mac' | relative_url }}).

## References

1. [Wikipedia: Density of states](https://en.wikipedia.org/wiki/Density_of_states)
2. [OpenStax University Physics Volume 3, Section 9.5: Band Theory of Solids](https://openstax.org/books/university-physics-volume-3/pages/9-5-band-theory-of-solids)
3. [MIT OpenCourseWare 6.720J, Lecture 2: Conduction- and Valence-Band Density of States](https://ocw.mit.edu/courses/6-720j-integrated-microelectronic-devices-spring-2007/resources/lecture2/)

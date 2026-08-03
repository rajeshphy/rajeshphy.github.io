---
title: "Semiconductor Materials, Carriers, and Band Gaps"
summary: "Semiconductor classification, electron and hole carriers, direct and indirect gaps, and heavy doping."
date: 2025-05-28 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, semiconductor-materials]
permalink: /bsc/sem-iv/mj-7/semiconductor-materials-and-bandgaps/
hidden: true
---

A crystalline semiconductor is described by allowed electron-energy bands. The upper edge of the valence band is $E_v$, the lower edge of the conduction band is $E_c$, and their separation is

$$\boxed{E_g=E_c-E_v}.$$

A metal has a partly filled band or overlapping bands. An insulator and a semiconductor both have a filled valence band and an empty conduction band at $0\ \mathrm K$, but a semiconductor has a sufficiently small gap for temperature, light, or controlled impurities to create mobile carriers. Elemental semiconductors include Si and Ge; compound semiconductors include GaAs, GaN, CdS, and InP. The gap and bonding vary from material to material, so the electrical and optical responses vary too.

## Charge carriers and conventional current

An electron promoted from the valence band to the conduction band leaves one empty valence state. A neighbouring valence electron can fill that state and leave another empty state behind. The empty state therefore propagates through the crystal and is represented as a hole with charge $+q$, whereas the conduction electron has charge $-q$.

For an electric field $\mathbf E$,

$$\mathbf F_n=-q\mathbf E,\qquad \mathbf F_p=+q\mathbf E.$$

With positive mobility magnitudes $\mu_n$ and $\mu_p$, the corresponding drift velocities are

$$\mathbf v_n=-\mu_n\mathbf E,\qquad \mathbf v_p=+\mu_p\mathbf E.$$

Current density is charge density multiplied by drift velocity. Consequently,

$$
\mathbf J_n=(-qn)\mathbf v_n=qn\mu_n\mathbf E,
\qquad
\mathbf J_p=(qp)\mathbf v_p=qp\mu_p\mathbf E.
$$

Although electrons drift opposite to $\mathbf E$, their negative charge reverses the current sign. Both carrier currents therefore point along $\mathbf E$, and

$$
\boxed{\mathbf J=\sigma\mathbf E},\qquad
\boxed{\sigma=q(n\mu_n+p\mu_p)},\qquad
\rho=\frac{1}{\sigma}.
$$

Here $n,p$ are in $\mathrm{m^{-3}}$, mobility is in $\mathrm{m^2\,V^{-1}s^{-1}}$, conductivity is in $\mathrm{S\,m^{-1}}$, and resistivity is in $\Omega\,\mathrm m$.

## Intrinsic and extrinsic material

In a pure semiconductor at thermal equilibrium, excitation across the gap creates electrons and holes in pairs. Therefore

$$n=p=n_i,$$

where $n_i$ is the intrinsic carrier concentration. Intentional substitutional impurities make the material extrinsic. A shallow donor contributes a conduction electron and becomes a fixed positive ion, producing n-type material. A shallow acceptor captures a valence electron, leaves a mobile hole, and becomes a fixed negative ion, producing p-type material. Thus doping redistributes mobile and fixed charge without violating electrical neutrality.

## Direct and indirect band gaps

Crystal momentum is $\hbar\mathbf k$. In a direct-gap semiconductor, the conduction-band minimum and valence-band maximum occur at the same wavevector. Since photon momentum is negligible on the Brillouin-zone scale, an almost vertical optical transition conserves crystal momentum and has threshold $h\nu=E_g$. GaAs is a common direct-gap material.

In an indirect-gap semiconductor, the two band extrema occur at different wavevectors. A phonon must participate. Let $\mathbf q_{\rm ph}$ be the momentum wavevector of the phonon that is actually absorbed or emitted, and let $E_{\rm ph}=\hbar\Omega_{\rm ph}>0$. Energy and crystal-momentum conservation give the correlated signs

$$
\begin{aligned}
\text{phonon absorption:}\quad
&h\nu+E_{\rm ph}=E_g,
&\mathbf k_v+\mathbf q_{\rm ph}&=\mathbf k_c,\\
&h\nu=E_g-E_{\rm ph},
&\mathbf k_c-\mathbf k_v&=+\mathbf q_{\rm ph};\\[3pt]
\text{phonon emission:}\quad
&h\nu=E_g+E_{\rm ph},
&\mathbf k_v&=\mathbf k_c+\mathbf q_{\rm ph},\\
&h\nu=E_g+E_{\rm ph},
&\mathbf k_c-\mathbf k_v&=-\mathbf q_{\rm ph}.
\end{aligned}
$$

The lower photon threshold belongs to phonon absorption and the higher threshold to phonon emission; exchanging only one of these signs breaks conservation. The extra phonon requirement makes radiative transitions less probable in an indirect-gap material such as Si.

## Heavy doping

At moderate doping, donor or acceptor states remain distinguishable and the carriers are usually non-degenerate. As dopant density rises, neighbouring impurity wavefunctions overlap, the discrete impurity levels broaden into an impurity band, and the Fermi level can approach or enter a principal band. The Maxwell-Boltzmann approximation then fails and the full Fermi-Dirac distribution is required. Heavy doping changes carrier density and scattering, but it never changes the charge signs of electrons and holes.

## Solved Problems

### 1. Conductivity of a two-carrier semiconductor

A sample has $n=2.50\times10^{21}\ \mathrm{m^{-3}}$, $p=4.00\times10^{14}\ \mathrm{m^{-3}}$, $\mu_n=0.140\ \mathrm{m^2\,V^{-1}s^{-1}}$, and $\mu_p=0.0500\ \mathrm{m^2\,V^{-1}s^{-1}}$. Find its conductivity and resistivity.

Using $q=1.602176634\times10^{-19}\ \mathrm C$,

$$
\begin{aligned}
\sigma
&=q(n\mu_n+p\mu_p)\\
&=(1.602176634\times10^{-19})
\left[(2.50\times10^{21})(0.140)+(4.00\times10^{14})(0.0500)\right]\\
&=56.08\ \mathrm{S\,m^{-1}},\\
\rho&=\sigma^{-1}=1.783\times10^{-2}\ \Omega\,\mathrm m.
\end{aligned}
$$

Both terms in $\sigma$ are positive, so both conventional-current contributions point along $\mathbf E$; electrons supply $99.999994\%$ of the conductivity. As a dimensional and numerical check, $\sigma\rho=1$.

### 2. Correlated thresholds of an indirect transition

An indirect-gap semiconductor has $E_g=1.120\ \mathrm{eV}$ and an assisting phonon energy $E_{\rm ph}=57.0\ \mathrm{meV}$. Find both absorption thresholds and their vacuum wavelengths.

For phonon absorption, the phonon supplies positive energy and the required photon energy is

$$E_{\gamma,-}=E_g-E_{\rm ph}=1.063\ \mathrm{eV}.$$

For phonon emission, the photon must also create the emitted phonon:

$$E_{\gamma,+}=E_g+E_{\rm ph}=1.177\ \mathrm{eV}.$$

Using $\lambda=hc/E_\gamma$ with $hc=1239.841984\ \mathrm{eV\,nm}$,

$$\lambda_-=1166.4\ \mathrm{nm},\qquad \lambda_+=1053.4\ \mathrm{nm}.$$

The minus-energy branch is the longer-wavelength branch and requires an initially occupied phonon mode; the plus-energy branch remains possible by phonon emission. The check $E_{\gamma,+}-E_{\gamma,-}=2E_{\rm ph}=0.114\ \mathrm{eV}$ preserves the correlated signs.

## Descriptive Questions

1. Distinguish metals, semiconductors, and insulators using band occupation and band gaps.
2. Explain why electron drift opposite to an electric field nevertheless produces conventional current along the field.
3. Compare intrinsic, n-type, and p-type materials in terms of mobile carriers and fixed impurity ions.
4. Use energy and crystal-momentum conservation to distinguish direct and indirect optical transitions.

## Numerical Problems

1. A semiconductor has lattice constant $a=0.565\ \mathrm{nm}$ and absorbs light of wavelength $900\ \mathrm{nm}$. Compare the photon wavevector $k_\gamma=2\pi/\lambda$ with the Brillouin-zone scale $k_{\rm BZ}=\pi/a$, and state what the comparison implies for an indirect transition.

   **Final answer:** $k_\gamma=6.981\times10^6\ \mathrm{m^{-1}}$, $k_{\rm BZ}=5.560\times10^9\ \mathrm{m^{-1}}$, and $k_\gamma/k_{\rm BZ}=1.256\times10^{-3}$ ($0.1256\%$). Photon momentum is negligible on the crystal-momentum scale, so a phonon is needed to supply the momentum mismatch of an indirect transition.

2. A conductivity measurement gives $\sigma=24.0\ \mathrm{S\,m^{-1}}$ for a sample with $n=1.25\times10^{21}\ \mathrm{m^{-3}}$, $\mu_n=0.100\ \mathrm{m^2\,V^{-1}s^{-1}}$, and $\mu_p=0.0500\ \mathrm{m^2\,V^{-1}s^{-1}}$. Using $q=1.60\times10^{-19}\ \mathrm C$, infer the hole concentration and the conductivity type.

   **Final answer:** $p=[\sigma/q-n\mu_n]/\mu_p=5.00\times10^{20}\ \mathrm{m^{-3}}$; since $n>p$, the sample is n-type.

3. Across a sample cross-section, $8.00\times10^{14}$ electrons per second move in the $-x$ direction while $3.00\times10^{14}$ holes per second move in the $+x$ direction. Find the two conventional-current contributions and the net current, including its direction.

   **Final answer:** Electron motion in $-x$ produces $I_n=(-q)(-8.00\times10^{14}\ \mathrm{s^{-1}})=128.2\ \mathrm{\mu A}$ in $+x$. The holes produce $I_p=q(3.00\times10^{14}\ \mathrm{s^{-1}})=48.07\ \mathrm{\mu A}$ in $+x$. Thus $I=176.2\ \mathrm{\mu A}$ in the $+x$ direction.

4. If $E=250\ \mathrm{V\,m^{-1}}$, $\mu_n=0.135\ \mathrm{m^2\,V^{-1}s^{-1}}$, and $\mu_p=0.0480\ \mathrm{m^2\,V^{-1}s^{-1}}$, find the signed drift velocities along the field axis.

   **Final answer:** $v_n=-33.75\ \mathrm{m\,s^{-1}}$ and $v_p=+12.00\ \mathrm{m\,s^{-1}}$.

5. Two phonon-assisted absorption edges are measured at $1.065\ \mathrm{eV}$ and $1.155\ \mathrm{eV}$. Interpreting them as $E_g-E_{\rm ph}$ and $E_g+E_{\rm ph}$, infer the band gap and phonon energy.

   **Final answer:** $E_g=(1.065+1.155)/2=1.110\ \mathrm{eV}$ and $E_{\rm ph}=(1.155-1.065)/2=0.0450\ \mathrm{eV}=45.0\ \mathrm{meV}$.

6. Estimate the mean dopant spacing $d=N_D^{-1/3}$ for $N_D=5.0\times10^{24}\ \mathrm{m^{-3}}$.

   **Final answer:** $d=5.85\ \mathrm{nm}$.

All symbolic identities, sign correlations, and numerical values are reproducible in the accessible [Maxima worksheet for semiconductor materials and band gaps]({{ '/assets/maxima/bsc/sem-iv/mj-7/semiconductor-materials-bandgaps-check.mac' | relative_url }}).

## References

1. [Wikipedia: Direct and indirect band gaps](https://en.wikipedia.org/wiki/Direct_and_indirect_band_gaps)
2. [OpenStax University Physics Volume 3, Section 9.5: Band Theory of Solids](https://openstax.org/books/university-physics-volume-3/pages/9-5-band-theory-of-solids)
3. [MIT OpenCourseWare 6.720J, Lecture 2: Intrinsic and Extrinsic Semiconductors and Density of States](https://ocw.mit.edu/courses/6-720j-integrated-microelectronic-devices-spring-2007/resources/lecture2/)

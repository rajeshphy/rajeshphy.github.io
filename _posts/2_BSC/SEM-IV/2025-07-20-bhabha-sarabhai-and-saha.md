---
title: "Homi Bhabha, Vikram Sarabhai, and Meghnad Saha"
summary: "Particle and astrophysical physics joined to India's atomic-energy and space institutions."
date: 2025-07-20 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-scientists, homi-bhabha, vikram-sarabhai, meghnad-saha]
permalink: /bsc/sem-iv/mj-5/bhabha-sarabhai-saha/
hidden: true
---

## Homi J. Bhabha: particles, cosmic rays, and atomic energy

Bhabha made foundational contributions to high-energy physics. Electron-positron elastic scattering,

$$e^-+e^+\longrightarrow e^-+e^+,$$

is called Bhabha scattering. With Walter Heitler he developed the cascade account of cosmic-ray showers: energetic electrons and photons repeatedly undergo bremsstrahlung and pair production, multiplying the number of shower particles until energy losses dominate.

In the simplest Heitler model, after each radiation length $X_0$ every particle divides its energy approximately equally between two descendants. After $n$ steps,

$$
N_n=2^n,
\qquad
E_n=\frac{E_0}{2^n}.
$$

Multiplication stops when $E_n$ approaches the material's critical energy $E_c$, giving

$$
n_{\max}\simeq\frac{\ln(E_0/E_c)}{\ln2},
\qquad
X_{\max}\simeq X_0n_{\max}.
$$

This is an order-of-magnitude shower model: it assumes collinear equal splitting and ignores fluctuations, ionization details and the different interaction lengths of electrons and photons.

Bhabha was also an institution builder. He became the founding director of the Tata Institute of Fundamental Research and the leading architect of India's atomic-energy programme, linking fundamental research, trained personnel, reactors and fuel-cycle capability. These institutional contributions should be distinguished from his particle-physics equations, although both were central to his scientific career. The [TIFR archive](https://www.tifr.res.in/FD2025/) records both his scattering and cosmic-shower work and his founding role.

## Vikram Sarabhai: a space programme directed toward applications

Sarabhai founded the Physical Research Laboratory in 1947 and developed cosmic-ray and upper-atmosphere research. He then led the creation of the Indian National Committee for Space Research in 1962. ISRO replaced INCOSPAR in 1969.

His central programme was not simply to launch rockets. It connected space technology to communication, meteorology, education and resource observation. A space mission combines orbital physics with an application chain:

$$\text{sensor}\rightarrow\text{downlink}\rightarrow
\text{calibrated data}\rightarrow\text{decision or service}.$$

The official [ISRO history](https://www.isro.gov.in/genesis.html) documents the 1962 and 1969 institutional sequence and Sarabhai's application-centred vision.

For a circular two-body orbit of radius $r$ about Earth, neglecting drag and nonspherical gravity,

$$
v=\sqrt{\frac{GM_E}{r}},
\qquad
T_{\rm orb}=2\pi\sqrt{\frac{r^3}{GM_E}}.
$$

These equations fix the transport layer of a satellite mission; the usefulness of the data still depends on the calibration and application chain.

## Meghnad Saha: thermal ionization and stellar spectra

In a stellar atmosphere, atoms exchange energy with a thermal bath and move between ionization stages. For stage $i\rightleftharpoons i+1+e^-$, thermal equilibrium gives the Saha equation

$$
\boxed{
\frac{n_{i+1}n_e}{n_i}
=\frac{2U_{i+1}}{U_i}
\left(\frac{2\pi m_e k_BT}{h^2}\right)^{3/2}
\exp\!\left(-\frac{\chi_i}{k_BT}\right)}.
$$

Here $n_i,n_{i+1},n_e$ are number densities, $U_i$ are internal partition functions and $\chi_i$ is the ionization energy. The factor in parentheses has dimensions of number density. Higher temperature favours ionization through available translational states, while higher electron density favours recombination through the left-hand equilibrium ratio.

The equation assumes local thermodynamic equilibrium, nondegenerate ideal gases and Maxwell--Boltzmann translational statistics, with partition functions defined consistently. It is an equilibrium relation rather than an ionization-rate equation. For pure hydrogen, charge neutrality gives $n_e=n_p$, while conservation gives $n_{\rm H,tot}=n_{\rm H^0}+n_p$; both constraints are needed to turn the Saha ratio into an ionization fraction.

An absorption line can be strong only when enough atoms occupy the relevant ionization and excitation stage. Stellar spectra therefore vary greatly with temperature even when stars contain broadly similar elements. Saha's equation connected laboratory atomic physics, thermodynamics and astronomical spectra, turning spectral classification into a quantitative probe of stellar atmospheres.

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/modern-physics-checks.mac' | relative_url }}) reduces the Saha prefactor's dimensional residual to zero.

## Solved Problems

### 1. A Heitler-model shower estimate

Let a $100\ \mathrm{GeV}=10^5\ \mathrm{MeV}$ primary develop in a medium with $E_c=80\ \mathrm{MeV}$. Then

$$
n_{\max}=\frac{\ln(10^5/80)}{\ln2}=10.29.
$$

After ten splits,

$$
N_{10}=2^{10}=1024,
\qquad
E_{10}=\frac{10^5}{1024}=97.66\ \mathrm{MeV},
$$

still slightly above $E_c$. After eleven splits, $E_{11}=48.83\ \mathrm{MeV}<E_c$. The toy model therefore places shower maximum between the tenth and eleventh radiation lengths, with multiplicity of order $E_0/E_c\simeq1250$.

### 2. Period of a geosynchronous-radius circular orbit

Use $r=42164\ \mathrm{km}=4.2164\times10^7\ \mathrm{m}$ and Earth's gravitational parameter $GM_E=3.986004418\times10^{14}\ \mathrm{m^3\,s^{-2}}$:

$$
T_{\rm orb}=2\pi\sqrt{\frac{(4.2164\times10^7)^3}
{3.986004418\times10^{14}}}
=86164\ \mathrm{s}.
$$

Thus $T_{\rm orb}=23.934\ \mathrm{h}$, approximately one sidereal day. Matching this period alone does not ensure geostationarity; the orbit must also be circular, equatorial and prograde.

### 3. Hydrogen ionization fraction from the Saha equation

Take pure hydrogen at $T=10^4\ \mathrm{K}$ with total hydrogen density $n_{\rm H,tot}=10^{20}\ \mathrm{m^{-3}}$. Using $U_p=1$, $U_{\rm H^0}=2$ and $\chi=13.6\ \mathrm{eV}$, the factor $2U_p/U_{\rm H^0}=1$, and

$$
S(T)=\left(\frac{2\pi m_ek_BT}{h^2}\right)^{3/2}
e^{-\chi/(k_BT)}
=3.3788\times10^{20}\ \mathrm{m^{-3}}.
$$

Let $x=n_p/n_{\rm H,tot}$. Charge neutrality gives $n_e=xn_{\rm H,tot}$ and $n_{\rm H^0}=(1-x)n_{\rm H,tot}$, hence

$$
\frac{x^2}{1-x}=\frac{S}{n_{\rm H,tot}}=3.3788.
$$

The physical root is

$$
x=\frac{\sqrt{y^2+4y}-y}{2}=0.8072,
\qquad y=3.3788.
$$

Under the stated equilibrium assumptions, about $80.7\%$ of the hydrogen is ionized.

## Descriptive Questions

1. State the physical processes and simplifying assumptions in the Heitler shower model.
2. Distinguish Bhabha's particle-physics work from his institution-building role in India's atomic-energy programme.
3. Explain how Sarabhai linked orbital technology to communication, education and resource observation.
4. Derive the hydrogen ionization-fraction equation from the Saha relation, charge neutrality and particle conservation.

## Numerical Problems

1. Find the minimum centre-of-mass energy for $e^-e^+\rightarrow\mu^-\mu^+$, taking $m_\mu c^2=105.6583755\ \mathrm{MeV}$ and neglecting the electron mass.

   **Final answer:** $\sqrt{s}_{\min}=2m_\mu c^2=211.317\ \mathrm{MeV}$.

2. With fixed partition functions, by what factor does the hydrogen Saha factor increase from $10000\ \mathrm{K}$ to $12000\ \mathrm{K}$? Use $\chi=13.6\ \mathrm{eV}$.

   **Final answer:** $(1.2)^{3/2}\exp[(\chi/k_B)(1/10000-1/12000)]=18.244$.

Every symbolic identity and rounded result is checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/bhabha-sarabhai-saha-checks.mac' | relative_url }}).

## References

1. Wikipedia overviews: [Homi J. Bhabha](https://en.wikipedia.org/wiki/Homi_J._Bhabha), [Vikram Sarabhai](https://en.wikipedia.org/wiki/Vikram_Sarabhai), and [Meghnad Saha](https://en.wikipedia.org/wiki/Meghnad_Saha).
2. [Tata Institute of Fundamental Research: Homi Bhabha's scientific and institutional work](https://www.tifr.res.in/FD2025/).
3. [ISRO: Genesis of the Indian space programme](https://www.isro.gov.in/genesis.html).
4. Bradley W. Carroll and Dale A. Ostlie, *An Introduction to Modern Astrophysics*, 2nd ed., Pearson, 2007, chapters on stellar atmospheres and ionization.
5. Bruno Rossi, *High-Energy Particles*, Prentice-Hall, 1952, chapters on cosmic-ray cascades.

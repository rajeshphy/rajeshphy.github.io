---
title: "X-Rays: Principles, Emission and Absorption"
summary: "Photon origin, continuous and characteristic spectra, attenuation, absorption edges, and Bragg analysis."
date: 2026-05-23 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - x-rays
  - emission-spectrum
  - absorption
permalink: /msc/sem-ii/molecular-spectra/x-ray-principles-emission-absorption/
hidden: true
---

X-rays are electromagnetic waves whose photon energies are large enough to probe distances comparable with atomic separations and to remove tightly bound atomic electrons. Their wave and particle descriptions are connected by

$$
\nu=\frac{c}{\lambda},
\qquad
E_\gamma=h\nu=\frac{hc}{\lambda},
\qquad
p_\gamma=\frac{E_\gamma}{c}=\frac{h}{\lambda}.
$$

Thus a shorter wavelength means a larger photon energy and momentum. The important physics follows from how these photons are created, how matter removes them from a beam, and how their wavelength is measured.

## Production in an X-ray tube

Let an electron of charge $-e$, where $e>0$, move through a potential difference $V$. The electric field does work on the electron. In magnitude,

$$
\Delta K
=eV.
$$

Neglecting the small initial kinetic energy, the electron reaches the target with

$$
K_{\mathrm e}=eV.
$$

Inside the target it is deflected and decelerated by nuclear and electronic electric fields. An accelerated charge radiates, so part of the electron's energy can emerge as an X-ray photon. Two distinct emission mechanisms result.

### Continuous bremsstrahlung spectrum

In one encounter the electron may transfer any fraction of its kinetic energy to radiation. If a photon receives the energy $\varepsilon$, energy conservation gives

$$
0<\varepsilon\leq eV.
$$

Since $\varepsilon=h\nu=hc/\lambda$, the largest possible photon frequency is obtained when the entire electron energy appears in one photon:

$$
h\nu_{\max}=eV.
$$

Therefore

$$
\nu_{\max}=\frac{eV}{h},
\qquad
\boxed{\lambda_{\min}=\frac{hc}{eV}}.
$$

This is the Duane--Hunt limit. It depends on the accelerating voltage, not on the target material. Most electrons lose their energy through several interactions, so the emitted photons fill a continuum below $eV$ rather than all having the endpoint energy.

### Characteristic emission lines

An incident electron can also eject an inner-shell electron from a target atom, provided that its energy $eV$ exceeds the binding energy of that shell. The resulting vacancy is filled by an electron from a higher shell, and the energy difference is emitted as a photon.

To expose the dependence on atomic number, first consider one electron moving in an effective Coulomb field of nuclear charge $Z_{\mathrm{eff}}e$. The electrostatic force supplies the centripetal force:

$$
\frac{m_{\mathrm e}v^2}{r}
=\frac{Z_{\mathrm{eff}}e^2}{4\pi\varepsilon_0r^2}.
\tag{1}
$$

Bohr quantization gives

$$
m_{\mathrm e}vr=n\hbar.
\tag{2}
$$

From (2),

$$
v=\frac{n\hbar}{m_{\mathrm e}r}.
$$

Substituting this in (1) gives

$$
\frac{n^2\hbar^2}{m_{\mathrm e}r^3}
=\frac{Z_{\mathrm{eff}}e^2}{4\pi\varepsilon_0r^2},
$$

and hence

$$
r_n=
\frac{4\pi\varepsilon_0\hbar^2}{m_{\mathrm e}e^2}
\frac{n^2}{Z_{\mathrm{eff}}}.
$$

The total electron energy is

$$
E_n=\frac12m_{\mathrm e}v^2
-\frac{Z_{\mathrm{eff}}e^2}{4\pi\varepsilon_0r_n}.
$$

Equation (1) implies

$$
m_{\mathrm e}v^2
=\frac{Z_{\mathrm{eff}}e^2}{4\pi\varepsilon_0r_n},
$$

so

$$
E_n
=-\frac12\frac{Z_{\mathrm{eff}}e^2}{4\pi\varepsilon_0r_n}
=-\frac{m_{\mathrm e}e^4}{2(4\pi\varepsilon_0)^2\hbar^2}
\frac{Z_{\mathrm{eff}}^2}{n^2}.
$$

Using the Rydberg constant $R_\infty$, this one-electron Coulomb model gives

$$
\boxed{E_n=-hcR_\infty\frac{Z_{\mathrm{eff}}^2}{n^2}}.
$$

For a many-electron atom, inner electrons screen part of the nuclear charge. In the screened-hydrogenic approximation, write

$$
Z_{\mathrm{eff}}\simeq Z-\sigma,
$$

where $\sigma$ is a screening constant appropriate to the shell. A transition $n_i\to n_f$, with $n_i>n_f$, releases

$$
h\nu
=E_{n_i}-E_{n_f}
=hcR_\infty(Z-\sigma)^2
\left(
\frac{1}{n_f^2}-\frac{1}{n_i^2}
\right).
$$

Therefore

$$
\boxed{
\nu=cR_\infty(Z-\sigma)^2
\left(
\frac{1}{n_f^2}-\frac{1}{n_i^2}
\right)
}.
$$

For transitions into the $K$ shell, $n_f=1$. In this approximation,

$$
\nu_{K\alpha}
=\frac34cR_\infty(Z-\sigma_K)^2
\qquad (2\to1),
$$

whereas

$$
\nu_{K\beta}
=\frac89cR_\infty(Z-\sigma_K)^2
\qquad (3\to1).
$$

It follows directly that

$$
\sqrt{\nu_{K\alpha}}
=\sqrt{\frac{3cR_\infty}{4}}\,(Z-\sigma_K),
$$

which is the linear dependence expressed by Moseley's law. The line positions are therefore characteristic of the target element, while the short-wavelength cutoff is fixed by $V$.

The emitted transition must also have a nonzero radiation matrix element. In the electric-dipole approximation its amplitude contains

$$
\mathcal M_{fi}
\propto
\langle f\lvert e\,\boldsymbol{\epsilon}\cdot\mathbf r\rvert i\rangle,
$$

where $\boldsymbol{\epsilon}$ is the photon polarization. Because $\mathbf r$ has odd parity, the integrand is even only when the initial and final orbitals have opposite parity. The vector character of $\mathbf r$ then gives

$$
\Delta\ell=\pm1,
\qquad
\Delta m=0,\pm1.
$$

Consequently, the electric-dipole $K\alpha$ line contains allowed $2p\to1s$ transitions; it should not be interpreted as an unrestricted transition from every state with principal quantum number $2$ to every state with principal quantum number $1$. Similarly, the corresponding $K\beta$ transition is principally $3p\to1s$ in this orbital description.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-3/xray-emission-spectrum.png' | relative_url }}" alt="Energy accounting in an X-ray tube and a schematic photon-energy spectrum with a continuous bremsstrahlung endpoint and characteristic K-alpha and K-beta lines" loading="lazy">
  <figcaption>Continuous radiation ends at \(E_\gamma=eV\); discrete inner-shell transitions add target-dependent lines below that endpoint.</figcaption>
</figure>

## Attenuation of a monochromatic beam

Let $I(x)$ be the intensity remaining after a beam has travelled a distance $x$ in a uniform material. For a sufficiently thin layer $dx$, the number of photons removed is proportional to the incident intensity and to the thickness:

$$
-dI=\mu_{\!X} I\,dx,
$$

where $\mu_{\!X}$ is the total linear coefficient for removing photons from the primary beam. It includes absorption and scattering contributions. Separating variables,

$$
\frac{dI}{I}=-\mu_{\!X}\,dx.
$$

Integrating from $0$ to $x$,

$$
\int_{I_0}^{I(x)}\frac{dI'}{I'}
=-\mu_{\!X}\int_0^x dx',
$$

so

$$
\ln\frac{I(x)}{I_0}=-\mu_{\!X}x.
$$

Exponentiation gives the Beer--Lambert law:

$$
\boxed{I(x)=I_0e^{-\mu_{\!X}x}}.
$$

The transmission through thickness $x$ is

$$
T=\frac{I}{I_0}=e^{-\mu_{\!X}x}.
$$

For the half-value thickness $x_{1/2}$, $I/I_0=1/2$, and therefore

$$
\frac12=e^{-\mu_{\!X}x_{1/2}},
\qquad
\boxed{x_{1/2}=\frac{\ln2}{\mu_{\!X}}}.
$$

Because $\mu_{\!X}$ depends on density, tabulated comparisons commonly use the mass attenuation coefficient $\mu_{\!X}/\rho$.

## Photoelectric absorption and absorption edges

In photoelectric absorption, one X-ray photon disappears and a bound electron is ejected. If the electron binding energy is $E_B$, energy conservation gives

$$
h\nu=E_B+K_{\mathrm e},
$$

and hence

$$
K_{\mathrm e}=h\nu-E_B.
$$

The process is possible only when

$$
h\nu\geq E_B.
$$

At the threshold,

$$
h\nu_{\mathrm{edge}}=E_B,
\qquad
\boxed{\lambda_{\mathrm{edge}}=\frac{hc}{E_B}}.
$$

The total removal coefficient may be resolved schematically as

$$
\mu_{\!X}
=\mu_{\mathrm{photoelectric}}
+\mu_{\mathrm{scattering}}+\cdots.
$$

The photoelectric contribution generally falls as photon energy increases between shell thresholds. When the photon energy rises through a shell binding energy, however, a new photoelectric channel opens and $\mu_{\!X}$ jumps upward. This produces a $K$, $L$, or higher-shell absorption edge. The vacancy subsequently relaxes. If an outer electron falls into the vacancy and emits a photon,

$$
E_{\mathrm{fluorescence}}=E_{\mathrm{upper}}-E_{\mathrm{lower}}.
$$

For example, if $B_K$ and $B_L$ are the positive binding energies of the $K$ and $L$ shells,

$$
E_{K\text{-edge}}=B_K,
\qquad
E_{K\alpha}=B_K-B_L.
$$

Because $B_L>0$,

$$
E_{K\alpha}<E_{K\text{-edge}}.
$$

Similarly, an $M\to K$ transition has $E_{K\beta}=B_K-B_M$. Since $B_M<B_L$,

$$
E_{K\beta}>E_{K\alpha}.
$$

Alternatively, the transition energy can be transferred to another bound electron, which leaves the atom as an Auger electron. Emission lines and absorption edges therefore have the same origin in discrete inner-shell binding energies, but an emission-line energy is a difference of two binding energies whereas an absorption edge measures the binding energy from that shell to the continuum.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-3/xray-attenuation-edge.png' | relative_url }}" alt="Exponential attenuation of a monochromatic X-ray beam through matter and an absorption coefficient with an inner-shell threshold edge" loading="lazy">
  <figcaption>A uniform absorber gives exponential transmission; an inner-shell channel opens only when \(E_\gamma\) reaches its binding energy.</figcaption>
</figure>

## Wavelength measurement by Bragg reflection

Atomic planes in a crystal provide a regular spacing $d$. Consider rays reflected from two adjacent parallel planes at a glancing angle $\theta$. The ray reaching the lower plane travels an additional distance $d\sin\theta$ before reflection and another $d\sin\theta$ afterward. The total path difference is therefore

$$
\Delta\ell=d\sin\theta+d\sin\theta=2d\sin\theta.
$$

Constructive interference requires an integral number of wavelengths:

$$
\Delta\ell=n\lambda.
$$

Consequently,

$$
\boxed{2d\sin\theta=n\lambda},
\qquad n=1,2,3,\ldots
$$

This relation converts a measured reflection angle into an X-ray wavelength and thereby into the photon energy $E_\gamma=hc/\lambda$.

The cutoff, screened-Coulomb, line-ordering, attenuation, and Bragg identities
are checked in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-3/xray-emission-absorption.mac' | relative_url }}).

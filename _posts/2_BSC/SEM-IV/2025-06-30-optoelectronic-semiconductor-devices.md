---
title: "LED, Photodiode, Solar Cell, and Semiconductor Laser"
summary: "Operating principles and electrical-optical characteristics of four semiconductor optoelectronic devices."
date: 2025-06-30 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, optoelectronics, semiconductor-laser]
permalink: /bsc/sem-iv/mj-7/optoelectronic-semiconductor-devices/
hidden: true
---

Photons couple most efficiently to a direct-gap semiconductor because electron-hole recombination can conserve crystal momentum without a phonon. The photon energy and free-space wavelength obey

$$h\nu=\frac{hc}{\lambda}.$$

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/optoelectronic-characteristics.png' | relative_url }}" alt="Normalized characteristics of an LED, photodiode, solar cell, and semiconductor laser">
  <figcaption>Normalized device characteristics. The plotted relations expose the operating trends without assigning material-specific voltage, current, or optical-power scales.</figcaption>
</figure>
</div>

The editable source is [optoelectronic-characteristics.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/optoelectronic-characteristics.tex' | relative_url }}).

## Light-emitting diode

Forward bias injects electrons and holes into an active direct-gap region. Their radiative recombination emits photons with energy concentrated near $E_g$:

$$
\lambda\simeq\frac{hc}{E_g},
\qquad
\lambda(\mu\mathrm m)\simeq\frac{1.240}{E_g(\mathrm{eV})}.
$$

The electrical characteristic is diode-like. Above its knee, emitted optical power is approximately proportional to forward current until heating, non-radiative recombination, or efficiency droop becomes important. The forward voltage is of order $E_g/q$ but also contains junction, series-resistance, and temperature contributions; it is not exactly $E_g/q$.

## Photodiode

A reverse-biased photodiode absorbs photons with $h\nu\ge E_g$. Electron-hole pairs created in or close to the depletion region are separated by its electric field, producing a reverse photocurrent. With forward diode current defined positive,

$$
\boxed{I=I_S\!\left(e^{V/(\eta V_T)}-1\right)-I_{ph}},
\qquad
I_{ph}=\mathcal R P_{opt}.
$$

$\mathcal R$ is responsivity in $\mathrm{A\,W^{-1}}$. If each collected photon produces at most one electron and the external quantum efficiency is $\eta_q$,

$$
\boxed{\mathcal R=\eta_q\frac{q}{h\nu}
=\eta_q\frac{q\lambda}{hc}}.
$$

Reverse bias widens the depletion region, lowers junction capacitance, and improves speed, but increases dark-current and breakdown constraints. Below breakdown the reverse current changes nearly linearly with optical power.

## Solar cell

A solar cell is a large-area illuminated junction operated without an externally imposed reverse bias. Define delivered current as positive from the cell to the load. Its ideal characteristic is

$$
\boxed{I=I_{ph}-I_0\!\left(e^{V/(\eta V_T)}-1\right)}.
$$

At short circuit,

$$I_{sc}=I(V=0)=I_{ph},$$

and at open circuit,

$$
\boxed{V_{oc}=\eta V_T\ln\!\left(1+\frac{I_{ph}}{I_0}\right)}.
$$

The maximum-power point $(V_{mp},I_{mp})$ maximizes $P=VI$. The fill factor and conversion efficiency are

$$
FF=\frac{V_{mp}I_{mp}}{V_{oc}I_{sc}},
\qquad
\eta_{cell}=\frac{V_{mp}I_{mp}}{P_{in}}.
$$

Series resistance reduces the high-voltage part of the curve; shunt leakage reduces current near short circuit.

## Semiconductor laser

A forward-biased direct-gap double-heterostructure confines electrons, holes, and light to a thin active layer. Sufficient injection creates population inversion. A photon of energy near $E_g$ then stimulates recombination and produces a second photon with the same frequency, phase, direction, and polarization.

Two cleaved or fabricated facets form a Fabry-Perot resonator. Longitudinal modes approximately satisfy

$$2nL=m\lambda,$$

where $L$ is cavity length, $n$ refractive index, and $m$ an integer. Lasing begins when modal gain balances internal and mirror losses:

$$
\boxed{\Gamma g(N_{th})
=\alpha_i+\frac1{2L}\ln\!\left(\frac1{R_1R_2}\right)}.
$$

Here $g$ and $\alpha_i$ are in $\mathrm{m^{-1}}$, $\Gamma$ is dimensionless confinement factor, and $R_1,R_2$ are facet power reflectivities. Below threshold the output is mainly spontaneous emission; above threshold $P_{out}$ rises approximately linearly with $I-I_{th}$ and is narrowband, coherent, and directional.

## Solved Problems

### 1. LED wavelength and wall-plug efficiency

A direct-gap LED has $E_g=1.90\,\mathrm{eV}$, operates at $V_F=2.00\,\mathrm V$ and $I_F=20.0\,\mathrm{mA}$, and emits $15.0\,\mathrm{mW}$ of optical power.

Its approximate peak wavelength is

$$
\lambda\simeq\frac{1.240}{1.90}\,\mu\mathrm m
=0.6526\,\mu\mathrm m=653\,\mathrm{nm}.
$$

The electrical input is

$$P_{el}=V_FI_F=(2.00)(20.0\,\mathrm{mA})=40.0\,\mathrm{mW},$$

so the wall-plug efficiency is

$$\eta_{wp}=\frac{15.0}{40.0}=0.375=37.5\%.$$

The photon relation predicts colour from the band gap; the efficiency calculation separately accounts for non-radiative and extraction losses.

### 2. Photodiode responsivity and photocurrent

A photodiode has external quantum efficiency $\eta_q=0.800$ at $\lambda=850\,\mathrm{nm}$. Using $hc/q=1.240\,\mathrm{V\,\mu m}$,

$$
\mathcal R=\eta_q\frac{\lambda(\mu\mathrm m)}{1.240}
=0.800\frac{0.850}{1.240}
=0.5484\,\mathrm{A\,W^{-1}}.
$$

For $P_{opt}=200\,\mu\mathrm W$,

$$
I_{ph}=\mathcal RP_{opt}
=(0.5484)(200\,\mu\mathrm W)=109.7\,\mu\mathrm A.
$$

The sign in the diode equation is negative relative to forward current; $109.7\,\mu\mathrm A$ is the positive photocurrent magnitude.

### 3. Solar-cell fill factor and efficiency

A cell has $I_{sc}=0.800\,\mathrm A$, $V_{oc}=0.620\,\mathrm V$, $I_{mp}=0.720\,\mathrm A$, $V_{mp}=0.500\,\mathrm V$, and incident power $P_{in}=1.50\,\mathrm W$.

$$
P_{\max}=V_{mp}I_{mp}=(0.500)(0.720)=0.360\,\mathrm W,
$$

$$
FF=\frac{0.360}{(0.620)(0.800)}=0.7258,
\qquad
\eta_{cell}=\frac{0.360}{1.50}=0.240=24.0\%.
$$

Both dimensionless quantities are below unity, providing an immediate consistency check.

## Descriptive Questions

1. Explain why direct-gap materials are preferred for LEDs and semiconductor lasers and relate band gap to wavelength.
2. Derive photodiode responsivity from quantum efficiency and describe the effects of reverse bias.
3. Derive $V_{oc}$ for an ideal solar cell and define fill factor and conversion efficiency.
4. Explain optical confinement, population inversion, longitudinal modes, and the threshold-gain condition of a semiconductor laser.

## Numerical Problems

1. An LED emitting at $620\,\mathrm{nm}$ produces $12.4\,\mathrm{mW}$ of optical power while drawing $25.0\,\mathrm{mA}$. Using $hc/q=1.240\,\mathrm{V\,\mu m}$ and $q=1.602\times10^{-19}\,\mathrm C$, find the photon emission rate and the external quantum efficiency in photons emitted per injected electron.

   **Final answer:** Each photon has energy $E_\gamma=q(1.240/0.620)=2q=3.204\times10^{-19}\,\mathrm J$, so $\dot N_\gamma=P_{opt}/E_\gamma=3.870\times10^{16}\,\mathrm{s^{-1}}$. The injection rate is $I/q=1.561\times10^{17}\,\mathrm{s^{-1}}$, hence $\eta_{ext}=\dot N_\gamma/(I/q)=0.248$, or $24.8\%$.

2. An $850\,\mathrm{nm}$ photodiode receives $5.00\times10^{12}$ photons per second and has external quantum efficiency $0.750$. Find its collected-electron rate, photocurrent, and incident optical power using $hc/q=1.240\,\mathrm{V\,\mu m}$.

   **Final answer:** The collected rate is $0.750(5.00\times10^{12})=3.75\times10^{12}\,\mathrm{s^{-1}}$, so $I_{ph}=q\dot N_e=0.6008\,\mu\mathrm A$. The incident power is $\dot N_\gamma q(1.240/0.850)=1.169\,\mu\mathrm W$.

3. A semiconductor laser has cavity length $L=300\,\mu\mathrm m$, equal facet power reflectivities $R_1=R_2=0.320$, internal loss $\alpha_i=10.0\,\mathrm{cm^{-1}}$, and confinement factor $\Gamma=0.300$. Find the material gain required at threshold.

   **Final answer:** With $L=0.0300\,\mathrm{cm}$, the mirror loss is $[2L]^{-1}\ln[1/(R_1R_2)]=37.98\,\mathrm{cm^{-1}}$. Therefore $g_{th}=(\alpha_i+37.98)/\Gamma=159.94\,\mathrm{cm^{-1}}\approx160\,\mathrm{cm^{-1}}$.

4. An ideal solar cell has $I_{ph}=0.350\,\mathrm A$, $I_0=1.00\,\mathrm{nA}$, $\eta=1.30$, and $V_T=25.9\,\mathrm{mV}$. Find its open-circuit voltage and the minimum number of identical series cells required to exceed $12.0\,\mathrm V$ at open circuit.

   **Final answer:** $V_{oc}=\eta V_T\ln(1+I_{ph}/I_0)=0.6624\,\mathrm V$. Eighteen cells give $11.92\,\mathrm V$, whereas nineteen give $12.59\,\mathrm V$, so the minimum is $19$ cells.

5. A laser cavity has $L=300\,\mu\mathrm m$, $n=3.50$, and $\lambda=850\,\mathrm{nm}$. Estimate the adjacent longitudinal-mode spacing $\Delta\lambda\simeq\lambda^2/(2nL)$.

   **Final answer:** $\Delta\lambda=3.44\times10^{-10}\,\mathrm m=0.344\,\mathrm{nm}$, much smaller than the optical wavelength.

The photon, responsivity, photovoltaic, and cavity-mode calculations are reproducible in [optoelectronic-devices-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/optoelectronic-devices-check.mac' | relative_url }}); every printed residual is zero.

## References

1. [Wikipedia, “Optoelectronics”](https://en.wikipedia.org/wiki/Optoelectronics).
2. [MIT OpenCourseWare 6.007, Applied Electromagnetics: Semiconductor Optoelectronics](https://ocw.mit.edu/courses/6-007-electromagnetic-energy-from-motors-to-lasers-spring-2011/).
3. [NPTEL, Semiconductor Optoelectronics Course Syllabus](https://archive.nptel.ac.in/content/syllabus_pdf/115102026.pdf).

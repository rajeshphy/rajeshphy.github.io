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

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/optoelectronic-characteristics.png' | relative_url }}" alt="Normalized characteristics of an LED, photodiode, solar cell, and semiconductor laser">
  <figcaption>Normalized device characteristics. The plotted relations expose the operating trends without assigning material-specific voltage, current, or optical-power scales.</figcaption>
</figure>

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

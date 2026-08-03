---
title: "p-n Junction Formation, Depletion Region, and Barrier"
summary: "Diffusion, space charge, built-in potential, electric field, and depletion width of an abrupt p-n junction."
date: 2025-06-23 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, pn-junction, depletion-region]
permalink: /bsc/sem-iv/mj-7/pn-junction-formation-depletion-and-barrier/
hidden: true
---

Consider a one-dimensional abrupt homojunction with uniformly doped p material at $x<0$ and n material at $x>0$. Let $q=1.602\times10^{-19}\,\mathrm C$ denote the positive elementary-charge magnitude. The depletion approximation used below assumes complete dopant ionization and neglects mobile carriers inside the depleted layer.

## Formation of the space-charge region

Before contact, the n side contains many electrons and the p side many holes. After contact, electrons diffuse from n to p and holes diffuse from p to n. Recombination near the interface leaves fixed ionized acceptors $-qN_A$ on the p side and fixed ionized donors $+qN_D$ on the n side. Their electric field points from the positive donor charge toward the negative acceptor charge, namely from n to p.

If the depletion edges are $-x_p$ and $x_n$, the charge density is

$$
\rho(x)=
\begin{cases}
-qN_A,&-x_p<x<0,\\
+qN_D,&0<x<x_n,\\
0,&\text{elsewhere}.
\end{cases}
$$

Charge neutrality of the depletion layer requires

$$\boxed{N_Ax_p=N_Dx_n}.$$

Poisson's equation and the electric-field sign convention are

$$
\frac{dE}{dx}=\frac{\rho}{\varepsilon_s},
\qquad E=-\frac{d\phi}{dx},
$$

where $\varepsilon_s$ is the semiconductor permittivity in $\mathrm{F\,m^{-1}}$. With $E(-x_p)=E(x_n)=0$,

$$
E(x)=
\begin{cases}
-\dfrac{qN_A}{\varepsilon_s}(x+x_p),&-x_p\le x\le0,\\[6pt]
\dfrac{qN_D}{\varepsilon_s}(x-x_n),&0\le x\le x_n.
\end{cases}
$$

Thus $E<0$ throughout the depletion region: it opposes further majority-carrier diffusion. Equilibrium is reached when drift and diffusion currents cancel separately for electrons and holes.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/pn-junction-depletion.png' | relative_url }}" alt="Charge density, electric field, and electrostatic potential across an abrupt p-n junction">
  <figcaption>Depletion approximation for an illustrative asymmetric junction. Equal charge areas enforce $N_Ax_p=N_Dx_n$; the field is directed from n to p and the potential rises from p to n.</figcaption>
</figure>

The editable source is [pn-junction-depletion.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/pn-junction-depletion.tex' | relative_url }}).

## Built-in potential and depletion width

At thermal equilibrium the Fermi level is constant. For non-degenerate material with $n_n\simeq N_D$ and $p_p\simeq N_A$, the electrostatic potential difference is

$$
\boxed{V_{bi}=\phi_n-\phi_p
=V_T\ln\!\left(\frac{N_AN_D}{n_i^2}\right)},
\qquad V_T=\frac{k_BT}{q}.
$$

$V_T$ is the thermal voltage, equal to about $25.9\,\mathrm{mV}$ at $300\,\mathrm K$. The formula assumes $N_AN_D>n_i^2$, complete ionization, and Maxwell-Boltzmann statistics. Integrating $-E=d\phi/dx$ gives

$$
V_{bi}=\frac{q}{2\varepsilon_s}
\left(N_Ax_p^2+N_Dx_n^2\right).
$$

Writing $W_0=x_p+x_n$,

$$
\boxed{W_0=\sqrt{\frac{2\varepsilon_sV_{bi}}q
\left(\frac1{N_A}+\frac1{N_D}\right)}},
$$

$$
x_p=\frac{N_D}{N_A+N_D}W_0,
\qquad
x_n=\frac{N_A}{N_A+N_D}W_0.
$$

The depletion region extends farther into the more lightly doped side. The peak field magnitude is

$$
\lvert E_{\max}\rvert=\frac{qN_Ax_p}{\varepsilon_s}
=\frac{qN_Dx_n}{\varepsilon_s}
=\frac{2V_{bi}}{W_0},
$$

with units $\mathrm{V\,m^{-1}}$. Since an electron's band energy changes as $-q\phi$, the conduction and valence band edges fall by $qV_{bi}$ from the p side to the n side; this band bending is the equilibrium barrier to majority-carrier diffusion.

The charge-neutrality and built-in-potential identities are checked in [junction-and-mos-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/junction-and-mos-check.mac' | relative_url }}); every displayed residual is zero.

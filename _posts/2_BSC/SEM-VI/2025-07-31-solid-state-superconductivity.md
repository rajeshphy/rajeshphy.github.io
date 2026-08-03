---
title: "Superconductivity"
summary: "Zero resistance, critical fields, Meissner expulsion, type-I and type-II superconductors, London penetration, isotope effect, and the BCS picture."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, superconductivity, meissner-effect, london-equations]
permalink: /bsc/sem-vi/solid-state/superconductivity/
hidden: true
---

A superconductor is not merely a perfect conductor. Below a critical temperature it has zero dc resistivity and expels magnetic flux from its bulk, demonstrating a distinct equilibrium phase.

## Experimental signatures and critical parameters

At $T=T_c$, the measured resistivity falls to zero within the transition width:

$$
\boxed{\rho(T<T_c)=0}.
$$

A current in a closed superconducting ring can therefore persist without Joule loss $j^2\rho$. Superconductivity is destroyed if the temperature, magnetic field, or current exceeds its critical value.

For a type-I material, the thermodynamic critical field is well represented by

$$
\boxed{H_c(T)=H_c(0)\left[1-\left(\frac{T}{T_c}\right)^2\right]}.
$$

$H_c$ has unit $\mathrm{A\,m^{-1}}$ and $B_c=\mu_0H_c$ has unit tesla. The superconducting region lies below this curve in the $H$-$T$ plane.

## Meissner effect

Cool a sample through $T_c$ in a weak applied field. The magnetic induction is expelled from its interior:

$$
\boxed{B_{\rm bulk}\simeq0}.
$$

Since $B=\mu_0(H+M)$,

$$
M=-H,
\qquad
\chi_m=-1
$$

for an ideal bulk sample with negligible demagnetizing correction. A hypothetical perfect conductor would merely freeze the flux already present when its resistance vanished; Meissner expulsion shows that the superconducting state is thermodynamic.

## London equations

Let superconducting carriers have density $n_s$, charge $q$, mass $m_s$, and velocity $\mathbf v_s$. With $\mathbf j_s=n_sq\mathbf v_s$, Newton's law gives

$$
m_s\frac{d\mathbf v_s}{dt}=q\mathbf E.
$$

Multiplying by $n_sq/m_s$ yields the first London equation,

$$
\boxed{\frac{\partial\mathbf j_s}{\partial t}
=\frac{n_sq^2}{m_s}\mathbf E}.
$$

It implies indefinite acceleration in a steady electric field and therefore zero dc resistivity. The second London equation is

$$
\boxed{\nabla\times\mathbf j_s=-\frac{n_sq^2}{m_s}\mathbf B}.
$$

In static conditions, Ampere's law inside the material is

$$
\nabla\times\mathbf B=\mu_0\mathbf j_s.
$$

Taking its curl and using $\nabla\cdot\mathbf B=0$,

$$
\nabla\times(\nabla\times\mathbf B)
=\nabla(\nabla\cdot\mathbf B)-\nabla^2\mathbf B
=-\nabla^2\mathbf B.
$$

The second London equation then gives

$$
-\nabla^2\mathbf B
=\mu_0\nabla\times\mathbf j_s
=-\mu_0\frac{n_sq^2}{m_s}\mathbf B.
$$

Thus

$$
\boxed{\nabla^2\mathbf B=\frac{\mathbf B}{\lambda_L^2}},
\qquad
\boxed{\lambda_L=\sqrt{\frac{m_s}{\mu_0n_sq^2}}}.
$$

$\lambda_L$ is the London penetration depth in metres. For a flat surface at $x=0$, with superconductor at $x>0$, the boundary conditions are $B(0)=B_0$ and $B(x\to\infty)=0$. Solving $d^2B/dx^2=B/\lambda_L^2$ gives

$$
\boxed{B(x)=B_0e^{-x/\lambda_L}}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-3/superconducting-critical-penetration.png' | relative_url }}" alt="Type-I critical-field curve and exponential London penetration of magnetic field into a superconductor">
  </div>
  <figcaption>The phase boundary is generated from $H_c(T)/H_c(0)=1-(T/T_c)^2$, and the surface field from $B(x)/B_0=e^{-x/\lambda_L}$. Both vanish in their stated limiting conditions.</figcaption>
</figure>

## Type-I and type-II superconductors

A type-I superconductor has one critical field $H_c$. Below it the bulk is in the Meissner state; above it the material is normal, apart from the narrow intermediate-state geometry caused by demagnetizing fields.

A type-II superconductor has two critical fields:

$$
H<H_{c1}:\ \text{Meissner state},
$$

$$
H_{c1}<H<H_{c2}:\ \text{mixed state},
$$

$$
H>H_{c2}:\ \text{normal state}.
$$

In the mixed state, magnetic flux enters as vortices with normal cores surrounded by circulating supercurrents. Each vortex carries the flux quantum

$$
\boxed{\Phi_0=\frac{h}{2e}}.
$$

Type-II materials remain superconducting in much larger applied fields and therefore dominate high-field applications.

## Isotope effect

For many elemental superconductors, changing the isotopic mass $M$ changes the transition temperature approximately as

$$
\boxed{T_cM^\alpha=\text{constant}},
\qquad \alpha\simeq\frac12.
$$

Since lattice frequencies scale as $\omega\propto M^{-1/2}$, the isotope effect shows that lattice vibrations participate in the pairing mechanism.

## Idea of BCS theory

In the Bardeen-Cooper-Schrieffer picture, an electron distorts the positive ion lattice. That distortion can attract a second electron, producing an effective phonon-mediated attraction near the Fermi surface. At low temperature, electrons of opposite momentum and spin form Cooper pairs,

$$
(\mathbf k\uparrow,-\mathbf k\downarrow),
$$

whose centre-of-mass momentum is zero in the ground state. A macroscopic number of overlapping pairs shares one coherent phase. Scattering that would relax an ordinary current must break or excite pairs across an energy gap, so sufficiently weak dc currents persist.

For weak-coupling BCS superconductors,

$$
\boxed{2\Delta(0)\simeq3.53k_BT_c}.
$$

The gap closes at $T_c$, while an applied field or excessive current can also destroy coherence. The phonon energy scale in the pairing interaction explains why $T_c$ inherits the isotopic-mass dependence.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/superconductivity.mac' | relative_url }})

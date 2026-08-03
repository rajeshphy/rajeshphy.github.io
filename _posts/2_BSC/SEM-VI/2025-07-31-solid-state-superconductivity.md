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

## Solved Problems

### 1. Critical field and condensation-energy density

A type-I superconductor has $T_c=7.20\ \mathrm{K}$ and $B_c(0)=0.0800\ \mathrm{T}$. Find $B_c$ at $4.20\ \mathrm{K}$ and the corresponding condensation-energy density $B_c^2/(2\mu_0)$.

Since $B_c=\mu_0H_c$, the same normalized temperature law applies:

$$
B_c(T)=B_c(0)\left[1-\left(\frac{T}{T_c}\right)^2\right].
$$

Thus

$$
\begin{aligned}
B_c(4.20\ \mathrm{K})
&=0.0800\left[1-\left(\frac{4.20}{7.20}\right)^2\right]\\
&=5.278\times10^{-2}\ \mathrm{T}.
\end{aligned}
$$

The magnetic free-energy density difference is

$$
u_c=\frac{B_c^2}{2\mu_0}
=\frac{(5.278\times10^{-2})^2}
{2(4\pi\times10^{-7})}
=1.11\times10^3\ \mathrm{J\,m^{-3}}.
$$

Therefore

$$
\boxed{B_c=5.28\times10^{-2}\ \mathrm{T}},
\qquad
\boxed{u_c=1.11\times10^3\ \mathrm{J\,m^{-3}}}.
$$

$B^2/\mu_0$ has energy-density units. The field tends to $B_c(0)$ at $T=0$ and to zero as $T\to T_c^-$, so the condensation energy also vanishes at the transition in this model.

### 2. London field and screening current inside a surface

A semi-infinite superconductor occupies $x>0$. A field $B_0=20.0\ \mathrm{mT}$ points along $+z$ at $x=0$, and $\lambda_L=50.0\ \mathrm{nm}$. Find $B$ and the screening-current density at $x=100\ \mathrm{nm}$.

The boundary conditions $B(0)=B_0$ and $B(\infty)=0$ select

$$
B_z(x)=B_0e^{-x/\lambda_L}.
$$

At two penetration depths,

$$
B_z(100\ \mathrm{nm})=(20.0\ \mathrm{mT})e^{-2}
=2.707\ \mathrm{mT}.
$$

For this geometry, Ampere's law gives

$$
(\nabla\times\mathbf B)_y=-\frac{dB_z}{dx}
=\frac{B_z}{\lambda_L}=\mu_0j_y.
$$

Hence

$$
j_y=\frac{2.707\times10^{-3}}
{(4\pi\times10^{-7})(50.0\times10^{-9})}
=4.31\times10^{10}\ \mathrm{A\,m^{-2}}.
$$

Thus

$$
\boxed{B_z=2.707\ \mathrm{mT}},
\qquad
\boxed{\mathbf j_s=4.31\times10^{10}\hat{\mathbf y}\ \mathrm{A\,m^{-2}}}.
$$

The current direction follows the stated surface normal and field direction; reversing $B_0$ reverses the current. The ratio $B/B_0=e^{-2}$ is dimensionless, and both $B$ and $j_s$ vanish deep in the bulk.

### 3. Isotope shift of the transition temperature

An isotope of mass number $200$ has $T_c=7.20\ \mathrm{K}$. Assuming isotope coefficient $\alpha=1/2$, predict $T_c$ for mass number $208$.

The isotope law is

$$
T_cM^{1/2}=\text{constant}.
$$

Therefore

$$
T_{c,2}=T_{c,1}\left(\frac{M_1}{M_2}\right)^{1/2}
=7.20\sqrt{\frac{200}{208}}
=7.060\ \mathrm{K}.
$$

Thus

$$
\boxed{T_{c,2}=7.06\ \mathrm{K}}.
$$

Only the mass ratio enters, so the isotope mass units cancel. The heavier isotope has the lower lattice-frequency scale and hence the lower $T_c$ in this approximation; when $M_2\to M_1$, the original transition temperature is recovered.

## Descriptive Questions

1. Explain why zero resistivity alone does not imply the Meissner effect, and distinguish a superconductor from a hypothetical perfect conductor by their magnetic histories.
2. Derive both London equations and obtain the exponential penetration of a static magnetic field into a planar superconducting surface.
3. Compare type-I and type-II superconductors in terms of their critical fields, Meissner and mixed states, and quantized vortices.
4. Describe the phonon-mediated BCS pairing mechanism, the energy gap, and the physical significance of the isotope effect.

## Numerical Problems

1. A weak-coupling BCS superconductor has $T_c=9.20\ \mathrm{K}$. Find its zero-temperature single-particle gap $\Delta(0)$.

   **Answer:** $\Delta(0)=3.53k_BT_c/2=1.40\ \mathrm{meV}$.

2. Treat the carriers as pairs with $m_s=2m_e$ and $q=2e$. Find $n_s$ when $\lambda_L=120\ \mathrm{nm}$.

   **Answer:** $n_s=m_s/(\mu_0q^2\lambda_L^2)=9.81\times10^{26}\ \mathrm{m^{-3}}$.

3. Find the vortex areal density in a mixed state whose mean induction is $2.00\ \mathrm{T}$.

   **Answer:** $n_v=B/\Phi_0=9.67\times10^{14}\ \mathrm{m^{-2}}$.

4. The Ginzburg--Landau parameter is $\kappa_{\rm GL}=\lambda/\xi$. Classify a superconductor with $\lambda=140\ \mathrm{nm}$ and $\xi=20.0\ \mathrm{nm}$.

   **Answer:** $\kappa_{\rm GL}=7.00>1/\sqrt2$, so it is type II.

5. A ring of inductance $2.00\ \mathrm{\mu H}$ loses less than $1.00\%$ of its persistent current in one year. Using $I(t)=I_0e^{-Rt/L}$, find the upper bound on its resistance.

   **Answer:** $R<-L\ln(0.99)/t=6.37\times10^{-16}\ \Omega$.

6. A long superconducting wire of radius $0.500\ \mathrm{mm}$ loses superconductivity when its surface field reaches $0.100\ \mathrm{T}$. Neglect field penetration and find the corresponding current.

   **Answer:** $I_c=2\pi rB_c/\mu_0=2.50\times10^2\ \mathrm{A}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/superconductivity.mac' | relative_url }})

## References

1. [Superconductivity, Wikipedia](https://en.wikipedia.org/wiki/Superconductivity)
2. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Chapter 10: “Superconductivity.”
3. Michael Tinkham, *Introduction to Superconductivity*, 2nd ed., Chapters 1--3.
4. [MIT OpenCourseWare, 6.763 Applied Superconductivity, lecture notes](https://ocw.mit.edu/courses/6-763-applied-superconductivity-fall-2005/pages/lecture-notes/)
5. [J. Bardeen, L. N. Cooper, and J. R. Schrieffer, “Theory of Superconductivity,” *Physical Review* 108 (1957)](https://doi.org/10.1103/PhysRev.108.1175)

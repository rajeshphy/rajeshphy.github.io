---
title: "Optical Constants and Electromagnetic Propagation in Solids"
summary: "Complex refractive index, wave impedance, attenuation, Fresnel coefficients, reflectance, transmittance, skin depth and electromagnetic energy flow in absorbing solids."
date: 2026-05-26 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - optical-constants
  - complex-refractive-index
  - fresnel-coefficients
  - reflectance
  - absorption
permalink: /msc/sem-iv/optical-constants-electromagnetic-propagation/
hidden: true
---

Optical constants provide a macroscopic description of how a solid changes the phase, amplitude and energy flux of an electromagnetic wave. For a linear homogeneous material the fundamental response functions are the frequency-dependent permittivity $\varepsilon(\omega)$, permeability $\mu(\omega)$ and conductivity $\sigma(\omega)$. The experimentally familiar refractive index, extinction coefficient, reflectance, absorption coefficient and penetration depth follow from Maxwell's equations and electromagnetic boundary conditions.

Throughout this post, fields have time dependence $e^{-i\omega t}$. A passive medium then has $\varepsilon''(\omega)\geq0$. The complex refractive index is written

$$
\widetilde n=n+i\kappa,
$$

where $n$ is the phase refractive index and $\kappa\geq0$ is the extinction coefficient. This sign is consistent with a wave that decays as it propagates in the positive $z$ direction.

## Wave equation in a linear absorbing medium

For a homogeneous isotropic medium with no externally imposed charge, the frequency-domain Maxwell equations are

$$
\nabla\times\mathbf E=i\omega\mathbf B,
\qquad
\nabla\times\mathbf H=\mathbf J-i\omega\mathbf D,
$$

$$
\mathbf D=\varepsilon_0\varepsilon_b(\omega)\mathbf E,
\qquad
\mathbf B=\mu_0\mu_r(\omega)\mathbf H.
$$

If a conduction current $\mathbf J=\sigma\mathbf E$ is retained separately, Ampere's law can be written

$$
\nabla\times\mathbf H
=-i\omega\varepsilon_0
\left(\varepsilon_b+\frac{i\sigma}{\varepsilon_0\omega}\right)
\mathbf E.
$$

It is therefore convenient to define an effective relative permittivity

$$
\boxed{
\varepsilon_r(\omega)
=\varepsilon_b(\omega)
+\frac{i\sigma(\omega)}{\varepsilon_0\omega}
}.
$$

The distinction between bound and conducting currents is model dependent; Maxwell propagation depends on their combined response. With $\nabla\cdot\mathbf D=0$ and spatially uniform material parameters, $\nabla\cdot\mathbf E=0$. Taking the curl of Faraday's law gives

$$
\nabla\times(\nabla\times\mathbf E)
=\nabla(\nabla\cdot\mathbf E)-\nabla^2\mathbf E
=-\nabla^2\mathbf E.
$$

Using Ampere's law,

$$
\boxed{
\nabla^2\mathbf E
+\varepsilon_r\mu_r\frac{\omega^2}{c^2}\mathbf E=0
}.
$$

For a plane wave $\mathbf E=\mathbf E_0e^{i(kz-\omega t)}$,

$$
\boxed{
k^2=\varepsilon_r\mu_r\frac{\omega^2}{c^2}
}.
$$

Define $k_0=\omega/c$ and choose the passive square-root branch

$$
\boxed{
k=\widetilde n k_0,
\qquad
\widetilde n^2=\varepsilon_r\mu_r
}.
$$

At optical frequencies most nonmagnetic solids have $\mu_r\simeq1$, so $\widetilde n^2=\varepsilon_r$.

## Phase propagation and attenuation

Substitution of $\widetilde n=n+i\kappa$ gives

$$
\mathbf E(z,t)=\mathbf E_0
e^{-\kappa k_0z}e^{i(nk_0z-\omega t)}.
$$

The phase constant, wavelength in the medium and phase velocity are

$$
\boxed{
\beta=\frac{n\omega}{c},
\qquad
\lambda=\frac{\lambda_0}{n},
\qquad
v_p=\frac{c}{n}
},
$$

where $\lambda_0=2\pi c/\omega$. The field amplitude decreases as $e^{-\kappa k_0z}$, whereas intensity is proportional to the squared amplitude:

$$
I(z)=I(0)e^{-2\kappa k_0z}
=I(0)e^{-\alpha z}.
$$

Thus the intensity absorption coefficient is

$$
\boxed{
\alpha=2\kappa k_0
=\frac{2\kappa\omega}{c}
=\frac{4\pi\kappa}{\lambda_0}
}.
$$

The $1/e$ intensity penetration depth is

$$
\boxed{d_I=\frac1\alpha},
$$

while the $1/e$ field-amplitude depth is $d_E=1/(\kappa k_0)=2/\alpha$. These two conventions must not be confused when a penetration depth is quoted.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-2/complex-index-propagation.png' | relative_url }}" alt="Reflection and exponentially attenuated electromagnetic transmission at the surface of an absorbing solid">
  <figcaption>At a vacuum--solid interface the complex index controls both reflection and propagation. The real part $n$ fixes the phase wavelength in the solid, whereas the extinction coefficient $\kappa$ produces exponential attenuation of the transmitted field and determines the intensity penetration depth.</figcaption>
</figure>

## Relation between $n$, $\kappa$ and the dielectric function

For a nonmagnetic material,

$$
\varepsilon'+i\varepsilon''
=(n+i\kappa)^2.
$$

Equating real and imaginary parts,

$$
\boxed{
\varepsilon'=n^2-\kappa^2,
\qquad
\varepsilon''=2n\kappa
}.
$$

Also,

$$
\lvert\varepsilon_r\rvert
=\sqrt{\varepsilon'^2+\varepsilon''^2}
=n^2+\kappa^2.
$$

Solving for the optical constants gives

$$
\boxed{
n=\left[
\frac{\sqrt{\varepsilon'^2+\varepsilon''^2}+\varepsilon'}{2}
\right]^{1/2}
},
$$

$$
\boxed{
\kappa=\left[
\frac{\sqrt{\varepsilon'^2+\varepsilon''^2}-\varepsilon'}{2}
\right]^{1/2}
}.
$$

The positive root for $\kappa$ is selected for a passive medium. A transparent dielectric has $\varepsilon''\simeq0$, $\varepsilon'>0$, $\kappa\simeq0$ and $n\simeq\sqrt{\varepsilon'}$. If $\varepsilon'<0$ and losses are small, $\kappa$ is large and propagation into the material is predominantly evanescent.

If $\sigma=\sigma_1+i\sigma_2$ denotes the part of the optical conductivity absorbed into an otherwise real background $\varepsilon_b$, then

$$
\boxed{
\varepsilon'=\varepsilon_b-\frac{\sigma_2}{\varepsilon_0\omega},
\qquad
\varepsilon''=\frac{\sigma_1}{\varepsilon_0\omega}
}.
$$

This relation permits optical conductivity to be obtained from measured $n$ and $\kappa$, provided the background convention is specified.

## Complex wave impedance

For a forward plane wave, Faraday's law gives

$$
\mathbf H_0
=\frac{1}{\mu_0\mu_r\omega}
\mathbf k\times\mathbf E_0.
$$

The intrinsic impedance is therefore

$$
\boxed{
Z=\frac{E_0}{H_0}
=Z_0\sqrt{\frac{\mu_r}{\varepsilon_r}}
=Z_0\frac{\mu_r}{\widetilde n}
},
$$

where $Z_0=\sqrt{\mu_0/\varepsilon_0}\simeq376.73\ \Omega$. For a nonmagnetic solid,

$$
Z=\frac{Z_0}{n+i\kappa}.
$$

The impedance, rather than the refractive index alone, controls the amplitudes required by the boundary conditions. For ordinary optical materials $\mu_r\simeq1$, so either description is equivalent.

## Fresnel coefficients at normal incidence

Let a wave be incident normally from a transparent nonmagnetic medium of real index $n_1$ onto an absorbing nonmagnetic solid with index $\widetilde n_2=n+i\kappa$. Continuity of tangential $E$ and $H$ gives

$$
E_i+E_r=E_t,
$$

$$
n_1(E_i-E_r)=\widetilde n_2E_t.
$$

The electric-field amplitude coefficients are

$$
\boxed{
r=\frac{E_r}{E_i}
=\frac{n_1-\widetilde n_2}{n_1+\widetilde n_2}
},
$$

$$
\boxed{
t=\frac{E_t}{E_i}
=\frac{2n_1}{n_1+\widetilde n_2}
}.
$$

The reflectance is

$$
\boxed{
R=\lvert r\rvert^2
=\frac{(n_1-n)^2+\kappa^2}
{(n_1+n)^2+\kappa^2}
}.
$$

The transmitted energy flux immediately inside the solid, divided by the incident flux, is

$$
\boxed{
T_0=\frac{\operatorname{Re}(\widetilde n_2)}{n_1}
\lvert t\rvert^2
=\frac{4n_1n}{(n_1+n)^2+\kappa^2}
}.
$$

Direct algebra gives $R+T_0=1$. This does not imply that a semi-infinite absorbing solid returns the transmitted energy at a rear surface. It states that no energy is lost at an ideal mathematical interface: the flux that crosses the interface is subsequently dissipated within the medium.

For incidence from air, $n_1=1$ and

$$
\boxed{
R=\frac{(n-1)^2+\kappa^2}
{(n+1)^2+\kappa^2}
}.
$$

Reflectance alone does not uniquely determine both $n$ and $\kappa$. Additional phase information, ellipsometry, or transmission data over a known thickness is required.

## Energy flux and local absorption

For a nonmagnetic solid and a linearly polarized forward wave,

$$
H_0=\frac{\widetilde n}{Z_0}E_0.
$$

The time-averaged Poynting vector is

$$
\langle\mathbf S\rangle
=\frac12\operatorname{Re}(\mathbf E\times\mathbf H^*).
$$

Its component along the propagation direction is

$$
\boxed{
S_z(z)=\frac{n}{2Z_0}\lvert E_0\rvert^2e^{-\alpha z}
}.
$$

The electromagnetic power absorbed per unit volume is

$$
q(z)=-\frac{dS_z}{dz}
=\frac{\alpha n}{2Z_0}\lvert E_0\rvert^2e^{-\alpha z}.
$$

Using $\alpha=2\kappa\omega/c$, $1/Z_0=\varepsilon_0c$ and $\varepsilon''=2n\kappa$ gives

$$
\boxed{
q(z)=\frac12\omega\varepsilon_0\varepsilon''
\lvert E(z)\rvert^2
}.
$$

The attenuation obtained from the complex wavevector is therefore exactly consistent with the work done on the dissipative part of the material response.

## Transmission through an absorbing slab

If interference and internal reflections can be neglected, propagation through thickness $d$ gives the Beer--Lambert factor

$$
\boxed{
I(d)=I(0)e^{-\alpha d}
}.
$$

For a plane-parallel slab surrounded by the same transparent medium on both sides, with the same intensity reflectance $R$ at each face, incoherent addition of all multiply reflected beams gives

$$
\boxed{
T=\frac{(1-R)^2e^{-\alpha d}}
{1-R^2e^{-2\alpha d}}
}.
$$

Writing $B=e^{-\alpha d}$, the corresponding total reflected fraction contains the prompt front-face reflection and all beams that return through the front face:

$$
\boxed{
R_{\mathrm{slab}}
=R+\frac{(1-R)^2RB^2}{1-R^2B^2}
}.
$$

Energy conservation then gives the slab absorptance

$$
\boxed{A_{\mathrm{slab}}=1-R_{\mathrm{slab}}-T}.
$$

This expression assumes that successive beams have lost phase coherence because the source bandwidth, surface nonparallelism or thickness exceeds the coherence condition. For a coherent thin film, complex amplitudes must instead be added before taking their squared magnitude; Fabry--Perot interference then produces oscillatory transmission.

## Good-conductor limit and skin depth

For a good conductor at a frequency where $\sigma$ is approximately real and

$$
\frac{\sigma}{\varepsilon_0\omega}\gg\varepsilon_b,
$$

the effective permittivity is approximately

$$
\varepsilon_r\simeq i\frac{\sigma}{\varepsilon_0\omega}.
$$

Since $\sqrt{i}=(1+i)/\sqrt2$ on the passive branch,

$$
\widetilde n\simeq(1+i)
\sqrt{\frac{\sigma}{2\varepsilon_0\omega}}.
$$

The complex wavevector becomes

$$
k\simeq(1+i)\sqrt{\frac{\mu_0\sigma\omega}{2}}.
$$

Hence the conventional skin depth, defined as the $1/e$ field-amplitude depth, is

$$
\boxed{
\delta=\sqrt{\frac{2}{\mu_0\sigma\omega}}
}.
$$

The intensity varies as $e^{-2z/\delta}$, so its $1/e$ depth is $\delta/2$. This good-conductor result is not valid near a collisionless plasma edge, where the full complex, frequency-dependent conductivity must be used.

## Worked calculation from a complex permittivity

Suppose a nonmagnetic solid at vacuum wavelength

$$
\lambda_0=600\ \mathrm{nm}
$$

has

$$
\varepsilon_r=4.00+1.50i.
$$

The modulus is

$$
\lvert\varepsilon_r\rvert
=\sqrt{4.00^2+1.50^2}=4.272.
$$

Therefore

$$
n=2.034,
\qquad
\kappa=0.369.
$$

For incidence from air,

$$
R=\frac{(2.034-1)^2+0.369^2}
{(2.034+1)^2+0.369^2}
=0.129.
$$

The flux fraction crossing the front interface is $T_0=1-R=0.871$. The absorption coefficient and intensity penetration depth are

$$
\alpha=\frac{4\pi\kappa}{\lambda_0}
=7.72\times10^6\ \mathrm{m^{-1}},
$$

$$
d_I=\frac1\alpha=1.29\times10^{-7}\ \mathrm m
=129\ \mathrm{nm}.
$$

For a $200\ \mathrm{nm}$ slab, the internal single-pass Beer--Lambert factor is

$$
e^{-\alpha d}=0.213.
$$

Including incoherent multiple reflections between two identical air--solid interfaces gives

$$
T=0.162,
\qquad
R_{\mathrm{slab}}=0.133,
\qquad
A_{\mathrm{slab}}=0.705.
$$

The numerical distinction among $T_0$, the internal propagation factor and the complete slab transmittance illustrates why each optical quantity must be defined at a specified position and geometry.

## Preparation questions

1. Derive the wave equation and complex dispersion relation for a homogeneous conducting dielectric.
2. Starting from $\widetilde n^2=\varepsilon_r$, derive $n$ and $\kappa$ in terms of $\varepsilon'$ and $\varepsilon''$.
3. Distinguish the phase constant, field attenuation constant, intensity absorption coefficient and the two commonly used penetration depths.
4. Derive the complex intrinsic impedance of an isotropic absorbing solid.
5. Apply electromagnetic boundary conditions to derive the normal-incidence Fresnel amplitude coefficients.
6. Obtain the reflectance and transmitted-flux coefficient for incidence from a transparent medium onto an absorbing solid, and prove $R+T_0=1$.
7. Use the Poynting vector to show that $-dS_z/dz=(1/2)\omega\varepsilon_0\varepsilon''\lvert E\rvert^2$.
8. Derive the incoherent transmittance of a plane-parallel absorbing slab by summing all internally reflected intensities.
9. Obtain the good-conductor skin depth from the complex refractive index.
10. Given $\varepsilon'$ and $\varepsilon''$ at a specified wavelength, calculate $n$, $\kappa$, $R$, $\alpha$ and the intensity penetration depth.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-2/optical-constants-electromagnetic-propagation.mac' | relative_url }})

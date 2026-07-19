---
title: "Macroscopic Dielectric Response in Solids"
summary: "Polarization, bound charge, electric displacement, dielectric tensors, boundary conditions, energy, and macroscopic measurements in solids."
date: 2026-06-01 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - dielectrics
  - polarization
  - dielectric-constant
permalink: /msc/sem-iv/macroscopic-dielectric-response/
hidden: true
---

A dielectric is a material in which an applied electric field produces polarization without steady transport of free charge in the ideal static limit. The microscopic charges remain bound to atoms, ions, molecules, or structural regions, but their average positions or orientations change. The resulting dipole moment per unit volume is described by the macroscopic polarization field $\mathbf P(\mathbf r)$.

All equations below are in SI units. Static fields are considered first. When time-harmonic fields are introduced, the phasor convention will be $e^{-i\omega t}$. The symbols $\rho_f$ and $\sigma_f$ denote charges supplied from outside the dielectric description; charges represented through $\mathbf P$ are called bound charges.

## From microscopic dipoles to polarization

For a neutral microscopic unit containing charges $q_a$ at positions $\mathbf r_a$, its electric dipole moment is

$$
\mathbf p=\sum_a q_a\mathbf r_a.
$$

Because $\sum_a q_a=0$, this definition is independent of the choice of origin. If a small macroscopic volume $\Delta V$ contains many such units but is still small on the scale over which the applied field varies, its polarization is

$$
\mathbf P(\mathbf r)=\lim_{\Delta V\to\text{macroscopic point}}
\frac{1}{\Delta V}\sum_{j\in\Delta V}\mathbf p_j.
$$

The limiting statement is a coarse graining: $\Delta V$ cannot literally be taken below atomic dimensions. For $N$ equivalent units per unit volume,

$$
\mathbf P=N\langle\mathbf p\rangle.
$$

Polarization has SI unit $\mathrm{C\,m^{-2}}$. It is therefore dimensionally a surface-charge density, a fact made precise by the bound-charge relations.

## Bound volume and surface charge

The electrostatic potential of a continuous dipole distribution is

$$
\phi_P(\mathbf r)=\frac{1}{4\pi\epsilon_0}
\int_V \mathbf P(\mathbf r')\boldsymbol\cdot
\frac{\mathbf r-\mathbf r'}{|\mathbf r-\mathbf r'|^3}\,d^3r'.
$$

Since

$$
\nabla'\!\left(\frac{1}{|\mathbf r-\mathbf r'|}\right)
=\frac{\mathbf r-\mathbf r'}{|\mathbf r-\mathbf r'|^3},
$$

integration by parts gives

$$
\begin{aligned}
\phi_P(\mathbf r)
&=\frac{1}{4\pi\epsilon_0}
\int_V\mathbf P(\mathbf r')\boldsymbol\cdot\nabla'
\frac{1}{|\mathbf r-\mathbf r'|}\,d^3r'\\
&=\frac{1}{4\pi\epsilon_0}\left[
\oint_S\frac{\mathbf P\boldsymbol\cdot\hat{\mathbf n}}{|\mathbf r-\mathbf r'|}\,da'
-\int_V\frac{\nabla'\boldsymbol\cdot\mathbf P}{|\mathbf r-\mathbf r'|}\,d^3r'
\right].
\end{aligned}
$$

Comparison with the potential of ordinary volume and surface charges identifies

$$
\boxed{\rho_b=-\nabla\boldsymbol\cdot\mathbf P},
\qquad
\boxed{\sigma_b=\mathbf P\boldsymbol\cdot\hat{\mathbf n}}.
$$

For uniform polarization, $\rho_b=0$ in the interior, but bound charge generally remains on the boundary. A uniformly polarized slab whose polarization is normal to its faces has $−P$ and $+P$ on its opposite faces.

## Electric displacement and Maxwell equations

Gauss's law for the total charge density is

$$
\nabla\boldsymbol\cdot\mathbf E
=\frac{\rho_f+\rho_b}{\epsilon_0}
=\frac{\rho_f-\nabla\boldsymbol\cdot\mathbf P}{\epsilon_0}.
$$

Moving the polarization term to the left defines the electric displacement,

$$
\boxed{\mathbf D=\epsilon_0\mathbf E+\mathbf P},
$$

and hence

$$
\boxed{\nabla\boldsymbol\cdot\mathbf D=\rho_f}.
$$

This equation does not say that $\mathbf D$ is a more fundamental electric field. It is an auxiliary field that separates free charge from the bound charge already included in $\mathbf P$. In electrostatics,

$$
\nabla\times\mathbf E=0,
$$

so that $\mathbf E=-\nabla\phi$.

## Linear constitutive law and dielectric constant

For fields weak enough that the response is linear, a homogeneous isotropic dielectric obeys

$$
\mathbf P=\epsilon_0\chi_e\mathbf E,
$$

where $\chi_e$ is the electric susceptibility. It follows that

$$
\mathbf D=\epsilon_0(1+\chi_e)\mathbf E
=\epsilon\mathbf E
=\epsilon_0\epsilon_r\mathbf E,
$$

with

$$
\boxed{\epsilon_r=1+\chi_e},
\qquad
\boxed{\epsilon=\epsilon_0\epsilon_r}.
$$

The relative permittivity $\epsilon_r$ is often called the dielectric constant, although it is constant only after the frequency, temperature, pressure, crystallographic direction, and bias field have been specified. The static relative permittivity is

$$
\epsilon_r(0)=\lim_{\omega\to0}\epsilon_r(\omega)
$$

for an insulating sample in thermodynamic equilibrium.

In a crystal the most general local linear relation is tensorial:

$$
P_i=\epsilon_0\sum_j\chi_{ij}E_j,
\qquad
D_i=\sum_j\epsilon_{ij}E_j,
$$

where

$$
\epsilon_{ij}=\epsilon_0(\delta_{ij}+\chi_{ij}).
$$

For a reciprocal dielectric in static equilibrium, the quadratic electric free energy implies $\epsilon_{ij}=\epsilon_{ji}$. A real symmetric tensor can be diagonalized by an orthogonal transformation. Along its principal dielectric axes,

$$
\mathbf D=(\epsilon_1E_1,\epsilon_2E_2,\epsilon_3E_3).
$$

Cubic crystals have $\epsilon_1=\epsilon_2=\epsilon_3$ and are macroscopically isotropic at zero wave vector. Uniaxial crystals have two equal principal values, while biaxial crystals have three distinct values.

## Polarization mechanisms

The macroscopic polarization may contain several physically distinct contributions:

$$
\mathbf P=\mathbf P_{\mathrm{el}}+\mathbf P_{\mathrm{ion}}
+\mathbf P_{\mathrm{or}}+\mathbf P_{\mathrm{int}}.
$$

Electronic polarization is the displacement of an electronic charge cloud relative to its nucleus. It occurs in every material and responds up to optical or ultraviolet frequencies, apart from resonant regions.

Ionic polarization is the relative displacement of positive and negative sublattices in an ionic solid. Its characteristic resonances are optical-phonon frequencies, usually in the infrared or terahertz region.

Orientational polarization is the partial alignment of permanent molecular or defect dipoles against thermal agitation. It is strongly temperature dependent and ceases to follow a field when the driving period is short compared with the rotational relaxation time.

Interfacial or space-charge polarization results when mobile charge accumulates at internal interfaces, grain boundaries, electrodes, or regions of different conductivity. It is usually the slowest mechanism and can produce a large low-frequency apparent permittivity. It must be distinguished from the intrinsic bulk polarizability of a perfect crystal.

Each mechanism has a different time scale. Therefore a dielectric constant measured at one frequency need not include all four contributions.

## Electrostatic boundary conditions

Let an interface separate media 1 and 2, and let $\hat{\mathbf n}$ point from medium 1 to medium 2. Applying Gauss's law for $\mathbf D$ to a thin pillbox gives

$$
\boxed{\hat{\mathbf n}\boldsymbol\cdot(\mathbf D_2-\mathbf D_1)=\sigma_f}.
$$

Applying $\oint\mathbf E\boldsymbol\cdot d\boldsymbol\ell=0$ to a narrow rectangular loop gives

$$
\boxed{\hat{\mathbf n}\times(\mathbf E_2-\mathbf E_1)=\mathbf 0}.
$$

Thus the tangential component of $\mathbf E$ is continuous in electrostatics, while the normal component of $\mathbf D$ changes only by the free surface charge. At an interface with no free surface charge,

$$
D_{1n}=D_{2n}.
$$

For isotropic media this implies

$$
\epsilon_1E_{1n}=\epsilon_2E_{2n}.
$$

The discontinuity of the normal electric field is produced by the total surface charge, including the bound interface charge

$$
\sigma_b=(\mathbf P_1-\mathbf P_2)\boldsymbol\cdot\hat{\mathbf n}.
$$

## Parallel-plate measurement of relative permittivity

Consider a capacitor of plate area $A$, separation $d$, and negligible fringing. A homogeneous dielectric fills the space between the plates. If the free charge on the plates is $\pm Q$, Gauss's law gives

$$
D=\frac{Q}{A}=\sigma_f.
$$

For a linear dielectric,

$$
E=\frac{D}{\epsilon_0\epsilon_r}
=\frac{Q}{\epsilon_0\epsilon_r A}.
$$

Since $V=Ed$,

$$
Q=\frac{\epsilon_0\epsilon_r A}{d}V,
$$

and the capacitance is

$$
\boxed{C=\frac{Q}{V}=\frac{\epsilon_0\epsilon_r A}{d}}
=\epsilon_r C_0.
$$

This provides an operational measurement of $\epsilon_r$ if electrode polarization, leakage, air gaps, and fringing are negligible.

If the capacitor is isolated, $Q$ and therefore $D$ remain fixed when the dielectric is inserted. The field falls from $D/\epsilon_0$ to $D/(\epsilon_0\epsilon_r)$. If it remains connected to an ideal voltage source, $E=V/d$ remains fixed and the source supplies additional free charge by the factor $\epsilon_r$.

## Electric energy in a linear dielectric

The incremental work per unit volume needed to increase the free charge is

$$
du=\mathbf E\boldsymbol\cdot d\mathbf D.
$$

For a linear, lossless, nondispersive material in which $\mathbf D$ grows proportionally with $\mathbf E$,

$$
u=\int_{\mathbf 0}^{\mathbf D}\mathbf E(\mathbf D')\boldsymbol\cdot d\mathbf D'
=\frac12\mathbf E\boldsymbol\cdot\mathbf D.
$$

For an isotropic dielectric,

$$
\boxed{u=\frac12\epsilon E^2}.
$$

For an anisotropic reciprocal dielectric,

$$
u=\frac12\sum_{ij}E_i\epsilon_{ij}E_j.
$$

Thermodynamic stability requires this quadratic form to be positive for every nonzero $\mathbf E$, so the static principal permittivities must be positive. The expression $u=\tfrac12\mathbf E\cdot\mathbf D$ cannot be transferred unchanged to a lossy or strongly dispersive medium, because energy is then exchanged with internal degrees of freedom and dissipated.

## Depolarization field and sample shape

Even when an applied field is uniform, bound surface charge produces a field opposing the polarization. For a uniformly polarized ellipsoid, the field along a principal axis is

$$
E=E_{\mathrm{ext}}-\frac{N_dP}{\epsilon_0},
$$

where $N_d$ is the geometrical depolarization factor for that axis. The three principal factors satisfy

$$
N_x+N_y+N_z=1.
$$

Using $P=\epsilon_0\chi_eE$,

$$
P=\epsilon_0\chi_e\left(E_{\mathrm{ext}}-\frac{N_dP}{\epsilon_0}\right),
$$

so

$$
\boxed{\frac{P}{E_{\mathrm{ext}}}
=\frac{\epsilon_0\chi_e}{1+N_d\chi_e}}.
$$

For a sphere, $N_d=1/3$. A long needle parallel to the applied field has $N_d\to0$, while a thin plate polarized normal to its surface has $N_d\to1$. This shape dependence concerns the relation between applied field and polarization of a finite specimen; the intrinsic constitutive relation uses the macroscopic internal field $\mathbf E$.

## Worked capacitor calculation

A dielectric with $\epsilon_r=6.0$ fills a parallel-plate capacitor with

$$
A=20\ \mathrm{cm^2}=2.0\times10^{-3}\ \mathrm{m^2},
\qquad
d=0.80\ \mathrm{mm}=8.0\times10^{-4}\ \mathrm m.
$$

At $V=100\ \mathrm V$,

$$
C=\frac{(8.854\times10^{-12})(6.0)(2.0\times10^{-3})}
{8.0\times10^{-4}}
=1.328\times10^{-10}\ \mathrm F.
$$

Therefore

$$
Q=CV=1.328\times10^{-8}\ \mathrm C,
\qquad
E=\frac{V}{d}=1.25\times10^5\ \mathrm{V\,m^{-1}}.
$$

The polarization is

$$
P=\epsilon_0(\epsilon_r-1)E
=5.53\times10^{-6}\ \mathrm{C\,m^{-2}}.
$$

It produces bound surface-charge densities $\sigma_b=\pm P$ on the dielectric faces. The stored energy under the stated linear, lossless approximation is

$$
U=\frac12CV^2=6.64\times10^{-7}\ \mathrm J.
$$

## Preparation questions

1. Starting from the potential of a continuous dipole distribution, derive $\rho_b=-\nabla\cdot\mathbf P$ and $\sigma_b=\mathbf P\cdot\hat{\mathbf n}$.
2. Define $\mathbf D$ and derive its normal boundary condition at an interface carrying free surface charge.
3. Distinguish microscopic dipole moment, polarization, electric susceptibility, absolute permittivity, and relative permittivity, including their SI units.
4. Derive the capacitance of a parallel-plate capacitor completely filled by a linear dielectric, and discuss separately the fixed-charge and fixed-voltage conditions.
5. Explain why dielectric response is tensorial in a general crystal and show how principal dielectric axes are obtained.
6. Derive the shape-dependent polarization of an ellipsoidal specimen in terms of its depolarization factor.
7. Describe the microscopic origins and characteristic frequency ranges of electronic, ionic, orientational, and interfacial polarization.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/macroscopic-dielectric-response.mac' | relative_url }})

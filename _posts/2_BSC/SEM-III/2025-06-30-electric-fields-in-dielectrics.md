---
title: "Electric Fields in Dielectrics"
summary: "Polarization and polarizability, bound charge, susceptibility, dielectric constant, displacement field, dielectric Gauss law, and Clausius-Mossotti theory."
date: 2025-06-30 09:00:00 +0530
categories:
  - bsc-iii
tags: [electricity-and-magnetism, dielectrics, polarization, displacement-field, clausius-mossotti]
permalink: /bsc/sem-iii/electric-fields-in-dielectrics/
hidden: true
---

An applied electric field slightly separates positive and negative charge inside matter and can also orient permanent molecular dipoles. The macroscopic electric dipole moment per unit volume is the polarization

$$
\boxed{\mathbf P(\mathbf r)
=\frac{\text{electric dipole moment}}{\text{volume}}},
$$

with SI unit $\mathrm{C\,m^{-2}}$.

## Polarization and bound charge

A volume element $\mathrm d\tau'$ has dipole moment $\mathbf P(\mathbf r')\,\mathrm d\tau'$. Its potential at $\mathbf r$ is

$$
\mathrm dV
=\frac{1}{4\pi\epsilon_0}
\mathbf P(\mathbf r')\cdot
\boldsymbol\nabla'\!\left(\frac{1}{\lvert\mathbf r-\mathbf r'\rvert}\right)
\mathrm d\tau'.
$$

Use

$$
\boldsymbol\nabla'\cdot
\left(\frac{\mathbf P}{\lvert\mathbf r-\mathbf r'\rvert}\right)
=\frac{\boldsymbol\nabla'\cdot\mathbf P}{\lvert\mathbf r-\mathbf r'\rvert}
+\mathbf P\cdot\boldsymbol\nabla'
\left(\frac{1}{\lvert\mathbf r-\mathbf r'\rvert}\right).
$$

Integration over the polarized body and the divergence theorem give

$$
V(\mathbf r)=\frac{1}{4\pi\epsilon_0}
\left[
\oint_S\frac{\mathbf P\cdot\hat{\mathbf n}}
{\lvert\mathbf r-\mathbf r'\rvert}\,\mathrm da'
+\int_V\frac{-\boldsymbol\nabla'\cdot\mathbf P}
{\lvert\mathbf r-\mathbf r'\rvert}\,\mathrm d\tau'
\right].
$$

The field of polarized matter is therefore the field of the equivalent bound charges

$$
\boxed{\rho_b=-\boldsymbol\nabla\cdot\mathbf P},
\qquad
\boxed{\sigma_b=\mathbf P\cdot\hat{\mathbf n}}.
$$

Uniform $\mathbf P$ gives $\rho_b=0$ inside, but generally leaves bound charge on surfaces whose normal has a component along $\mathbf P$.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable dielectric-polarization diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-2/dielectric-polarization.png' | relative_url }}" alt="Uniformly polarized dielectric slab and Lorentz spherical cavity used to obtain the local electric field" loading="lazy">
  </div>
  <figcaption>A uniform slab carries opposite bound surface charges. In an isotropic dielectric, the Lorentz cavity contributes $\mathbf P/(3\epsilon_0)$ to the molecular local field.</figcaption>
</figure>

## Electric field and displacement field in matter

The total charge is $\rho=\rho_f+\rho_b$, where $\rho_f$ denotes charge not included in the polarization description. Gauss's law is

$$
\boldsymbol\nabla\cdot\mathbf E
=\frac{\rho_f-\boldsymbol\nabla\cdot\mathbf P}{\epsilon_0}.
$$

Move the polarization term to the left and define

$$
\boxed{\mathbf D=\epsilon_0\mathbf E+\mathbf P}.
$$

Then Gauss's law in a dielectric becomes

$$
\boxed{\boldsymbol\nabla\cdot\mathbf D=\rho_f},
\qquad
\boxed{\oint_S\mathbf D\cdot\mathrm d\mathbf a=Q_{f,\mathrm{enc}}}.
$$

For an interface with unit normal from medium 1 to medium 2, a pillbox gives

$$
\boxed{\hat{\mathbf n}\cdot(\mathbf D_2-\mathbf D_1)=\sigma_f}.
$$

Electrostatics still has $\boldsymbol\nabla\times\mathbf E=0$, so a narrow loop gives

$$
\boxed{\hat{\mathbf n}\times(\mathbf E_2-\mathbf E_1)=0}.
$$

Only the free surface charge appears in the normal-$\mathbf D$ condition; bound charge is already contained in $\mathbf P$.

## Susceptibility, dielectric constant, and polarizability

For a linear, isotropic dielectric,

$$
\boxed{\mathbf P=\epsilon_0\chi_e\mathbf E},
$$

where the electric susceptibility $\chi_e$ is dimensionless. Hence

$$
\mathbf D
=\epsilon_0(1+\chi_e)\mathbf E
=\epsilon\mathbf E
=\epsilon_0\epsilon_r\mathbf E,
$$

so

$$
\boxed{\epsilon_r=1+\chi_e},
\qquad
\boxed{\epsilon=\epsilon_0\epsilon_r}.
$$

The relative permittivity $\epsilon_r$ is also called the dielectric constant in the static, linear regime.

Microscopically, an isotropic molecule with induced dipole moment $\mathbf p$ has polarizability $\alpha$ defined by

$$
\boxed{\mathbf p=\alpha\mathbf E_{\mathrm{loc}}}.
$$

In SI, $[\alpha]=\mathrm{C\,m^2\,V^{-1}}=\mathrm{F\,m^2}$. The local field $\mathbf E_{\mathrm{loc}}$ acting on a molecule need not equal the macroscopic field $\mathbf E$.

## Clausius-Mossotti equation

For a homogeneous isotropic or cubic dielectric, the Lorentz spherical-cavity construction gives

$$
\boxed{\mathbf E_{\mathrm{loc}}
=\mathbf E+\frac{\mathbf P}{3\epsilon_0}}.
$$

If $N$ is the molecular number density, then

$$
\mathbf P=N\mathbf p
=N\alpha\left(\mathbf E+\frac{\mathbf P}{3\epsilon_0}\right).
$$

Collect the $\mathbf P$ terms:

$$
\mathbf P\left(1-\frac{N\alpha}{3\epsilon_0}\right)
=N\alpha\mathbf E.
$$

Insert $\mathbf P=\epsilon_0(\epsilon_r-1)\mathbf E$, cancel $\mathbf E$, and define

$$
x=\frac{N\alpha}{3\epsilon_0}.
$$

Then

$$
(\epsilon_r-1)(1-x)=3x.
$$

Expanding and collecting $x$,

$$
\epsilon_r-1=x(\epsilon_r+2).
$$

Therefore

$$
\boxed{\frac{\epsilon_r-1}{\epsilon_r+2}
=\frac{N\alpha}{3\epsilon_0}}.
$$

The derivation assumes a linear, homogeneous, isotropic or cubic, nonpolar dielectric whose molecules can be treated as weakly interacting polarizable units. Strong correlations, anisotropy, permanent-dipole orientation, or large fields require a more detailed model.

The bound-charge identity, interface relations, and Clausius-Mossotti algebra are verified with exact zero residuals in the [Unit II dielectric worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-3/unit-2/dielectrics.mac' | relative_url }}).

---
title: "Electric Fields in Dielectrics"
summary: "Polarization and polarizability, bound charge, susceptibility, dielectric constant, displacement field, dielectric Gauss law, and Clausius-Mossotti theory."
date: 2025-06-25 09:00:00 +0530
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

A volume element $\mathrm d\tau^{\prime}$ has dipole moment $\mathbf P(\mathbf r^{\prime})\,\mathrm d\tau^{\prime}$. Its potential at $\mathbf r$ is

$$
\mathrm dV
=\frac{1}{4\pi\epsilon_0}
\mathbf P(\mathbf r^{\prime})\cdot
\boldsymbol\nabla^{\prime}\!\left(\frac{1}{\lvert\mathbf r-\mathbf r^{\prime}\rvert}\right)
\mathrm d\tau^{\prime}.
$$

Use

$$
\boldsymbol\nabla^{\prime}\cdot
\left(\frac{\mathbf P}{\lvert\mathbf r-\mathbf r^{\prime}\rvert}\right)
=\frac{\boldsymbol\nabla^{\prime}\cdot\mathbf P}{\lvert\mathbf r-\mathbf r^{\prime}\rvert}
+\mathbf P\cdot\boldsymbol\nabla^{\prime}
\left(\frac{1}{\lvert\mathbf r-\mathbf r^{\prime}\rvert}\right).
$$

Integration over the polarized body and the divergence theorem give

$$
V(\mathbf r)=\frac{1}{4\pi\epsilon_0}
\left[
\oint_S\frac{\mathbf P\cdot\hat{\mathbf n}}
{\lvert\mathbf r-\mathbf r^{\prime}\rvert}\,\mathrm da^{\prime}
+\int_V\frac{-\boldsymbol\nabla^{\prime}\cdot\mathbf P}
{\lvert\mathbf r-\mathbf r^{\prime}\rvert}\,\mathrm d\tau^{\prime}
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

## Solved Problems

### 1. Linear dielectric between charged parallel plates

Large plates carry free surface charge densities $+\sigma_f$ and $-\sigma_f$. A linear dielectric of relative permittivity $\epsilon_r$ fills the gap. Find $\mathbf D$, $\mathbf E$, and $\mathbf P$ away from the edges.

**Solution.** A pillbox enclosing either free plate gives

$$
\boxed{\mathbf D=\sigma_f\hat{\mathbf n}},
$$

where $\hat{\mathbf n}$ points from the positive to the negative plate. Since $\mathbf D=\epsilon_0\epsilon_r\mathbf E$,

$$
\boxed{\mathbf E=\frac{\sigma_f}{\epsilon_0\epsilon_r}\hat{\mathbf n}}.
$$

Using $\mathbf P=\epsilon_0(\epsilon_r-1)\mathbf E$,

$$
\boxed{\mathbf P=\sigma_f\left(1-\frac1{\epsilon_r}\right)\hat{\mathbf n}}.
$$

The dielectric faces therefore carry bound densities $\sigma_b=\pm P$, with the negative bound charge facing the positive free plate. Substitution confirms $\epsilon_0\mathbf E+\mathbf P=\mathbf D$.

### 2. Two dielectric layers in series

Two linear dielectric slabs of thicknesses $d_1,d_2$ and permittivities $\epsilon_1,\epsilon_2$ fill a parallel-plate gap held at potential difference $V$. There is no free charge at their interface. Find the fields.

**Solution.** The normal component of $\mathbf D$ is the same in both layers:

$$
D_1=D_2=D.
$$

Hence $E_1=D/\epsilon_1$ and $E_2=D/\epsilon_2$. The applied voltage is

$$
V=E_1d_1+E_2d_2
=D\left(\frac{d_1}{\epsilon_1}+\frac{d_2}{\epsilon_2}\right).
$$

Therefore

$$
\boxed{D=\frac{V}{d_1/\epsilon_1+d_2/\epsilon_2}},
\qquad
\boxed{E_i=\frac{D}{\epsilon_i}}.
$$

The layer with the smaller permittivity has the larger electric field.

## Descriptive Questions

1. How are polarization and molecular polarizability distinguished?
2. Why does the normal boundary condition for $\mathbf D$ contain only free surface charge?
3. Under what assumptions does $\epsilon_r=1+\chi_e$ hold?
4. Which microscopic assumptions enter the Clausius-Mossotti equation?

## Numerical Problems

### 1. Polarization and displacement

A dielectric has $\chi_e=3.20$ in a field $E=2.00\times10^5\,\mathrm{V\,m^{-1}}$. Find $P$ and $D$.

**Answer:** $P=5.67\times10^{-6}\,\mathrm{C\,m^{-2}}$ and $D=7.44\times10^{-6}\,\mathrm{C\,m^{-2}}$.

### 2. Clausius-Mossotti parameter

For a material, $x=N\alpha/(3\epsilon_0)=0.200$. Find $\epsilon_r$.

**Answer:** $\epsilon_r=1.75$.

### 3. Bound charge from nonuniform polarization

Inside a sphere of radius $R=0.100\,\mathrm m$, the polarization is $\mathbf P=kr\hat{\mathbf r}$ with $k=2.00\,\mathrm{\mu C\,m^{-3}}$. Find the bound volume density, the bound surface density, and the net bound charge.

**Answer:** $\rho_b=-6.00\,\mathrm{\mu C\,m^{-3}}$, $\sigma_b=0.200\,\mathrm{\mu C\,m^{-2}}$, and $Q_b^{\mathrm{net}}=0$.

The symbolic solutions and all printed numerical answers are verified in the [Unit II dielectric worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-3/unit-2/dielectrics.mac' | relative_url }}).

## References

1. [Dielectric: Wikipedia](https://en.wikipedia.org/wiki/Dielectric)
2. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017.
3. B. I. Bleaney and B. Bleaney, *Electricity and Magnetism*, 3rd ed., Oxford University Press, 1976.
4. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Wiley, 2004.

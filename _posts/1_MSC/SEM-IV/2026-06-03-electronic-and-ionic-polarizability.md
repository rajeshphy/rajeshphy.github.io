---
title: "Electronic and Ionic Polarizability"
summary: "Classical and quantum derivations of electronic polarizability, relative-sublattice dynamics, ionic polarizability, and numerical estimates."
date: 2026-06-03 09:00:00 +0530
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
  - electronic-polarizability
  - ionic-polarizability
permalink: /msc/sem-iv/electronic-and-ionic-polarizability/
hidden: true
---

Polarizability describes the response of one microscopic atom, ion, molecule, or primitive cell to the electric field acting at its position. For an induced dipole $\mathbf p$ in a sufficiently weak local field $\mathbf E_{\mathrm{loc}}$,

$$
p_i=\sum_j\alpha_{ij}E_{\mathrm{loc},j}.
$$

The polarizability tensor $\alpha_{ij}$ has SI unit

$$
[\alpha]=\frac{\mathrm{C\,m}}{\mathrm{V\,m^{-1}}}
=\mathrm{C\,m^2\,V^{-1}}
=\mathrm{F\,m^2}.
$$

For an isotropic unit, $\alpha_{ij}=\alpha\delta_{ij}$ and $\mathbf p=\alpha\mathbf E_{\mathrm{loc}}$. Polarizability is a microscopic quantity; susceptibility is a macroscopic quantity. Their relation requires both the number density and the relation between the local and macroscopic fields.

The static derivations below use SI units. The charge magnitude $e$ is positive. When dynamics are mentioned, fields vary as $e^{-i\omega t}$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-3/polarization-mechanisms.png' | relative_url }}" alt="Electronic ionic orientational and interfacial polarization mechanisms in a dielectric">
  <figcaption>Four polarization mechanisms shown at the microscopic or mesoscopic scale. Electronic and ionic polarization arise from relative charge displacements; orientational polarization redistributes permanent dipoles, while interfacial polarization accumulates charge at an inhomogeneity.</figcaption>
</figure>

## Electronic polarization as a bound-charge displacement

An electric field displaces the negatively charged electronic cloud slightly in the direction opposite to the field and the positive nucleus in the direction of the field. Their relative displacement produces a dipole parallel to the field.

Let $x$ be the displacement of one electron from its zero-field equilibrium position along the field. In an isotropic harmonic model,

$$
m_e\ddot x+m_e\gamma\dot x+m_e\omega_0^2x=-eE_{\mathrm{loc}}(t).
$$

The induced dipole is $p=-ex$. In a static field, $\dot x=\ddot x=0$, so

$$
x=-\frac{e}{m_e\omega_0^2}E_{\mathrm{loc}}
$$

and

$$
p=\frac{e^2}{m_e\omega_0^2}E_{\mathrm{loc}}.
$$

Therefore the oscillator model gives

$$
\boxed{\alpha_{\mathrm{el}}(0)=\frac{e^2}{m_e\omega_0^2}}.
$$

For several electronic modes $s$ with effective charges $q_s$, masses $m_s$, and natural frequencies $\omega_s$,

$$
\alpha_{\mathrm{el}}(0)=\sum_s\frac{q_s^2}{m_s\omega_s^2}.
$$

The high natural frequencies of electronic motion make electronic polarization the fastest common dielectric mechanism.

## Uniform electronic-cloud model

A useful electrostatic estimate treats an atom as a point nucleus $+Ze$ at the centre of a uniformly charged spherical electronic cloud of total charge $-Ze$ and radius $R$. If the nucleus and cloud centres are separated by $x<R$, the electric field of the cloud at the nucleus follows from Gauss's law.

The cloud charge density is

$$
\rho=-\frac{3Ze}{4\pi R^3}.
$$

The charge enclosed by a Gaussian sphere of radius $x$ is

$$
Q_{\mathrm{enc}}=\rho\frac{4\pi x^3}{3}
=-Ze\frac{x^3}{R^3}.
$$

Thus the magnitude of the cloud field at the displaced nucleus is

$$
E_{\mathrm{cloud}}=\frac{Ze}{4\pi\epsilon_0R^3}x,
$$

directed toward the cloud centre. The restoring force on the nucleus is therefore

$$
F_{\mathrm{rest}}=-\frac{(Ze)^2}{4\pi\epsilon_0R^3}x=-kx,
$$

where

$$
k=\frac{(Ze)^2}{4\pi\epsilon_0R^3}.
$$

In a uniform external field the electrostatic energy for the relative coordinate is

$$
U(x)=\frac12kx^2-ZeE_{\mathrm{loc}}x.
$$

Minimizing it,

$$
\frac{dU}{dx}=kx-ZeE_{\mathrm{loc}}=0,
$$

gives $p=Zex=(Ze)^2E_{\mathrm{loc}}/k$. Hence

$$
\boxed{\alpha_{\mathrm{el}}=4\pi\epsilon_0R^3}.
$$

The cancellation of $Z$ is a consequence of the assumed uniform cloud and should not be interpreted as an exact atomic result. The model correctly suggests that electronic polarizability scales approximately with atomic volume.

Polarizabilities are sometimes tabulated as a ``polarizability volume''

$$
a=\frac{\alpha}{4\pi\epsilon_0},
$$

whose SI unit is $\mathrm{m^3}$ and which is frequently quoted in $\text{\AA}^3$. Confusing $a$ with the SI polarizability $\alpha$ introduces a factor $4\pi\epsilon_0$.

## Quantum-mechanical electronic polarizability

The harmonic model hides the discrete spectrum of an atom or ion. Let $H_0$ have a nondegenerate ground state $\lvert0\rangle$ of energy $E_0$, and let a static field $E$ act along $z$. If $\hat d_z$ is the electric-dipole operator, the perturbation is

$$
H'=-\hat d_zE.
$$

To first order in $E$, the perturbed state is

$$
|\widetilde 0\rangle
=|0\rangle+
\sum_{n\ne0}|n\rangle
\frac{\langle n|H'|0\rangle}{E_0-E_n}.
$$

If the unperturbed state has no permanent dipole, $\langle0\rvert\hat d_z\lvert0\rangle=0$. Keeping terms linear in $E$ in the expectation value of $\hat d_z$ gives

$$
\begin{aligned}
p_z
&=\langle\widetilde0|\hat d_z|\widetilde0\rangle\\
&=2E\sum_{n\ne0}
\frac{|\langle n|\hat d_z|0\rangle|^2}{E_n-E_0}.
\end{aligned}
$$

Therefore

$$
\boxed{\alpha_{zz}=2\sum_{n\ne0}
\frac{|\langle n|\hat d_z|0\rangle|^2}{E_n-E_0}}.
$$

The tensor form is

$$
\alpha_{ij}=\sum_{n\ne0}
\frac{
\langle0|\hat d_i|n\rangle\langle n|\hat d_j|0\rangle
+\langle0|\hat d_j|n\rangle\langle n|\hat d_i|0\rangle
}{E_n-E_0}.
$$

For a spherically symmetric ground state,

$$
\boxed{\alpha_{\mathrm{el}}
=\frac{2}{3}\sum_{n\ne0}
\frac{|\langle n|\hat{\mathbf d}|0\rangle|^2}{E_n-E_0}}.
$$

The same result follows from the second-order Stark shift. Perturbation theory gives

$$
\Delta E_0^{(2)}
=\sum_{n\ne0}\frac{|\langle n|H'|0\rangle|^2}{E_0-E_n}
=-\frac12\alpha_{zz}E^2.
$$

Consequently $p_z=-\partial(\Delta E_0)/\partial E=\alpha_{zz}E$. The factor $1/2$ appears because an induced dipole grows from zero as the field is applied; its energy is not $-\alpha E^2$.

## Ionic polarization of a two-sublattice crystal

Consider one primitive cell of an ionic crystal with a positive ion of mass $M_+$ and charge $+q$ and a negative ion of mass $M_-$ and charge $-q$. Here $q=Z^*e$ may be a Born effective charge rather than the nominal integer ionic charge. Let $x_+$ and $x_-$ be small displacements along the local field, and define the relative optical coordinate

$$
u=x_+-x_-.
$$

Assume that the harmonic restoring energy per cell is $Ku^2/2$. The equations of motion are

$$
M_+\ddot x_+=-Ku+qE_{\mathrm{loc}},
$$

$$
M_-\ddot x_-=+Ku-qE_{\mathrm{loc}}.
$$

Subtracting the second acceleration from the first,

$$
\ddot u
=-K\left(\frac1{M_+}+\frac1{M_-}\right)u
+q\left(\frac1{M_+}+\frac1{M_-}\right)E_{\mathrm{loc}}.
$$

Introduce the reduced mass

$$
\mu=\frac{M_+M_-}{M_++M_-},
\qquad
\frac1\mu=\frac1{M_+}+\frac1{M_-}.
$$

The relative motion then obeys

$$
\boxed{\mu\ddot u+Ku=qE_{\mathrm{loc}}}.
$$

In static equilibrium,

$$
u=\frac{q}{K}E_{\mathrm{loc}}.
$$

The dipole moment of the cell is $p=qu$, so

$$
\boxed{\alpha_{\mathrm{ion}}(0)=\frac{q^2}{K}}.
$$

The transverse optical frequency in this simple model is

$$
\omega_{\mathrm{TO}}^2=\frac{K}{\mu}.
$$

Hence an equivalent and physically useful form is

$$
\boxed{\alpha_{\mathrm{ion}}(0)
=\frac{q^2}{\mu\omega_{\mathrm{TO}}^2}}.
$$

Soft optical modes have small $\omega_{\mathrm{TO}}$ and therefore give a large ionic polarizability. This observation is central to the large permittivity of many displacive ferroelectrics.

For several infrared-active normal modes $s$ in a cell, normal coordinates diagonalize the harmonic force-constant matrix and

$$
\alpha_{\mathrm{ion}}(0)=\sum_s
\frac{(Z_s^*e)^2}{\mu_s\omega_s^2},
$$

where $Z_s^*$ is the mode effective charge and $\mu_s$ is the corresponding effective mass. Only modes with nonzero effective charge couple linearly to a spatially uniform electric field.

## Microscopic polarizability and bulk susceptibility

If there are $N$ equivalent polarizable units per unit volume,

$$
\mathbf P=N(\alpha_{\mathrm{el}}+\alpha_{\mathrm{ion}})\mathbf E_{\mathrm{loc}}
$$

when electronic and ionic responses are independent and linear. Replacing $\mathbf E_{\mathrm{loc}}$ by the macroscopic field gives the dilute approximation

$$
\chi_e\simeq\frac{N(\alpha_{\mathrm{el}}+\alpha_{\mathrm{ion}})}{\epsilon_0}.
$$

In a dense solid the local field generally differs from the macroscopic field, so this last equation is not exact. For an isotropic cubic dielectric, the Lorentz local field produces the Clausius–Mossotti correction. In a low-symmetry crystal, polarizability, local-field factors, and susceptibility are tensors.

The ionic contribution also depends on frequency. At frequencies well above the optical-phonon resonances, the ions cannot follow the field and only the electronic contribution remains. Thus, away from absorption bands,

$$
\epsilon_r(0)>\epsilon_r(\text{optical})
$$

for a polar ionic insulator.

## Numerical estimates

For the uniform-cloud model with $R=0.150\ \mathrm{nm}$,

$$
\alpha_{\mathrm{el}}=4\pi\epsilon_0R^3
=3.76\times10^{-40}\ \mathrm{C\,m^2\,V^{-1}}.
$$

Its polarizability volume is exactly $R^3$ in this model:

$$
\frac{\alpha_{\mathrm{el}}}{4\pi\epsilon_0}
=3.375\times10^{-30}\ \mathrm{m^3}
=3.375\ \text{\AA}^3.
$$

For an illustrative NaCl-like ion pair, take

$$
M_+=22.99\,u,\qquad M_-=35.45\,u,
\qquad \nu_{\mathrm{TO}}=5.00\ \mathrm{THz},
\qquad q=e.
$$

Using $u=1.66054\times10^{-27}\ \mathrm{kg}$,

$$
\mu=2.32\times10^{-26}\ \mathrm{kg},
$$

and

$$
K=\mu(2\pi\nu_{\mathrm{TO}})^2
=22.9\ \mathrm{N\,m^{-1}}.
$$

The ionic polarizability is then

$$
\alpha_{\mathrm{ion}}=\frac{e^2}{K}
=1.12\times10^{-39}\ \mathrm{C\,m^2\,V^{-1}}.
$$

For a local field $E_{\mathrm{loc}}=1.0\times10^6\ \mathrm{V\,m^{-1}}$, the relative displacement is

$$
u=\frac{eE_{\mathrm{loc}}}{K}
=7.01\times10^{-15}\ \mathrm m,
$$

which is much smaller than an interionic spacing and is therefore consistent with the harmonic small-displacement approximation.

## Preparation questions

1. Starting from a classical harmonic-oscillator equation, derive the static electronic polarizability $e^2/(m_e\omega_0^2)$.
2. Obtain $\alpha_{\mathrm{el}}=4\pi\epsilon_0R^3$ for a uniformly charged spherical electronic cloud, stating the assumptions of the model.
3. Use nondegenerate perturbation theory to derive the sum-over-states expression for the electronic polarizability tensor.
4. Show that the second-order Stark shift of a nonpolar ground state is $-\alpha E^2/2$.
5. Derive the equation of motion for the relative displacement of two oppositely charged ionic sublattices and obtain $\alpha_{\mathrm{ion}}=q^2/(\mu\omega_{\mathrm{TO}}^2)$.
6. Explain the role of the Born effective charge and state which normal modes contribute to ionic polarizability.
7. Distinguish polarizability from susceptibility and explain why $\chi=N\alpha/\epsilon_0$ is generally only a dilute approximation.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/electronic-and-ionic-polarizability.mac' | relative_url }})

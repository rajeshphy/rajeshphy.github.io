---
title: "Long-Wavelength Optical Modes in Ionic Crystals"
summary: "Diatomic-lattice optical modes, Born effective charges, LO--TO splitting, the Lyddane--Sachs--Teller relation, and reststrahlen reflection."
date: 2026-06-19 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - ionic-crystals
  - optical-phonons
  - lo-to-splitting
  - lyddane-sachs-teller
permalink: /msc/sem-iv/optical-modes-in-ionic-crystals/
hidden: true
---

An optical lattice mode is a normal mode in which the positive and negative sublattices move against one another. In an ionic solid this relative displacement carries an electric dipole moment, so the long-wavelength dynamics cannot be obtained from short-range springs alone. A transverse displacement produces no macroscopic charge density in the strict $q\to0$ limit, whereas a longitudinal displacement produces polarization charge and a macroscopic Coulomb field. This distinction gives separate transverse-optical (TO) and longitudinal-optical (LO) limiting frequencies.

The mechanical diatomic-chain model is useful for deriving acoustic and optical branches. It does **not**, by itself, produce LO--TO splitting. That splitting belongs to the three-dimensional electromechanical problem and follows from the nonanalytic long-range Coulomb field.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-3/ionic-optical-modes.png' | relative_url }}" alt="Transverse and longitudinal optical modes in an ionic crystal">
  <figcaption>In both optical modes the oppositely charged sublattices move against one another. A transverse mode has $\mathbf P\perp\mathbf q$ and no macroscopic longitudinal field in the ideal bulk limit; a longitudinal mode has $\mathbf P\parallel\mathbf q$, so polarization charge produces the extra restoring field responsible for LO--TO splitting.</figcaption>
</figure>

## Mechanical diatomic chain

Consider a one-dimensional lattice with repeat distance $a$. Each cell contains a mass $M$ with displacement $u_n$ and a mass $m$ with displacement $v_n$. Adjacent unlike atoms are joined by identical springs of force constant $C$. With only nearest-neighbour harmonic forces,

$$
M\ddot u_n=C(v_n+v_{n-1}-2u_n),
$$

$$
m\ddot v_n=C(u_n+u_{n+1}-2v_n).
$$

Take Bloch-wave solutions

$$
u_n=Ue^{i(nka-\omega t)},
\qquad
v_n=Ve^{i(nka-\omega t)}.
$$

Substitution gives

$$
\begin{pmatrix}
2C-M\omega^2 & -C(1+e^{-ika})\\
-C(1+e^{ika}) & 2C-m\omega^2
\end{pmatrix}
\begin{pmatrix}U\\V\end{pmatrix}=0.
$$

A nonzero eigenvector requires the determinant to vanish:

$$
(2C-M\omega^2)(2C-m\omega^2)
-C^2(1+e^{-ika})(1+e^{ika})=0.
$$

Since

$$
(1+e^{-ika})(1+e^{ika})
=4\cos^2\!\left(\frac{ka}{2}\right),
$$

the secular equation is

$$
Mm\omega^4-2C(M+m)\omega^2
+4C^2\sin^2\!\left(\frac{ka}{2}\right)=0.
$$

Its two roots are

$$
\boxed{
\omega_{\pm}^2(k)=
\frac{C(M+m)}{Mm}
\pm\frac{C}{Mm}
\sqrt{(M+m)^2-4Mm\sin^2\!\left(\frac{ka}{2}\right)} }
$$

where $\omega_-$ is the acoustic branch and $\omega_+$ is the optical branch.

At $k=0$,

$$
\omega_-(0)=0,
\qquad
\omega_+^2(0)=2C\left(\frac1M+\frac1m\right).
$$

For the acoustic mode, $U=V$: the two atoms translate together and the unit cell is not internally distorted. For the optical mode,

$$
MU+mV=0,
\qquad
V=-\frac{M}{m}U,
$$

so the centre of mass of a cell remains fixed while the two sublattices move oppositely.

To obtain the sound speed, expand the lower branch at $ka\ll1$. Using $\sin(ka/2)\simeq ka/2$ gives

$$
\omega_-^2(k)\simeq
\frac{Ca^2}{2(M+m)}k^2,
$$

and hence

$$
v_s=\lim_{k\to0}\frac{\omega_-}{|k|}
=a\sqrt{\frac{C}{2(M+m)}}.
$$

The optical branch has a nonzero limiting frequency because unlike atoms experience a restoring force even when every unit cell undergoes the same internal relative displacement.

At the Brillouin-zone edge $k=\pi/a$, the two frequencies, for $M>m$, are

$$
\omega_-^2=\frac{2C}{M},
\qquad
\omega_+^2=\frac{2C}{m}.
$$

This mechanical frequency gap is caused by the two unequal inertial masses. There is still no LO--TO distinction: a one-dimensional scalar spring model has not included the macroscopic electric field or the orientation of polarization relative to a three-dimensional wave vector.

## Relative coordinate and infrared-active polarization

For a three-dimensional polar crystal, let $\mathbf u$ be the relative displacement coordinate of the two sublattices for one infrared-active normal mode, and let

$$
\mu=\frac{M_+M_-}{M_++M_-}
$$

be the corresponding reduced mass. Let $N$ be the number of primitive cells per unit volume. In a cubic crystal with a scalar mode effective charge $Z^\ast e$, the macroscopic ionic polarization is

$$
\mathbf P_{\mathrm{ion}}=N Z^\ast e\,\mathbf u.
$$

$Z^\ast$ is not generally the nominal ionic valence. The Born effective-charge tensor of sublattice $\kappa$ is defined by

$$
Z^\ast_{\kappa,\alpha\beta}
=\frac{\Omega}{e}
\left(\frac{\partial P_\beta}
{\partial u_{\kappa\alpha}}\right)_{\mathbf E=0}
=\frac{1}{e}
\left(\frac{\partial F_{\kappa\alpha}}
{\partial E_\beta}\right)_{\mathbf u},
$$

where $\Omega=1/N$ is the cell volume. The first form describes polarization generated by displacement; the second is the reciprocal force generated by an electric field. Charge neutrality implies the acoustic sum rule

$$
\sum_\kappa Z^\ast_{\kappa,\alpha\beta}=0.
$$

In a non-cubic crystal the effective charge and electronic dielectric constant are tensors, and a normal mode has a mode effective charge obtained by projecting the Born tensors onto its mass-normalized eigenvector. The scalar treatment below is the cubic, one-mode limit.

Let $\omega_{\mathrm{TO}}$ be the long-wavelength transverse frequency after all short-range forces and analytic local-field effects have been included. The driven harmonic equation is

$$
\mu\left(\omega_{\mathrm{TO}}^2-\omega^2-i\gamma\omega\right)
\mathbf u=Z^\ast e\,\mathbf E,
$$

where $\mathbf E$ is the macroscopic field acting through the mode effective charge. The high-frequency electronic polarization is included through $\varepsilon_\infty$, so

$$
\mathbf D=\varepsilon_0\varepsilon_\infty\mathbf E
+\mathbf P_{\mathrm{ion}}.
$$

It is important not to add an elementary Lorentz local field to this equation once $\omega_{\mathrm{TO}}$ and $Z^\ast$ are understood as crystal normal-mode parameters; that would count part of the microscopic field twice.

## Transverse and longitudinal limiting frequencies

For a long-wavelength transverse optical displacement,

$$
\mathbf q\cdot\mathbf u=0.
$$

The macroscopic polarization charge is

$$
\rho_{\mathrm{pol}}=-\nabla\cdot\mathbf P
\longrightarrow -i\mathbf q\cdot\mathbf P=0.
$$

Thus the nonretarded macroscopic Coulomb field vanishes for the free transverse mechanical mode, and its $q\to0$ frequency is $\omega_{\mathrm{TO}}$.

For a longitudinal optical displacement, $\mathbf u\parallel\mathbf q$. In a bulk normal mode with no externally supplied free charge, Gauss's law requires

$$
\mathbf q\cdot\mathbf D=0.
$$

All vectors are longitudinal, so

$$
\varepsilon_0\varepsilon_\infty E_L+P_L=0,
$$

and therefore

$$
E_L=-\frac{N Z^\ast e}{\varepsilon_0\varepsilon_\infty}u_L.
$$

Insert this depolarizing field into the undamped equation of motion:

$$
\mu(\omega_{\mathrm{TO}}^2-\omega_{\mathrm{LO}}^2)u_L
=-\frac{N(Z^\ast e)^2}
{\varepsilon_0\varepsilon_\infty}u_L.
$$

Hence

$$
\boxed{
\omega_{\mathrm{LO}}^2
=\omega_{\mathrm{TO}}^2
+\frac{N(Z^\ast e)^2}
{\varepsilon_0\varepsilon_\infty\mu}}
$$

and $\omega_{\mathrm{LO}}>\omega_{\mathrm{TO}}$ for an infrared-active mode.

The same result appears as a direction-dependent, nonanalytic term in the dynamical matrix. In component notation its long-wavelength form is

$$
D^{\mathrm{NA}}_{\kappa\alpha,\kappa'\beta}(\mathbf q)
=\frac{e^2}{\varepsilon_0\Omega\sqrt{M_\kappa M_{\kappa'}}}
\frac{
\left(\sum_\gamma q_\gamma Z^\ast_{\kappa,\gamma\alpha}\right)
\left(\sum_\delta q_\delta Z^\ast_{\kappa',\delta\beta}\right)}
{\sum_{\gamma\delta}q_\gamma
\varepsilon_{\infty,\gamma\delta}q_\delta}.
$$

This term depends on the direction from which $\mathbf q$ approaches zero and acts only on polar mode components with nonzero longitudinal effective charge.

## Dielectric response and the Lyddane--Sachs--Teller relation

Solving the driven oscillator equation gives

$$
\mathbf P_{\mathrm{ion}}
=\frac{N(Z^\ast e)^2}
{\mu(\omega_{\mathrm{TO}}^2-\omega^2-i\gamma\omega)}
\mathbf E.
$$

Therefore

$$
\boxed{
\varepsilon(\omega)=\varepsilon_\infty
+\frac{N(Z^\ast e)^2}
{\varepsilon_0\mu(\omega_{\mathrm{TO}}^2-\omega^2-i\gamma\omega)}}.
$$

In the lossless limit, use the LO--TO splitting to rewrite this as

$$
\boxed{
\varepsilon(\omega)=\varepsilon_\infty
\frac{\omega_{\mathrm{LO}}^2-\omega^2}
{\omega_{\mathrm{TO}}^2-\omega^2}}.
$$

The pole at $\omega_{\mathrm{TO}}$ is the resonant transverse response to an electric field. The zero at $\omega_{\mathrm{LO}}$ is the self-sustained longitudinal condition $D_L=0$.

Let $\varepsilon_s=\varepsilon(0)$ denote the static relative permittivity; it must not be confused with the vacuum permittivity $\varepsilon_0$. Setting $\omega=0$ gives

$$
\varepsilon_s
=\varepsilon_\infty
+\frac{N(Z^\ast e)^2}
{\varepsilon_0\mu\omega_{\mathrm{TO}}^2}
$$

and

$$
\boxed{
\frac{\varepsilon_s}{\varepsilon_\infty}
=\frac{\omega_{\mathrm{LO}}^2}
{\omega_{\mathrm{TO}}^2}} }
$$

which is the one-mode Lyddane--Sachs--Teller (LST) relation. With several uncoupled infrared-active modes of the same symmetry, its generalized factorized form is

$$
\frac{\varepsilon_s}{\varepsilon_\infty}
=\prod_j\frac{\omega_{\mathrm{LO},j}^2}
{\omega_{\mathrm{TO},j}^2}.
$$

For anisotropic crystals, this product relation applies to suitable principal dielectric components or, more generally, to dielectric determinants; one cannot arbitrarily pair every measured LO frequency with a TO frequency without accounting for mode symmetry and mixing.

The static ionic polarizability per primitive cell follows directly from the oscillator:

$$
\alpha_{\mathrm{ion}}(0)
=\frac{(Z^\ast e)^2}{\mu\omega_{\mathrm{TO}}^2},
$$

and its contribution to relative permittivity is

$$
\varepsilon_s-\varepsilon_\infty
=\frac{N\alpha_{\mathrm{ion}}(0)}{\varepsilon_0}.
$$

## Reststrahlen band

For negligible damping and positive $\varepsilon_\infty$,

$$
\varepsilon(\omega)<0
\qquad\text{when}\qquad
\omega_{\mathrm{TO}}<\omega<\omega_{\mathrm{LO}}.
$$

A transverse plane wave would have

$$
k^2=\varepsilon(\omega)\frac{\omega^2}{c^2}.
$$

Since $\varepsilon<0$, $k$ is imaginary and the field is evanescent rather than a propagating bulk wave. At normal incidence from vacuum, the complex amplitude reflection coefficient is

$$
r(\omega)=\frac{1-\sqrt{\varepsilon(\omega)}}
{1+\sqrt{\varepsilon(\omega)}},
$$

and the reflectance is

$$
R(\omega)=|r(\omega)|^2.
$$

In the lossless negative-permittivity interval, $\lvert r\rvert=1$. With damping, $\varepsilon$ is complex, the sharp pole and zero are broadened, and $R$ remains high but is less than unity. This strong-reflection interval between the TO and LO frequencies is the **reststrahlen band**. Infrared reflectivity locates its edges; infrared absorption is strongest near the TO resonance, while longitudinal EELS or the zero of $\varepsilon$ identifies the LO mode.

## Worked numerical examples

For a mechanical chain, take $M=40u$, $m=20u$, $C=100\,\mathrm{N\,m^{-1}}$, where $u=1.66054\times10^{-27}\,\mathrm{kg}$. The zone-centre optical frequency is

$$
\frac{\omega_+(0)}{2\pi}
=\frac{1}{2\pi}\sqrt{2C\left(\frac1M+\frac1m\right)}
=15.13\,\mathrm{THz}.
$$

At $k=\pi/a$,

$$
\frac{\omega_-}{2\pi}=8.73\,\mathrm{THz},
\qquad
\frac{\omega_+}{2\pi}=12.35\,\mathrm{THz}.
$$

These are mechanical branch frequencies and should not be labelled LO and TO.

For a three-dimensional polar mode, take

$$
N=2.00\times10^{28}\,\mathrm{m^{-3}},\quad
Z^\ast=1.10,\quad
\mu=2.30\times10^{-26}\,\mathrm{kg},
$$

$$
\varepsilon_\infty=2.50,
\qquad
\frac{\omega_{\mathrm{TO}}}{2\pi}=5.00\,\mathrm{THz}.
$$

The Coulomb contribution to the squared angular frequency is

$$
\Delta\omega^2
=\frac{N(Z^\ast e)^2}
{\varepsilon_0\varepsilon_\infty\mu}
=1.220\times10^{27}\,\mathrm{s^{-2}}.
$$

Thus

$$
\frac{\omega_{\mathrm{LO}}}{2\pi}
=\frac{1}{2\pi}
\sqrt{\omega_{\mathrm{TO}}^2+\Delta\omega^2}
=7.477\,\mathrm{THz}.
$$

The LST relation predicts

$$
\varepsilon_s
=\varepsilon_\infty
\left(\frac{\omega_{\mathrm{LO}}}
{\omega_{\mathrm{TO}}}\right)^2
=5.591.
$$

At $6.00\,\mathrm{THz}$, which lies between the TO and LO frequencies, the lossless dielectric function is

$$
\varepsilon(2\pi\times6.00\,\mathrm{THz})
=2.50\,
\frac{7.477^2-6.00^2}{5.00^2-6.00^2}
=-4.52,
$$

so a propagating transverse bulk wave is excluded in this frequency interval.

## Preparation questions

1. Derive the acoustic and optical dispersion relations of a linear diatomic chain and obtain their limiting frequencies at $k=0$ and $k=\pi/a$.
2. Why does the nearest-neighbour diatomic-chain model not, by itself, exhibit LO--TO splitting?
3. Define the Born effective charge and derive the macroscopic polarization created by a long-wavelength infrared-active mode.
4. Starting from $D_L=0$, derive the LO--TO splitting for a cubic polar crystal.
5. Derive the oscillator dielectric function and the one-mode Lyddane--Sachs--Teller relation.
6. Explain the physical origin and frequency limits of a reststrahlen band. How are its TO and LO edges identified experimentally?
7. For $\varepsilon_\infty=3.0$, $\varepsilon_s=12.0$, and $\omega_{\mathrm{TO}}/(2\pi)=4.0\,\mathrm{THz}$, calculate the LO frequency and state the negative-permittivity interval.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/optical-modes-in-ionic-crystals.mac' | relative_url }})

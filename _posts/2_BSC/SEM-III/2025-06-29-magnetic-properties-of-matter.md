---
title: "Magnetic Properties of Matter"
summary: "Magnetization, magnetic field intensity, susceptibility and permeability, magnetic classes, Langevin paramagnetism, hysteresis, and Quincke's method."
date: 2025-06-29 09:00:00 +0530
categories:
  - bsc-iii
tags: [electricity-and-magnetism, magnetization, susceptibility, hysteresis, langevin-theory, quincke-method]
permalink: /bsc/sem-iii/magnetic-properties-of-matter/
hidden: true
---

The magnetization is magnetic dipole moment per unit volume:

$$
\boxed{\mathbf M
=\frac{\text{magnetic dipole moment}}{\text{volume}}}.
$$

Both $\mathbf M$ and magnetic field intensity $\mathbf H$ have SI unit $\mathrm{A\,m^{-1}}$; magnetic flux density $\mathbf B$ is measured in tesla.

## Relations among $\mathbf B$, $\mathbf H$, and $\mathbf M$

A magnetization distribution is equivalent to the bound currents

$$
\mathbf J_b=\boldsymbol\nabla\times\mathbf M,
\qquad
\mathbf K_b=\mathbf M\times\hat{\mathbf n}.
$$

In magnetostatics,

$$
\boldsymbol\nabla\times\mathbf B
=\mu_0(\mathbf J_f+\mathbf J_b).
$$

Substitute $\mathbf J_b=\boldsymbol\nabla\times\mathbf M$:

$$
\boldsymbol\nabla\times
\left(\frac{\mathbf B}{\mu_0}-\mathbf M\right)
=\mathbf J_f.
$$

This motivates

$$
\boxed{\mathbf H=\frac{\mathbf B}{\mu_0}-\mathbf M},
\qquad
\boxed{\mathbf B=\mu_0(\mathbf H+\mathbf M)}.
$$

For a linear, isotropic material,

$$
\boxed{\mathbf M=\chi_m\mathbf H},
$$

where $\chi_m$ is the dimensionless magnetic susceptibility. Therefore

$$
\mathbf B
=\mu_0(1+\chi_m)\mathbf H
=\mu\mathbf H
=\mu_0\mu_r\mathbf H,
$$

and

$$
\boxed{\mu_r=1+\chi_m},
\qquad
\boxed{\mu=\mu_0\mu_r}.
$$

These proportionalities do not describe a ferromagnet throughout a hysteresis cycle because its response is nonlinear and history dependent.

## Diamagnetic, paramagnetic, and ferromagnetic matter

| Class | Susceptibility and response | Microscopic origin | Typical field removal |
|---|---|---|---|
| Diamagnetic | small $\chi_m<0$, hence $\mu_r<1$ | field-induced moments oppose the applied field | induced magnetization disappears |
| Paramagnetic | small $\chi_m>0$, hence $\mu_r>1$ | permanent atomic moments align partially against thermal disorder | alignment disappears |
| Ferromagnetic | large, nonlinear response | cooperative domain alignment | remanent magnetization can remain |

Diamagnetism is weak and only mildly temperature dependent. Classical paramagnetism follows Curie's $1/T$ law in the dilute weak-field limit. Ferromagnetic domains produce saturation and hysteresis.

## Langevin theory of paramagnetism

Consider $N$ noninteracting classical dipoles per unit volume, each of fixed magnitude $m$. In a field $\mathbf B=B\hat{\mathbf z}$, a dipole at polar angle $\theta$ has energy

$$
U=-mB\cos\theta.
$$

Define

$$
x=\frac{mB}{k_BT}.
$$

The orientational Boltzmann factor is $e^{x\cos\theta}$. The azimuthal integral cancels in the average, so

$$
\langle\cos\theta\rangle
=\frac{\displaystyle\int_0^\pi
\cos\theta\,e^{x\cos\theta}\sin\theta\,\mathrm d\theta}
{\displaystyle\int_0^\pi
e^{x\cos\theta}\sin\theta\,\mathrm d\theta}.
$$

Put $u=\cos\theta$. The denominator is

$$
Z(x)=\int_{-1}^{1}e^{xu}\,\mathrm du
=\frac{e^x-e^{-x}}{x}
=\frac{2\sinh x}{x}.
$$

The numerator is $\mathrm dZ/\mathrm dx$. Hence

$$
\langle\cos\theta\rangle
=\frac{1}{Z}\frac{\mathrm dZ}{\mathrm dx}
=\frac{\mathrm d}{\mathrm dx}\ln Z
=\coth x-\frac{1}{x}.
$$

Define the Langevin function

$$
\boxed{L(x)=\coth x-\frac{1}{x}}.
$$

The magnetization is therefore

$$
\boxed{M=NmL(x)}.
$$

For $x\ll1$,

$$
\coth x=\frac{1}{x}+\frac{x}{3}-\frac{x^3}{45}+\cdots,
$$

so

$$
M\simeq Nm\frac{x}{3}
=\frac{Nm^2B}{3k_BT}.
$$

For a weak paramagnet, $\chi_m\ll1$, so $B\simeq\mu_0H$. Thus

$$
M\simeq\frac{\mu_0Nm^2}{3k_BT}H
$$

and

$$
\boxed{\chi_m=\frac{\mu_0Nm^2}{3k_BT}=\frac{C}{T}},
\qquad
C=\frac{\mu_0Nm^2}{3k_B}.
$$

This is Curie's law under the stated classical, noninteracting, weak-field approximation. As $x\to\infty$, $L(x)\to1$ and $M\to Nm$, the saturation magnetization.

## $B$-$H$ curve and hysteresis

Starting from a demagnetized specimen, increasing $H$ traces the initial magnetization curve toward saturation. If $H$ is then cycled, $B$ lags and traces a closed loop:

- at $H=0$, the remaining flux density $B_r$ is the remanence;
- a reverse field of magnitude $H_c$ is required to make $B=0$; $H_c$ is the coercive field;
- at large $\lvert H\rvert$, the material approaches saturation.

The energy converted to heat per unit volume in one quasistatic cycle is the loop area:

$$
\boxed{w_{\mathrm{hyst}}=\left\lvert\oint H\,\mathrm dB\right\rvert}.
$$

Its unit is $\mathrm{A\,m^{-1}}\times\mathrm T=\mathrm{J\,m^{-3}}$. Soft magnetic materials have a narrow loop and low coercivity; hard magnetic materials have a wider loop and retain magnetization.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable magnetization-and-hysteresis diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-2/magnetization-hysteresis.png' | relative_url }}" alt="Equation-generated Langevin magnetization curve and equation-generated magnetic hysteresis loop with remanence and coercivity" loading="lazy">
  </div>
  <figcaption>The Langevin curve approaches saturation smoothly. The analytic two-branch loop identifies $B_r$ and $H_c$ and illustrates the finite hysteresis area.</figcaption>
</figure>

## Measurement of susceptibility by Quincke's method

One limb of a Quincke tube is narrow and placed between magnet poles; the other limb is wide and nearly outside the field. For a weak linear liquid, the magnetic force density along $z$ is

$$
f_z=\frac{\chi_m}{2\mu_0}
\frac{\mathrm d(B^2)}{\mathrm dz}.
$$

If the liquid and surrounding gas have susceptibility contrast

$$
\Delta\chi=\chi_{\mathrm{liquid}}-\chi_{\mathrm{gas}},
$$

integration over a column of cross-sectional area $A$, between fields $B_2$ and $B_1$, gives

$$
F_m
=A\int\frac{\Delta\chi}{2\mu_0}\,\mathrm d(B^2)
=\frac{A\Delta\chi}{2\mu_0}(B_1^2-B_2^2).
$$

At equilibrium this magnetic force is balanced by the hydrostatic force

$$
F_g=A\,\Delta\rho\,g\,h,
$$

where $\Delta\rho=\rho_{\mathrm{liquid}}-\rho_{\mathrm{gas}}$ and $h$ is the hydrostatic head between the two free surfaces. Cancelling $A$,

$$
\boxed{
\Delta\chi
=\frac{2\mu_0\Delta\rho\,g\,h}{B_1^2-B_2^2}}.
$$

Usually $B_2$, $\rho_{\mathrm{gas}}$, and $\chi_{\mathrm{gas}}$ are negligible, giving

$$
\boxed{\chi_m\simeq\frac{2\mu_0\rho gh}{B^2}}.
$$

If a microscope records only the motion of the narrow meniscus, that motion equals $h$ only when the wide limb's level change is negligible; otherwise the level changes of both limbs must be included. A paramagnetic liquid rises in the stronger-field limb $(\chi_m>0)$, while a diamagnetic liquid is depressed $(\chi_m<0)$.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable Quincke-method diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-2/quincke-method.png' | relative_url }}" alt="Quincke tube with a narrow limb between electromagnet poles, wide reference limb outside the field, and measured hydrostatic head" loading="lazy">
  </div>
  <figcaption>The magnetic-pressure difference between the two menisci is balanced by the hydrostatic head $h$.</figcaption>
</figure>

The Langevin expansion, Curie-law limit, constitutive relations, hysteresis-loop area, and Quincke formula are verified with exact zero residuals in the [Unit II magnetic-matter worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-3/unit-2/magnetic-matter.mac' | relative_url }}).

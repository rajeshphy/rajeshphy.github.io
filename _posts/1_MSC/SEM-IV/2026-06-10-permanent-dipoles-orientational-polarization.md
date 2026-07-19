---
title: "Permanent Dipoles and Orientational Polarization"
summary: "Statistical theory of permanent molecular dipoles, the Langevin function, Debye susceptibility, saturation and rotational relaxation."
date: 2026-06-10 09:00:00 +0530
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
  - permanent-dipoles
  - orientational-polarization
  - langevin-function
  - debye-relaxation
permalink: /msc/sem-iv/permanent-dipoles-orientational-polarization/
hidden: true
---

A molecule has a **permanent electric dipole moment** when the centres of its positive and negative charge distributions do not coincide even in the absence of an applied field. If the charges are represented by $+q$ and $-q$ separated by the vector $\boldsymbol{\ell}$, the dipole moment is

$$
\boldsymbol{\mu}=q\boldsymbol{\ell},
$$

directed from the negative charge towards the positive charge. Its SI unit is coulomb metre. Molecular dipole moments are commonly quoted in debye,

$$
1\ \mathrm{D}=3.33564\times10^{-30}\ \mathrm{C\,m}.
$$

In a fluid or a crystal with orientational disorder, permanent molecular dipoles point in different directions when no electric field is applied. The vector average then vanishes even though every molecule has $\mu\ne0$. An applied field biases their angular distribution and produces **orientational**, **dipolar**, or **permanent-dipole polarization**. This mechanism is distinct from induced electronic or ionic polarization: the magnitude of each permanent dipole is approximately fixed, while its orientation changes.

Throughout the statistical derivation, the dipoles are assumed identical, non-interacting, and free to rotate in three dimensions. The symbol $E_{\mathrm{loc}}$ denotes the field acting on a molecule; it need not equal the externally measured macroscopic field in a dense dielectric.

## Polarization as a statistical average

Let $N$ be the number of dipoles per unit volume. The macroscopic polarization is the dipole moment per unit volume,

$$
\mathbf P=N\langle\boldsymbol{\mu}\rangle.
$$

Choose the $z$-axis along a static local field $\mathbf E_{\mathrm{loc}}$. If $\theta$ is the angle between $\boldsymbol{\mu}$ and the field, the electrostatic energy of one dipole is

$$
U(\theta)=-\boldsymbol{\mu}\cdot\mathbf E_{\mathrm{loc}}
=-\mu E_{\mathrm{loc}}\cos\theta.
$$

At absolute temperature $T$, the equilibrium angular probability is proportional to the Boltzmann factor. With

$$
x\equiv \frac{\mu E_{\mathrm{loc}}}{k_{\mathrm B}T},
$$

the normalized probability of finding the dipole in the solid-angle element $d\Omega=\sin\theta\,d\theta\,d\phi$ is

$$
d\mathcal P
=\frac{e^{x\cos\theta}\,d\Omega}
{\displaystyle\int e^{x\cos\theta}\,d\Omega}.
$$

Rotational symmetry makes the transverse average zero. Therefore only

$$
\langle\mu_z\rangle=\mu\langle\cos\theta\rangle
$$

has to be evaluated.

## Rotational partition function and the Langevin function

The orientational partition function of one classical dipole is

$$
\begin{aligned}
Z_1(x)
&=\int_0^{2\pi}d\phi\int_0^\pi
e^{x\cos\theta}\sin\theta\,d\theta\\
&=2\pi\int_{-1}^{1}e^{xu}\,du
=4\pi\frac{\sinh x}{x},
\end{aligned}
$$

where $u=\cos\theta$. Because differentiation with respect to $x$ brings down a factor $\cos\theta$,

$$
\langle\cos\theta\rangle
=\frac{1}{Z_1}\frac{dZ_1}{dx}
=\frac{d}{dx}\ln Z_1.
$$

Consequently,

$$
\langle\cos\theta\rangle
=\frac{d}{dx}\ln\left(\frac{\sinh x}{x}\right)
=\coth x-\frac{1}{x}.
$$

The function

$$
\boxed{L(x)=\coth x-\frac{1}{x}}
$$

is the **Langevin function**. The exact equilibrium orientational polarization is thus

$$
\boxed{
P_{\mathrm{or}}=N\mu L\!\left(
\frac{\mu E_{\mathrm{loc}}}{k_{\mathrm B}T}
\right).
}
$$

The same result follows by differentiating the Helmholtz free energy per dipole,

$$
F_1=-k_{\mathrm B}T\ln Z_1,
\qquad
\langle\mu_z\rangle=-\frac{\partial F_1}{\partial E_{\mathrm{loc}}}.
$$

For zero field, $Z_1=4\pi$ and every direction is equally probable. For positive field, $0<L(x)<1$ and the average dipole lies along the field.

## Weak-field Debye limit

The Laurent singularities of $\coth x$ and $1/x$ cancel. Expanding about $x=0$ gives

$$
L(x)=\frac{x}{3}-\frac{x^3}{45}
+\frac{2x^5}{945}-\frac{x^7}{4725}+\cdots.
$$

When $\mu E_{\mathrm{loc}}\ll k_{\mathrm B}T$, the first term is sufficient:

$$
P_{\mathrm{or}}
\simeq N\mu\frac{x}{3}
=\frac{N\mu^2}{3k_{\mathrm B}T}E_{\mathrm{loc}}.
$$

The orientational polarizability of one molecule is therefore

$$
\boxed{
\alpha_{\mathrm{or}}=\frac{\mu^2}{3k_{\mathrm B}T}.
}
$$

Its SI unit is $\mathrm{C\,m^2\,V^{-1}}$, the same as that of any molecular electric polarizability. The factor $1/3$ arises from the angular average

$$
\langle\cos^2\theta\rangle_0=\frac13,
$$

not from an assumption that only one third of the dipoles respond.

For a sufficiently dilute gas, $E_{\mathrm{loc}}\simeq E$, and $P=\varepsilon_0\chi_e E$. Hence

$$
\boxed{
\chi_{\mathrm{or}}
=\frac{N\mu^2}{3\varepsilon_0k_{\mathrm B}T}
=\frac{C_{\mathrm d}}{T},
\qquad
C_{\mathrm d}=\frac{N\mu^2}{3\varepsilon_0k_{\mathrm B}}.
}
$$

This inverse-temperature law is the electric analogue of the Curie law for non-interacting magnetic moments. Thermal agitation reduces orientational order, whereas induced electronic polarizability is nearly temperature independent away from resonances.

If a molecule also has field-induced polarizability $\alpha_{\mathrm{ind}}$ (electronic plus any ionic or atomic contribution active at the frequency considered), its weak-field average dipole is

$$
\langle\mu_z\rangle
=\left(\alpha_{\mathrm{ind}}+\frac{\mu^2}{3k_{\mathrm B}T}\right)E_{\mathrm{loc}}.
$$

Thus the effective static molecular polarizability is

$$
\alpha_{\mathrm{eff}}(0,T)
=\alpha_{\mathrm{ind}}+\frac{\mu^2}{3k_{\mathrm B}T}.
$$

## Fluctuation derivation of the linear susceptibility

At zero field, $\langle\mu_z\rangle_0=0$. Linear-response theory relates the susceptibility to the equilibrium fluctuation of the dipole component:

$$
\left.\frac{\partial\langle\mu_z\rangle}
{\partial E_{\mathrm{loc}}}\right|_{E_{\mathrm{loc}}=0}
=\frac{1}{k_{\mathrm B}T}
\left(\langle\mu_z^2\rangle_0
-\langle\mu_z\rangle_0^2\right).
$$

For an isotropic distribution,

$$
\langle\mu_z^2\rangle_0
=\mu^2\langle\cos^2\theta\rangle_0
=\frac{\mu^2}{3}.
$$

It follows immediately that

$$
\left.\frac{\partial P}{\partial E_{\mathrm{loc}}}\right|_0
=\frac{N\mu^2}{3k_{\mathrm B}T},
$$

which reproduces the Debye result. This form also indicates how intermolecular correlations alter the response: cross-correlations between distinct dipoles contribute to the fluctuation of the total dipole moment.

## Local field and the Debye--Clausius--Mossotti equation

The field inside a dielectric is generally not the field acting on an individual molecule. For an isotropic cubic medium, the Lorentz spherical-cavity construction gives

$$
\mathbf E_{\mathrm{loc}}
=\mathbf E+\frac{\mathbf P}{3\varepsilon_0}.
$$

In the linear regime, let

$$
A(T)=\alpha_{\mathrm{ind}}+\frac{\mu^2}{3k_{\mathrm B}T}.
$$

Then

$$
P=NA(T)E_{\mathrm{loc}}
=NA(T)\left(E+\frac{P}{3\varepsilon_0}\right).
$$

Using $P=\varepsilon_0(\varepsilon_r-1)E$ and solving for $\varepsilon_r$ gives

$$
\boxed{
\frac{\varepsilon_r-1}{\varepsilon_r+2}
=\frac{N}{3\varepsilon_0}
\left(\alpha_{\mathrm{ind}}
+\frac{\mu^2}{3k_{\mathrm B}T}\right).
}
$$

This is often called the Debye equation or the Debye--Clausius--Mossotti equation for a dilute polar dielectric. It predicts that a plot of $(\varepsilon_r-1)/(\varepsilon_r+2)$ against $1/T$ is linear if $N$ and $\alpha_{\mathrm{ind}}$ are approximately constant.

For dense polar liquids, the Lorentz field and the assumption of independent orientations are generally inadequate. Short-range structure and dipole--dipole correlations require an Onsager or Kirkwood--Fröhlich treatment. The simple equation should therefore not be used to infer a precise molecular dipole moment from a strongly associated liquid without a correlation correction.

## Nonlinear response and saturation

The exact Langevin expression is nonlinear. The polarization is bounded because one molecule cannot contribute more than $\mu$ along the field:

$$
\lim_{x\to\infty}L(x)=1,
\qquad
\boxed{P_{\mathrm{sat}}=N\mu.}
$$

For $x\gg1$,

$$
L(x)=1-\frac1x+2e^{-2x}+\cdots,
$$

so the classical approach to saturation is

$$
P_{\mathrm{or}}
\simeq N\mu\left(1-
\frac{k_{\mathrm B}T}{\mu E_{\mathrm{loc}}}\right).
$$

The characteristic field for substantial alignment is

$$
E_T=\frac{k_{\mathrm B}T}{\mu}.
$$

For ordinary molecular dipoles at room temperature, $E_T$ is often of order $10^8$--$10^9\ \mathrm{V\,m^{-1}}$. Macroscopic breakdown therefore usually occurs before a bulk dielectric reaches complete orientational saturation.

The field-dependent differential susceptibility with respect to the local field is

$$
\begin{aligned}
\frac{dP_{\mathrm{or}}}{dE_{\mathrm{loc}}}
&=\frac{N\mu^2}{k_{\mathrm B}T}L'(x),\\
L'(x)&=\frac{1}{x^2}-\operatorname{csch}^2x.
\end{aligned}
$$

At $x=0$, $L'(0)=1/3$; at large $x$, $L'(x)\sim1/x^2$. Thus the incremental response decreases as the population becomes aligned. The leading nonlinear correction is

$$
P_{\mathrm{or}}
=\frac{N\mu^2}{3k_{\mathrm B}T}E_{\mathrm{loc}}
-\frac{N\mu^4}{45(k_{\mathrm B}T)^3}E_{\mathrm{loc}}^3
+\cdots.
$$

## Rotational relaxation in an alternating field

The equilibrium distribution cannot follow an arbitrarily rapid alternating field because molecular rotation is hindered by inertia and collisions. In the simplest Debye relaxation model, the orientational part $P_{\mathrm{or}}(t)$ approaches its instantaneous equilibrium value with a single relaxation time $\tau$:

$$
\tau\frac{dP_{\mathrm{or}}}{dt}+P_{\mathrm{or}}
=\varepsilon_0(\varepsilon_s-\varepsilon_\infty)E(t).
$$

Here $\varepsilon_s$ is the relative permittivity after orientational relaxation has occurred, while $\varepsilon_\infty$ denotes the relative permittivity on the high-frequency side of this rotational process; faster electronic or ionic mechanisms may still be included in $\varepsilon_\infty$.

Using the convention $E(t)=\Re[E_0e^{-i\omega t}]$ gives

$$
\boxed{
\varepsilon_r(\omega)
=\varepsilon_\infty
+\frac{\varepsilon_s-\varepsilon_\infty}{1-i\omega\tau}.
}
$$

Writing $\varepsilon_r=\varepsilon'+i\varepsilon''$ for this time convention,

$$
\varepsilon'
=\varepsilon_\infty
+\frac{\varepsilon_s-\varepsilon_\infty}
{1+\omega^2\tau^2},
$$

$$
\varepsilon''
=\frac{(\varepsilon_s-\varepsilon_\infty)\omega\tau}
{1+\omega^2\tau^2}.
$$

The loss contribution is maximal at $\omega\tau=1$. At $\omega\tau\ll1$, dipoles nearly maintain thermal equilibrium with the field; at $\omega\tau\gg1$, their orientational contribution is frozen out. A real material may have a distribution of relaxation times, so the single-time Debye form is an idealization.

For rotational diffusion of an approximately spherical molecule in a continuum liquid, the Debye--Stokes estimate is

$$
\tau\simeq\frac{4\pi\eta a^3}{k_{\mathrm B}T},
$$

where $a$ is an effective molecular radius and $\eta$ is the dynamic viscosity. Molecular shape, hydrogen bonding and local structure can produce substantial deviations.

## Worked numerical example

Consider a dilute polar gas with

$$
N=2.50\times10^{25}\ \mathrm{m^{-3}},\qquad
\mu=2.00\ \mathrm D,
$$

at $T=300\ \mathrm K$ in a field $E=1.00\times10^6\ \mathrm{V\,m^{-1}}$. Neglect the local-field correction. In SI units,

$$
\mu=2(3.33564\times10^{-30})
=6.67128\times10^{-30}\ \mathrm{C\,m}.
$$

The field-to-thermal-energy ratio is

$$
x=\frac{\mu E}{k_{\mathrm B}T}
=1.6107\times10^{-3}.
$$

Since $x\ll1$, the Debye approximation is extremely accurate:

$$
P_{\mathrm{or}}
\simeq\frac{N\mu^2E}{3k_{\mathrm B}T}
=8.95\times10^{-8}\ \mathrm{C\,m^{-2}}.
$$

The corresponding orientational susceptibility is

$$
\chi_{\mathrm{or}}
=\frac{P}{\varepsilon_0E}
=1.01\times10^{-2}.
$$

The characteristic saturation field is

$$
E_T=\frac{k_{\mathrm B}T}{\mu}
=6.21\times10^8\ \mathrm{V\,m^{-1}},
$$

which explains why the response at $10^6\ \mathrm{V\,m^{-1}}$ is linear. The exact Langevin value and the linear result differ first at relative order $x^2/15$, approximately $1.7\times10^{-7}$ in this example.

## Classical and quantum regimes

The Langevin distribution treats molecular orientation as a continuous classical variable. A freely rotating quantum molecule has rotational levels, for a linear rigid rotor,

$$
E_J=BJ(J+1),\qquad J=0,1,2,\ldots,
$$

where $B=\hbar^2/(2I)$ and $I$ is the moment of inertia. The classical Debye result is recovered when many rotational levels are thermally populated, approximately $k_{\mathrm B}T\gg B$. At very low temperature, rotational quantization changes the susceptibility, and interactions or crystal fields may dominate. In a solid, permanent dipoles may occupy a discrete set of allowed orientations rather than rotate freely; an order--disorder model is then more appropriate than the continuous Langevin model.

## Preparation questions

1. Starting from the Boltzmann distribution of dipole orientations, derive $P=N\mu L(\mu E_{\mathrm{loc}}/k_{\mathrm B}T)$ and define the Langevin function.
2. Obtain the orientational polarizability $\alpha_{\mathrm{or}}=\mu^2/(3k_{\mathrm B}T)$ and explain the origin of the factor $1/3$.
3. Derive the Debye--Clausius--Mossotti equation for molecules possessing both permanent and induced dipole moments.
4. Discuss the weak-field and strong-field limits of orientational polarization and obtain the saturation polarization.
5. Derive the field-dependent differential susceptibility of a classical dipolar gas.
6. Use the fluctuation formula to derive the zero-field orientational susceptibility.
7. Obtain the complex permittivity of the single-relaxation-time Debye model and locate the dielectric-loss maximum.
8. A gas contains $1.8\times10^{25}\ \mathrm{m^{-3}}$ molecules of dipole moment $1.5\ \mathrm D$ at $350\ \mathrm K$. Calculate its dilute-limit orientational susceptibility and estimate the field scale at which nonlinear alignment becomes important.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/permanent-dipoles-orientational-polarization.mac' | relative_url }})

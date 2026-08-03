---
title: "Real Gases, Virial Equation, and Critical Constants"
summary: "Compressibility, virial corrections, Boyle temperature, and the van der Waals critical point."
date: 2025-05-27 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, real-gases, van-der-waals]
permalink: /bsc/sem-iv/mj-6/real-gases-virial-critical-constants/
hidden: true
---

An ideal gas neglects molecular size and intermolecular forces. A real gas approaches $pV=nRT$ only in the low-density limit. For one mole, define the compressibility factor

$$Z=\frac{pV_m}{RT},$$

where $V_m$ is molar volume. An ideal gas has $Z=1$ at every state. Attraction commonly gives $Z<1$ at moderate density, while short-range repulsion and finite molecular size give $Z>1$ at high density.

## Virial equation

At sufficiently low density, the equation of state can be expanded as

$$
\boxed{Z=1+\frac{B(T)}{V_m}+\frac{C(T)}{V_m^2}+\cdots}.
$$

$B(T)$, $C(T)$, and higher virial coefficients describe two-body, three-body, and higher correlations. Since $Z$ is dimensionless, $B$ has units $\mathrm{m^3\,mol^{-1}}$ and $C$ has units $\mathrm{m^6\,mol^{-2}}$.

## van der Waals equation

Let $b$ be the excluded molar volume. Molecular centres then move in $V_m-b$, not $V_m$. Attractions reduce the measured pressure below the kinetic pressure by $a/V_m^2$. The van der Waals equation is

$$
\boxed{\left(p+\frac{a}{V_m^2}\right)(V_m-b)=RT},
$$

or

$$p=\frac{RT}{V_m-b}-\frac{a}{V_m^2}.$$

Here $b$ has units $\mathrm{m^3\,mol^{-1}}$ and $a$ has units $\mathrm{Pa\,m^6\,mol^{-2}}$. For $V_m\gg b$,

$$
\frac{1}{V_m-b}=\frac1{V_m}
\left(1+\frac b{V_m}+\cdots\right).
$$

Multiplying the equation of state by $V_m/(RT)$ and retaining the leading correction gives

$$
Z=1+\frac1{V_m}\left(b-\frac{a}{RT}\right)+\cdots.
$$

Thus the van der Waals second virial coefficient is

$$B(T)=b-\frac{a}{RT}.$$

The Boyle temperature is the temperature at which this leading correction vanishes:

$$
B(T_B)=0
\quad\Longrightarrow\quad
\boxed{T_B=\frac{a}{Rb}}.
$$

Near $T_B$ and at low pressure, a real gas therefore obeys Boyle's law to first order in density.

## Critical constants

At the critical point, the liquid and vapour become indistinguishable. The critical isotherm has a horizontal inflection:

$$
\left(\frac{\partial p}{\partial V_m}\right)_{T_c}=0,
\qquad
\left(\frac{\partial^2p}{\partial V_m^2}\right)_{T_c}=0.
$$

For the van der Waals equation,

$$
\left(\frac{\partial p}{\partial V_m}\right)_T
=-\frac{RT}{(V_m-b)^2}+\frac{2a}{V_m^3},
$$

$$
\left(\frac{\partial^2p}{\partial V_m^2}\right)_T
=\frac{2RT}{(V_m-b)^3}-\frac{6a}{V_m^4}.
$$

Solving the two critical-point conditions and substituting into the equation of state gives

$$
\boxed{V_c=3b},\qquad
\boxed{T_c=\frac{8a}{27Rb}},\qquad
\boxed{p_c=\frac{a}{27b^2}}.
$$

Consequently,

$$Z_c=\frac{p_cV_c}{RT_c}=\frac38,
\qquad
T_B=\frac{27}{8}T_c.
$$

With reduced variables $p_r=p/p_c$, $v_r=V_m/V_c$, and $T_r=T/T_c$, all van der Waals gases obey the reduced equation

$$
\boxed{p_r=\frac{8T_r}{3v_r-1}-\frac{3}{v_r^2}}.
$$

![Reduced van der Waals isotherms calculated from the reduced equation]({{ '/assets/images/bsc/sem-iv/mj-6/van-der-waals-isotherms.png' | relative_url }})

For $T_r<1$, the analytic isotherm contains mechanically unstable portions. A real sample instead separates into liquid and vapour over the coexistence interval. At $T_r=1$, the inflection is $(v_r,p_r)=(1,1)$; for $T_r>1$, compression alone does not produce a discontinuous gas-liquid transition.

The [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/unit-i-checks.mac' | relative_url }}) substitutes the critical and Boyle values directly. Its displayed residuals are

$$
p(V_c,T_c)-p_c=0,\qquad
\left.\frac{\partial p}{\partial V_m}\right\rvert_c=0,
$$

$$
\left.\frac{\partial^2p}{\partial V_m^2}\right\rvert_c=0,
\qquad B(T_B)=0.
$$

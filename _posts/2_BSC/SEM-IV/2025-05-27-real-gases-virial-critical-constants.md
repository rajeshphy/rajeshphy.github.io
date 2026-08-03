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

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-6/van-der-waals-isotherms.png' | relative_url }}" alt="Reduced van der Waals isotherms calculated from the reduced equation">
</figure>
</div>

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

Mechanical stability requires $\kappa_T>0$, equivalently $(\partial p/\partial V_m)_T<0$. A positive isothermal slope on the analytic van der Waals loop is therefore unstable. The virial series, by contrast, is a low-density expansion and should not be extrapolated through the liquid region or too close to the critical point.

## Solved Problems

### 1. Locate the critical point in reduced variables and test its stability boundary

For

$$p_r=\frac{8T_r}{3v_r-1}-\frac{3}{v_r^2},$$

the first two volume derivatives are

$$
\left(\frac{\partial p_r}{\partial v_r}\right)_{T_r}
=-\frac{24T_r}{(3v_r-1)^2}+\frac6{v_r^3},
$$

$$
\left(\frac{\partial^2p_r}{\partial v_r^2}\right)_{T_r}
=\frac{144T_r}{(3v_r-1)^3}-\frac{18}{v_r^4}.
$$

At $(T_r,v_r)=(1,1)$ both expressions vanish and the equation gives $p_r=1$. Hence the reduced critical point is $(1,1,1)$, independent of $a$ and $b$. Below $T_r=1$, roots of the first derivative mark spinodal boundaries; between them the positive slope violates $\kappa_T>0$.

### 2. Determine the leading pressure correction on the Boyle isotherm

At $T_B$, the second virial coefficient is zero, so retain the next term:

$$Z=1+\frac{C(T_B)}{V_m^2}+O(V_m^{-3}).$$

In the low-pressure limit, use the leading approximation $V_m\simeq RT_B/p$. Then

$$
\boxed{Z=1+C(T_B)\left(\frac{p}{RT_B}\right)^2+O(p^3)}.
$$

Thus the linear-in-density departure has vanished; the first surviving correction to $Z$ is quadratic in pressure. The combination $C/V_m^2$ is dimensionless because $[C]=\mathrm{m^6\,mol^{-2}}$.

## Descriptive Questions

1. Explain separately the physical meanings and SI units of the van der Waals constants $a$ and $b$.
2. Why is the Boyle temperature defined by $B(T_B)=0$ rather than by requiring all virial coefficients to vanish?
3. State the thermodynamic meaning of the two critical-point derivative conditions.
4. Why must the van der Waals loop below $T_c$ be replaced by phase coexistence for a real sample?

## Numerical Problems

1. For carbon dioxide take $a=0.364\ \mathrm{Pa\,m^6\,mol^{-2}}$ and $b=4.27\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$. Find $B$ at $350\ \mathrm K$.

   **Final answer:** $B=b-a/(RT)=-8.24\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$.

2. Using the same constants, calculate the van der Waals Boyle temperature.

   **Final answer:** $T_B=a/(Rb)=1.025\times10^3\ \mathrm K$.

3. Calculate the predicted critical temperature and pressure for those constants.

   **Final answer:** $T_c=304\ \mathrm K$ and $p_c=7.394\ \mathrm{MPa}$.

4. Evaluate the reduced pressure at $T_r=1.20$ and $v_r=2.00$.

   **Final answer:** $p_r=8(1.20)/(3\times2-1)-3/2^2=1.17$.

The [real-gas Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/real-gases-checks.mac' | relative_url }}) verifies the virial values, critical derivatives, reduced equation, and all printed numerical answers.

## References

1. [Van der Waals equation](https://en.wikipedia.org/wiki/Van_der_Waals_equation), Wikipedia.
2. P. Atkins, J. de Paula, and J. Keeler, *Atkins' Physical Chemistry*, 11th ed., Oxford University Press, 2018, chapter “The properties of gases.”
3. M. W. Zemansky and R. H. Dittman, *Heat and Thermodynamics*, 7th ed., McGraw-Hill, 1997, chapter “Equations of state.”

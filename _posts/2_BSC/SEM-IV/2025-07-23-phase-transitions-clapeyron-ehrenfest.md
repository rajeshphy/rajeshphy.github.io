---
title: "Phase Transitions, Clausius-Clapeyron, and Ehrenfest Equations"
summary: "First- and second-order transitions, coexistence slopes, latent heat, and the two Ehrenfest equations."
date: 2025-07-23 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, phase-transitions, clapeyron-equation]
permalink: /bsc/sem-iv/mj-6/phase-transitions-clapeyron-ehrenfest/
hidden: true
---

At fixed temperature and pressure, two phases $\alpha$ and $\beta$ coexist when their molar Gibbs free energies, or chemical potentials, are equal:

$$g_\alpha(T,p)=g_\beta(T,p).$$

For one mole,

$$dg=-s\,dT+v\,dp,$$

where $s$ and $v$ are molar entropy and molar volume.

## First-order transition and Clapeyron equation

Along the coexistence curve, equality of the two Gibbs energies must persist:

$$dg_\alpha=dg_\beta.$$

Therefore

$$
-s_\alpha\,dT+v_\alpha\,dp
=-s_\beta\,dT+v_\beta\,dp.
$$

With $\Delta s=s_\beta-s_\alpha$ and $\Delta v=v_\beta-v_\alpha$,

$$
\boxed{\frac{dp}{dT}=\frac{\Delta s}{\Delta v}
=\frac{L}{T\Delta v}},
$$

where $L=T\Delta s$ is the molar latent heat for $\alpha\to\beta$. This is the Clapeyron equation. Its units are

$$
\frac{\mathrm{J\,mol^{-1}}}
{\mathrm{K\,m^3\,mol^{-1}}}
=\mathrm{Pa\,K^{-1}}.
$$

A first-order transition has continuous $g$ but a discontinuity in at least one first derivative: $s=-(\partial g/\partial T)_p$ and/or $v=(\partial g/\partial p)_T$. An entropy jump gives latent heat $L=T\Delta s$; a volume jump may also occur. Thus latent heat is present when $\Delta s\ne0$, not merely from the classification label alone.

For liquid-vapour coexistence far below the critical point, $v_g\gg v_l$ and the vapour may be treated as ideal. Then $\Delta v\simeq v_g=RT/p$, and

$$
\boxed{\frac{d\ln p}{dT}=\frac{L}{RT^2}}.
$$

If $L$ is approximately constant between $T_1$ and $T_2$,

$$
\boxed{\ln\!\frac{p_2}{p_1}
=-\frac{L}{R}\left(\frac1{T_2}-\frac1{T_1}\right)}.
$$

This integrated Clausius-Clapeyron form requires an ideal vapour, negligible condensed-phase molar volume, and nearly constant latent heat.

## Second-order transition and Ehrenfest equations

In the classical Ehrenfest classification, a second-order transition has continuous $g$, $s$, and $v$, but discontinuities in second derivatives such as $C_p$, the expansion coefficient $\alpha$, or the isothermal compressibility $\kappa_T$. There is no latent heat because $\Delta s=0$.

In the following equations $C_p$ is the molar heat capacity, consistent with the molar quantities $g$, $s$, and $v$.

On the transition curve, $\Delta s=0$. Differentiate this condition along the curve and use

$$
ds=\frac{C_p}{T}\,dT
-\left(\frac{\partial v}{\partial T}\right)_pdp
=\frac{C_p}{T}\,dT-v\alpha\,dp.
$$

Because $v$ is continuous at the transition,

$$
0=d(\Delta s)=\frac{\Delta C_p}{T}\,dT-v\Delta\alpha\,dp.
$$

The first Ehrenfest equation is therefore

$$
\boxed{\left(\frac{dp}{dT}\right)_{\mathrm{tr}}
=\frac{\Delta C_p}{Tv\Delta\alpha}}.
$$

Likewise $\Delta v=0$ on the curve. Since

$$dv=v\alpha\,dT-v\kappa_T\,dp,$$

we obtain

$$0=d(\Delta v)=v\Delta\alpha\,dT-v\Delta\kappa_T\,dp,$$

and hence the second Ehrenfest equation,

$$
\boxed{\left(\frac{dp}{dT}\right)_{\mathrm{tr}}
=\frac{\Delta\alpha}{\Delta\kappa_T}}.
$$

Here every $\Delta$ means the value in phase $\beta$ minus that in phase $\alpha$, evaluated on the two sides of the same transition.

The Ehrenfest equations assume a continuous transition with well-defined finite one-sided response functions. They are not generally valid at a critical point where response functions diverge, nor do they replace the Clapeyron equation when $\Delta s$ or $\Delta v$ is nonzero.

## Solved Problems

### 1. Predict the sign of a solid-liquid coexistence slope

For melting, choose $\alpha=$ solid and $\beta=$ liquid. The entropy change is positive,

$$\Delta s=\frac{L_f}{T}>0.$$

For most substances the liquid has larger molar volume, $\Delta v=v_l-v_s>0$, and Clapeyron gives $dp/dT>0$. Ice is exceptional: liquid water is denser than ice near the melting point, so

$$\Delta v=v_l-v_s<0.$$

Therefore

$$
\boxed{\left(\frac{dp}{dT}\right)_{\mathrm{ice-water}}<0}.
$$

Increasing pressure consequently lowers the melting temperature of ice. The conclusion follows from signs alone and requires equilibrium coexistence.

### 2. Extract latent heat from two vapour-pressure measurements

Under the integrated Clausius-Clapeyron assumptions,

$$
\ln\!\frac{p_2}{p_1}
=-\frac{L}{R}\left(\frac1{T_2}-\frac1{T_1}\right).
$$

Solving for $L$ gives

$$
\boxed{L=
\frac{R\ln(p_2/p_1)}{1/T_1-1/T_2}}.
$$

For $T_2>T_1$, equilibrium vapour pressure has $p_2>p_1$; numerator and denominator are both positive, so $L>0$. The logarithm contains a pressure ratio and is dimensionless; $R/(1/T)$ supplies $\mathrm{J\,mol^{-1}}$. The result is an interval-average latent heat if $L$ varies with temperature.

## Descriptive Questions

1. Define first- and second-order transitions in terms of derivatives of molar Gibbs energy.
2. Explain why a first-order transition need not have latent heat if only molar volume is discontinuous.
3. State every approximation used to obtain the integrated Clausius-Clapeyron equation.
4. What discontinuities enter the two Ehrenfest equations, and why is molar volume treated as continuous?

## Numerical Problems

1. Water has $p_1=101.325\ \mathrm{kPa}$ at $T_1=373.15\ \mathrm K$. Estimate its vapour pressure at $T_2=353.15\ \mathrm K$ using $L=40.7\ \mathrm{kJ\,mol^{-1}}$ as constant.

   **Final answer:** $p_2=48.2\ \mathrm{kPa}$.

2. For ice melting at $273.15\ \mathrm K$, take $L_f=6.01\ \mathrm{kJ\,mol^{-1}}$ and $\Delta v=-1.63\times10^{-6}\ \mathrm{m^3\,mol^{-1}}$.

   **Final answer:** $dp/dT=L/(T\Delta v)=-13.5\ \mathrm{MPa\,K^{-1}}$.

3. At a continuous transition, $\Delta C_p=10\ \mathrm{J\,mol^{-1}K^{-1}}$, $T=200\ \mathrm K$, $v=1.0\times10^{-4}\ \mathrm{m^3\,mol^{-1}}$, and $\Delta\alpha=2.0\times10^{-5}\ \mathrm{K^{-1}}$.

   **Final answer:** the first Ehrenfest slope is $25.0\ \mathrm{MPa\,K^{-1}}$.

4. If instead $\Delta\alpha=2.0\times10^{-5}\ \mathrm{K^{-1}}$ and $\Delta\kappa_T=1.0\times10^{-12}\ \mathrm{Pa^{-1}}$, use the second equation.

   **Final answer:** $dp/dT=20.0\ \mathrm{MPa\,K^{-1}}$.

The [phase-transition Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/phase-transition-checks.mac' | relative_url }}) verifies the Clapeyron signs, latent-heat substitution, Ehrenfest consistency, and every printed numerical answer.

## References

1. [Clausius-Clapeyron relation](https://en.wikipedia.org/wiki/Clausius%E2%80%93Clapeyron_relation), Wikipedia.
2. H. B. Callen, *Thermodynamics and an Introduction to Thermostatistics*, 2nd ed., Wiley, 1985, chapter 9.
3. P. Atkins, J. de Paula, and J. Keeler, *Atkins' Physical Chemistry*, 11th ed., Oxford University Press, 2018, chapter “Physical transformations of pure substances.”

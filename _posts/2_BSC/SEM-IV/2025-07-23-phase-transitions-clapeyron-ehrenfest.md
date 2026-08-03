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

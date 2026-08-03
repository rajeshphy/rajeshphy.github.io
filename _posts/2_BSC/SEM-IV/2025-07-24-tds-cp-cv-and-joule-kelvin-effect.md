---
title: "T-dS Equations, Heat Capacities, and Joule-Kelvin Effect"
summary: "Maxwell-relation response identities and throttling coefficients for ideal and van der Waals gases."
date: 2025-07-24 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, joule-kelvin-effect, heat-capacities]
permalink: /bsc/sem-iv/mj-6/tds-cp-cv-joule-kelvin-effect/
hidden: true
---

For a fixed-composition simple compressible system, the Maxwell relations turn entropy differentials into measurable response functions.

## The two $T\,dS$ equations

Using $S=S(T,V)$,

$$
dS=\left(\frac{\partial S}{\partial T}\right)_VdT
+\left(\frac{\partial S}{\partial V}\right)_TdV.
$$

Since $(\partial S/\partial T)_V=C_V/T$ and $(\partial S/\partial V)_T=(\partial p/\partial T)_V$,

$$
\boxed{T\,dS=C_V\,dT
+T\left(\frac{\partial p}{\partial T}\right)_VdV}.
$$

With $(\partial p/\partial T)_V=\alpha/\kappa_T$,

$$
\boxed{T\,dS=C_V\,dT+\frac{T\alpha}{\kappa_T}\,dV}.
$$

Using $S=S(T,p)$ and $(\partial S/\partial p)_T=-(\partial V/\partial T)_p=-V\alpha$ gives

$$
\boxed{T\,dS=C_P\,dT-TV\alpha\,dp}.
$$

## General value of $C_P-C_V$

Evaluate the first $T\,dS$ equation at constant pressure. Then $dV=V\alpha\,dT$ and $T\,dS=C_P\,dT$, so

$$
C_P=C_V+T\left(\frac{\partial p}{\partial T}\right)_VV\alpha.
$$

Therefore

$$
\boxed{C_P-C_V=\frac{TV\alpha^2}{\kappa_T}}.
$$

For the van der Waals molar equation

$$p=\frac{RT}{V_m-b}-\frac{a}{V_m^2},$$

direct differentiation gives

$$
\left(\frac{\partial p}{\partial T}\right)_{V_m}
=\frac{R}{V_m-b},
$$

$$
\left(\frac{\partial p}{\partial V_m}\right)_T
=-\frac{RT}{(V_m-b)^2}+\frac{2a}{V_m^3}.
$$

Using $C_{P,m}-C_{V,m}=-T(p_T)^2/p_V$,

$$
\boxed{C_{P,m}-C_{V,m}
=\frac{R}{1-\dfrac{2a(V_m-b)^2}{RTV_m^3}}}.
$$

The ideal-gas limit $a,b\to0$ is $C_{P,m}-C_{V,m}=R$.

## Joule-Kelvin coefficient

In steady throttling through a porous plug or valve, assume adiabatic walls, no shaft work, and negligible changes of bulk kinetic and gravitational potential energy. The steady-flow energy equation then gives

$$H_1=H_2.$$

The Joule-Kelvin coefficient is

$$
\mu_{\mathrm{JT}}=\left(\frac{\partial T}{\partial p}\right)_H.
$$

From

$$
dH=C_P\,dT+
\left[V-T\left(\frac{\partial V}{\partial T}\right)_p\right]dp,
$$

set $dH=0$ to obtain

$$
\boxed{\mu_{\mathrm{JT}}
=\frac{T(\partial V/\partial T)_p-V}{C_P}
=\frac{V}{C_P}(\alpha T-1)}.
$$

Its SI unit is $\mathrm{K\,Pa^{-1}}$. A pressure drop has $dp<0$: the gas cools when $\mu_{\mathrm{JT}}>0$ and warms when $\mu_{\mathrm{JT}}<0$.

For an ideal gas, $V=nRT/p$ and $\alpha=1/T$, so

$$\boxed{\mu_{\mathrm{JT}}=0}.$$

For one mole of van der Waals gas, implicit differentiation at constant pressure gives

$$
\left(\frac{\partial V_m}{\partial T}\right)_p
=\frac{R/(V_m-b)}
{RT/(V_m-b)^2-2a/V_m^3}.
$$

Hence the exact coefficient is

$$
\boxed{
\mu_{\mathrm{JT}}=
\frac1{C_{P,m}}
\left[
\frac{TR/(V_m-b)}{RT/(V_m-b)^2-2a/V_m^3}-V_m
\right]}.
$$

In the dilute, low-pressure limit $V_m\gg b$,

$$
\boxed{\mu_{\mathrm{JT}}\simeq
\frac1{C_{P,m}}\left(\frac{2a}{RT}-b\right)}.
$$

This approximation predicts an inversion temperature $T_i\simeq2a/(Rb)=2T_B$: below it attractions dominate and throttling cools; above it excluded volume dominates and throttling warms.

The linked [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/unit-iii-checks.mac' | relative_url }}) verifies the van der Waals $C_P-C_V$ and exact Joule-Kelvin expressions. Every displayed symbolic residual is zero.

## Solved Problems

### 1. Derive $(\partial V/\partial T)_p$ from an equation of state

Let the equation of state be written explicitly as $p=p(T,V)$. Its total differential is

$$
dp=\left(\frac{\partial p}{\partial T}\right)_VdT
+\left(\frac{\partial p}{\partial V}\right)_TdV.
$$

Along an isobar $dp=0$, so

$$
\boxed{
\left(\frac{\partial V}{\partial T}\right)_p
=-\frac{(\partial p/\partial T)_V}
{(\partial p/\partial V)_T}}.
$$

For a stable ordinary fluid, the denominator is negative and the numerator is usually positive, giving positive thermal expansion. The derivative has units $\mathrm{m^3\,K^{-1}}$, as required.

### 2. Derive the dilute van der Waals Joule-Kelvin coefficient

Expand the molar equation through first order in density:

$$p\simeq\frac{RT}{V_m}+\frac{RTb-a}{V_m^2}.$$

Solving perturbatively for volume at fixed $p$ gives

$$V_m\simeq\frac{RT}{p}+b-\frac{a}{RT}.$$

Therefore

$$
T\left(\frac{\partial V_m}{\partial T}\right)_p-V_m
=T\left(\frac Rp+\frac{a}{RT^2}\right)
-\left(\frac{RT}{p}+b-\frac{a}{RT}\right)
=\frac{2a}{RT}-b.
$$

Hence

$$
\boxed{\mu_{\mathrm{JT}}\simeq
\frac{1}{C_{P,m}}\left(\frac{2a}{RT}-b\right)}.
$$

Both terms in parentheses have molar-volume units; division by $C_{P,m}$ gives $\mathrm{K\,Pa^{-1}}$. This is a low-pressure approximation and fails near condensation or the critical region.

## Descriptive Questions

1. Derive both $T\,dS$ equations and state the natural independent variables used in each.
2. Explain why $C_P-C_V$ is nonnegative in a stable single phase.
3. State the steady-flow assumptions that make a throttling process isenthalpic.
4. Explain physically why an ideal gas has zero Joule-Kelvin coefficient.

## Numerical Problems

1. Find the molar value of $C_P-C_V$ for an ideal gas.

   **Final answer:** $C_{P,m}-C_{V,m}=R=8.314\ \mathrm{J\,mol^{-1}K^{-1}}$.

2. A system has $T=300\ \mathrm K$, $V=0.010\ \mathrm{m^3}$, $\alpha=3.0\times10^{-3}\ \mathrm{K^{-1}}$, and $\kappa_T=1.0\times10^{-5}\ \mathrm{Pa^{-1}}$.

   **Final answer:** $C_P-C_V=TV\alpha^2/\kappa_T=2.70\ \mathrm{J\,K^{-1}}$.

3. For carbon dioxide use $a=0.364\ \mathrm{Pa\,m^6\,mol^{-2}}$, $b=4.27\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$, $C_{P,m}=37.1\ \mathrm{J\,mol^{-1}K^{-1}}$, and $T=300\ \mathrm K$ in the dilute formula.

   **Final answer:** $\mu_{\mathrm{JT}}=6.72\times10^{-6}\ \mathrm{K\,Pa^{-1}}=0.672\ \mathrm{K\,bar^{-1}}$.

4. Estimate the dilute inversion temperature for those van der Waals constants.

   **Final answer:** $T_i=2a/(Rb)=2.051\times10^3\ \mathrm K$.

5. A gas with $\mu_{\mathrm{JT}}=0.25\ \mathrm{K\,bar^{-1}}$ is throttled through a pressure drop of $20\ \mathrm{bar}$ within a range where $\mu_{\mathrm{JT}}$ is constant.

   **Final answer:** $\Delta T=\mu_{\mathrm{JT}}\Delta p=-5.0\ \mathrm K$.

The [$T\,dS$ and Joule-Kelvin Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/tds-joule-kelvin-checks.mac' | relative_url }}) verifies the implicit derivative, van der Waals limits, response identity, and all five numerical answers.

## References

1. [Joule-Thomson effect](https://en.wikipedia.org/wiki/Joule%E2%80%93Thomson_effect), Wikipedia.
2. M. W. Zemansky and R. H. Dittman, *Heat and Thermodynamics*, 7th ed., McGraw-Hill, 1997, chapters “Thermodynamic relations” and “Real gases.”
3. P. Atkins, J. de Paula, and J. Keeler, *Atkins' Physical Chemistry*, 11th ed., Oxford University Press, 2018, chapters “The first law” and “The properties of gases.”

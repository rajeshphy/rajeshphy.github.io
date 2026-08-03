---
title: "Thermodynamic Potentials and Maxwell Relations"
summary: "Natural variables, equilibrium potentials, derivation of the four Maxwell relations, and useful differential identities."
date: 2025-07-22 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, thermodynamic-potentials, maxwell-relations]
permalink: /bsc/sem-iv/mj-6/thermodynamic-potentials-maxwell-relations/
hidden: true
---

Consider a closed, fixed-composition, simple compressible system with only $pV$ work. Combining the first and second laws for a reversible differential change gives the fundamental relation

$$
\boxed{dU=T\,dS-p\,dV}.
$$

Because $U$ is a state function, this relation remains a property identity between neighbouring equilibrium states even if the actual process joining them is irreversible.

## Four thermodynamic potentials

Internal energy has natural variables $(S,V)$:

$$U=U(S,V),\qquad dU=T\,dS-p\,dV.$$

The enthalpy $H=U+pV$ has natural variables $(S,p)$:

$$
dH=dU+p\,dV+V\,dp
=\boxed{T\,dS+V\,dp}.
$$

The Helmholtz free energy $F=U-TS$ has natural variables $(T,V)$:

$$
dF=dU-T\,dS-S\,dT
=\boxed{-S\,dT-p\,dV}.
$$

The Gibbs free energy $G=H-TS=U+pV-TS$ has natural variables $(T,p)$:

$$
dG=dH-T\,dS-S\,dT
=\boxed{-S\,dT+V\,dp}.
$$

For a stable closed system, equilibrium minimizes the appropriate potential under the imposed constraints: $U$ at fixed $(S,V)$, $H$ at fixed $(S,p)$, $F$ at fixed $(T,V)$, and $G$ at fixed $(T,p)$.

## Derivation of Maxwell relations

For any state function $X(x,y)$ with continuous second derivatives,

$$
\frac{\partial}{\partial y}
\left(\frac{\partial X}{\partial x}\right)_y
=
\frac{\partial}{\partial x}
\left(\frac{\partial X}{\partial y}\right)_x.
$$

Apply this equality to each potential. From $U(S,V)$,

$$
T=\left(\frac{\partial U}{\partial S}\right)_V,
\qquad
-p=\left(\frac{\partial U}{\partial V}\right)_S,
$$

so

$$
\boxed{\left(\frac{\partial T}{\partial V}\right)_S
=-\left(\frac{\partial p}{\partial S}\right)_V}.
$$

From $H(S,p)$,

$$
\boxed{\left(\frac{\partial T}{\partial p}\right)_S
=\left(\frac{\partial V}{\partial S}\right)_p}.
$$

From $F(T,V)$,

$$
\boxed{\left(\frac{\partial S}{\partial V}\right)_T
=\left(\frac{\partial p}{\partial T}\right)_V}.
$$

From $G(T,p)$,

$$
\boxed{\left(\frac{\partial S}{\partial p}\right)_T
=-\left(\frac{\partial V}{\partial T}\right)_p}.
$$

These relations replace difficult entropy derivatives by measurable $p$-$V$-$T$ derivatives.

## Applications to $U$ and $H$

Write entropy as $S(T,V)$. Since

$$
\left(\frac{\partial S}{\partial T}\right)_V=\frac{C_V}{T},
\qquad
\left(\frac{\partial S}{\partial V}\right)_T
=\left(\frac{\partial p}{\partial T}\right)_V,
$$

we have

$$
dS=\frac{C_V}{T}\,dT
+\left(\frac{\partial p}{\partial T}\right)_VdV.
$$

Substitution into $dU=T\,dS-p\,dV$ yields

$$
\boxed{dU=C_V\,dT+
\left[T\left(\frac{\partial p}{\partial T}\right)_V-p\right]dV}.
$$

Thus

$$
\boxed{\left(\frac{\partial U}{\partial V}\right)_T
=T\left(\frac{\partial p}{\partial T}\right)_V-p}.
$$

Similarly, with $S(T,p)$ and the fourth Maxwell relation,

$$
\boxed{dH=C_P\,dT+
\left[V-T\left(\frac{\partial V}{\partial T}\right)_p\right]dp}.
$$

For an ideal gas, $(\partial p/\partial T)_V=p/T$, so $(\partial U/\partial V)_T=0$ and $U=U(T)$. Also $(\partial V/\partial T)_p=V/T$, so $(\partial H/\partial p)_T=0$ and $H=H(T)$.

## Solved Problems

### 1. Reconstruct the volume dependence of ideal-gas Helmholtz energy

For $F(T,V)$,

$$p=-\left(\frac{\partial F}{\partial V}\right)_T.$$

An ideal gas has $p=nRT/V$, so at fixed $T$,

$$
\frac{\partial F}{\partial V}=-\frac{nRT}{V}.
$$

Integration with respect to $V$ gives

$$
\boxed{F(T,V)=-nRT\ln\!\frac{V}{V_0}+\phi(T)},
$$

where $V_0$ is a fixed reference volume and $\phi(T)$ is not determined by the equation of state. Differentiating the result recovers $p=nRT/V$. The reference volume makes the logarithm dimensionless and cancels from every physical difference at fixed $T$.

### 2. Prove the minimum-$F$ criterion at fixed temperature and volume

Put the system in contact with a large reservoir at temperature $T_0$ and hold the system volume fixed. With no work mode, energy conservation gives $Q=\Delta U$ for heat absorbed by the system. The reservoir entropy change is $-Q/T_0$, so

$$
\Delta S_{\mathrm{univ}}
=\Delta S-\frac{\Delta U}{T_0}
=-\frac{\Delta U-T_0\Delta S}{T_0}
=-\frac{\Delta F}{T_0},
$$

where the initial and final equilibrium states have $T=T_0$. The second law requires $\Delta S_{\mathrm{univ}}\geq0$, hence

$$\boxed{\Delta F\leq0}.$$

Spontaneous change lowers $F$ until equilibrium; equality holds for a reversible displacement between equilibrium states. The proof assumes a closed, fixed-volume system with no non-$pV$ work.

## Descriptive Questions

1. Explain how Legendre transforms replace inconvenient natural variables in thermodynamics.
2. List the natural variables and differential form of each of the four thermodynamic potentials.
3. Derive one Maxwell relation from equality of mixed second derivatives and state its measurement advantage.
4. Under what imposed conditions is each thermodynamic potential minimized at equilibrium?

## Numerical Problems

1. One mole of ideal gas expands isothermally at $300\ \mathrm K$ from $V$ to $2V$. Find $\Delta F$.

   **Final answer:** $\Delta F=-RT\ln2=-1.729\ \mathrm{kJ}$.

2. One mole of ideal gas is compressed isothermally at $300\ \mathrm K$ from $1.00$ to $2.00\ \mathrm{bar}$. Find $\Delta G$.

   **Final answer:** $\Delta G=RT\ln(p_2/p_1)=+1.729\ \mathrm{kJ}$.

3. A process at fixed $T$ and $p$ changes the Gibbs energy by $-2.50\ \mathrm{kJ}$. State the spontaneous direction.

   **Final answer:** the stated forward direction is spontaneous because $\Delta G=-2.50\ \mathrm{kJ}<0$.

4. A sample has $V=2.00\times10^{-3}\ \mathrm{m^3}$ and $\alpha=5.00\times10^{-4}\ \mathrm{K^{-1}}$. Evaluate $(\partial S/\partial p)_T$.

   **Final answer:** $(\partial S/\partial p)_T=-V\alpha=-1.00\times10^{-6}\ \mathrm{m^3\,K^{-1}}$.

The [potentials and Maxwell-relations worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/potentials-maxwell-checks.mac' | relative_url }}) checks the Legendre derivatives, the Helmholtz Maxwell relation, and all numerical answers.

## References

1. [Thermodynamic potential](https://en.wikipedia.org/wiki/Thermodynamic_potential), Wikipedia.
2. H. B. Callen, *Thermodynamics and an Introduction to Thermostatistics*, 2nd ed., Wiley, 1985, chapters 5-7.
3. D. V. Schroeder, *An Introduction to Thermal Physics*, Addison-Wesley, 2000, chapter 5.

---
title: "Entropy, Clausius Theorem, and Clausius Inequality"
summary: "Entropy as a state function, ideal-gas entropy, entropy production, and reversible and irreversible examples."
date: 2025-06-23 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, entropy, clausius-inequality]
permalink: /bsc/sem-iv/mj-6/entropy-clausius-theorem-inequality/
hidden: true
---

For any reversible cycle, Clausius' theorem is

$$
\boxed{\oint\frac{\delta Q_{\mathrm{rev}}}{T}=0}.
$$

Consequently the integral between two equilibrium states is independent of the reversible path. This defines entropy $S$ by

$$
\boxed{dS=\frac{\delta Q_{\mathrm{rev}}}{T}},
\qquad
\Delta S=\int_1^2\frac{\delta Q_{\mathrm{rev}}}{T}.
$$

Entropy is a state function with SI units $\mathrm{J\,K^{-1}}$. The path used to calculate $\Delta S$ may be reversible even when the actual process is not.

## Clausius inequality

For any cycle, reversible or irreversible,

$$
\boxed{\oint\frac{\delta Q}{T_b}\leq0},
$$

where heat into the system is positive and $T_b$ is the absolute temperature of the boundary region through which that heat crosses. Equality holds for a reversible cycle. Applied to a process from state 1 to state 2,

$$
\boxed{\Delta S\geq\int_1^2\frac{\delta Q}{T_b}}.
$$

It is useful to write the entropy balance as

$$
\Delta S=\int_1^2\frac{\delta Q}{T_b}+S_{\mathrm{gen}},
\qquad S_{\mathrm{gen}}\geq0.
$$

$S_{\mathrm{gen}}=0$ only for a reversible process. This inequality supplies the direction test absent from the first law.

## Entropy of a perfect gas

For $n$ moles of ideal gas with fixed composition and reversible $pV$ work,

$$
T\,dS=dU+p\,dV
=nC_{V,m}\,dT+\frac{nRT}{V}\,dV.
$$

If $C_{V,m}$ is constant,

$$
\boxed{\Delta S
=nC_{V,m}\ln\!\frac{T_2}{T_1}
+nR\ln\!\frac{V_2}{V_1}}.
$$

Using $pV=nRT$ and $C_{P,m}=C_{V,m}+R$ gives the equivalent form

$$
\boxed{\Delta S
=nC_{P,m}\ln\!\frac{T_2}{T_1}
-nR\ln\!\frac{p_2}{p_1}}.
$$

All logarithm arguments are dimensionless ratios, and temperatures are absolute.

## Reversible and irreversible examples

For reversible isothermal ideal-gas expansion,

$$
\Delta S_{\mathrm{gas}}=nR\ln\!\frac{V_2}{V_1},
\qquad
\Delta S_{\mathrm{reservoir}}=-\frac{Q}{T}
=-nR\ln\!\frac{V_2}{V_1}.
$$

Thus $\Delta S_{\mathrm{univ}}=0$. For reversible adiabatic change, $\delta Q_{\mathrm{rev}}=0$ and $\Delta S=0$; such a path is isentropic.

In insulated free expansion of an ideal gas, $Q=W=0$, so $\Delta U=0$ and $T_2=T_1$. Nevertheless,

$$
\Delta S_{\mathrm{gas}}=nR\ln\!\frac{V_2}{V_1}>0,
$$

because entropy is evaluated from the end states. The surroundings do not change, so this increase is entirely entropy generation.

If heat $Q>0$ passes directly from a hot reservoir $T_h$ to a cold reservoir $T_c<T_h$,

$$
\Delta S_{\mathrm{univ}}
=-\frac{Q}{T_h}+\frac{Q}{T_c}
=Q\left(\frac1{T_c}-\frac1{T_h}\right)>0.
$$

These examples express the principle of increase of entropy: an isolated system cannot decrease its entropy; it remains constant for a reversible process and increases for an irreversible process.

## Solved Problems

### 1. Derive the pressure form of the ideal-gas entropy change

Start from

$$
\Delta S=nC_{V,m}\ln\!\frac{T_2}{T_1}
+nR\ln\!\frac{V_2}{V_1}.
$$

The ideal-gas law at the two end states gives

$$
\frac{V_2}{V_1}=\frac{T_2p_1}{T_1p_2}.
$$

Substitution and separation of logarithms yield

$$
\begin{aligned}
\Delta S
&=n(C_{V,m}+R)\ln\!\frac{T_2}{T_1}
-nR\ln\!\frac{p_2}{p_1}\\
&=\boxed{nC_{P,m}\ln\!\frac{T_2}{T_1}
-nR\ln\!\frac{p_2}{p_1}}.
\end{aligned}
$$

Only ratios of like dimensional quantities occur inside logarithms. The derivation assumes fixed composition, ideal-gas behaviour, and constant heat capacities over the interval.

### 2. Entropy generation when two finite bodies reach equilibrium

Two identical isolated bodies, each with constant heat capacity $C$, begin at $T_a$ and $T_b$. Energy conservation gives

$$T_f=\frac{T_a+T_b}{2}.$$

The total entropy change is

$$
\Delta S_{\mathrm{univ}}
=C\ln\!\frac{T_f}{T_a}+C\ln\!\frac{T_f}{T_b}
=C\ln\!\frac{T_f^2}{T_aT_b}.
$$

The arithmetic-geometric mean inequality gives $T_f^2\geq T_aT_b$, so

$$\boxed{\Delta S_{\mathrm{univ}}\geq0}.$$

Equality occurs only when $T_a=T_b$, for which there was no finite temperature difference and no spontaneous heat transfer.

## Descriptive Questions

1. Why can entropy change be calculated along a reversible path even when the actual process is irreversible?
2. Explain the role of boundary temperature $T_b$ in the Clausius inequality.
3. Distinguish an adiabatic process from an isentropic process.
4. Use entropy generation to explain why heat does not flow spontaneously from cold to hot.

## Numerical Problems

1. Two moles of a monatomic ideal gas are heated at constant volume from $300$ to $450\ \mathrm K$.

   **Final answer:** $\Delta S=2(3R/2)\ln(450/300)=10.114\ \mathrm{J\,K^{-1}}$.

2. One mole of ideal gas expands isothermally to twice its volume.

   **Final answer:** $\Delta S=R\ln2=5.763\ \mathrm{J\,K^{-1}}$.

3. A quantity $500\ \mathrm J$ of heat passes directly from a $400\ \mathrm K$ reservoir to a $300\ \mathrm K$ reservoir.

   **Final answer:** $\Delta S_{\mathrm{univ}}=500(1/300-1/400)=0.4167\ \mathrm{J\,K^{-1}}$.

4. Half a mole of ideal gas freely expands in an insulated vessel to three times its initial volume.

   **Final answer:** $\Delta S=(0.5)R\ln3=4.567\ \mathrm{J\,K^{-1}}$.

The [entropy and Clausius Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/entropy-clausius-checks.mac' | relative_url }}) verifies the two entropy forms, finite-body balance, and every numerical result.

## References

1. [Clausius theorem](https://en.wikipedia.org/wiki/Clausius_theorem), Wikipedia.
2. H. B. Callen, *Thermodynamics and an Introduction to Thermostatistics*, 2nd ed., Wiley, 1985, chapters 4-5.
3. D. V. Schroeder, *An Introduction to Thermal Physics*, Addison-Wesley, 2000, chapters 2-3.

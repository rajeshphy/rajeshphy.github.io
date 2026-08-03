---
title: "Isothermal, Adiabatic, Reversible, and Irreversible Processes"
summary: "Work and heat in ideal-gas processes, van der Waals isothermal work, reversibility, and mechanical equivalence."
date: 2025-06-21 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, thermodynamic-processes, reversibility]
permalink: /bsc/sem-iv/mj-6/isothermal-adiabatic-reversible-irreversible-processes/
hidden: true
---

Take heat into the gas and work done by the gas as positive, so $dU=\delta Q-\delta W$. For quasistatic boundary work,

$$W_{1\to2}=\int_{V_1}^{V_2}p_{\mathrm{ext}}\,dV.$$

A reversible process proceeds through equilibrium states and can be reversed by an infinitesimal change without leaving a net change in system and surroundings. During reversible boundary work, $p_{\mathrm{ext}}=p$ in the limiting sense. Finite pressure or temperature differences, friction, viscosity, free expansion, and unrestrained mixing make a process irreversible.

## Reversible isothermal process

For $n$ moles of ideal gas at constant $T$,

$$p=\frac{nRT}{V}.$$

The work done by the gas is

$$
\boxed{W_{\mathrm{iso}}=nRT\ln\!\frac{V_2}{V_1}}.
$$

Ideal-gas internal energy depends only on $T$, so $\Delta U=0$. The first law therefore gives

$$Q_{\mathrm{iso}}=W_{\mathrm{iso}}.$$

For expansion, $V_2>V_1$, so $W$ and $Q$ are positive. For compression, both are negative.

For one mole of van der Waals gas at fixed $T$,

$$p=\frac{RT}{V_m-b}-\frac{a}{V_m^2},$$

and reversible isothermal work is

$$
W=RT\ln\!\frac{V_{m2}-b}{V_{m1}-b}
+a\left(\frac1{V_{m2}}-\frac1{V_{m1}}\right).
$$

The attractive term reduces the expansion work relative to the excluded-volume contribution.

## Reversible adiabatic process

An adiabatic boundary permits no heat transfer: $\delta Q=0$. For an ideal gas with temperature-independent molar heat capacity $C_{V,m}$,

$$nC_{V,m}\,dT=-p\,dV=-\frac{nRT}{V}\,dV.$$

Integration gives

$$
C_{V,m}\ln\!\frac{T_2}{T_1}+R\ln\!\frac{V_2}{V_1}=0.
$$

Using $\gamma=C_{P,m}/C_{V,m}$ and $C_{P,m}-C_{V,m}=R$,

$$
\boxed{TV^{\gamma-1}=\text{constant}},\qquad
\boxed{pV^\gamma=\text{constant}}.
$$

The work can be written in equivalent forms:

$$
\boxed{W_{\mathrm{ad}}=nC_{V,m}(T_1-T_2)
=\frac{p_1V_1-p_2V_2}{\gamma-1}}.
$$

Thus reversible adiabatic expansion cools the gas, while reversible adiabatic compression heats it. These power laws require an ideal gas, constant heat capacities, and a reversible process; $\delta Q=0$ alone is not sufficient.

## Irreversible work and path dependence

If a gas expands against a constant external pressure,

$$W=p_{\mathrm{ext}}(V_2-V_1),$$

even though the gas pressure may be nonuniform during the change. In free expansion into vacuum, $p_{\mathrm{ext}}=0$, so $W=0$. If the container is also insulated, $Q=0$ and $\Delta U=0$; an ideal gas then has $T_2=T_1$. The same end states can be joined reversibly with nonzero $Q$ and $W$, showing that heat and work are path functions while $U$ is a state function.

## Conversion of work and heat

Friction or electrical resistance can convert work completely into internal energy and heat. In an adiabatic paddle-wheel experiment on a closed fluid, work done on the system means $W<0$, so

$$\Delta U=-W>0.$$

Heat and work are measured in the same SI unit, the joule. The thermochemical calorie is

$$1\ \mathrm{cal}=4.184\ \mathrm{J}.$$

The first law fixes energy equivalence; the second law determines the limits on converting heat back into cyclic work.

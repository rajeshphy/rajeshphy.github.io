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

## Solved Problems

### 1. Compare reversible and irreversible isothermal expansion to twice the initial volume

Let one mole of ideal gas begin at $(T,V_1,p_1)$ and end at $V_2=2V_1$, so $p_2=p_1/2$. A reversible isothermal path gives

$$W_{\mathrm{rev}}=RT\ln2.$$

If the gas instead expands irreversibly against the constant final pressure $p_{\mathrm{ext}}=p_2$, then

$$W_{\mathrm{irr}}=p_2(V_2-V_1)
=\frac{p_1}{2}V_1=\frac{RT}{2}.$$

Thus

$$
W_{\mathrm{rev}}-W_{\mathrm{irr}}
=RT\left(\ln2-\frac12\right)>0.
$$

Both paths have $\Delta U=0$, so $Q=W$ on each path. The reversible path delivers the maximum expansion work because its external pressure is never lowered by a finite unnecessary amount.

### 2. Find the final temperature in an irreversible adiabatic expansion

An ideal gas with constant total heat capacity $C_V$ expands adiabatically from $(T_1,V_1)$ to $V_2$ against constant $p_{\mathrm{ext}}$. Since $Q=0$,

$$
C_V(T_2-T_1)=-p_{\mathrm{ext}}(V_2-V_1).
$$

Therefore

$$
\boxed{T_2=T_1-\frac{p_{\mathrm{ext}}(V_2-V_1)}{C_V}}.
$$

Expansion makes the second term positive before the minus sign, so $T_2<T_1$. This result uses the actual external pressure and must not be replaced by $pV^\gamma=\text{constant}$, which applies only to a reversible adiabat. Units check: $p\Delta V/C_V$ is kelvin.

## Descriptive Questions

1. Give the mechanical and thermal conditions that distinguish a reversible process from a merely quasistatic one.
2. Why does an adiabatic process need not be isentropic?
3. Explain why free expansion can have $Q=W=0$ while still being irreversible.
4. State the assumptions behind $pV^\gamma=\text{constant}$ and identify one case where it fails.

## Numerical Problems

1. One mole of a van der Waals gas expands reversibly and isothermally at $300\ \mathrm K$ from $V_{m1}=0.0100\ \mathrm{m^3\,mol^{-1}}$ to $V_{m2}=0.0200\ \mathrm{m^3\,mol^{-1}}$. Use $a=0.364\ \mathrm{Pa\,m^6\,mol^{-2}}$ and $b=4.27\times10^{-5}\ \mathrm{m^3\,mol^{-1}}$.

   **Final answer:** $W=RT\ln[(V_{m2}-b)/(V_{m1}-b)]+a(1/V_{m2}-1/V_{m1})=1.716\ \mathrm{kJ}$.

2. A gas expands from $0.010$ to $0.020\ \mathrm{m^3}$ against a constant external pressure of $1.00\times10^5\ \mathrm{Pa}$.

   **Final answer:** $W=p_{\mathrm{ext}}\Delta V=1.00\ \mathrm{kJ}$.

3. An ideal gas with $\gamma=1.40$ expands reversibly and adiabatically from $300\ \mathrm K$ to twice its volume.

   **Final answer:** $T_2=T_1(V_1/V_2)^{\gamma-1}=227\ \mathrm K$.

4. A paddle wheel does $3.00\ \mathrm{kJ}$ of work on $2.00$ mol of a monatomic ideal gas in a rigid, adiabatic vessel. Find the internal-energy and temperature changes, taking $C_{V,m}=3R/2$ and work done by the gas as positive.

   **Final answer:** $W=-3.00\ \mathrm{kJ}$, so $\Delta U=Q-W=+3.00\ \mathrm{kJ}$ and $\Delta T=\Delta U/(nC_{V,m})=120.3\ \mathrm K$.

The [thermodynamic-processes Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/thermodynamic-processes-checks.mac' | relative_url }}) checks reversible and irreversible work, the adiabatic temperature law, sign conventions, and every numerical answer.

## References

1. [Thermodynamic process](https://en.wikipedia.org/wiki/Thermodynamic_process), Wikipedia.
2. D. V. Schroeder, *An Introduction to Thermal Physics*, Addison-Wesley, 2000, chapter 1.
3. F. W. Sears and G. L. Salinger, *Thermodynamics, Kinetic Theory, and Statistical Thermodynamics*, 3rd ed., Addison-Wesley, 1975, chapters 4-5.

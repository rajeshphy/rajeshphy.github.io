---
title: "Thermodynamic Foundations and Response Functions"
summary: "Equilibrium, thermodynamic variables, zeroth and first laws, heat, work, and the general heat-capacity relation."
date: 2025-06-20 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, first-law, response-functions]
permalink: /bsc/sem-iv/mj-6/thermodynamic-foundations-response-functions/
hidden: true
---

A thermodynamic system is separated from its surroundings by a boundary. A closed system exchanges energy but not matter; an isolated system exchanges neither. The equilibrium states considered here are simple compressible states of fixed composition, described by pressure $p$, volume $V$, and absolute temperature $T$.

## Variables and equilibrium

An extensive variable scales with the amount of matter: $V$, internal energy $U$, entropy $S$, and particle number $N$ are examples. An intensive variable does not scale: $p$, $T$, and density are examples. A ratio of two extensive variables, such as $U/N$, is intensive.

Thermodynamic equilibrium requires simultaneously:

- thermal equilibrium: no temperature gradient that drives heat transfer;
- mechanical equilibrium: no unbalanced pressure difference;
- chemical equilibrium: no net reaction or diffusion of components.

The zeroth law states that if systems $A$ and $B$ are separately in thermal equilibrium with system $C$, then $A$ and $B$ are in thermal equilibrium with each other. This transitive relation makes temperature a well-defined state variable and permits thermometry.

## State functions, heat, and work

A state function has a change fixed by the end states; thus $dU$ is an exact differential and $\oint dU=0$. Heat and work are modes of energy transfer, not stored properties, so their infinitesimal amounts are written $\delta Q$ and $\delta W$.

Use the sign convention

$$\delta Q>0\quad\text{into the system},\qquad
\delta W>0\quad\text{done by the system}.$$

The first law is then

$$
\boxed{dU=\delta Q-\delta W}.
$$

For boundary work in a quasistatic change,

$$\delta W=p_{\mathrm{ext}}\,dV.$$

Only for a mechanically reversible change does $p_{\mathrm{ext}}$ differ infinitesimally from the system pressure, allowing $\delta W=p\,dV$. Expansion has $dV>0$ and positive work by the system; compression has negative work by the system. Over a cycle, $\Delta U=0$, so

$$\oint\delta Q=\oint\delta W.$$

Internal energy is the state function required to make this balance path independent. Enthalpy is

$$H=U+pV.$$

When $pV$ boundary work is the only work mode, constant volume gives $\delta W=0$ and $\delta Q=dU$. At constant pressure with only reversible $pV$ work,

$$dH=dU+p\,dV=\delta Q,$$

so the corresponding heat capacities are

$$
C_V=\left(\frac{\partial U}{\partial T}\right)_V,
\qquad
C_P=\left(\frac{\partial H}{\partial T}\right)_p.
$$

These are heat capacities of the whole sample, with units $\mathrm{J\,K^{-1}}$.

## Compressibility and expansion coefficient

Define the isothermal compressibility and volume expansion coefficient by

$$
\boxed{\kappa_T=-\frac1V\left(\frac{\partial V}{\partial p}\right)_T},
\qquad
\boxed{\alpha=\frac1V\left(\frac{\partial V}{\partial T}\right)_p}.
$$

$\kappa_T$ has units $\mathrm{Pa^{-1}}$ and $\alpha$ has units $\mathrm{K^{-1}}$. Their signs are chosen so that a mechanically stable ordinary material has $\kappa_T>0$. The total differential

$$dV=V\alpha\,dT-V\kappa_T\,dp$$

gives, at constant $V$,

$$
\left(\frac{\partial p}{\partial T}\right)_V
=\frac{\alpha}{\kappa_T}.
$$

## General relation between $C_P$ and $C_V$

For a reversible change, $dS=\delta Q_{\mathrm{rev}}/T$ and the first law gives $dU=T\,dS-p\,dV$. Exactness of $dS$ yields the thermodynamic identity

$$
\left(\frac{\partial U}{\partial V}\right)_T
=T\left(\frac{\partial p}{\partial T}\right)_V-p.
$$

Now differentiate $H=U+pV$ at constant pressure:

$$
C_P=C_V+
\left[\left(\frac{\partial U}{\partial V}\right)_T+p\right]
\left(\frac{\partial V}{\partial T}\right)_p.
$$

Substitution of the two response identities gives

$$
\boxed{C_P-C_V=\frac{TV\alpha^2}{\kappa_T}}.
$$

The units are $\mathrm{K\,m^3(K^{-2})/(Pa^{-1})=J\,K^{-1}}$. In a stable one-phase region $\kappa_T>0$, so $C_P\geq C_V$. For $n$ moles of ideal gas, $\alpha=1/T$, $\kappa_T=1/p$, and $pV=nRT$; hence

$$\boxed{C_P-C_V=nR}.$$

The general identity is re-derived from Maxwell relations in Unit III.

## Solved Problems

### 1. Recover a state function from an exact differential

Suppose a fixed-composition system has

$$dU=C\,dT+\Lambda V\,dV,$$

where $C$ and $\Lambda$ are constants. Exactness requires the mixed derivatives to agree. Here

$$
\frac{\partial C}{\partial V}=0
=\frac{\partial(\Lambda V)}{\partial T},
$$

so the condition is satisfied. Integrating first with respect to $T$ and then matching the $V$ derivative gives

$$
\boxed{U(T,V)=CT+\frac12\Lambda V^2+U_0}.
$$

Therefore

$$
\Delta U=C(T_2-T_1)+\frac{\Lambda}{2}(V_2^2-V_1^2),
$$

independent of the path. Here $[C]=\mathrm{J\,K^{-1}}$ and $[\Lambda]=\mathrm{J\,m^{-6}}$, so both terms have units of joules.

### 2. Apply the first law to a rigid, electrically stirred vessel

A rigid vessel loses $100\ \mathrm J$ as heat while an electric stirrer does $500\ \mathrm J$ of work on the fluid. With heat into and work by the system positive,

$$Q=-100\ \mathrm J,\qquad W=-500\ \mathrm J.$$

The first law gives

$$
\Delta U=Q-W=-100-(-500)=\boxed{400\ \mathrm J}.
$$

Although $dV=0$ eliminates boundary $pV$ work, it does not eliminate electrical or shaft work. This is why $Q=\Delta U$ at constant volume needs the explicit “only $pV$ work” assumption.

## Descriptive Questions

1. Distinguish intensive and extensive variables and explain why their classification matters when system size changes.
2. Why are $dU$ and $dH$ exact differentials while $\delta Q$ and $\delta W$ are not?
3. State the conditions under which heat at constant volume equals $\Delta U$ and heat at constant pressure equals $\Delta H$.
4. Explain why mechanical stability requires positive isothermal compressibility.

## Numerical Problems

1. A closed system absorbs $500\ \mathrm J$ and does $120\ \mathrm J$ of work. Find its change in internal energy.

   **Final answer:** $\Delta U=Q-W=380\ \mathrm J$.

2. At fixed temperature, a sample of volume $2.0\times10^{-3}\ \mathrm{m^3}$ with $\kappa_T=5.0\times10^{-10}\ \mathrm{Pa^{-1}}$ experiences $\Delta p=2.0\times10^7\ \mathrm{Pa}$. Use the linear approximation.

   **Final answer:** $\Delta V=-V\kappa_T\Delta p=-2.0\times10^{-5}\ \mathrm{m^3}$.

3. A sample has $V=1.5\times10^{-3}\ \mathrm{m^3}$ and $\alpha=3.0\times10^{-4}\ \mathrm{K^{-1}}$. Find $\Delta V$ for an $80\ \mathrm K$ rise at constant pressure.

   **Final answer:** $\Delta V=V\alpha\Delta T=3.6\times10^{-5}\ \mathrm{m^3}$.

4. For $T=300\ \mathrm K$, $V=1.0\times10^{-3}\ \mathrm{m^3}$, $\alpha=1.0\times10^{-3}\ \mathrm{K^{-1}}$, and $\kappa_T=1.0\times10^{-6}\ \mathrm{Pa^{-1}}$, find $C_P-C_V$.

   **Final answer:** $C_P-C_V=TV\alpha^2/\kappa_T=0.300\ \mathrm{J\,K^{-1}}$.

The [foundations and response-functions Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/foundations-response-checks.mac' | relative_url }}) verifies the sign convention, ideal-gas response identities, response calculation, and printed answers.

## References

1. [Laws of thermodynamics](https://en.wikipedia.org/wiki/Laws_of_thermodynamics), Wikipedia.
2. H. B. Callen, *Thermodynamics and an Introduction to Thermostatistics*, 2nd ed., Wiley, 1985, chapters 1-3.
3. M. W. Zemansky and R. H. Dittman, *Heat and Thermodynamics*, 7th ed., McGraw-Hill, 1997, chapters “Fundamental concepts” and “The first law.”

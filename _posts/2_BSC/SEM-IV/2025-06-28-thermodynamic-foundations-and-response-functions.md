---
title: "Thermodynamic Foundations and Response Functions"
summary: "Equilibrium, thermodynamic variables, zeroth and first laws, heat, work, and the general heat-capacity relation."
date: 2025-06-28 08:00:00 +0530
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

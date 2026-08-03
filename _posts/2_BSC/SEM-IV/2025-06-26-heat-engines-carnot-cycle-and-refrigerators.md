---
title: "Heat Engines, Carnot Cycle, and Refrigerators"
summary: "Second-law statements, reversible engines, Carnot efficiency, refrigeration, and coefficients of performance."
date: 2025-06-26 08:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, carnot-cycle, heat-engines]
permalink: /bsc/sem-iv/mj-6/heat-engines-carnot-cycle-refrigerators/
hidden: true
---

A heat engine operates cyclically between a hot reservoir at $T_h$ and a cold reservoir at $T_c<T_h$. Let $Q_h>0$ be heat absorbed from the hot reservoir, $Q_c>0$ the magnitude rejected to the cold reservoir, and $W>0$ the net work output. Since the working substance returns to its initial state,

$$W=Q_h-Q_c.$$

Its thermal efficiency is

$$
\boxed{\eta=\frac{W}{Q_h}=1-\frac{Q_c}{Q_h}}.
$$

## Statements of the second law

The Kelvin-Planck statement says that no cyclic device can take heat from a single reservoir and convert it completely into work. Thus $Q_c$ cannot vanish for an engine operating in a cycle.

The Clausius statement says that no cyclic device can have as its sole effect the transfer of heat from a colder body to a hotter body. Such a transfer requires work input.

The statements are equivalent. A perfect single-reservoir engine could drive a refrigerator without net work and violate Clausius; a refrigerator that required no work could combine with an ordinary engine to convert the heat taken from one reservoir completely into work and violate Kelvin-Planck.

## Reversible Carnot cycle

For $n$ moles of ideal gas with constant heat capacities, the Carnot engine consists of four reversible processes:

1. $1\to2$: isothermal expansion at $T_h$, absorbing $Q_h$;
2. $2\to3$: adiabatic expansion from $T_h$ to $T_c$;
3. $3\to4$: isothermal compression at $T_c$, rejecting $Q_c$;
4. $4\to1$: adiabatic compression from $T_c$ to $T_h$.

![Correctly joined pressure-volume and temperature-entropy diagrams for a Carnot engine]({{ '/assets/images/bsc/sem-iv/mj-6/carnot-cycle.png' | relative_url }})

The two isothermal steps give

$$
Q_h=nRT_h\ln\!\frac{V_2}{V_1},
\qquad
Q_c=nRT_c\ln\!\frac{V_3}{V_4}.
$$

On each reversible adiabat, $TV^{\gamma-1}$ is constant. Hence

$$
T_hV_2^{\gamma-1}=T_cV_3^{\gamma-1},
\qquad
T_cV_4^{\gamma-1}=T_hV_1^{\gamma-1},
$$

which imply

$$\frac{V_2}{V_1}=\frac{V_3}{V_4}.$$

Therefore

$$
\frac{Q_c}{Q_h}=\frac{T_c}{T_h},
\qquad
\boxed{\eta_{\mathrm C}=1-\frac{T_c}{T_h}}.
$$

Temperatures must be absolute. Unit efficiency would require $T_c=0$, which is unattainable.

## Carnot theorem

No engine operating between two fixed reservoirs can be more efficient than a reversible engine between them. Suppose an engine were more efficient than a reversible Carnot engine while absorbing the same $Q_h$. It would produce more work and reject less heat. Use part of its work to run the Carnot engine backward. The hot-reservoir exchanges cancel, leaving net work while an equal amount of heat is removed from the cold reservoir: a Kelvin-Planck violation. Thus the supposed engine cannot exist.

Running either of two reversible engines backward gives the same contradiction unless their efficiencies are equal. Therefore all reversible engines between $T_h$ and $T_c$ have the same Carnot efficiency, independent of working substance.

## Refrigerator and coefficient of performance

A refrigerator is the reversed heat-engine cycle. It removes $Q_c$ from the cold reservoir, receives work $W$, and rejects

$$Q_h=Q_c+W$$

to the hot reservoir. Its coefficient of performance is

$$
\boxed{\mathrm{COP}_{R}=\frac{Q_c}{W}}.
$$

For a reversible refrigerator,

$$
\boxed{\mathrm{COP}_{R,\mathrm C}=\frac{T_c}{T_h-T_c}}.
$$

If the desired output is heating, the same reversed device is a heat pump with

$$
\mathrm{COP}_{H}=\frac{Q_h}{W}
=\frac{T_h}{T_h-T_c}=\mathrm{COP}_{R}+1.
$$

The linked [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/unit-ii-checks.mac' | relative_url }}) verifies

$$\eta_{\mathrm C}-\left(1-\frac{T_c}{T_h}\right)=0.$$

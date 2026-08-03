---
title: "Mixing Entropy, the Universe, T-S Diagrams, and the Third Law"
summary: "Ideal-gas mixing, entropy of the universe, the Carnot cycle on a temperature-entropy plane, and absolute zero."
date: 2025-06-24 08:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, mixing-entropy, third-law]
permalink: /bsc/sem-iv/mj-6/mixing-entropy-universe-ts-diagram-third-law/
hidden: true
---

## Mixing of two ideal gases

Let $n_1$ and $n_2$ moles of two distinct ideal gases initially occupy volumes $V_1$ and $V_2$ at the same temperature $T$ and pressure $p$. Removing the partition allows each component to expand isothermally through the total volume

$$V=V_1+V_2.$$

Because an ideal gas has no energy of mixing, $\Delta U=0$ and the final temperature remains $T$ in an insulated rigid container. Entropy is additive over the components:

$$
\Delta S_{\mathrm{mix}}
=n_1R\ln\!\frac{V}{V_1}
+n_2R\ln\!\frac{V}{V_2}.
$$

At equal initial $T$ and $p$, $V_i=n_iRT/p$. With $n=n_1+n_2$ and mole fractions $x_i=n_i/n$,

$$
\boxed{\Delta S_{\mathrm{mix}}
=-nR\sum_i x_i\ln x_i>0}.
$$

For equal amounts, $x_1=x_2=1/2$ and

$$\Delta S_{\mathrm{mix}}=nR\ln2=2n_1R\ln2.$$

The formula applies to distinguishable gases. Removing a partition between identical gases in the same state creates no new thermodynamic state and gives no entropy of mixing.

The [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/unit-ii-checks.mac' | relative_url }}) verifies the equal-amount result with residual zero.

## Entropy of the universe

Treating system and surroundings together as an isolated universe gives

$$
\boxed{\Delta S_{\mathrm{univ}}
=\Delta S_{\mathrm{sys}}+\Delta S_{\mathrm{surr}}
=S_{\mathrm{gen}}\geq0}.
$$

Equality identifies a reversible process. A positive value measures irreversibility. A proposed process with $\Delta S_{\mathrm{univ}}<0$ is forbidden by the second law even if it satisfies energy conservation.

## Temperature-entropy diagram of a Carnot cycle

For a reversible path,

$$\delta Q_{\mathrm{rev}}=T\,dS.$$

Thus the signed area under a curve on a $T$-$S$ plane equals reversible heat transfer. The Carnot cycle is a rectangle: the isotherms are horizontal at $T_h$ and $T_c$, and the reversible adiabats are vertical because $dS=0$.

![The Carnot cycle shown consistently on pressure-volume and temperature-entropy planes]({{ '/assets/images/bsc/sem-iv/mj-6/carnot-cycle.png' | relative_url }})

If the entropy change along either isotherm has magnitude $\Delta S$,

$$Q_h=T_h\Delta S,\qquad Q_c=T_c\Delta S.$$

The rectangular area is the net heat and hence the net work:

$$W=(T_h-T_c)\Delta S.$$

Therefore $W/Q_h=1-T_c/T_h$, reproducing Carnot efficiency directly from the diagram.

## Third law and unattainability of absolute zero

For a pure substance in a perfect crystalline equilibrium state,

$$
\boxed{\lim_{T\to0}S(T)=0}.
$$

More generally, entropy differences between equilibrium states approach zero as $T\to0$. With zero assigned to the perfect crystal, entropy at temperature $T$ can be obtained along a reversible fixed-pressure heating path, including any intervening phase changes:

$$
S(T)=\int_0^T\frac{C_p(T')}{T'}\,dT'
+\sum_j\frac{L_j}{T_j},
$$

provided the low-temperature heat capacity makes the integral finite. A disordered ground state can retain residual entropy, so the perfect-crystal condition is essential.

The unattainability principle states that no finite sequence of physical operations can cool a system to $T=0$. As the temperature falls, available entropy differences and extractable heat vanish; each refrigeration stage produces a smaller reduction and absolute zero is approached only as a limit. This also explains why the $T_c=0$ condition required for a unit-efficiency Carnot engine cannot be realized.

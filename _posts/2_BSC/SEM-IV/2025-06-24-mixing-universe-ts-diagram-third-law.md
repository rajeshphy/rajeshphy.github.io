---
title: "Mixing Entropy, the Universe, T-S Diagrams, and the Third Law"
summary: "Ideal-gas mixing, entropy of the universe, the Carnot cycle on a temperature-entropy plane, and absolute zero."
date: 2025-06-24 09:00:00 +0530
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

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-6/carnot-cycle.png' | relative_url }}" alt="The Carnot cycle shown consistently on pressure-volume and temperature-entropy planes">
</figure>
</div>

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
S(T)=\int_0^T\frac{C_p(\theta)}{\theta}\,d\theta
+\sum_j\frac{L_j}{T_j},
$$

provided the low-temperature heat capacity makes the integral finite. A disordered ground state can retain residual entropy, so the perfect-crystal condition is essential.

The unattainability principle states that no finite sequence of physical operations can cool a system to $T=0$. As the temperature falls, available entropy differences and extractable heat vanish; each refrigeration stage produces a smaller reduction and absolute zero is approached only as a limit. This also explains why the $T_c=0$ condition required for a unit-efficiency Carnot engine cannot be realized.

The calorimetric expression above specifically follows a reversible fixed-pressure path. If pressure varies, the missing response term must be retained:

$$dS=\frac{C_p}{T}\,dT-V\alpha\,dp.$$

## Solved Problems

### 1. Find the composition of maximum ideal-gas mixing entropy

For two gases with total amount $n$ and mole fractions $x$ and $1-x$,

$$
\Delta S_{\mathrm{mix}}
=-nR[x\ln x+(1-x)\ln(1-x)].
$$

Differentiate at fixed $n$:

$$
\frac{d\Delta S_{\mathrm{mix}}}{dx}
=-nR\ln\!\frac{x}{1-x}.
$$

The stationary point is $x=1/2$, and

$$
\frac{d^2\Delta S_{\mathrm{mix}}}{dx^2}
=-nR\left(\frac1x+\frac1{1-x}\right)<0.
$$

Hence the maximum is

$$\boxed{\Delta S_{\mathrm{mix,max}}=nR\ln2}.$$

As $x\to0$ or $1$, $x\ln x\to0$ and the mixing entropy tends to zero, as required when only one component remains.

### 2. Calculate residual entropy from a twofold orientational disorder

Suppose each of $N$ molecules can occupy either of two equal-energy orientations even as $T\to0$, independently of the others. The number of ground-state configurations is

$$\Omega=2^N.$$

Boltzmann's relation gives

$$S_0=k_{\mathrm B}\ln\Omega=Nk_{\mathrm B}\ln2.$$

For one mole, $N=N_{\mathrm A}$, so

$$\boxed{S_{0,m}=R\ln2}.$$

This does not contradict the perfect-crystal statement of the third law: the assumed twofold disorder means the ground state is not a unique perfect crystal.

## Descriptive Questions

1. Explain why distinguishable ideal gases have positive entropy of mixing but identical gases in the same state do not.
2. What does the enclosed area of a reversible cycle on a $T$-$S$ diagram represent?
3. State the perfect-crystal form of the third law and explain residual entropy.
4. Why does the third law imply unattainability of absolute zero rather than merely a technical difficulty in refrigeration?

## Numerical Problems

1. Mix $1.00$ mol of one ideal gas with $2.00$ mol of another at the same initial temperature and pressure.

   **Final answer:** $\Delta S_{\mathrm{mix}}=-3R[(1/3)\ln(1/3)+(2/3)\ln(2/3)]=15.877\ \mathrm{J\,K^{-1}}$.

2. Two bodies with equal constant heat capacity $C=500\ \mathrm{J\,K^{-1}}$, initially at $400\ \mathrm K$ and $300\ \mathrm K$, are placed in thermal contact inside an isolated enclosure. Find the final temperature and total entropy change.

   **Final answer:** $T_f=350\ \mathrm K$ and $\Delta S_{\mathrm{univ}}=500\ln(350/400)+500\ln(350/300)=500\ln(49/48)=10.310\ \mathrm{J\,K^{-1}}>0$.

3. A reversible rectangular $T$-$S$ cycle has $T_h=500\ \mathrm K$, $T_c=300\ \mathrm K$, and entropy width $4.0\ \mathrm{J\,K^{-1}}$.

   **Final answer:** $Q_h=2.00\ \mathrm{kJ}$ and $W=(T_h-T_c)\Delta S=0.800\ \mathrm{kJ}$.

4. At low temperature a crystal has molar heat capacity $C_p=\beta T^3$ with $\beta=2.00\times10^{-3}\ \mathrm{J\,mol^{-1}K^{-4}}$. Neglect phase changes and find $S_m(10\ \mathrm K)$.

   **Final answer:** $S_m=\beta T^3/3=0.6667\ \mathrm{J\,mol^{-1}K^{-1}}$.

The [mixing and third-law Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/mixing-third-law-checks.mac' | relative_url }}) verifies mixing limits, the $T$-$S$ energy areas, the low-temperature integral, and every numerical answer.

## References

1. [Third law of thermodynamics](https://en.wikipedia.org/wiki/Third_law_of_thermodynamics), Wikipedia.
2. C. Kittel and H. Kroemer, *Thermal Physics*, 2nd ed., W. H. Freeman, 1980, chapters 2-3.
3. P. Atkins, J. de Paula, and J. Keeler, *Atkins' Physical Chemistry*, 11th ed., Oxford University Press, 2018, chapters “The second and third laws.”

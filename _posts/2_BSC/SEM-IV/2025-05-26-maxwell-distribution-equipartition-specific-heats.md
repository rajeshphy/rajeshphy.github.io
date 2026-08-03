---
title: "Maxwell Distribution, Equipartition, and Specific Heats"
summary: "Equilibrium molecular speeds, active degrees of freedom, equipartition, and ideal-gas heat capacities."
date: 2025-05-26 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, kinetic-theory]
permalink: /bsc/sem-iv/mj-6/maxwell-distribution-equipartition-specific-heats/
hidden: true
---

Consider a dilute gas of identical, non-interacting molecules of mass $m$ in thermal equilibrium at absolute temperature $T$. Collisions randomize direction, so the velocity distribution is isotropic. The Cartesian components are also statistically independent. Boltzmann's constant is $k_{\mathrm B}$ and $R=N_{\mathrm A}k_{\mathrm B}$.

## Maxwell-Boltzmann velocity distribution

Independence gives

$$F(v_x,v_y,v_z)=\phi(v_x)\phi(v_y)\phi(v_z),$$

where $F\,dv_xdv_ydv_z$ is the probability of finding a molecule in the indicated velocity-space element. Isotropy requires $F$ to depend on the components only through

$$v^2=v_x^2+v_y^2+v_z^2.$$

The product of three one-variable functions can depend only on this sum if each factor is Gaussian. Hence

$$F=A\exp[-\alpha(v_x^2+v_y^2+v_z^2)].$$

Normalization and $\langle \tfrac12mv_x^2\rangle=\tfrac12k_{\mathrm B}T$ determine $A$ and $\alpha$:

$$
\boxed{F(v_x,v_y,v_z)=
\left(\frac{m}{2\pi k_{\mathrm B}T}\right)^{3/2}
\exp\!\left(-\frac{mv^2}{2k_{\mathrm B}T}\right)}.
$$

$F$ has units $(\mathrm{m\,s^{-1}})^{-3}$. Velocities with magnitude between $v$ and $v+dv$ occupy the spherical shell $4\pi v^2dv$ in velocity space. The speed probability density is therefore

$$
\boxed{f(v)=4\pi\left(\frac{m}{2\pi k_{\mathrm B}T}\right)^{3/2}
v^2\exp\!\left(-\frac{mv^2}{2k_{\mathrm B}T}\right)},
\qquad v\geq0,
$$

with $\int_0^\infty f(v)\,dv=1$ and units $(\mathrm{m\,s^{-1}})^{-1}$.

<div class="diagram-pan" role="region" aria-label="Scrollable diagram" tabindex="0">
<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-6/maxwell-speed-distribution.png' | relative_url }}" alt="Normalized Maxwell speed distributions at three temperatures">
</figure>
</div>

For the nonzero maximum, $df/dv=0$ gives

$$
\frac{df}{dv}\propto
2v\left(1-\frac{mv^2}{2k_{\mathrm B}T}\right)
e^{-mv^2/(2k_{\mathrm B}T)},
$$

so the most probable speed is

$$v_{\mathrm{mp}}=\sqrt{\frac{2k_{\mathrm B}T}{m}}.$$

Using

$$
\int_0^\infty x^n e^{-ax^2}\,dx
=\frac12a^{-(n+1)/2}\Gamma\!\left(\frac{n+1}{2}\right)
$$

gives the mean and root-mean-square speeds:

$$
\bar v=\int_0^\infty vf(v)\,dv
=\sqrt{\frac{8k_{\mathrm B}T}{\pi m}},
$$

$$
\langle v^2\rangle=\int_0^\infty v^2f(v)\,dv
=\frac{3k_{\mathrm B}T}{m},
\qquad
v_{\mathrm{rms}}=\sqrt{\frac{3k_{\mathrm B}T}{m}}.
$$

Thus $v_{\mathrm{mp}}<\bar v<v_{\mathrm{rms}}$, and every characteristic speed varies as $\sqrt{T/m}$.

## Degrees of freedom and equipartition

A degree of freedom is an independent coordinate needed to specify molecular motion. In classical equilibrium, every independent quadratic energy term contributes mean energy $k_{\mathrm B}T/2$ per molecule. For example,

$$
\epsilon_{\mathrm{tr}}=
\frac{p_x^2}{2m}+\frac{p_y^2}{2m}+\frac{p_z^2}{2m}
$$

contains three quadratic terms and contributes $3k_{\mathrm B}T/2$. A linear molecule has two rotational quadratic terms; a nonlinear molecule has three. Each vibrational normal mode has one kinetic and one potential quadratic term, so an active vibrational mode contributes $k_{\mathrm B}T$.

If $g$ quadratic terms are active, the mean molecular energy and the internal energy of $n$ moles are

$$
\bar\epsilon=\frac{g}{2}k_{\mathrm B}T,
\qquad
U=N\bar\epsilon=\frac{g}{2}nRT.
$$

For an ideal gas, $U$ depends only on $T$. Therefore

$$
C_V=\left(\frac{\partial U}{\partial T}\right)_V
=\frac{g}{2}nR.
$$

Since $H=U+pV=U+nRT$,

$$
C_P=\left(\frac{\partial H}{\partial T}\right)_p
=C_V+nR=\frac{g+2}{2}nR,
\qquad
\gamma=\frac{C_P}{C_V}=\frac{g+2}{g}.
$$

For one mole, a monatomic gas has $g=3$ and

$$C_{V,m}=\frac32R,\qquad C_{P,m}=\frac52R,\qquad \gamma=\frac53.$$

A rigid diatomic gas at ordinary temperatures has $g=5$ and

$$C_{V,m}=\frac52R,\qquad C_{P,m}=\frac72R,\qquad \gamma=\frac75.$$

Molar heat capacities have units $\mathrm{J\,mol^{-1}K^{-1}}$; division by molar mass gives mass-specific heat in $\mathrm{J\,kg^{-1}K^{-1}}$. A rotational or vibrational mode whose energy spacing is much larger than $k_{\mathrm B}T$ is effectively frozen and does not contribute its classical value.

The classical distribution requires non-relativistic particles, dilute-gas conditions, equilibrium, and negligible quantum degeneracy. Its $T\to0$ limit is therefore not physical: quantum statistics and discrete rotational or vibrational levels enter before that limit. Normalization is dimensionless, while every $r$th speed moment has units $(\mathrm{m\,s^{-1}})^r$.

## Solved Problems

### 1. Obtain a general moment of the Maxwell speed distribution

Put $A=m/(2k_{\mathrm B}T)$. The normalized density becomes

$$f(v)=\frac{4}{\sqrt\pi}A^{3/2}v^2e^{-Av^2}.$$

For $r>-3$, use the Gaussian integral stated above:

$$
\begin{aligned}
\langle v^r\rangle
&=\frac{4}{\sqrt\pi}A^{3/2}
\int_0^\infty v^{r+2}e^{-Av^2}\,dv\\
&=\frac{2}{\sqrt\pi}A^{-r/2}
\Gamma\!\left(\frac{r+3}{2}\right).
\end{aligned}
$$

For $r=0$ this gives $1$, checking normalization. For $r=1$ and $2$ it gives $\bar v=2/(\sqrt{\pi A})$ and $\langle v^2\rangle=3/(2A)$. Thus

$$v_{\mathrm{mp}}^2:\bar v^2:v_{\mathrm{rms}}^2
=2:\frac8\pi:3,$$

so $v_{\mathrm{mp}}<\bar v<v_{\mathrm{rms}}$. The factor $A^{-r/2}$ supplies the required speed-to-the-$r$ dimensions.

### 2. Heat capacities when only two vibration modes of a linear triatomic molecule are active

A linear triatomic molecule has three translations, two rotations, and $3N-5=4$ normal vibration modes. Suppose only two vibration modes satisfy $k_{\mathrm B}T$ large compared with their level spacings. Each active vibration supplies two quadratic terms, so

$$g=3+2+2(2)=9.$$

For one mole,

$$C_{V,m}=\frac92R,\qquad
C_{P,m}=C_{V,m}+R=\frac{11}{2}R,$$

and therefore

$$\boxed{\gamma=\frac{C_{P,m}}{C_{V,m}}=\frac{11}{9}}.$$

The result lies between the rigid-molecule value $7/5$ and the value obtained when all four vibrations are active. It assumes ideal-gas behaviour and classical equipartition for the stated active modes.

## Descriptive Questions

1. Why do isotropy and statistical independence force the Cartesian velocity distributions to be Gaussian?
2. Distinguish a velocity distribution from a speed distribution, including their domains and units.
3. Explain why a vibrational normal mode contributes twice as much classical energy as one translational coordinate.
4. Why can measured heat capacities depart from equipartition predictions at low temperature?

## Numerical Problems

1. Find the most probable speed of oxygen molecules at $300\ \mathrm K$, taking $M=0.032\ \mathrm{kg\,mol^{-1}}$.

   **Final answer:** $v_{\mathrm{mp}}=\sqrt{2RT/M}=394.8\ \mathrm{m\,s^{-1}}$.

2. Find the rms speed of helium at $400\ \mathrm K$ for $M=0.004\ \mathrm{kg\,mol^{-1}}$.

   **Final answer:** $v_{\mathrm{rms}}=1.579\times10^3\ \mathrm{m\,s^{-1}}$.

3. Two moles of a monatomic ideal gas are heated through $50\ \mathrm K$ at constant volume. Calculate $\Delta U$.

   **Final answer:** $\Delta U=(3/2)nR\Delta T=1.247\times10^3\ \mathrm J$.

4. A classical ideal gas has $\gamma=1.40$. Infer its number $g$ of active quadratic degrees of freedom.

   **Final answer:** $g=2/(\gamma-1)=5$.

The [Maxwell and equipartition Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/maxwell-equipartition-checks.mac' | relative_url }}) verifies normalization, the first two moments, heat-capacity identities, and every numerical answer above.

## References

1. [Maxwell-Boltzmann distribution](https://en.wikipedia.org/wiki/Maxwell%E2%80%93Boltzmann_distribution), Wikipedia.
2. F. Reif, *Fundamentals of Statistical and Thermal Physics*, McGraw-Hill, 1965, chapters 6-7.
3. F. W. Sears and G. L. Salinger, *Thermodynamics, Kinetic Theory, and Statistical Thermodynamics*, 3rd ed., Addison-Wesley, 1975, chapters 9-10.

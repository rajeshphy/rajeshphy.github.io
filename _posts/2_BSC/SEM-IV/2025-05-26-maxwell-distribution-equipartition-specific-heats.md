---
title: "Maxwell Distribution, Equipartition, and Specific Heats"
summary: "Equilibrium molecular speeds, active degrees of freedom, equipartition, and ideal-gas heat capacities."
date: 2025-05-26 08:00:00 +0530
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

![Normalized Maxwell speed distributions at three temperatures]({{ '/assets/images/bsc/sem-iv/mj-6/maxwell-speed-distribution.png' | relative_url }})

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

The linked [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-6/unit-i-checks.mac' | relative_url }}) verifies the nontrivial real-gas identities used in the next lecture.

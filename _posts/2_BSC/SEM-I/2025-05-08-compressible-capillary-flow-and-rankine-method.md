---
title: "Compressible Capillary Flow and Rankine's Method"
date: 2025-05-08 08:00:00 +0530
categories:
  - bsc-i
tags: [compressible-flow, gas-viscosity, rankine-method]
permalink: /bsc/sem-i/compressible-capillary-flow-rankine-method/
---

For an incompressible liquid, the volume rate is the same at every cross-section. A gas expands as its pressure falls, so its local volume rate changes even though the mass rate remains constant.

## Isothermal flow of a gas through a capillary

Consider steady, laminar flow through a capillary of radius $a$ and length $l$. Let the absolute pressures at the inlet and outlet be $p_1$ and $p_2$, with $p_1>p_2$. At position $x$, write the pressure as $p(x)$ and the local volume rate as $Q(x)$.

Mass conservation requires

$$
\dot m=\rho Q=\text{constant}.
$$

For an ideal gas flowing isothermally, $\rho/p$ is constant. Consequently,

$$
pQ=C,
$$

where $C$ is constant along the tube.

Apply the local Poiseuille relation to an element $dx$:

$$
Q=-\frac{\pi a^4}{8\eta}\frac{dp}{dx}.
$$

Substituting $Q=C/p$ gives

$$
\frac{C}{p}=-\frac{\pi a^4}{8\eta}\frac{dp}{dx},
$$

or

$$
C\,dx=-\frac{\pi a^4}{8\eta}p\,dp.
$$

Integrating from $(0,p_1)$ to $(l,p_2)$,

$$
\begin{aligned}
Cl
&=-\frac{\pi a^4}{8\eta}\int_{p_1}^{p_2}p\,dp\\
&=\frac{\pi a^4}{16\eta}(p_1^2-p_2^2).
\end{aligned}
$$

Therefore

$$
\boxed{
C=pQ
=\frac{\pi a^4(p_1^2-p_2^2)}{16\eta l}
}.
$$

If $Q_2$ is measured at the outlet pressure $p_2$, then $C=p_2Q_2$ and

$$
\boxed{
Q_2=\frac{\pi a^4(p_1^2-p_2^2)}{16\eta lp_2}
},
\qquad
\boxed{
\eta=\frac{\pi a^4(p_1^2-p_2^2)}{16lp_2Q_2}
}.
$$

Both $p_1$ and $p_2$ must be absolute pressures. A manometer reading supplies only their difference, so atmospheric pressure must be included before using this equation.

Let

$$
p_m=\frac{p_1+p_2}{2},
\qquad
\Delta p=p_1-p_2.
$$

The volume rate referred to the mean pressure is $Q_m=C/p_m$. Since $p_1^2-p_2^2=2p_m\Delta p$,

$$
\boxed{Q_m=\frac{\pi a^4\Delta p}{8\eta l}}.
$$

Thus the familiar incompressible form is recovered when the gas rate is stated at the mean pressure. If the outlet rate $Q_2$ is used and $\Delta p\ll p_2$, then

$$
Q_2=\frac{\pi a^4\Delta p}{8\eta l}
\left(1+\frac{\Delta p}{2p_2}\right)
\simeq\frac{\pi a^4\Delta p}{8\eta l}.
$$

## Rankine's gas viscometer

Rankine's apparatus is a closed glass loop. One limb is a fine capillary and the other is a wider, nearly uniform fall tube. A mercury pellet seals the wide limb and acts as a moving piston.

![Rankine gas viscometer with a capillary limb, mercury pellet and timing marks]({{ '/assets/images/bsc/sem-i/unit-1/rankine-viscometer.png' | relative_url }})

Let the capillary have radius $a$ and length $l$, the fall tube have cross-sectional area $A$, and the pellet have mass $m$. When the instrument is vertical, the pellet descends and forces gas from its lower side through the capillary to its upper side. Neglecting pellet-wall resistance and the weight of the gas, force balance on the pellet gives the nearly constant pressure difference

$$
mg=A\Delta p_R,
\qquad
\boxed{\Delta p_R=p_H-p_L=\frac{mg}{A}}.
$$

The closed-loop gas is compressible, so the swept volume divided by time is **not**, in general, the gas volume rate at one fixed pressure. Let $V$ be the total gas volume, neglecting the small capillary volume, and let $P$ be the uniform pressure when the apparatus is horizontal. At an instant during the fall, let $V_L$ be the volume above the pellet and $V_H=V-V_L$ the volume below it. Isothermal conservation of the enclosed gas gives

$$
p_LV_L+p_HV_H=PV,
\qquad p_H-p_L=\Delta p_R.
$$

Solving these equations,

$$
p_L=P-\Delta p_R+\frac{\Delta p_R}{V}V_L,
\qquad
p_H=P+\frac{\Delta p_R}{V}V_L.
$$

Thus both chamber pressures change as the pellet moves, although their difference stays constant. The pressure-volume throughput through the capillary is

$$
\mathcal C=p_LQ_L=p_HQ_H
=\frac{\pi a^4(p_H^2-p_L^2)}{16\eta l}.
$$

Meanwhile, the pressure-volume content above the pellet increases at the rate

$$
\mathcal C=\frac{d(p_LV_L)}{dt}
=\left(P-\Delta p_R+\frac{2\Delta p_RV_L}{V}\right)
\frac{dV_L}{dt}.
$$

Using $p_H^2-p_L^2=\Delta p_R(p_H+p_L)$ therefore gives

$$
dt=\frac{16\eta l}{\pi a^4\Delta p_R}
\frac{P-\Delta p_R+2\Delta p_RV_L/V}
{2P-\Delta p_R+2\Delta p_RV_L/V}\,dV_L.
$$

If the timed fall changes $V_L$ from $V_a$ to $V_b$, define

$$
\mathcal I=(V_b-V_a)
-\frac{PV}{2\Delta p_R}
\ln\!\left[
\frac{2P-\Delta p_R+2\Delta p_RV_b/V}
{2P-\Delta p_R+2\Delta p_RV_a/V}
\right].
$$

The exact ideal-gas result is then

$$
\boxed{
\eta=\frac{\pi a^4\Delta p_R\,t}{16l\mathcal I}
}.
$$

For $\Delta p_R\ll P$, $\mathcal I\simeq(V_b-V_a)/2$. If the calibrated swept volume is $\Omega=V_b-V_a=As$, this reduces to the commonly quoted approximation

$$
\boxed{
\eta\simeq\frac{\pi a^4mgt}{8lA\Omega}
\qquad(\Delta p_R\ll P)
}.
$$

In practice, mercury surface tension and contact with the fall tube alter the effective driving pressure. The same instrument is therefore often calibrated with a reference gas of known viscosity $\eta_0$. With the same pellet, geometry, marks, equilibrium pressure and temperature, all factors except $\eta$ and $t$ are unchanged, so

$$
\boxed{\frac{\eta}{\eta_0}=\frac{t}{t_0}}.
$$

The instrument is inverted to return the pellet above the first mark and repeat the timing. The editable apparatus diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/rankine-viscometer.tex' | relative_url }}).

The capillary-pressure integration, exact Rankine integral and small-$\Delta p_R/P$ limit are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/compressible-flow.mac' | relative_url }}); every displayed residual is zero.

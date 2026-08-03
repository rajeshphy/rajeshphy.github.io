---
title: "Compressible Capillary Flow and Rankine's Method"
date: 2025-05-08 09:00:00 +0530
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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable Rankine-viscometer diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-1/rankine-viscometer.png' | relative_url }}" alt="Rankine gas viscometer with a capillary limb, mercury pellet and timing marks" loading="lazy">
</div>

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

## Mass rate and limits of the capillary model

For an ideal gas,

$$
\rho=\frac{p}{R_sT},
$$

where $R_s$ is the specific gas constant. Since $C=pQ$, the invariant mass rate is

$$
\boxed{
\dot m=\rho Q=\frac{C}{R_sT}
=\frac{\pi a^4(p_1^2-p_2^2)}{16\eta lR_sT}
}.
$$

This expression makes the distinction between a conserved mass rate and a pressure-dependent volume rate explicit. The model assumes steady continuum flow, a constant viscosity, an ideal gas at uniform temperature, no slip, and a long tube with fully developed laminar motion. At very low pressures, molecular slip invalidates the no-slip assumption; large pressure drops can also introduce appreciable temperature change, density-dependent viscosity and entrance corrections.

## Solved Problems

### 1. Outlet rate, inlet rate and mass rate of air

Air at $T=300\ \mathrm{K}$ flows isothermally through a capillary with $a=0.150\ \mathrm{mm}$, $l=0.500\ \mathrm{m}$ and $\eta=1.80\times10^{-5}\ \mathrm{Pa\,s}$. The absolute pressures are $p_1=150\ \mathrm{kPa}$ and $p_2=100\ \mathrm{kPa}$. Take $R_s=287\ \mathrm{J\,kg^{-1}K^{-1}}$. Find $C$, the inlet and outlet volume rates, and the mass rate.

The pressure-volume throughput is

$$
\begin{aligned}
C
&=\frac{\pi(0.150\times10^{-3})^4
[(150\times10^3)^2-(100\times10^3)^2]}
{16(1.80\times10^{-5})(0.500)}\\
&=0.1381\ \mathrm{Pa\,m^3\,s^{-1}}.
\end{aligned}
$$

Therefore

$$
Q_1=\frac{C}{p_1}
=9.204\times10^{-7}\ \mathrm{m^3\,s^{-1}},
$$

$$
Q_2=\frac{C}{p_2}
=1.381\times10^{-6}\ \mathrm{m^3\,s^{-1}}.
$$

The conserved mass rate is

$$
\dot m=\frac{C}{R_sT}
=\frac{0.1381}{(287)(300)}
=1.603\times10^{-6}\ \mathrm{kg\,s^{-1}}.
$$

Thus

$$
\boxed{
Q_1=9.204\times10^{-7}\ \mathrm{m^3\,s^{-1}},\quad
Q_2=1.381\times10^{-6}\ \mathrm{m^3\,s^{-1}},\quad
\dot m=1.603\times10^{-6}\ \mathrm{kg\,s^{-1}}}.
$$

The outlet volume rate is larger because the gas is less dense there. The checks $p_1Q_1=p_2Q_2=C$ and $Q_2/Q_1=p_1/p_2=1.50$ confirm both sign and pressure referencing.

### 2. Exact Rankine reduction and its small-pressure approximation

In a Rankine viscometer, let $P=100\ \mathrm{kPa}$, $\Delta p_R=10.0\ \mathrm{kPa}$ and $V=100\ \mathrm{cm^3}$. During a $50.0\ \mathrm{s}$ timing, $V_L$ changes from $V_a=20.0\ \mathrm{cm^3}$ to $V_b=60.0\ \mathrm{cm^3}$. The capillary has $a=0.200\ \mathrm{mm}$ and $l=0.400\ \mathrm{m}$. Find $\eta$ from the exact ideal-gas expression and compare it with the small-$\Delta p_R/P$ result.

Using SI volumes in the exact integral,

$$
\begin{aligned}
\mathcal I
&=(V_b-V_a)-\frac{PV}{2\Delta p_R}
\ln\!\left[
\frac{2P-\Delta p_R+2\Delta p_RV_b/V}
{2P-\Delta p_R+2\Delta p_RV_a/V}
\right]\\
&=1.9795\times10^{-5}\ \mathrm{m^3}.
\end{aligned}
$$

Consequently,

$$
\begin{aligned}
\eta
&=\frac{\pi a^4\Delta p_Rt}{16l\mathcal I}\\
&=1.9838\times10^{-5}\ \mathrm{Pa\,s}.
\end{aligned}
$$

The approximation $\mathcal I\simeq(V_b-V_a)/2$ instead gives

$$
\eta_{\rm small}
=\frac{\pi a^4\Delta p_Rt}{8l(V_b-V_a)}
=1.9635\times10^{-5}\ \mathrm{Pa\,s}.
$$

Thus

$$
\boxed{\eta=1.9838\times10^{-5}\ \mathrm{Pa\,s}},
$$

while the approximation is $1.02\%$ low. Here $\Delta p_R/P=0.100$, so a detectable correction is reasonable. The chamber pressures remain positive throughout the timed interval, as required for the ideal-gas calculation.

## Descriptive Questions

1. Derive the isothermal capillary-flow relation $pQ=\pi a^4(p_1^2-p_2^2)/(16\eta l)$ from mass conservation and the local Poiseuille law.
2. Explain why both end pressures must be absolute and why the reported volume rate must include its reference pressure.
3. Describe the construction and operation of Rankine's gas viscometer, including the function of the mercury pellet.
4. Derive the exact Rankine timing integral and identify the assumptions required for the time-ratio calibration method.

## Numerical Problems

1. A gas with $\eta=1.80\times10^{-5}\ \mathrm{Pa\,s}$ leaves a capillary of radius $0.100\ \mathrm{mm}$ and length $0.400\ \mathrm{m}$ at $p_2=100\ \mathrm{kPa}$ with $Q_2=1.200\times10^{-7}\ \mathrm{m^3\,s^{-1}}$. Find $p_1$.

   **Final answer:** $p_1=120.0\ \mathrm{kPa}$ absolute.

2. A capillary has $a=0.120\ \mathrm{mm}$ and $l=0.500\ \mathrm{m}$. Between $p_1=130\ \mathrm{kPa}$ and $p_2=100\ \mathrm{kPa}$, it delivers $80.0\ \mathrm{cm^3}$ at the outlet in $120\ \mathrm{s}$. Find the gas viscosity.

   **Final answer:** $\eta=8.43\times10^{-6}\ \mathrm{Pa\,s}$.

3. The absolute end pressures are $160\ \mathrm{kPa}$ and $80.0\ \mathrm{kPa}$. Find the ratio of inlet to outlet volume rates.

   **Final answer:** $Q_1/Q_2=p_2/p_1=0.500$.

4. A closed Rankine viscometer contains a total gas volume $V=120\ \mathrm{cm^3}$ at equilibrium pressure $P=100\ \mathrm{kPa}$. When upright, the mercury pellet maintains $\Delta p_R=8.00\ \mathrm{kPa}$ and the low-pressure chamber has volume $V_L=45.0\ \mathrm{cm^3}$. Find the two chamber pressures.

   **Final answer:** $p_L=95.0\ \mathrm{kPa}$ and $p_H=103.0\ \mathrm{kPa}$, both absolute.

5. A reference gas of viscosity $1.80\times10^{-5}\ \mathrm{Pa\,s}$ takes $40.0\ \mathrm{s}$ between the marks of a Rankine viscometer. An unknown gas takes $55.0\ \mathrm{s}$ under identical conditions. Find its viscosity.

   **Final answer:** $\eta=2.475\times10^{-5}\ \mathrm{Pa\,s}$.

6. For $p_2=100\ \mathrm{kPa}$ and $p_1-p_2=20.0\ \mathrm{kPa}$, by what percentage does the exact outlet rate exceed the incompressible-rate estimate?

   **Final answer:** $10.0\%$ of the incompressible estimate.

The pressure integration, exact timing integral, limiting form and all numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/compressible-flow.mac' | relative_url }}).

## References

1. [Alexander Rankine -- Wikipedia](https://en.wikipedia.org/wiki/Alexander_Rankine).
2. [R. F. Berg, "Simple flow meter and viscometer of high accuracy for gases" -- NIST](https://www.nist.gov/publications/simple-flow-meter-and-viscometer-high-accuracy-gases).
3. [NIST, Gas Properties for Flow Metering](https://www.nist.gov/programs-projects/gas-properties-flow-metering).

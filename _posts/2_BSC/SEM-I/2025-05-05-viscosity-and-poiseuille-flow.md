---
title: "Viscosity and Poiseuille Flow"
date: 2025-05-05 09:00:00 +0530
categories:
  - bsc-i
tags: [viscosity, poiseuille-flow, capillary-flow]
permalink: /bsc/sem-i/viscosity-and-poiseuille-flow/
---

A viscous fluid resists relative motion between neighbouring layers. For a Newtonian fluid moving in the $z$ direction with speed $v_z(x)$, the tangential stress is proportional to the velocity gradient:

$$
\tau_{xz}=\eta\frac{dv_z}{dx},
$$

where $\eta$ is the dynamic viscosity. Since $[\tau]=ML^{-1}T^{-2}$ and $[dv_z/dx]=T^{-1}$,

$$
[\eta]=ML^{-1}T^{-1}.
$$

## Flow through a circular capillary

Consider steady, incompressible, laminar flow through a horizontal capillary of radius $a$ and length $l$. The no-slip condition applies at the wall. Let $\Delta p_v>0$ denote the pressure loss used only to overcome viscous resistance within the fully developed part of the capillary.

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable Poiseuille-flow diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-1/poiseuille-profile.png' | relative_url }}" alt="Poiseuille velocity profile and the pressure balance used for the kinetic-energy correction" loading="lazy">
</div>

Take a coaxial fluid cylinder of radius $r$. The pressure force driving it is

$$
F_p=\Delta p_v\,\pi r^2.
$$

The speed decreases outwards, so $dv/dr<0$. The opposing viscous force on the curved surface is

$$
F_\eta=-\eta\frac{dv}{dr}(2\pi r l).
$$

Steady force balance, $F_p=F_\eta$, gives

$$
\Delta p_v\,\pi r^2
=-2\pi r l\eta\frac{dv}{dr},
$$

and hence

$$
\frac{dv}{dr}=-\frac{\Delta p_v}{2\eta l}r.
$$

Integrate from the wall, where $v(a)=0$, to a point at radius $r$:

$$
\begin{aligned}
v(r)-v(a)
&=-\frac{\Delta p_v}{2\eta l}\int_a^r r^{\prime}\,dr^{\prime}\\
&=\frac{\Delta p_v}{4\eta l}(a^2-r^2).
\end{aligned}
$$

Thus the velocity profile is parabolic:

$$
\boxed{v(r)=\frac{\Delta p_v}{4\eta l}(a^2-r^2)}.
$$

The volume rate through an annulus of area $2\pi r\,dr$ is $dQ=v(r)2\pi r\,dr$. Therefore

$$
\begin{aligned}
Q
&=\int_0^a\frac{\Delta p_v}{4\eta l}(a^2-r^2)2\pi r\,dr\\
&=\frac{\pi\Delta p_v}{2\eta l}
\left[\frac{a^2r^2}{2}-\frac{r^4}{4}\right]_0^a.
\end{aligned}
$$

Hence Poiseuille's equation is

$$
\boxed{Q=\frac{\pi a^4\Delta p_v}{8\eta l}}.
$$

The mean speed is

$$
\bar v=\frac{Q}{\pi a^2}
=\frac{\Delta p_v a^2}{8\eta l}
=\frac{v(0)}{2}.
$$

The editable source of the diagram is available as a [TikZ file]({{ '/assets/tikz/bsc/sem-i/unit-1/poiseuille-profile.tex' | relative_url }}).

## Kinetic-energy correction

In an efflux experiment, the measured pressure difference $P$ is taken from a large reservoir, where the speed is negligible, to the capillary outlet. It is not identical to $\Delta p_v$: besides overcoming viscous resistance, it establishes the kinetic energy of the emerging stream.

For the parabolic profile, the kinetic-energy flux at the outlet is

$$
\begin{aligned}
\dot E_k
&=\int_A\frac12\rho v^3\,dA\\
&=\frac12\rho\int_0^a v^3(2\pi r\,dr)
=\rho Q\bar v^2.
\end{aligned}
$$

The viscous power loss is $\Delta p_v Q$. The reservoir-to-outlet work balance is therefore

$$
PQ=\Delta p_v Q+\dot E_k
=\frac{8\eta lQ^2}{\pi a^4}+\rho Q\bar v^2.
$$

Using $\bar v=Q/(\pi a^2)$ and dividing by $Q$ gives the corrected relation

$$
\boxed{
P=\frac{8\eta lQ}{\pi a^4}
+\frac{\rho Q^2}{\pi^2a^4}
}.
$$

If a volume $V$ is collected in time $t$, then $Q=V/t$ and

$$
\boxed{
\eta=\frac{\pi a^4Pt}{8lV}
-\frac{\rho V}{8\pi lt}
}.
$$

For a liquid head $h$, $P=\rho gh$. The second term is the ideal kinetic-energy or Hagenbach correction for the reservoir-to-efflux arrangement just described. It assumes a fully developed parabolic outlet profile and neglects additional entrance and exit losses. If both pressure tappings lie in fully developed sections of the same uniform capillary, the inlet and outlet kinetic-energy fluxes are equal and cancel.

## Hydraulic resistance, shear and range of validity

Poiseuille's equation may be written in the resistance form

$$
\boxed{\Delta p_v=R_hQ},
\qquad
\boxed{R_h=\frac{8\eta l}{\pi a^4}}.
$$

The fourth power of the radius makes bore measurement the most sensitive geometrical part of a capillary experiment. The shear stress follows directly from the force balance at any radius:

$$
\tau(r)=-\eta\frac{dv}{dr}
=\frac{\Delta p_v}{2l}r,
$$

so it vanishes on the axis and has magnitude

$$
\boxed{\tau_w=\frac{\Delta p_v a}{2l}}
$$

at the wall. The relevant Reynolds number, based on the diameter $2a$ and mean speed, is

$$
\boxed{\operatorname{Re}=\frac{2\rho a\bar v}{\eta}}.
$$

The derivation requires a Newtonian, incompressible fluid; steady, axisymmetric, fully developed flow; a straight circular tube; no slip at the wall; and laminar motion. In a smooth tube, $\operatorname{Re}\lesssim2000$ is a practical laminar-flow criterion, but a sufficiently long entrance region is also needed before the parabolic profile is established.

## Solved Problems

### 1. Flow rate, profile speeds, wall shear and Reynolds number

Water of viscosity $\eta=1.00\times10^{-3}\ \mathrm{Pa\,s}$ and density $\rho=1000\ \mathrm{kg\,m^{-3}}$ flows through a capillary of radius $a=0.500\ \mathrm{mm}$ and length $l=0.200\ \mathrm{m}$ under a viscous pressure drop of $800\ \mathrm{Pa}$. Find $Q$, $\bar v$, the centre-line speed, $\tau_w$ and $\operatorname{Re}$.

Poiseuille's equation gives

$$
\begin{aligned}
Q
&=\frac{\pi(0.500\times10^{-3})^4(800)}
{8(1.00\times10^{-3})(0.200)}\\
&=9.817\times10^{-8}\ \mathrm{m^3\,s^{-1}}.
\end{aligned}
$$

The mean and axial speeds are

$$
\bar v=\frac{Q}{\pi a^2}=0.125\ \mathrm{m\,s^{-1}},
\qquad
v(0)=2\bar v=0.250\ \mathrm{m\,s^{-1}}.
$$

At the wall,

$$
\tau_w=\frac{(800)(0.500\times10^{-3})}{2(0.200)}
=1.00\ \mathrm{Pa}.
$$

Finally,

$$
\operatorname{Re}
=\frac{2(1000)(0.500\times10^{-3})(0.125)}{1.00\times10^{-3}}
=125.
$$

Thus

$$
\boxed{
Q=9.817\times10^{-8}\ \mathrm{m^3\,s^{-1}},\quad
\bar v=0.125\ \mathrm{m\,s^{-1}},\quad
v(0)=0.250\ \mathrm{m\,s^{-1}},\quad
\tau_w=1.00\ \mathrm{Pa},\quad
\operatorname{Re}=125}.
$$

The small Reynolds number is consistent with the assumed laminar regime; $v(0)/\bar v=2$ checks the parabolic profile.

### 2. Viscosity with the kinetic-energy correction

A capillary efflux experiment uses $a=0.400\ \mathrm{mm}$, $l=0.500\ \mathrm{m}$ and a reservoir-to-outlet pressure difference $P=20.0\ \mathrm{kPa}$. A liquid of density $1000\ \mathrm{kg\,m^{-3}}$ delivers $V=20.0\ \mathrm{cm^3}$ in $t=60.0\ \mathrm{s}$. Determine the corrected viscosity and the error made by omitting the kinetic term.

First convert $V=20.0\times10^{-6}\ \mathrm{m^3}$. The uncorrected value is

$$
\eta_{\rm app}
=\frac{\pi a^4Pt}{8lV}
=1.2064\times10^{-3}\ \mathrm{Pa\,s}.
$$

The correction is

$$
\frac{\rho V}{8\pi lt}
=2.6526\times10^{-5}\ \mathrm{Pa\,s}.
$$

Therefore

$$
\boxed{
\eta=1.2064\times10^{-3}-2.6526\times10^{-5}
=1.1798\times10^{-3}\ \mathrm{Pa\,s}}.
$$

Ignoring the kinetic term would overestimate the corrected value by

$$
\frac{\eta_{\rm app}-\eta}{\eta}\times100\%=2.25\%.
$$

The correction is subtracted because part of $P$ supplies outlet kinetic energy rather than viscous dissipation. The two terms both have units $\mathrm{Pa\,s}$, which checks the substitution.

## Descriptive Questions

1. Derive the parabolic velocity profile for steady flow through a circular capillary, stating every physical assumption used.
2. Explain why the volume rate varies as the fourth power of capillary radius and discuss the experimental consequence.
3. Derive the kinetic-energy flux for a Poiseuille profile and explain why it differs from $\tfrac12\rho Q\bar v^2$.
4. State the roles of Reynolds number, the no-slip condition and entrance length in deciding whether Poiseuille's equation is applicable.

## Numerical Problems

1. In fully developed Poiseuille flow, what percentage of the total volume rate passes through the central core $0\leq r\leq a/2$?

   **Final answer:** $Q_{r\leq a/2}/Q=7/16=43.75\%$.

2. What axial pressure gradient is required to maintain $\bar v=0.200\ \mathrm{m\,s^{-1}}$ in a tube of radius $0.600\ \mathrm{mm}$ when $\eta=0.0800\ \mathrm{Pa\,s}$?

   **Final answer:** $\Delta p_v/l=3.56\times10^5\ \mathrm{Pa\,m^{-1}}$.

3. A capillary's radius increases from $0.250\ \mathrm{mm}$ to $0.300\ \mathrm{mm}$ while all other quantities remain fixed. Find $Q_{\rm new}/Q_{\rm old}$.

   **Final answer:** $Q_{\rm new}/Q_{\rm old}=2.0736$.

4. A capillary has $a=0.500\ \mathrm{mm}$, $l=0.300\ \mathrm{m}$ and carries a liquid of viscosity $0.0200\ \mathrm{Pa\,s}$ under $6.00\ \mathrm{kPa}$. How long is required to collect $50.0\ \mathrm{cm^3}$?

   **Final answer:** $t=2.04\times10^3\ \mathrm{s}=33.95\ \mathrm{min}$.

5. In a capillary of radius $0.400\ \mathrm{mm}$ and length $0.250\ \mathrm{m}$, the viscous pressure loss is $1.20\ \mathrm{kPa}$. Find the shear-stress magnitude at $r=a/2$.

   **Final answer:** $\tau(a/2)=0.480\ \mathrm{Pa}$.

6. A stream of density $900\ \mathrm{kg\,m^{-3}}$ emerges at $Q=25.0\ \mathrm{mm^3\,s^{-1}}$ from a capillary of radius $0.300\ \mathrm{mm}$. If $P=5.00\ \mathrm{kPa}$, what fraction of $P$ is the ideal profile kinetic term $\rho\bar v^2$?

   **Final answer:** $\rho\bar v^2/P=1.41\times10^{-3}=0.141\%$.

The integrations, correction and all numerical answers are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/poiseuille-flow.mac' | relative_url }}).

## References

1. [Hagen--Poiseuille equation -- Wikipedia](https://en.wikipedia.org/wiki/Hagen%E2%80%93Poiseuille_equation).
2. [OpenStax, *University Physics Volume 1*, Section 14.7: Viscosity and Turbulence](https://openstax.org/books/university-physics-volume-1/pages/14-7-viscosity-and-turbulence).
3. [MIT OpenCourseWare, 2.25 *Advanced Fluid Mechanics*: Couette & Poiseuille Flows](https://ocw.mit.edu/courses/2-25-advanced-fluid-mechanics-fall-2013/resources/mit2_25f13_couet_and_pois/).

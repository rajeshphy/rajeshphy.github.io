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

![Poiseuille velocity profile and the pressure balance used for the kinetic-energy correction]({{ '/assets/images/bsc/sem-i/unit-1/poiseuille-profile.png' | relative_url }})

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
&=-\frac{\Delta p_v}{2\eta l}\int_a^r r'\,dr'\\
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

The profile integration, energy flux and corrected pressure relation are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-1/poiseuille-flow.mac' | relative_url }}); every displayed residual is zero.

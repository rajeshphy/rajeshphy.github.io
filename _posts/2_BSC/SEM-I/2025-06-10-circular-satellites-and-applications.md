---
title: "Circular Satellites and Applications"
summary: "Orbital speed, period, energy, altitude, geostationary condition, and weightlessness for circular satellites."
date: 2025-06-10 09:00:00 +0530
categories:
  - bsc-i
tags: [mechanics, satellite, circular-orbit]
permalink: /bsc/sem-i/circular-satellites-applications/
---

Consider a satellite of mass $m$ in a circular orbit outside a spherical Earth of mass $M$ and radius $R$. If its altitude is $h$, the distance from the Earth's centre is

$$
r=R+h.
$$

Neglecting atmospheric drag and other perturbations, gravity is the only force. Both the gravitational force and the centripetal acceleration point inward, so their magnitudes obey

$$
\frac{GMm}{r^2}=m\frac{v^2}{r}.
$$

Cancelling $m/r$ gives the orbital speed

$$
\boxed{v=\sqrt{\frac{GM}{r}}}.
$$

Thus the speed is independent of satellite mass. Since $v=r\omega$,

$$
\omega=\frac vr=\sqrt{\frac{GM}{r^3}}.
$$

Using $T=2\pi/\omega$,

$$
\boxed{T=2\pi\sqrt{\frac{r^3}{GM}}},
\qquad
\boxed{T^2=\frac{4\pi^2}{GM}r^3}.
$$

This is Kepler's third law for a circular orbit.

![Circular satellite orbit with the inward gravitational force and tangential velocity]({{ '/assets/images/bsc/sem-i/unit-2/circular-satellite.png' | relative_url }})

## Energy of a circular satellite

From $v^2=GM/r$, the kinetic energy is

$$
K=\frac12mv^2=\frac{GMm}{2r}.
$$

Taking gravitational potential energy to be zero at infinity,

$$
U=-\frac{GMm}{r}.
$$

Therefore

$$
\boxed{E=K+U=-\frac{GMm}{2r}}.
$$

The negative total energy shows that the circular orbit is bound.

## Period, radius, and altitude

Solving the period equation for the orbit radius gives

$$
T^2=\frac{4\pi^2r^3}{GM}
\quad\Longrightarrow\quad
\boxed{r=\left(\frac{GMT^2}{4\pi^2}\right)^{1/3}}.
$$

Hence the required altitude is

$$
\boxed{h=\left(\frac{GMT^2}{4\pi^2}\right)^{1/3}-R}.
$$

## Applications

A **geostationary satellite** must

1. have the Earth's sidereal rotation period $T_{\rm E}$,
2. move in a circular orbit in the equatorial plane, and
3. revolve in the same sense as the Earth's rotation.

Its angular speed then equals $\Omega_{\rm E}=2\pi/T_{\rm E}$, so

$$
\boxed{r_{\rm geo}=\left(\frac{GM}{\Omega_{\rm E}^2}\right)^{1/3}},
\qquad
\boxed{h_{\rm geo}=r_{\rm geo}-R}.
$$

It remains above the same longitude and is therefore useful for continuous communication and weather observation over a fixed region.

A **polar satellite** has an orbital plane passing nearly through the Earth's poles. As the Earth rotates beneath that plane, successive passes cover different surface strips; this is useful for mapping and remote sensing. Circular-orbit speed and period relations also determine the operating orbits of navigation satellites.

An astronaut in an orbiting spacecraft appears weightless because astronaut and spacecraft have the same inward acceleration $GM/r^2$. They are in continuous free fall together, so the cabin supplies essentially no normal reaction. Gravity is not zero at the orbit.

The speed, angular speed, period, energy, and radius identities are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/circular-satellites.mac' | relative_url }}); every printed residual is zero.

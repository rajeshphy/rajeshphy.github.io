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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable satellite-orbit diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/circular-satellite.png' | relative_url }}" alt="Circular satellite orbit with the inward gravitational force and tangential velocity" loading="lazy">
</div>

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

## Solved Problems

In the following problems use Earth's gravitational parameter

$$
\mu=GM=3.986004418\times10^{14}\ \mathrm{m^3\,s^{-2}}
$$

and mean radius $R=6.371\times10^6\ \mathrm{m}$.

### 1. A low-Earth circular orbit

**Problem.** Find the speed, period, and specific orbital energy of a satellite at altitude $400\ \mathrm{km}$.

**Solution.** The distance from Earth's centre is

$$
r=R+h=6.371\times10^6+0.400\times10^6
=6.771\times10^6\ \mathrm{m}.
$$

The circular speed is

$$
v=\sqrt{\frac{\mu}{r}}
=\sqrt{\frac{3.986004418\times10^{14}}{6.771\times10^6}}
=7.673\times10^3\ \mathrm{m\,s^{-1}}.
$$

The period is

$$
T=2\pi\sqrt{\frac{r^3}{\mu}}
=5.545\times10^3\ \mathrm{s}
=92.4\ \mathrm{min}.
$$

The total energy per unit satellite mass is

$$
\varepsilon=\frac{E}{m}=-\frac{\mu}{2r}
=-2.943\times10^7\ \mathrm{J\,kg^{-1}}.
$$

**Checks.** $\mu/r$ has units $\mathrm{m^2\,s^{-2}}$, $r^3/\mu$ has units $\mathrm{s^2}$, and $\varepsilon$ has units $\mathrm{J\,kg^{-1}}$. The negative energy correctly identifies a bound orbit. The speed is tangential while gravity is inward, so their directions are perpendicular. As $r\to\infty$, both $v$ and $\varepsilon$ tend to zero.

### 2. The geostationary radius

**Problem.** Using the sidereal day $T_{\rm E}=86164\ \mathrm{s}$, find the geostationary radius, altitude, and speed.

**Solution.** Kepler's circular period relation gives

$$
r_{\rm geo}
=\left(\frac{\mu T_{\rm E}^2}{4\pi^2}\right)^{1/3}
=4.2164\times10^7\ \mathrm{m}.
$$

Thus

$$
h_{\rm geo}=r_{\rm geo}-R
=3.5793\times10^7\ \mathrm{m}
=35793\ \mathrm{km}.
$$

The orbital speed is

$$
v_{\rm geo}=\sqrt{\frac{\mu}{r_{\rm geo}}}
=3.075\times10^3\ \mathrm{m\,s^{-1}}.
$$

**Checks.** The cube-root argument has units $\mathrm{m^3}$, and subtracting $R$ from $r_{\rm geo}$ leaves a positive altitude. Substitution into $2\pi r/v$ returns $86164\ \mathrm{s}$. The numerical radius alone is not sufficient for geostationarity: the orbit must also be circular, equatorial, and prograde. In the limit of a longer rotation period, $r_{\rm geo}\propto T_{\rm E}^{2/3}$ increases.

## Descriptive Questions

1. Derive the speed, angular speed, and period of a circular satellite directly from Newton's law of gravitation.
2. Derive the kinetic, potential, and total energies of a circular satellite and explain the sign of the total energy.
3. State and justify every condition required for a satellite to be geostationary.
4. Explain the coverage advantage of a polar satellite and why an astronaut in orbit is weightless even though gravity is not zero.

## Numerical Problems

Use the same values of $\mu$ and $R$ as above.

1. A circular satellite moves at $7.50\ \mathrm{km\,s^{-1}}$. Find its orbital radius and altitude.

   **Final answer:** $r=7.086\times10^6\ \mathrm{m}$ and $h=7.152\times10^5\ \mathrm{m}\simeq715\ \mathrm{km}$.

2. Find the specific angular momentum $h_s=rv$ of a circular orbit of radius $9.00\times10^6\ \mathrm{m}$.

   **Final answer:** $h_s=\sqrt{\mu r}=5.989\times10^{10}\ \mathrm{m^2\,s^{-1}}$.

3. Circular satellite B orbits at radius $1.80\times10^7\ \mathrm{m}$, while satellite A orbits at radius $8.00\times10^6\ \mathrm{m}$. Find $T_B/T_A$ and $v_B/v_A$ without first evaluating either period or speed.

   **Final answer:** $T_B/T_A=(r_B/r_A)^{3/2}=27/8=3.375$ and $v_B/v_A=(r_A/r_B)^{1/2}=2/3\simeq0.6667$; both ratios are dimensionless.

4. A $500\ \mathrm{kg}$ satellite is moved from one circular orbit of radius $7.00\times10^6\ \mathrm{m}$ to another of radius $1.40\times10^7\ \mathrm{m}$. Find the increase in orbital energy, ignoring transfer-path details.

   **Final answer:** $\Delta E=7.118\times10^9\ \mathrm{J}$.

5. At $r=8.00\times10^6\ \mathrm{m}$, find Earth's gravitational acceleration and the cabin's normal force on an $80\ \mathrm{kg}$ freely orbiting astronaut.

   **Final answer:** $g(r)=6.228\ \mathrm{m\,s^{-2}}$ inward, gravitational force $498.3\ \mathrm{N}$ inward, and normal force $0\ \mathrm{N}$.

6. During a $6000\ \mathrm{s}$ polar orbit, through what angle does Earth rotate beneath the approximately fixed orbital plane? Use a sidereal day of $86164\ \mathrm{s}$.

   **Final answer:** $360^\circ(6000/86164)=25.07^\circ$.

The orbital identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/circular-satellites.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Circular orbit — Wikipedia](https://en.wikipedia.org/wiki/Circular_orbit).
2. [OpenStax, *University Physics Volume 1*, Section 13.4: Satellite Orbits and Energy](https://openstax.org/books/university-physics-volume-1/pages/13-4-satellite-orbits-and-energy).
3. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 8.

---
title: "Kepler's Laws and Their Derivation"
summary: "Derivation of elliptical planetary orbits, equal areas, and the period law from inverse-square gravity."
date: 2025-06-06 09:00:00 +0530
categories:
  - bsc-i
tags: [mechanics, kepler-laws, gravitation]
permalink: /bsc/sem-i/keplers-laws-derivation/
---

For a planet of mass $m$ orbiting a much heavier Sun of mass $M$, Newtonian gravity is

$$
\mathbf F=-\frac{GMm}{r^2}\hat{\mathbf r}.
$$

Let

$$
h=\frac{L}{m}=r^2\dot\theta
$$

be the constant angular momentum per unit mass, and put $u=1/r$. A prime will denote differentiation with respect to $\theta$. Since $r=u^{-1}$ and $\dot\theta=hu^2$,

$$
\dot r=\frac{dr}{d\theta}\dot\theta
=\left(-\frac{u^{\prime}}{u^2}\right)(hu^2)
=-hu^{\prime}.
$$

Differentiating with respect to time,

$$
\ddot r=-h\frac{du^{\prime}}{dt}
=-hu^{\prime\prime}\dot\theta
=-h^2u^2u^{\prime\prime}.
$$

Also,

$$
r\dot\theta^2
=\frac1u(hu^2)^2
=h^2u^3.
$$

Substitution in the radial equation gives

$$
m(\ddot r-r\dot\theta^2)
=-mh^2u^2(u^{\prime\prime}+u)
=-GMmu^2.
$$

Cancelling the nonzero factor $-mu^2$ leaves Binet's equation for gravity:

$$
u^{\prime\prime}+u=\frac{GM}{h^2}.
$$

Its general solution is

$$
u=\frac{GM}{h^2}+C\cos(\theta-\theta_0).
$$

Choose the direction of closest approach as $\theta=0$ and write $C=eGM/h^2$, where $e\ge0$. Then

$$
\boxed{r(\theta)=\frac{p}{1+e\cos\theta}},
\qquad
\boxed{p=\frac{h^2}{GM}}.
$$

## First law: the orbit is an ellipse

For a bound planetary orbit, $0\le e<1$. With $x=r\cos\theta$ and $r^2=x^2+y^2$, the polar orbit equation gives

$$
r+ex=p,
\qquad
r=p-ex.
$$

Squaring the second equation,

$$
x^2+y^2=(p-ex)^2,
$$

and hence

$$
(1-e^2)x^2+2pex+y^2=p^2.
$$

Completing the square in $x$ gives

$$
(1-e^2)\left(x+\frac{pe}{1-e^2}\right)^2+y^2
=\frac{p^2}{1-e^2}.
$$

Define

$$
a=\frac{p}{1-e^2},
\qquad
b=\frac{p}{\sqrt{1-e^2}}=a\sqrt{1-e^2}.
$$

Then

$$
\boxed{\frac{(x+ae)^2}{a^2}+\frac{y^2}{b^2}=1}.
$$

This is an ellipse of semi-major axis $a$, semi-minor axis $b$, and focal distance $ae$. One focus is the origin, where the Sun lies. Therefore **Kepler's first law** states: each planet moves in an ellipse with the Sun at one focus.

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable Kepler-orbit diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/kepler-ellipse.png' | relative_url }}" alt="Elliptical Kepler orbit generated from the exact focus-centred polar equation" loading="lazy">
</div>

## Second law: equal areas in equal times

Gravity is central, so $L$ and $h=L/m$ are constant. The areal velocity is

$$
\boxed{\frac{dA}{dt}=\frac{L}{2m}=\frac h2=\text{constant}}.
$$

Thus the Sun-planet radius vector sweeps equal areas in equal times. This is **Kepler's second law**.

## Third law: the period relation

In one period $T$, the radius vector sweeps the whole area $\pi ab$ of the ellipse. Since $dA/dt=h/2$,

$$
\pi ab=\frac h2T,
$$

so

$$
T=\frac{2\pi ab}{h}.
$$

From $p=h^2/(GM)$ and $p=a(1-e^2)$,

$$
h^2=GMa(1-e^2).
$$

Using $b^2=a^2(1-e^2)$ and squaring the period,

$$
T^2=\frac{4\pi^2a^2b^2}{h^2}
=\frac{4\pi^2a^4(1-e^2)}{GMa(1-e^2)}.
$$

Therefore

$$
\boxed{T^2=\frac{4\pi^2}{GM}a^3},
\qquad
\boxed{T^2\propto a^3}.
$$

This is **Kepler's third law**: for bodies orbiting the same central mass, the square of the orbital period is proportional to the cube of the semi-major axis.

## Solved Problems

### 1. Reconstruct an elliptical orbit from $p$ and $e$

**Problem.** A planet has orbit equation $r=p/(1+e\cos\theta)$ with $p=1.20\times10^{11}\ \mathrm{m}$ and $e=0.250$. Find $a$, $b$, the perihelion distance $r_p$, and the aphelion distance $r_a$.

**Solution.** From $p=a(1-e^2)$,

$$
a=\frac{p}{1-e^2}
=\frac{1.20\times10^{11}}{1-0.250^2}
=1.28\times10^{11}\ \mathrm{m}.
$$

The semi-minor axis is

$$
b=a\sqrt{1-e^2}
=(1.28\times10^{11})\sqrt{0.9375}
=1.239\times10^{11}\ \mathrm{m}.
$$

Perihelion occurs at $\theta=0$ and aphelion at $\theta=\pi$:

$$
r_p=\frac{p}{1+e}
=9.60\times10^{10}\ \mathrm{m},
$$

$$
r_a=\frac{p}{1-e}
=1.60\times10^{11}\ \mathrm{m}.
$$

The independent ellipse identity

$$
\frac{r_p+r_a}{2}=1.28\times10^{11}\ \mathrm{m}=a
$$

confirms the semi-major axis.

**Checks.** $p$, $a$, $b$, $r_p$, and $r_a$ all have units of length. Both radii are positive because $0<e<1$, and $r_p<r_a$ as required physically. In the circular limit $e\to0$, all four lengths tend to $p$.

### 2. Determine the solar mass from Earth's orbit

**Problem.** Treat Earth's orbit as Keplerian with $a=1.496\times10^{11}\ \mathrm{m}$ and $T=365.25\ \mathrm{d}$. Using $G=6.67430\times10^{-11}\ \mathrm{m^3\,kg^{-1}\,s^{-2}}$, determine the central mass.

**Solution.** Convert the period to SI units:

$$
T=(365.25)(86400)
=3.15576\times10^7\ \mathrm{s}.
$$

Kepler's third law gives

$$
M=\frac{4\pi^2a^3}{GT^2}.
$$

Therefore

$$
M=
\frac{4\pi^2(1.496\times10^{11})^3}
{(6.67430\times10^{-11})(3.15576\times10^7)^2}
=1.989\times10^{30}\ \mathrm{kg}.
$$

**Checks.** The dimensions are $[a^3/(GT^2)]=\mathrm{kg}$. Every factor in the expression is positive, so the inferred mass is positive. The value agrees with the expected solar mass scale. At fixed $a$, a longer period would imply a smaller central mass, consistently with $M\propto T^{-2}$.

## Descriptive Questions

1. Derive Binet's equation for inverse-square gravity from the polar radial equation and the conservation of specific angular momentum.
2. Starting with $r=p/(1+e\cos\theta)$, reduce the bound orbit to the Cartesian equation of an ellipse with the force centre at one focus.
3. Explain why Kepler's second law follows from centrality alone, whereas the first and third laws require the inverse-square force.
4. Derive Kepler's third law by combining constant areal velocity with the area and geometry of an ellipse.

## Numerical Problems

1. For $h=7.50\times10^{10}\ \mathrm{m^2\,s^{-1}}$ and $GM=3.986\times10^{14}\ \mathrm{m^3\,s^{-2}}$, calculate the semi-latus rectum.

   **Final answer:** $p=h^2/(GM)=1.411\times10^7\ \mathrm{m}$.

2. An orbit has $p=1.20\times10^7\ \mathrm{m}$ and $e=0.20$. Find $r$ at $\theta=60^\circ$.

   **Final answer:** $r=1.091\times10^7\ \mathrm{m}$.

3. A planet's perihelion and aphelion distances are $8.0\times10^{10}\ \mathrm{m}$ and $1.2\times10^{11}\ \mathrm{m}$. Find $a$, $e$, and $p$.

   **Final answer:** $a=1.00\times10^{11}\ \mathrm{m}$, $e=0.20$, $p=9.60\times10^{10}\ \mathrm{m}$.

4. A planet has $h=5.0\times10^{10}\ \mathrm{m^2\,s^{-1}}$. Find the area swept in $4.0\ \mathrm{d}$.

   **Final answer:** $\Delta A=(h/2)\Delta t=8.64\times10^{15}\ \mathrm{m^2}$.

5. Two planets orbit the same star with $a_2=4a_1$. Find $T_2/T_1$.

   **Final answer:** $T_2/T_1=(a_2/a_1)^{3/2}=8$.

6. An ellipse has $a=2.0\times10^{11}\ \mathrm{m}$ and $e=0.60$. Find $b$ and its area.

   **Final answer:**

   $$
   \begin{aligned}
   b&=1.60\times10^{11}\ \mathrm{m},\\
   \pi ab&=3.20\pi\times10^{22}\ \mathrm{m^2}\\
   &\simeq1.005\times10^{23}\ \mathrm{m^2}.
   \end{aligned}
   $$

The derivations and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/keplers-laws.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Kepler's laws of planetary motion — Wikipedia](https://en.wikipedia.org/wiki/Kepler%27s_laws_of_planetary_motion).
2. [OpenStax, *University Physics Volume 1*, Section 13.5: Kepler's Laws of Planetary Motion](https://openstax.org/books/university-physics-volume-1/pages/13-5-keplers-laws-of-planetary-motion).
3. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 8.

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
=\left(-\frac{u'}{u^2}\right)(hu^2)
=-hu'.
$$

Differentiating with respect to time,

$$
\ddot r=-h\frac{du'}{dt}
=-hu''\dot\theta
=-h^2u^2u''.
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
=-mh^2u^2(u''+u)
=-GMmu^2.
$$

Cancelling the nonzero factor $-mu^2$ leaves Binet's equation for gravity:

$$
u''+u=\frac{GM}{h^2}.
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

![Elliptical Kepler orbit generated from the exact focus-centred polar equation]({{ '/assets/images/bsc/sem-i/unit-2/kepler-ellipse.png' | relative_url }})

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

The Binet equation, ellipse reduction, and third-law cancellation are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/keplers-laws.mac' | relative_url }}); every printed residual is zero.

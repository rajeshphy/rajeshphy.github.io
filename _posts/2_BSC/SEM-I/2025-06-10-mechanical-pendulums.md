---
title: "Simple, Compound, and Torsional Pendulums"
summary: "Small-oscillation equations and periods of three mechanical systems executing SHM."
date: 2025-06-10 09:00:00 +0530
categories:
  - bsc-i
tags: [oscillations, simple-pendulum, compound-pendulum, torsional-pendulum]
permalink: /bsc/sem-i/mechanical-pendulums/
---

The following systems execute simple harmonic motion only when their restoring force or torque is linear in the displacement.

## Simple pendulum

Consider a point mass $m$ suspended from a fixed support by a light, inextensible string of length $l$. Let $\theta$ be the angular displacement from the downward vertical. The tangential component of gravity is opposite to increasing $\theta$:

$$
F_\theta=-mg\sin\theta.
$$

The tangential acceleration is $a_\theta=l\ddot\theta$, so

$$
ml\ddot\theta=-mg\sin\theta.
$$

After cancellation of $m$ and division by $l$, the exact equation is

$$
\ddot\theta+\frac gl\sin\theta=0.
$$

For a small angular amplitude measured in radians, $\lvert\theta\rvert\ll1$ and $\sin\theta\simeq\theta$. The equation then becomes

$$
\ddot\theta+\frac gl\theta=0.
$$

Comparison with $\ddot\theta+\omega_0^2\theta=0$ gives

$$
\omega_0=\sqrt{\frac gl},
\qquad
\boxed{T=2\pi\sqrt{\frac lg}}.
$$

The finite-amplitude pendulum is periodic but is not exactly simple harmonic; the boxed period is the small-angle result.

## Compound pendulum

A compound pendulum is a rigid body of mass $m$ oscillating about a fixed horizontal axis. Let its centre of mass be a distance $d>0$ from the axis, and let $I$ be its moment of inertia about that axis. Gravity produces the restoring torque

$$
\tau=-mgd\sin\theta.
$$

Using $I\ddot\theta=\tau$,

$$
I\ddot\theta=-mgd\sin\theta.
$$

For $\lvert\theta\rvert\ll1$,

$$
\ddot\theta+\frac{mgd}{I}\theta=0.
$$

Therefore

$$
\omega_0=\sqrt{\frac{mgd}{I}},
\qquad
\boxed{T=2\pi\sqrt{\frac{I}{mgd}}}.
$$

If $I_{\rm cm}=mk_g^2$, where $k_g$ is the radius of gyration about the centre-of-mass axis parallel to the pivot axis, the parallel-axis theorem gives

$$
I=I_{\rm cm}+md^2=m(k_g^2+d^2).
$$

Substitution into the period yields

$$
T=2\pi\sqrt{\frac{k_g^2+d^2}{gd}}.
$$

Define the equivalent simple-pendulum length $l_{\rm eq}$ by $T=2\pi\sqrt{l_{\rm eq}/g}$. Equating the two expressions for $T^2$ gives

$$
\frac{l_{\rm eq}}g=\frac{I}{mgd},
$$

and hence

$$
\boxed{l_{\rm eq}=\frac{I}{md}=d+\frac{k_g^2}{d}}.
$$

## Torsional pendulum

Let a body of moment of inertia $I$ be suspended by a wire. Within the wire's linear elastic range, a small rotation $\theta$ produces the restoring torque

$$
\tau=-\kappa\theta,
$$

where $\kappa>0$ is the torsional constant. The rotational equation of motion is

$$
I\ddot\theta=-\kappa\theta,
$$

or

$$
\ddot\theta+\frac\kappa I\theta=0.
$$

Thus

$$
\omega_0=\sqrt{\frac\kappa I},
\qquad
\boxed{T=2\pi\sqrt{\frac I\kappa}}.
$$

![Simple, compound, and torsional pendulum geometries with their restoring variables]({{ '/assets/images/bsc/sem-i/unit-2/pendulum-systems.png' | relative_url }})

The three small-oscillation equations, periods, and compound-pendulum equivalent length are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/mechanical-pendulums.mac' | relative_url }}); every printed residual is zero.

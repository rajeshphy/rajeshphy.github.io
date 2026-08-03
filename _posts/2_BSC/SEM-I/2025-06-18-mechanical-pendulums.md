---
title: "Simple, Compound, and Torsional Pendulums"
summary: "Small-oscillation equations and periods of three mechanical systems executing SHM."
date: 2025-06-18 09:00:00 +0530
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

For a body with fixed $k_g$, the equivalent length is least when

$$
\frac{d l_{\rm eq}}{d\,d}
=1-\frac{k_g^2}{d^2}=0.
$$

Since $d>0$, this gives $d=k_g$. Moreover,

$$
\frac{d^2 l_{\rm eq}}{d\,d^2}=\frac{2k_g^2}{d^3}>0,
$$

so the stationary value is a minimum. Therefore

$$
\boxed{l_{\rm eq,min}=2k_g},
\qquad
\boxed{T_{\min}=2\pi\sqrt{\frac{2k_g}{g}}}.
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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable pendulum-systems diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/pendulum-systems.png' | relative_url }}" alt="Simple, compound, and torsional pendulum geometries with their restoring variables" loading="lazy">
</div>

## Solved Problems

### 1. Uniform rod as a compound pendulum

**Problem.** A uniform rod of length $1.20\ \mathrm{m}$ is pivoted about a horizontal axis through a point $0.20\ \mathrm{m}$ from one end. Find its equivalent length and small-oscillation period using $g=9.80\ \mathrm{m\,s^{-2}}$.

**Solution.** The centre of mass is $0.60\ \mathrm{m}$ from the same end, so

$$
d=0.60-0.20=0.40\ \mathrm{m}.
$$

For a uniform rod,

$$
I_{\rm cm}=\frac{mL^2}{12}.
$$

The parallel-axis theorem gives

$$
I=m\left(\frac{L^2}{12}+d^2\right)
=m(0.120+0.160)
=0.280m.
$$

Hence

$$
l_{\rm eq}=\frac{I}{md}
=\frac{0.280}{0.40}
=0.700\ \mathrm{m},
$$

and

$$
T=2\pi\sqrt{\frac{l_{\rm eq}}{g}}
=2\pi\sqrt{\frac{0.700}{9.80}}
=1.679\ \mathrm{s}.
$$

**Checks.** The mass cancels, and $I/(md)$ has units of length. Here $d>0$, so the gravitational torque is restoring for small positive $\theta$. The equivalent length lies within the rod but need not equal the pivot-to-centre-of-mass distance. As $d\to0^+$, the restoring torque vanishes and the period tends to infinity.

### 2. Added ring on a torsional platform

**Problem.** A torsional platform has moment of inertia $I_0=0.020\ \mathrm{kg\,m^2}$ and period $T_0=1.00\ \mathrm{s}$. A thin ring of mass $1.00\ \mathrm{kg}$ and radius $0.200\ \mathrm{m}$ is placed concentrically on it. Find the torsional constant and the new period.

**Solution.** From $T_0=2\pi\sqrt{I_0/\kappa}$,

$$
\kappa=\frac{4\pi^2I_0}{T_0^2}
=4\pi^2(0.020)
=0.7896\ \mathrm{N\,m\,rad^{-1}}.
$$

The ring's moment of inertia about its symmetry axis is

$$
I_{\rm ring}=MR^2
=(1.00)(0.200)^2
=0.040\ \mathrm{kg\,m^2}.
$$

Thus $I=I_0+I_{\rm ring}=0.060\ \mathrm{kg\,m^2}$, and

$$
T=2\pi\sqrt{\frac{I}{\kappa}}
=T_0\sqrt{\frac{I}{I_0}}
=\sqrt3\ \mathrm{s}
=1.732\ \mathrm{s}.
$$

**Checks.** $\kappa$ has units $\mathrm{N\,m\,rad^{-1}}$, so $I/\kappa$ has units $\mathrm{s^2}$. The torque $-\kappa\theta$ opposes the angular displacement. Adding positive moment of inertia must lengthen the period, as the result does. If the ring mass tends to zero, $I\to I_0$ and $T\to T_0$.

## Descriptive Questions

1. Derive the exact equation of a simple pendulum and obtain its small-angle period, stating precisely where the SHM approximation enters.
2. Derive the period and equivalent length of a compound pendulum using the parallel-axis theorem.
3. Show that the compound-pendulum period is minimum when the pivot-to-centre-of-mass distance equals the radius of gyration.
4. Derive the equation and period of a torsional pendulum and explain the physical meaning and SI units of the torsional constant.

## Numerical Problems

1. Find the small-angle period of a simple pendulum of length $0.810\ \mathrm{m}$ at $g=9.80\ \mathrm{m\,s^{-2}}$.

   **Final answer:** $T=1.806\ \mathrm{s}$.

2. A simple pendulum has period $1.50\ \mathrm{s}$ where $g=9.80\ \mathrm{m\,s^{-2}}$. Find its length.

   **Final answer:** $l=g(T/2\pi)^2=0.5585\ \mathrm{m}$.

3. A compound pendulum has $k_g=0.300\ \mathrm{m}$ and period $T$ when its pivot is $d_1=0.200\ \mathrm{m}$ from the centre of mass. Find the other positive pivot distance $d_2\ne d_1$ that gives the same small-oscillation period, and find that period at $g=9.80\ \mathrm{m\,s^{-2}}$.

   **Final answer:** Equal equivalent lengths give $d_1d_2=k_g^2$, so $d_2=0.450\ \mathrm{m}$; $l_{\rm eq}=0.650\ \mathrm{m}$ and $T=\pi\sqrt{13}/7=1.618\ \mathrm{s}$.

4. A rigid body has $k_g=0.300\ \mathrm{m}$. Find the pivot distance for minimum period and the minimum period at $g=9.81\ \mathrm{m\,s^{-2}}$.

   **Final answer:** $d=0.300\ \mathrm{m}$ and $T_{\min}=1.554\ \mathrm{s}$.

5. Find the period of a torsional pendulum with $I=0.012\ \mathrm{kg\,m^2}$ and $\kappa=0.300\ \mathrm{N\,m\,rad^{-1}}$.

   **Final answer:** $T=1.257\ \mathrm{s}$.

6. A torsional pendulum has $I=0.010\ \mathrm{kg\,m^2}$, $\kappa=0.400\ \mathrm{N\,m\,rad^{-1}}$, and angular amplitude $0.100\ \mathrm{rad}$. Find its maximum angular speed.

   **Final answer:** $\dot\theta_{\max}=\theta_0\sqrt{\kappa/I}=0.6325\ \mathrm{rad\,s^{-1}}$.

The small-oscillation identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/mechanical-pendulums.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Pendulum — Wikipedia](https://en.wikipedia.org/wiki/Pendulum).
2. [OpenStax, *University Physics Volume 1*, Section 15.4: Pendulums](https://openstax.org/books/university-physics-volume-1/pages/15-4-pendulums).
3. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 5.

---
title: "Frames, the Michelson–Morley Experiment, and Einstein's Postulates"
summary: "Inertial and non-inertial frames, the ether-drift test, its null result, and the two postulates of special relativity."
date: 2025-07-01 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - inertial-frames
  - michelson-morley
permalink: /bsc/sem-i/frames-michelson-morley-and-postulates/
---

A **reference frame** is a coordinate system together with synchronized clocks. If two frames $S$ and $S^{\prime}$ have parallel axes and $S^{\prime}$ moves at constant velocity $v\hat{\mathbf x}$ relative to $S$, Newtonian kinematics gives the Galilean transformation

$$
x^{\prime}=x-vt,\qquad y^{\prime}=y,\qquad z^{\prime}=z,\qquad t^{\prime}=t.
$$

Differentiating twice,

$$
u_x^{\prime}=u_x-v,\qquad a_x^{\prime}=a_x,
$$

so Newton's equation has the same form in every frame moving uniformly relative to another. Such a frame is **inertial**: a free particle has constant velocity, or equivalently $\mathbf a=0$.

If the frame origin has acceleration $\mathbf A(t)$, then $\mathbf r^{\prime}=\mathbf r-\mathbf R(t)$ gives

$$
\mathbf a^{\prime}=\mathbf a-\mathbf A,
\qquad
m\mathbf a^{\prime}=\mathbf F-m\mathbf A.
$$

The extra term $-m\mathbf A$ is an inertial (fictitious) force. A frame whose origin accelerates, or whose axes rotate, is therefore **non-inertial**; rotating frames similarly require centrifugal and Coriolis terms. Special relativity relates inertial frames.

## The ether-drift prediction

Nineteenth-century wave theory suggested that light propagated through a stationary ether. Consider equal interferometer arms of length $L$ in the pre-relativistic ether model, with the apparatus moving at speed $v$ through the ether. Light of ether-frame speed $c$ would then have different round-trip times along arms parallel and perpendicular to $\mathbf v$.

For a parallel arm of length $L$, the outward and return times would be

$$
t_+=\frac{L}{c-v},\qquad t_-=\frac{L}{c+v},
$$

hence

$$
t_{\parallel}
=\frac{L}{c-v}+\frac{L}{c+v}
=\frac{2Lc}{c^2-v^2}
=\frac{2L}{c}\frac{1}{1-\beta^2},
\qquad \beta=\frac vc.
$$

For one transverse crossing of duration $t_\perp/2$, the mirror advances by $vt_\perp/2$ while the light covers $ct_\perp/2$. The right triangle therefore gives

$$
\left(\frac{ct_\perp}{2}\right)^2
=L^2+\left(\frac{vt_\perp}{2}\right)^2,
$$

and hence

$$
t_\perp=\frac{2L}{\sqrt{c^2-v^2}}
=\frac{2L}{c}\frac{1}{\sqrt{1-\beta^2}}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable Michelson–Morley diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/michelson-morley.png' | relative_url }}" alt="Michelson interferometer with parallel and transverse light paths for an apparatus moving through the assumed ether" loading="lazy">
  </div>
  <figcaption>In the ether model, the longitudinal closing speeds are $c-v$ and $c+v$; the transverse arm has the effective along-arm speed $\sqrt{c^2-v^2}$ because the actual ether-frame light path is diagonal.</figcaption>
</figure>

Their predicted difference is

$$
\Delta t=t_\parallel-t_\perp
=\frac{2L}{c}
\left[
\frac{1}{1-\beta^2}-\frac{1}{\sqrt{1-\beta^2}}
\right].
$$

For $v\ll c$, $(1-\beta^2)^{-1}\simeq1+\beta^2$ and $(1-\beta^2)^{-1/2}\simeq1+\beta^2/2$, so

$$
\boxed{\Delta t\simeq\frac{Lv^2}{c^3}}.
$$

Rotating the apparatus through $90^\circ$ exchanges the arms, changing the difference by $2\Delta t$. The corresponding predicted fringe displacement is

$$
N=\frac{c(2\Delta t)}{\lambda}
\simeq\boxed{\frac{2Lv^2}{\lambda c^2}}.
$$

Michelson and Morley observed no displacement of the predicted size within experimental sensitivity: the outcome was **null**. No preferred ether rest frame was detected.

## The two postulates

Einstein replaced the ether hypothesis by two statements:

1. **Relativity principle:** the laws of physics have the same form in every inertial frame.
2. **Light-speed invariance:** light in vacuum has the same speed $c$ in every inertial frame, independent of the motion of its source or observer.

The Galilean rule would give $u_x^{\prime}=c-v$ for a light pulse and therefore contradict the second postulate. Space and time must transform together. The next lecture derives that transformation.

## Solved Problems

### 1. Apparent weight in an accelerating frame

A lift accelerates upward at $A=2.00\ \mathrm{m\,s^{-2}}$. Find the apparent weight of a $70.0\ \mathrm{kg}$ passenger, using both the ground frame $S$ and the lift frame $S^{\prime}$. Take upward as positive and $g=9.81\ \mathrm{m\,s^{-2}}$.

In the approximately inertial ground frame, the passenger has acceleration $+A$. If $N$ is the normal reaction,

$$
N-mg=mA,
$$

so

$$
N=m(g+A)
=(70.0\ \mathrm{kg})(11.81\ \mathrm{m\,s^{-2}})
=\boxed{826.7\ \mathrm N}.
$$

In $S^{\prime}$ the passenger is at rest, so $a^{\prime}=0$. The frame acceleration is $+A$, hence the inertial force is $-mA$:

$$
N-mg-mA=0,
$$

which gives the same $N=826.7\ \mathrm N$. The upward-support force exceeds $mg$, so the passenger feels heavier. For $A\to0$, $N\to mg$; for free fall, $A\to-g$ and $N\to0$.

### 2. Predicted Michelson–Morley fringe shift

An ether model assigns an interferometer equal effective arm length $L=11.0\ \mathrm m$, wavelength $\lambda=500\ \mathrm{nm}$, and drift speed $v=30.0\ \mathrm{km\,s^{-1}}$. Take $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$ and calculate the shift after a $90^\circ$ rotation.

All speeds are measured in the assumed ether frame. Here

$$
\beta=\frac vc=1.00\times10^{-4}.
$$

The exact pre-relativistic round-trip times are

$$
t_{\parallel}=\frac{2L/c}{1-\beta^2},
\qquad
t_{\perp}=\frac{2L/c}{\sqrt{1-\beta^2}}.
$$

Numerically,

$$
t_{\parallel}=7.333333407\times10^{-8}\ \mathrm s,
\qquad
t_{\perp}=7.333333370\times10^{-8}\ \mathrm s,
$$

so one orientation has $\Delta t=3.667\times10^{-16}\ \mathrm s$. Rotation reverses this delay, giving an optical-path change $2c\Delta t$. Therefore

$$
N=\frac{2c\Delta t}{\lambda}
\simeq\frac{2Lv^2}{\lambda c^2}
=\boxed{0.440\ \text{fringe}}.
$$

The positive sign denotes the predicted displacement from exchanging the parallel and transverse arms; the opposite rotation gives the opposite displacement. The effect is second order in $v/c$, so $N\to0$ as $v\to0$. The observed null result was therefore physically significant at the instrument's quoted sensitivity.

## Descriptive Questions

1. Distinguish inertial and non-inertial frames by applying Newton's first law, and explain why inertial forces are required in an accelerating frame.
2. Derive the longitudinal and transverse round-trip light times predicted by the stationary-ether model.
3. Explain why rotating a Michelson interferometer through $90^\circ$ doubles the change in relative travel time.
4. State Einstein's two postulates and identify the conflict between light-speed invariance and Galilean velocity transformation.

## Numerical Problems

1. A $3.00\ \mathrm{kg}$ body experiences a net force of $12.0\ \mathrm N$ in an inertial frame. A second frame translates at constant velocity relative to it. Find the acceleration measured in each frame. **Answer:** $4.00\ \mathrm{m\,s^{-2}}$ in both frames.
2. A $2.00\ \mathrm{kg}$ body is at rest at radius $0.500\ \mathrm m$ on a platform rotating uniformly at $4.00\ \mathrm{rad\,s^{-1}}$. Find the centrifugal force in the platform frame. **Answer:** $F_{\rm cf}=m\omega^2r=16.0\ \mathrm N$ radially outward.
3. In the ether calculation take $v=0.600c$. Express $t_{\parallel}$ and $t_{\perp}$ as multiples of $2L/c$. **Answer:** $t_{\parallel}=1.5625(2L/c)$ and $t_{\perp}=1.2500(2L/c)$.
4. A railway carriage starts accelerating along $+x$ at $2.50\ \mathrm{m\,s^{-2}}$. A puck, initially at rest relative to the carriage, is released on a frictionless floor. Find its carriage-frame displacement from the release point after $4.00\ \mathrm s$. **Answer:** $x^{\prime}=-\tfrac12At^2=-20.0\ \mathrm m$; the puck falls behind the accelerating carriage.
5. An interferometer with $L=10.0\ \mathrm m$ and $\lambda=500\ \mathrm{nm}$ has a predicted shift $N=0.100$. Infer the ether-drift speed from the small-$\beta$ formula. **Answer:** $v=1.50\times10^4\ \mathrm{m\,s^{-1}}=15.0\ \mathrm{km\,s^{-1}}$.
6. A light ray moves along $+x$ while a rocket moves in the same direction at $0.400c$. Find the ray speed in the rocket according to Galilean kinematics and according to Einstein's second postulate. **Answer:** $0.600c$ (Galilean); $c$ (special relativity).

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/michelson-morley.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Michelson–Morley experiment,” Wikipedia](https://en.wikipedia.org/wiki/Michelson%E2%80%93Morley_experiment).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 2, “Perplexities in the Propagation of Light.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.1, “The Special Theory of Relativity.”

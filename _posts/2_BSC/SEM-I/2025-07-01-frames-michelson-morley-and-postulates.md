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

A **reference frame** is a coordinate system together with synchronized clocks. If two frames $S$ and $S'$ have parallel axes and $S'$ moves at constant velocity $v\hat{\mathbf x}$ relative to $S$, Newtonian kinematics gives the Galilean transformation

$$
x'=x-vt,\qquad y'=y,\qquad z'=z,\qquad t'=t.
$$

Differentiating twice,

$$
u_x'=u_x-v,\qquad a_x'=a_x,
$$

so Newton's equation has the same form in every frame moving uniformly relative to another. Such a frame is **inertial**: a free particle has constant velocity, or equivalently $\mathbf a=0$.

If the frame origin has acceleration $\mathbf A(t)$, then $\mathbf r'=\mathbf r-\mathbf R(t)$ gives

$$
\mathbf a'=\mathbf a-\mathbf A,
\qquad
m\mathbf a'=\mathbf F-m\mathbf A.
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
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/michelson-morley.png' | relative_url }}" alt="Michelson interferometer with parallel and transverse light paths for an apparatus moving through the assumed ether" loading="lazy">
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

The Galilean rule would give $u_x'=c-v$ for a light pulse and therefore contradict the second postulate. Space and time must transform together. The next lecture derives that transformation.

The longitudinal and transverse times, the time-difference expansion, and the rotated fringe shift are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/michelson-morley.mac' | relative_url }}); every printed residual is zero.

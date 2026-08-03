---
title: "Simultaneity, Event Order, and Relativistic Velocity Addition"
summary: "Relativity of simultaneity, invariant causal order, and velocity transformation derived by differentiating the Lorentz equations."
date: 2025-07-07 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - simultaneity
  - event-order
  - velocity-addition
permalink: /bsc/sem-i/simultaneity-event-order-and-velocity-addition/
---

For two events separated by $(\Delta t,\Delta x)$, the Lorentz time transformation is

$$
\boxed{\Delta t'=\gamma\left(\Delta t-\frac{v\Delta x}{c^2}\right)}.
$$

If the events are simultaneous in $S$, then $\Delta t=0$ and

$$
\Delta t'=-\gamma\frac{v\Delta x}{c^2}.
$$

Thus spatially separated events simultaneous in $S$ are not simultaneous in $S'$. For $v>0$ and $\Delta x=x_2-x_1>0$, event 2 occurs earlier in $S'$ because $\Delta t'<0$.

## Can event order reverse?

Define the invariant separation

$$
\Delta s^2=c^2\Delta t^2-\Delta x^2.
$$

For a **timelike** separation, $c^2\Delta t^2>\Delta x^2$. If $\Delta t>0$, then

$$
\left\lvert\frac{v\Delta x}{c^2}\right\rvert
<\frac{\lvert\Delta x\rvert}{c}
<\Delta t,
$$

because $\lvert v\rvert<c$. Therefore $\Delta t'=\gamma(\Delta t-v\Delta x/c^2)>0$: all inertial observers agree on the order.

For a **lightlike** separation, $\Delta x=\pm c\Delta t$. Therefore

$$
\Delta t'=\gamma\Delta t(1\mp v/c),
$$

and both factors $1\mp v/c$ are positive for $\lvert v\rvert<c$. The order is unchanged.

For a **spacelike** separation, $\lvert\Delta x\rvert>c\lvert\Delta t\rvert$. Choosing

$$
v=\frac{c^2\Delta t}{\Delta x}
$$

is allowed because spacelike separation guarantees $\lvert c^2\Delta t/\Delta x\rvert<c$, and it makes $\Delta t'=0$. Nearby allowed velocities on opposite sides of this value give opposite signs of $\Delta t'$, so the order can reverse. Such events cannot be causally connected because a signal between them would require speed $\lvert\Delta x/\Delta t\rvert>c$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/event-order.png' | relative_url }}" alt="Spacetime diagram separating timelike, lightlike, and spacelike events and showing a tilted simultaneity line" loading="lazy">
  <figcaption>Only a spacelike event can cross a moving frame's $t'=0$ simultaneity line without crossing the invariant light cone.</figcaption>
</figure>

## Velocity addition

Differentiate the Lorentz equations:

$$
dx'=\gamma(dx-v\,dt),
\qquad
dt'=\gamma\left(dt-\frac{v\,dx}{c^2}\right).
$$

Dividing and writing $u_x=dx/dt$,

$$
u_x'=\frac{dx'}{dt'}
=\frac{dx-v\,dt}{dt-v\,dx/c^2}
=\boxed{\frac{u_x-v}{1-u_xv/c^2}}.
$$

Since $dy'=dy$ and $dz'=dz$,

$$
u_y'=\frac{dy}{\gamma(dt-v\,dx/c^2)}
=\boxed{\frac{u_y}{\gamma(1-u_xv/c^2)}},
$$

$$
u_z'=\boxed{\frac{u_z}{\gamma(1-u_xv/c^2)}}.
$$

These component transformations require $1-u_xv/c^2\ne0$. For a massive particle or a light ray, $\lvert u_x\rvert\le c$ and $\lvert v\rvert<c$, so $\lvert u_xv\rvert<c^2$ and the denominator is strictly positive.

Solving the longitudinal relation for $u_x$ gives the inverse addition law:

$$
u_x'(1-u_xv/c^2)=u_x-v,
$$

$$
u_x\left(1+\frac{u_x'v}{c^2}\right)=u_x'+v,
$$

$$
\boxed{u_x=\frac{u_x'+v}{1+u_x'v/c^2}}.
$$

For light in either direction, $u_x=\pm c$ gives

$$
u_x'=\frac{\pm c-v}{1\mp v/c}=\pm c.
$$

For the inverse sum, put $w=u_x'$, so

$$
u_x=\frac{w+v}{1+wv/c^2}.
$$

If $\lvert w\rvert<c$ and $\lvert v\rvert<c$, then $1+wv/c^2>0$ and

$$
\boxed{
1-\frac{u_x^2}{c^2}
=\frac{(1-w^2/c^2)(1-v^2/c^2)}{(1+wv/c^2)^2}>0
}.
$$

Hence $\lvert u_x\rvert<c$: adding two subluminal velocities cannot produce a superluminal result.

The simultaneity, longitudinal and transverse velocity, inverse, light-speed, and subluminal identities are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/simultaneity-velocity.mac' | relative_url }}); every printed residual is zero.

---
title: "Simultaneity, Event Order, and Relativistic Velocity Addition"
summary: "Relativity of simultaneity, invariant causal order, and velocity transformation derived by differentiating the Lorentz equations."
date: 2025-07-10 09:00:00 +0530
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
\boxed{\Delta t^{\prime}=\gamma\left(\Delta t-\frac{v\Delta x}{c^2}\right)}.
$$

If the events are simultaneous in $S$, then $\Delta t=0$ and

$$
\Delta t^{\prime}=-\gamma\frac{v\Delta x}{c^2}.
$$

Thus spatially separated events simultaneous in $S$ are not simultaneous in $S^{\prime}$. For $v>0$ and $\Delta x=x_2-x_1>0$, event 2 occurs earlier in $S^{\prime}$ because $\Delta t^{\prime}<0$.

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

because $\lvert v\rvert<c$. Therefore $\Delta t^{\prime}=\gamma(\Delta t-v\Delta x/c^2)>0$: all inertial observers agree on the order.

For a **lightlike** separation, $\Delta x=\pm c\Delta t$. Therefore

$$
\Delta t^{\prime}=\gamma\Delta t(1\mp v/c),
$$

and both factors $1\mp v/c$ are positive for $\lvert v\rvert<c$. The order is unchanged.

For a **spacelike** separation, $\lvert\Delta x\rvert>c\lvert\Delta t\rvert$. Choosing

$$
v=\frac{c^2\Delta t}{\Delta x}
$$

is allowed because spacelike separation guarantees $\lvert c^2\Delta t/\Delta x\rvert<c$, and it makes $\Delta t^{\prime}=0$. Nearby allowed velocities on opposite sides of this value give opposite signs of $\Delta t^{\prime}$, so the order can reverse. Such events cannot be causally connected because a signal between them would require speed $\lvert\Delta x/\Delta t\rvert>c$.

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable event-order diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/event-order.png' | relative_url }}" alt="Spacetime diagram separating timelike, lightlike, and spacelike events and showing a tilted simultaneity line" loading="lazy">
  </div>
  <figcaption>Only a spacelike event can cross a moving frame's $t^{\prime}=0$ simultaneity line without crossing the invariant light cone.</figcaption>
</figure>

## Velocity addition

Differentiate the Lorentz equations:

$$
dx^{\prime}=\gamma(dx-v\,dt),
\qquad
dt^{\prime}=\gamma\left(dt-\frac{v\,dx}{c^2}\right).
$$

Dividing and writing $u_x=dx/dt$,

$$
u_x^{\prime}=\frac{dx^{\prime}}{dt^{\prime}}
=\frac{dx-v\,dt}{dt-v\,dx/c^2}
=\boxed{\frac{u_x-v}{1-u_xv/c^2}}.
$$

Since $dy^{\prime}=dy$ and $dz^{\prime}=dz$,

$$
u_y^{\prime}=\frac{dy}{\gamma(dt-v\,dx/c^2)}
=\boxed{\frac{u_y}{\gamma(1-u_xv/c^2)}},
$$

$$
u_z^{\prime}=\boxed{\frac{u_z}{\gamma(1-u_xv/c^2)}}.
$$

These component transformations require $1-u_xv/c^2\ne0$. For a massive particle or a light ray, $\lvert u_x\rvert\le c$ and $\lvert v\rvert<c$, so $\lvert u_xv\rvert<c^2$ and the denominator is strictly positive.

Solving the longitudinal relation for $u_x$ gives the inverse addition law:

$$
u_x^{\prime}(1-u_xv/c^2)=u_x-v,
$$

$$
u_x\left(1+\frac{u_x^{\prime}v}{c^2}\right)=u_x^{\prime}+v,
$$

$$
\boxed{u_x=\frac{u_x^{\prime}+v}{1+u_x^{\prime}v/c^2}}.
$$

For light in either direction, $u_x=\pm c$ gives

$$
u_x^{\prime}=\frac{\pm c-v}{1\mp v/c}=\pm c.
$$

For the inverse sum, put $w=u_x^{\prime}$, so

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

## Solved Problems

### 1. Reversal of order for spacelike events

In $S$, event 2 is separated from event 1 by $\Delta x=+900\ \mathrm m$ and $\Delta t=+1.00\ \mu\mathrm s$. Frame $S^{\prime}$ moves along $+x$ at $v=0.800c$. Determine the event order in $S^{\prime}$, verify the interval, and find the frame in which the events are simultaneous. Use $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$.

First classify the separation:

$$
\Delta s^2=(c\Delta t)^2-\Delta x^2
=(300\ \mathrm m)^2-(900\ \mathrm m)^2
=-7.20\times10^5\ \mathrm{m^2}.
$$

It is spacelike. With $\gamma=5/3$,

$$
\begin{aligned}
\Delta t^{\prime}
&=\gamma\left(\Delta t-\frac{v\Delta x}{c^2}\right)\\
&=\frac53(1.00-2.40)\ \mu\mathrm s\\
&=\boxed{-2.333\ \mu\mathrm s},
\end{aligned}
$$

and

$$
\begin{aligned}
\Delta x^{\prime}
&=\gamma(\Delta x-v\Delta t)\\
&=\frac53(900-240)\ \mathrm m\\
&=\boxed{1100\ \mathrm m}.
\end{aligned}
$$

Thus event 2 occurs earlier in $S^{\prime}$. Since $c\Delta t^{\prime}=-700\ \mathrm m$,

$$
(c\Delta t^{\prime})^2-(\Delta x^{\prime})^2
=(-700)^2-(1100)^2
=-7.20\times10^5\ \mathrm{m^2},
$$

as required. Setting $\Delta t^{\prime}=0$ gives

$$
v_{\rm sim}=\frac{c^2\Delta t}{\Delta x}
=\frac{c(300\ \mathrm m)}{900\ \mathrm m}
=\boxed{\frac c3}.
$$

This speed is allowed precisely because the separation is spacelike. The sign reversal has no causal paradox: neither event can signal the other. For $v\to0$, $\Delta t^{\prime}\to\Delta t>0$.

### 2. Oblique velocity transformation

A spacecraft $S^{\prime}$ moves at $+0.600c$ relative to $S$. In $S^{\prime}$, a probe has components $u_x^{\prime}=+0.300c$ and $u_y^{\prime}=+0.400c$. Find its velocity in $S$ and show that it remains subluminal.

Use the inverse component transformations. With $\gamma_v=1.25$,

$$
\frac{u_x}{c}
=\frac{u_x^{\prime}/c+v/c}{1+u_x^{\prime}v/c^2}
=\frac{0.300+0.600}{1+(0.300)(0.600)}
=\boxed{\frac{45}{59}\simeq0.7627}.
$$

For the transverse component,

$$
\frac{u_y}{c}
=\frac{u_y^{\prime}/c}{\gamma_v(1+u_x^{\prime}v/c^2)}
=\frac{0.400}{(1.25)(1.18)}
=\boxed{\frac{16}{59}\simeq0.2712}.
$$

Therefore

$$
\frac{u}{c}
=\sqrt{\left(\frac{45}{59}\right)^2+
\left(\frac{16}{59}\right)^2}
=\boxed{\frac{\sqrt{2281}}{59}\simeq0.8095<1}.
$$

Both stated components were positive, so the probe moves forward and toward $+y$ in $S$. The speed remains below $c$, and when the frame speed tends to zero the transformed components tend to $0.300c$ and $0.400c$.

## Descriptive Questions

1. Derive the relativity-of-simultaneity formula and explain the sign of the time offset for separated simultaneous events.
2. Use the invariant interval to prove that timelike and lightlike event order cannot reverse between inertial frames.
3. Show why spacelike-separated events can be simultaneous in one inertial frame and occur in either order in others.
4. Derive the longitudinal and transverse velocity transformations directly from the Lorentz differentials.

## Numerical Problems

1. Events separated by $\Delta x=600\ \mathrm m$ are simultaneous in $S$. Find $\Delta t^{\prime}$ for a frame moving at $+0.600c$. **Answer:** $\Delta t^{\prime}=-1.50\ \mu\mathrm s$.
2. Event B occurs $3.00\ \mu\mathrm s$ after event A and $600\ \mathrm m$ away in $S$. Find the speed of a signal joining the events and their invariant separation; can any inertial frame reverse their order? **Answer:** $u=2.00\times10^8\ \mathrm{m\,s^{-1}}=(2/3)c$, $\Delta s^2=4.50\times10^5\ \mathrm{m^2}$; the separation is timelike, so the order cannot reverse.
3. A projectile moves at $0.700c$ in a spacecraft that moves at $0.600c$ in the same direction. Find its Earth-frame speed. **Answer:** $u=(65/71)c\simeq0.9155c$.
4. A particle moves at $+0.500c$ in $S$, while $S^{\prime}$ moves at $+0.800c$. Find $u_x^{\prime}$. **Answer:** $u_x^{\prime}=-0.500c$.
5. In $S$, a light ray has $u_x=0.600c$ and $u_y=0.800c$. Transform it to a frame moving at $+0.600c$. **Answer:** $u_x^{\prime}=0$, $u_y^{\prime}=c$, hence $u^{\prime}=c$.
6. A craft moves at $0.800c$ along $+x$. It launches a probe at $u_x^{\prime}=0$, $u_y^{\prime}=0.600c$. Find the laboratory components and speed. **Answer:** $u_x=0.800c$, $u_y=0.360c$, $u\simeq0.8773c$.

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/simultaneity-velocity.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Relativity of simultaneity,” Wikipedia](https://en.wikipedia.org/wiki/Relativity_of_simultaneity).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 5, “Relativistic Kinematics.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.1, “The Special Theory of Relativity.”

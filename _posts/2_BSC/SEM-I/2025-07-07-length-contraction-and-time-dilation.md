---
title: "Length Contraction and Time Dilation"
summary: "Operational definitions of proper time and proper length, followed by complete Lorentz-transformation derivations."
date: 2025-07-07 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - time-dilation
  - length-contraction
permalink: /bsc/sem-i/length-contraction-and-time-dilation/
---

Relativistic measurements compare **events**. An event has coordinates $(t,x,y,z)$; a time interval needs two clock readings, while a length needs the two endpoint positions measured at the same time in the measuring frame. Throughout, $S^{\prime}$ moves at speed $v$ along $+x$ relative to $S$, with $\lvert v\rvert<c$.

## Time dilation

Let a clock be at rest in $S^{\prime}$. Two ticks occur at the same position, so $\Delta x^{\prime}=0$. Its reading

$$
\Delta\tau\equiv\Delta t^{\prime}
$$

is the **proper time**. From the inverse Lorentz transformation,

$$
\Delta t
=\gamma\left(\Delta t^{\prime}+\frac{v\Delta x^{\prime}}{c^2}\right)
=\gamma\Delta t^{\prime}.
$$

Hence

$$
\boxed{\Delta t=\gamma\Delta\tau}.
$$

Because $\gamma\ge1$, the coordinate-time interval in $S$ is at least as large as the proper time recorded by the single clock: a moving clock accumulates less elapsed time between the same two events.

The same result follows from a light clock. If the mirrors have rest separation $D$, one transverse half-tick lasts $\Delta\tau/2=D/c$. In $S$, the light crosses a diagonal while the clock moves $v\Delta t/2$:

$$
\left(\frac{c\Delta t}{2}\right)^2
=D^2+\left(\frac{v\Delta t}{2}\right)^2.
$$

Using $D=c\Delta\tau/2$,

$$
c^2\Delta t^2=c^2\Delta\tau^2+v^2\Delta t^2,
$$

$$
\Delta t^2(1-\beta^2)=\Delta\tau^2,
\qquad
\Delta t=\gamma\Delta\tau.
$$

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable light-clock diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/light-clock.png' | relative_url }}" alt="Exact right-triangle light path for a transverse moving light clock" loading="lazy">
  </div>
  <figcaption>The ray leaves the lower mirror at its initial position and reaches the upper mirror after the clock has moved $v\Delta t/2$; the final lower and upper mirror positions show the proper transverse separation $c\Delta\tau/2$.</figcaption>
</figure>

## Lorentz contraction

Let a rod be at rest in $S^{\prime}$ with endpoints $x_1^{\prime}$ and $x_2^{\prime}$. Its **proper length** is

$$
L_0=x_2^{\prime}-x_1^{\prime}.
$$

To measure its length in $S$, record both endpoint positions simultaneously: $\Delta t=t_2-t_1=0$. Applying the direct position transformation to the two endpoint events,

$$
\begin{aligned}
L_0=\Delta x^{\prime}
&=\gamma(\Delta x-v\Delta t)\\
&=\gamma\Delta x.
\end{aligned}
$$

Therefore

$$
\boxed{L=\Delta x=\frac{L_0}{\gamma}
=L_0\sqrt{1-\frac{v^2}{c^2}}}.
$$

Only the dimension parallel to the relative motion contracts; $y^{\prime}=y$ and $z^{\prime}=z$ leave transverse lengths unchanged. The simultaneity condition $\Delta t=0$ is essential: endpoint positions recorded at different times do not define the rod's length in $S$. At $v=0$, $\gamma=1$ and $L=L_0$; as $\lvert v\rvert$ increases, $L<L_0$.

## Solved Problems

### 1. Atmospheric muons in two frames

A muon has proper mean lifetime $\tau_0=2.197\ \mu\mathrm s$ and moves downward at $v=0.980c$ relative to Earth. Find its mean lifetime and travel distance in the Earth frame, then reproduce the encounter distance in the muon frame. Take downward as positive and $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$.

The muon is at rest in its own frame, so its decay events occur at the same place there and $\tau_0$ is the proper time. Since

$$
\gamma=\frac{1}{\sqrt{1-0.980^2}}=5.0252,
$$

the Earth-frame lifetime is

$$
\Delta t=\gamma\tau_0
=(5.0252)(2.197\ \mu\mathrm s)
=\boxed{11.04\ \mu\mathrm s}.
$$

The mean downward distance in Earth coordinates is

$$
d=v\Delta t
=(0.980)(3.00\times10^8)(11.04\times10^{-6})
=\boxed{3.246\times10^3\ \mathrm m}.
$$

In the muon frame, Earth and the atmosphere move upward. The Earth-frame distance $d$ is a proper length for two points fixed to Earth, so the muon measures

$$
d^{\prime}=\frac d\gamma=645.9\ \mathrm m.
$$

It also obtains $\lvert d^{\prime}\rvert=(0.980c)\tau_0=645.9\ \mathrm m$; the negative velocity only indicates upward motion. The two frames therefore predict the same encounter event. For $v\to0$, $\gamma\to1$, time dilation and length contraction both disappear.

### 2. Simultaneous endpoint measurement of a moving rod

A rod has proper length $L_0=10.0\ \mathrm m$ in $S^{\prime}$ and moves along $+x$ at $v=0.800c$ relative to $S$. Find its length in $S$ and the time separation in $S^{\prime}$ between the two endpoint events used by $S$.

The measuring frame $S$ must record the rear and front endpoints simultaneously, so

$$
\Delta t=0.
$$

With $\gamma=5/3$, the position transformation gives

$$
L_0=\Delta x^{\prime}=\gamma(\Delta x-v\Delta t)=\gamma L.
$$

Thus

$$
L=\frac{L_0}{\gamma}
=\frac{10.0}{5/3}
=\boxed{6.00\ \mathrm m}.
$$

The same pair of events is not simultaneous in $S^{\prime}$:

$$
\begin{aligned}
\Delta t^{\prime}
&=\gamma\left(\Delta t-\frac{v\Delta x}{c^2}\right)\\
&=-\frac53\frac{(0.800c)(6.00\ \mathrm m)}{c^2}\\
&=\boxed{-2.667\times10^{-8}\ \mathrm s}.
\end{aligned}
$$

The negative sign means that, in the rod frame, the event at the front endpoint occurred first. It is therefore invalid to call the $6.00\ \mathrm m$ separation a rest-frame length. At $v=0$, both frames measure $10.0\ \mathrm m$ and the endpoint events become simultaneous.

## Descriptive Questions

1. Define proper time operationally and derive time dilation using the inverse Lorentz transformation.
2. Derive time dilation from the geometry of a transverse light clock and identify the frame of each measured interval.
3. Define proper length and derive longitudinal length contraction using simultaneous endpoint events.
4. Explain why transverse dimensions do not contract and why simultaneity is essential in any length measurement.

## Numerical Problems

1. During a $10.0\ \mu\mathrm s$ laboratory interval, a clock moves at $0.800c$. Find the moving clock's reading and how far it falls behind the laboratory clocks. **Answer:** $\Delta\tau=6.00\ \mu\mathrm s$; lag $=4.00\ \mu\mathrm s$.
2. A spacecraft moving at $0.600c$ takes $0.400\ \mu\mathrm s$ to pass a fixed detector, from nose arrival to tail arrival. Find its length in the laboratory and its proper length. **Answer:** $L=v\Delta t=72.0\ \mathrm m$ and $L_0=\gamma L=90.0\ \mathrm m$.
3. At what speed is a moving clock dilated by a factor of two? **Answer:** $v=(\sqrt3/2)c\simeq0.866c$.
4. A rod is observed to have $80.0\%$ of its proper length. Find its speed. **Answer:** $v=0.600c$.
5. Two events have $\Delta t=5.00\ \mu\mathrm s$ and $\Delta x=900\ \mathrm m$ in the laboratory. Find the proper time between them. **Answer:** $\Delta\tau=4.00\ \mu\mathrm s$.
6. A cube has rest dimensions $1.00\ \mathrm m\times1.00\ \mathrm m\times1.00\ \mathrm m$ and moves along one edge at $0.600c$. Find its laboratory dimensions and volume. **Answer:** $0.800\ \mathrm m\times1.00\ \mathrm m\times1.00\ \mathrm m$; $V=0.800\ \mathrm{m^3}$.

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/length-time.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Time dilation,” Wikipedia](https://en.wikipedia.org/wiki/Time_dilation).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 4, “Relativity and the Measurement of Lengths and Time Intervals.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.1, “The Special Theory of Relativity.”

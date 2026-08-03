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

Relativistic measurements compare **events**. An event has coordinates $(t,x,y,z)$; a time interval needs two clock readings, while a length needs the two endpoint positions measured at the same time in the measuring frame. Throughout, $S'$ moves at speed $v$ along $+x$ relative to $S$, with $\lvert v\rvert<c$.

## Time dilation

Let a clock be at rest in $S'$. Two ticks occur at the same position, so $\Delta x'=0$. Its reading

$$
\Delta\tau\equiv\Delta t'
$$

is the **proper time**. From the inverse Lorentz transformation,

$$
\Delta t
=\gamma\left(\Delta t'+\frac{v\Delta x'}{c^2}\right)
=\gamma\Delta t'.
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
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/light-clock.png' | relative_url }}" alt="Exact right-triangle light path for a transverse moving light clock" loading="lazy">
  <figcaption>The ray leaves the lower mirror at its initial position and reaches the upper mirror after the clock has moved $v\Delta t/2$; the final lower and upper mirror positions show the proper transverse separation $c\Delta\tau/2$.</figcaption>
</figure>

## Lorentz contraction

Let a rod be at rest in $S'$ with endpoints $x_1'$ and $x_2'$. Its **proper length** is

$$
L_0=x_2'-x_1'.
$$

To measure its length in $S$, record both endpoint positions simultaneously: $\Delta t=t_2-t_1=0$. Applying the direct position transformation to the two endpoint events,

$$
\begin{aligned}
L_0=\Delta x'
&=\gamma(\Delta x-v\Delta t)\\
&=\gamma\Delta x.
\end{aligned}
$$

Therefore

$$
\boxed{L=\Delta x=\frac{L_0}{\gamma}
=L_0\sqrt{1-\frac{v^2}{c^2}}}.
$$

Only the dimension parallel to the relative motion contracts; $y'=y$ and $z'=z$ leave transverse lengths unchanged. The simultaneity condition $\Delta t=0$ is essential: endpoint positions recorded at different times do not define the rod's length in $S$. At $v=0$, $\gamma=1$ and $L=L_0$; as $\lvert v\rvert$ increases, $L<L_0$.

The time-dilation, light-clock, and simultaneous-endpoint substitutions are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/length-time.mac' | relative_url }}); every printed residual is zero.

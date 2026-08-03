---
title: "Standing Waves, Phase and Group Velocities, and Energy Transfer"
summary: "Fixed and free string boundaries, phase and group velocities, stationary-wave kinematics, and vibrating-string energy transfer."
date: 2025-05-30 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, standing-waves, vibrating-string, energy-transfer, phase-velocity, group-velocity]
permalink: /bsc/sem-iii/standing-waves-energy-phase-group-velocity/
hidden: true
---

## Formation and boundary phase

Superpose equal waves travelling in opposite directions:

$$
y_+=A\sin(kx-\omega t),
\qquad
y_-=A\sin(kx+\omega t).
$$

The identity $\sin p+\sin q=2\sin[(p+q)/2]\cos[(p-q)/2]$ gives

$$
\boxed{y(x,t)=2A\sin kx\cos\omega t}.
$$

There is no factor of the form $kx\mp\omega t$, so the pattern does not travel. Reflection at an ideal fixed end reverses displacement and adds phase $\pi$, producing a node. At an ideal free end the reflected displacement has no phase reversal, producing an antinode.

At a fixed end, $y=0$. At a free end, the transverse force must vanish. For a small slope that force is $-T\,\partial y/\partial x$, so the boundary condition is

$$
\boxed{y=0\quad\text{(fixed end)}},
\qquad
\boxed{\frac{\partial y}{\partial x}=0\quad\text{(free end)}}.
$$

## Fixed-fixed, free-free, and fixed-free strings

Let the string occupy $0\le x\le L$.

For two fixed ends, use $y=X(x)\cos\omega t$. The condition $X(0)=0$ selects $X=C\sin kx$, while $X(L)=0$ requires

$$
\sin kL=0
\quad\Longrightarrow\quad
k_n=\frac{n\pi}{L}.
$$

Since $\omega_n=vk_n$,

$$
\boxed{y_n=C_n\sin\left(\frac{n\pi x}{L}\right)\cos(\omega_nt+\phi_n)},
\qquad
\boxed{f_n=\frac{nv}{2L}},
\quad n=1,2,3,\ldots
$$

For two free ends, $X'(0)=0$ selects $X=C\cos kx$, and $X'(L)=0$ again gives $k_n=n\pi/L$. The $n=0$ solution is a rigid translation with zero frequency; the vibrational modes have $n\ge1$ and the same frequencies $nv/(2L)$.

For a fixed end at $x=0$ and a free end at $x=L$, $X=C\sin kx$ and

$$
X'(L)=Ck\cos kL=0.
$$

Therefore

$$
k_nL=\frac{(2n-1)\pi}{2},
\qquad
\boxed{f_n=\frac{(2n-1)v}{4L}},
\quad n=1,2,3,\ldots
$$

Only odd multiples of the fundamental occur in the fixed-free case.

## Changes with position and time

For $y=2A\sin kx\cos\omega t$, fixing $t$ gives the spatial sinusoid $2A\cos\omega t\sin kx$. Its nodes and antinodes are

$$
\boxed{x_{\rm node}=\frac{n\pi}{k}=\frac{n\lambda}{2}},
\qquad
\boxed{x_{\rm antinode}=\frac{(2n+1)\pi}{2k}
=\frac{(2n+1)\lambda}{4}}.
$$

Fixing $x$ instead gives simple harmonic motion of signed amplitude $2A\sin kx$:

$$
u_y=\frac{\partial y}{\partial t}
=-2A\omega\sin kx\sin\omega t,
\qquad
\frac{\partial^2y}{\partial t^2}=-\omega^2y.
$$

All points within one loop are in phase. Since $\sin kx$ changes sign across a node, neighboring loops differ in phase by $\pi$. When $\cos\omega t=0$, the whole string passes through equilibrium and particle speeds are greatest; at $\cos\omega t=\pm1$, displacement is extremal and all particle speeds vanish.

## Energy density and transfer on a string

For linear density $\mu$, tension $T$, and small slope, the kinetic and elastic potential energies per unit length are

$$
\boxed{u_K=\frac12\mu y_t^2},
\qquad
\boxed{u_U=\frac12T y_x^2}.
$$

For the progressive wave $y=A\cos(kx-\omega t)$,

$$
y_t=A\omega\sin(kx-\omega t),
\qquad
y_x=-Ak\sin(kx-\omega t).
$$

Because $v^2=T/\mu$ and $\omega=vk$, $Tk^2=\mu\omega^2$. Hence

$$
u_K=u_U=\frac12\mu A^2\omega^2\sin^2(kx-\omega t),
$$

and the time-averaged total energy density is

$$
\boxed{\langle u\rangle
=\frac12\mu A^2\omega^2}\qquad({\rm J\,m^{-1}}).
$$

The transverse force does work across a section of string at the rate

$$
\boxed{P=-T y_x y_t}.
$$

For the right-moving wave this becomes $P=Tk\omega A^2\sin^2(kx-\omega t)$, so

$$
\boxed{\langle P\rangle
=\frac12Tk\omega A^2
=\frac12\mu v\omega^2A^2}\qquad({\rm W}).
$$

For the standing wave,

$$
u_K=2\mu A^2\omega^2\sin^2kx\sin^2\omega t,
$$

$$
u_U=2Tk^2A^2\cos^2kx\cos^2\omega t,
$$

and

$$
P=4TA^2k\omega\sin kx\cos kx\sin\omega t\cos\omega t.
$$

Thus energy alternates locally between kinetic and elastic forms, but

$$
\boxed{\langle P\rangle_t=0}.
$$

A perfect standing wave therefore has no net time-averaged energy transfer.

## Phase and group velocities

For a component $\cos(kx-\omega t)$, constant phase gives

$$
\boxed{v_p=\frac{\omega}{k}}.
$$

Now add two nearby components:

$$
y=\cos(k_1x-\omega_1t)+\cos(k_2x-\omega_2t).
$$

With $\bar k=(k_1+k_2)/2$, $\Delta k=k_1-k_2$, $\bar\omega=(\omega_1+\omega_2)/2$, and $\Delta\omega=\omega_1-\omega_2$,

$$
y=2\cos\left(\frac{\Delta k\,x-\Delta\omega\,t}{2}\right)
\cos(\bar kx-\bar\omega t).
$$

The carrier phase travels at approximately $\bar\omega/\bar k$. A point of constant envelope phase satisfies $\Delta k\,x-\Delta\omega\,t={\rm constant}$, so

$$
v_{\rm env}=\frac{\Delta\omega}{\Delta k}.
$$

For a narrow packet, take the limit:

$$
\boxed{v_g=\frac{d\omega}{dk}}.
$$

In a nondispersive medium $\omega=vk$, hence $v_p=v_g=v$. In a dispersive medium the two velocities need not be equal.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable standing-wave and group-velocity diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-1/standing-group-waves.png' | relative_url }}" alt="Equation-generated fixed-end standing-wave modes and a carrier wave inside a moving group envelope" loading="lazy">
  </div>
  <figcaption>The string panels satisfy the displayed boundary conditions; the packet separates carrier phase from envelope motion.</figcaption>
</figure>

The boundary spectra, energy identities, and carrier-envelope algebra are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-1/mj4-unit-1-checks.mac' | relative_url }}).

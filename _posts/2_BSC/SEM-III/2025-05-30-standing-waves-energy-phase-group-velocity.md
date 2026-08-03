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

For two free ends, $X^{\prime}(0)=0$ selects $X=C\cos kx$, and $X^{\prime}(L)=0$ again gives $k_n=n\pi/L$. The $n=0$ solution is a rigid translation with zero frequency; the vibrational modes have $n\ge1$ and the same frequencies $nv/(2L)$.

For a fixed end at $x=0$ and a free end at $x=L$, $X=C\sin kx$ and

$$
X^{\prime}(L)=Ck\cos kL=0.
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

## Solved Problems

### 1. Fundamental and next allowed mode of a fixed-free string

A string of length $L=0.800\,\mathrm{m}$ has tension $100\,\mathrm{N}$ and linear density $1.00\times10^{-2}\,\mathrm{kg\,m^{-1}}$. One end is fixed and the other is free. Find its fundamental frequency and the next allowed frequency.

**Step 1: Find the wave speed.**

$$
v=\sqrt{\frac{T}{\mu}}
=\sqrt{\frac{100}{0.0100}}
=100\,\mathrm{m\,s^{-1}}.
$$

**Step 2: Apply the fixed-free spectrum.** Only odd harmonics occur:

$$
f_n=\frac{(2n-1)v}{4L}.
$$

Therefore

$$
f_1=\frac{100}{4(0.800)}=31.25\,\mathrm{Hz},
$$

and the next allowed frequency is

$$
f_2=3f_1=93.75\,\mathrm{Hz}.
$$

The ratio $f_2/f_1=3$ confirms the odd-harmonic boundary condition.

### 2. Energy density and power of a progressive string wave

A sinusoidal wave on a string has $\mu=5.00\times10^{-3}\,\mathrm{kg\,m^{-1}}$, $v=80.0\,\mathrm{m\,s^{-1}}$, amplitude $A=2.00\,\mathrm{mm}$, and frequency $f=50.0\,\mathrm{Hz}$. Find its time-averaged energy per unit length and power.

**Step 1: Write the angular frequency.**

$$
\omega=2\pi f=100\pi\,\mathrm{rad\,s^{-1}}.
$$

**Step 2: Evaluate the mean energy density.**

$$
\begin{aligned}
\langle u\rangle
&=\frac12\mu A^2\omega^2\\
&=\frac12(0.00500)(0.00200)^2(100\pi)^2\\
&=10^{-4}\pi^2\,\mathrm{J\,m^{-1}}
\simeq9.87\times10^{-4}\,\mathrm{J\,m^{-1}}.
\end{aligned}
$$

**Step 3: Evaluate the power.**

$$
\langle P\rangle=v\langle u\rangle
=0.008\pi^2\,\mathrm{W}
\simeq7.90\times10^{-2}\,\mathrm{W}.
$$

The equality $\langle P\rangle/v=\langle u\rangle$ provides an independent dimensional and numerical check.

## Descriptive Questions

1. Why does reflection at a fixed end reverse displacement while reflection at a free end does not?
2. How do displacement and particle velocity vary with position and time in a standing wave?
3. Why is the time-averaged energy flux of an ideal standing wave zero?
4. Under what condition are phase velocity and group velocity equal?

## Numerical Problems

1. A string fixed at both ends has length $1.20\,\mathrm{m}$ and wave speed $240\,\mathrm{m\,s^{-1}}$. Find its fundamental and fourth-harmonic frequencies.

   **Answer:** $f_1=100\,\mathrm{Hz}$ and $f_4=400\,\mathrm{Hz}$.

2. A standing wave has wavelength $0.800\,\mathrm{m}$. Find the separation of adjacent nodes and the distance from a node to the nearest antinode.

   **Answer:** $0.400\,\mathrm{m}$ and $0.200\,\mathrm{m}$, respectively.

3. A dispersive mode obeys $\omega=ak^2$, where $a=0.500\,\mathrm{m^2\,s^{-1}}$. Find $v_p$ and $v_g$ at $k=4.00\,\mathrm{m^{-1}}$.

   **Answer:** $v_p=2.00\,\mathrm{m\,s^{-1}}$ and $v_g=4.00\,\mathrm{m\,s^{-1}}$.

4. For $y=(4.00\,\mathrm{mm})\sin(5\pi x)\cos(200\pi t)$ in SI units, find the antinode amplitude, node spacing, and frequency.

   **Answer:** $4.00\,\mathrm{mm}$, $0.200\,\mathrm{m}$, and $100\,\mathrm{Hz}$.

The solved results and all numerical answers are verified by exact residuals in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-1/mj4-unit-1-checks.mac' | relative_url }}).

## References

1. [Standing wave - Wikipedia](https://en.wikipedia.org/wiki/Standing_wave)
2. F. S. Crawford Jr., *Waves*, Berkeley Physics Course, Vol. 3, McGraw-Hill, sections on normal modes and wave packets.
3. H. J. Pain, *The Physics of Vibrations and Waves*, Wiley, chapters on vibrating strings and energy transport.
4. A. P. French, *Vibrations and Waves*, MIT Introductory Physics Series, W. W. Norton, chapters on standing waves and dispersion.

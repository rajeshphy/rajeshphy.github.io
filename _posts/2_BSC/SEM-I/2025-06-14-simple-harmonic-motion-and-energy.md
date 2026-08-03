---
title: "Simple Harmonic Motion and Energy"
summary: "The SHM equation and solution, phase, energy exchange, and time-averaged energies."
date: 2025-06-14 09:00:00 +0530
categories:
  - bsc-i
tags: [oscillations, simple-harmonic-motion, energy]
permalink: /bsc/sem-i/simple-harmonic-motion-energy/
---

Simple harmonic motion occurs when the restoring force is directly proportional to the displacement from stable equilibrium and points toward that equilibrium. For a displacement $x$,

$$
F=-kx,
\qquad
k>0.
$$

Newton's second law gives

$$
m\ddot x=-kx.
$$

After division by $m$,

$$
\boxed{\ddot x+\omega_0^2x=0},
\qquad
\boxed{\omega_0=\sqrt{\frac{k}{m}}}.
$$

## Solution of the SHM equation

Try a solution $x=e^{\lambda t}$. Substitution gives

$$
(\lambda^2+\omega_0^2)e^{\lambda t}=0.
$$

Since $e^{\lambda t}\ne0$,

$$
\lambda^2+\omega_0^2=0,
\qquad
\lambda=\pm i\omega_0.
$$

The real general solution is therefore

$$
x=C\cos\omega_0t+D\sin\omega_0t.
$$

Writing $C=A\cos\phi$ and $D=-A\sin\phi$ gives

$$
\boxed{x=A\cos(\omega_0t+\phi)}.
$$

Here $A\ge0$ is the amplitude and $\phi$ is the initial phase. One complete cycle corresponds to an increase of $2\pi$ in phase, so

$$
\omega_0T=2\pi,
$$

and hence

$$
\boxed{T=\frac{2\pi}{\omega_0}=2\pi\sqrt{\frac{m}{k}}}.
$$

Differentiation gives

$$
v=\dot x=-A\omega_0\sin(\omega_0t+\phi),
$$

$$
a=\ddot x=-A\omega_0^2\cos(\omega_0t+\phi)
=-\omega_0^2x.
$$

Thus the speed is greatest at equilibrium and zero at either turning point, whereas the acceleration magnitude is greatest at a turning point and zero at equilibrium.

## Kinetic, potential, and total energies

Since $F=-dU/dx$,

$$
-\frac{dU}{dx}=-kx
\quad\Longrightarrow\quad
\frac{dU}{dx}=kx.
$$

Choosing $U=0$ at $x=0$ and integrating,

$$
U=\int_0^x kx^{\prime}\,dx^{\prime}=\frac12kx^2.
$$

Substitution of the SHM displacement gives

$$
\boxed{U(t)=\frac12kA^2\cos^2(\omega_0t+\phi)}.
$$

The kinetic energy is

$$
K=\frac12mv^2
=\frac12mA^2\omega_0^2\sin^2(\omega_0t+\phi).
$$

Because $m\omega_0^2=k$,

$$
\boxed{K(t)=\frac12kA^2\sin^2(\omega_0t+\phi)}.
$$

Adding the two energies and using $\sin^2\alpha+\cos^2\alpha=1$,

$$
E=K+U
=\frac12kA^2\left(\sin^2(\omega_0t+\phi)+\cos^2(\omega_0t+\phi)\right),
$$

so

$$
\boxed{E=\frac12kA^2=\text{constant}}.
$$

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable SHM energy diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/shm-energy.png' | relative_url }}" alt="Normalized SHM displacement and the kinetic-potential energy exchange over one period" loading="lazy">
</div>

## Time-average energies

For any starting time $t_0$, the average over one full period is

$$
\left\langle\cos^2(\omega_0t+\phi)\right\rangle
=\frac1T\int_{t_0}^{t_0+T}\cos^2(\omega_0t+\phi)\,dt.
$$

Using $\cos^2\alpha=(1+\cos2\alpha)/2$,

$$
\left\langle\cos^2(\omega_0t+\phi)\right\rangle
=\frac12+\frac{1}{2T}
\left[\frac{\sin(2\omega_0t+2\phi)}{2\omega_0}\right]_{t_0}^{t_0+T}.
$$

Since $2\omega_0T=4\pi$, the sine has the same value at both limits. Therefore

$$
\left\langle\cos^2(\omega_0t+\phi)\right\rangle=\frac12.
$$

The same calculation gives $\langle\sin^2(\omega_0t+\phi)\rangle=1/2$. Hence

$$
\boxed{\langle K\rangle=\frac14kA^2},
\qquad
\boxed{\langle U\rangle=\frac14kA^2},
$$

and, because the total energy is constant,

$$
\boxed{\langle E\rangle=\frac12kA^2}.
$$

## Initial-value form

If $x(0)=x_0$ and $v(0)=v_0$, the constants in

$$
x=C\cos\omega_0t+D\sin\omega_0t
$$

are fixed directly. Setting $t=0$ gives $C=x_0$, while differentiating and then setting $t=0$ gives $v_0=\omega_0D$. Hence

$$
\boxed{x(t)=x_0\cos\omega_0t
+\frac{v_0}{\omega_0}\sin\omega_0t}.
$$

Comparison with $A\cos(\omega_0t+\phi)$ gives

$$
\boxed{A=\sqrt{x_0^2+\left(\frac{v_0}{\omega_0}\right)^2}},
$$

$$
\boxed{\phi=\operatorname{atan2}\!\left(-\frac{v_0}{\omega_0},x_0\right)}.
$$

The two-argument arctangent fixes the quadrant and therefore preserves the signs of both initial data.

## Solved Problems

### 1. Construct the motion from initial data

**Problem.** A $0.50\ \mathrm{kg}$ mass is attached to a spring of constant $8.0\ \mathrm{N\,m^{-1}}$. At $t=0$, $x_0=0.030\ \mathrm{m}$ and $v_0=+0.160\ \mathrm{m\,s^{-1}}$. Find $x(t)$, $A$, $\phi$, and the total energy.

**Solution.** The angular frequency is

$$
\omega_0=\sqrt{\frac{k}{m}}
=\sqrt{\frac{8.0}{0.50}}
=4.0\ \mathrm{rad\,s^{-1}}.
$$

Therefore

$$
x(t)=0.030\cos4t+\frac{0.160}{4.0}\sin4t,
$$

or

$$
\boxed{x(t)=0.030\cos4t+0.040\sin4t\ \mathrm{m}}.
$$

The amplitude is

$$
A=\sqrt{0.030^2+0.040^2}
=0.050\ \mathrm{m}.
$$

For the cosine convention,

$$
\phi=\operatorname{atan2}(-0.040,0.030)
=-0.927\ \mathrm{rad}.
$$

Finally,

$$
E=\frac12kA^2
=\frac12(8.0)(0.050)^2
=1.00\times10^{-2}\ \mathrm{J}.
$$

**Checks.** Both coefficients in $x(t)$ have units of metres. At $t=0$, the formula gives $x=0.030\ \mathrm{m}$ and $\dot x=4(0.040)=+0.160\ \mathrm{m\,s^{-1}}$, so the signs are correct. The positive initial velocity explains the negative phase in this cosine convention. If $v_0\to0$ with $x_0>0$, then $A\to x_0$ and $\phi\to0$.

### 2. Speed and energy at a specified displacement

**Problem.** An oscillator has $m=0.20\ \mathrm{kg}$, $k=5.0\ \mathrm{N\,m^{-1}}$, and amplitude $A=0.080\ \mathrm{m}$. Find its speed and the kinetic and potential energies when $x=0.040\ \mathrm{m}$.

**Solution.** Energy conservation gives

$$
\frac12mv^2+\frac12kx^2=\frac12kA^2.
$$

Thus

$$
|v|=\sqrt{\frac{k}{m}(A^2-x^2)}
=\sqrt{\frac{5.0}{0.20}(0.080^2-0.040^2)}
=0.346\ \mathrm{m\,s^{-1}}.
$$

The sign of $v$ may be positive or negative because the oscillator passes the same position in both directions. The energies are

$$
U=\frac12kx^2
=\frac12(5.0)(0.040)^2
=4.00\times10^{-3}\ \mathrm{J},
$$

$$
K=\frac12mv^2
=1.20\times10^{-2}\ \mathrm{J}.
$$

Their sum is $1.60\times10^{-2}\ \mathrm{J}$, equal to $kA^2/2$.

**Checks.** The square-root argument has units $\mathrm{m^2\,s^{-2}}$. Since $\lvert x\rvert<A$, it is positive and the position is physically accessible. The two velocity signs represent the outward and return passages. As $\lvert x\rvert\to A$, $v\to0$ and all the energy becomes potential; as $x\to0$, the speed and kinetic energy are maximum.

## Descriptive Questions

1. Starting from a linear restoring force, derive the differential equation, angular frequency, and general solution of simple harmonic motion.
2. Derive the initial-value form of the SHM solution and explain why a two-argument arctangent is needed to determine the phase.
3. Derive the kinetic, potential, and total energies of an oscillator and describe their exchange during one cycle.
4. Evaluate the average kinetic and potential energies over an arbitrary complete period and explain why the starting time does not affect the result.

## Numerical Problems

1. A $0.80\ \mathrm{kg}$ mass is attached to a $20\ \mathrm{N\,m^{-1}}$ spring. Find $\omega_0$, $T$, and $f$.

   **Final answer:** $\omega_0=5.00\ \mathrm{rad\,s^{-1}}$, $T=1.257\ \mathrm{s}$, and $f=0.7958\ \mathrm{Hz}$.

2. An oscillator has $\omega_0=6.0\ \mathrm{rad\,s^{-1}}$. Find its acceleration at $x=-0.030\ \mathrm{m}$.

   **Final answer:** $a=+1.08\ \mathrm{m\,s^{-2}}$, toward equilibrium.

3. Find the maximum speed for $A=0.050\ \mathrm{m}$ and $f=2.0\ \mathrm{Hz}$.

   **Final answer:** $v_{\max}=2\pi fA=0.628\ \mathrm{m\,s^{-1}}$.

4. An oscillator starts from $x=A$ at rest and has period $0.80\ \mathrm{s}$. When does it first cross equilibrium?

   **Final answer:** $t=T/4=0.20\ \mathrm{s}$.

5. For $k=40\ \mathrm{N\,m^{-1}}$ and $A=0.020\ \mathrm{m}$, find $\langle K\rangle$, $\langle U\rangle$, and $E$.

   **Final answer:** $\langle K\rangle=\langle U\rangle=4.00\times10^{-3}\ \mathrm{J}$ and $E=8.00\times10^{-3}\ \mathrm{J}$.

6. An oscillator of spring constant $100\ \mathrm{N\,m^{-1}}$ has total energy $0.125\ \mathrm{J}$. Find its amplitude.

   **Final answer:** $A=\sqrt{2E/k}=0.050\ \mathrm{m}$.

The analytic identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/simple-harmonic-motion.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Simple harmonic motion — Wikipedia](https://en.wikipedia.org/wiki/Simple_harmonic_motion).
2. [OpenStax, *University Physics Volume 1*, Section 15.1: Simple Harmonic Motion](https://openstax.org/books/university-physics-volume-1/pages/15-1-simple-harmonic-motion).
3. [OpenStax, *University Physics Volume 1*, Section 15.2: Energy in Simple Harmonic Motion](https://openstax.org/books/university-physics-volume-1/pages/15-2-energy-in-simple-harmonic-motion).
4. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 5.

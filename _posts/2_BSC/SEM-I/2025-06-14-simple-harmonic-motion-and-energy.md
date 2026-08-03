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
U=\int_0^x kx'\,dx'=\frac12kx^2.
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

![Normalized SHM displacement and the kinetic-potential energy exchange over one period]({{ '/assets/images/bsc/sem-i/unit-2/shm-energy.png' | relative_url }})

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

The differential equation, energy conservation, and full-period averages are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/simple-harmonic-motion.mac' | relative_url }}); every printed residual is zero.

---
title: "LC Circuit and Damped Oscillations"
summary: "Electrical SHM in an ideal LC circuit and the underdamped, critically damped, and overdamped solutions."
date: 2025-06-22 09:00:00 +0530
categories:
  - bsc-i
tags: [oscillations, lc-circuit, damping]
permalink: /bsc/sem-i/lc-damped-oscillations/
---

## Ideal LC circuit

Let $q(t)$ be the signed charge coordinate of a capacitor $C$ connected to an ideal inductor $L$, and choose the loop orientation so that the current is

$$
i=\frac{dq}{dt}.
$$

With no resistance or source, Kirchhoff's loop rule is

$$
L\frac{di}{dt}+\frac qC=0.
$$

Since $di/dt=d^2q/dt^2$,

$$
L\ddot q+\frac qC=0.
$$

Division by $L$ gives

$$
\boxed{\ddot q+\omega_0^2q=0},
\qquad
\boxed{\omega_0=\frac1{\sqrt{LC}}}.
$$

Thus charge executes SHM:

$$
q=Q_0\cos(\omega_0t+\phi).
$$

The current is

$$
i=\dot q=-\omega_0Q_0\sin(\omega_0t+\phi).
$$

The capacitor's electric energy and the inductor's magnetic energy are

$$
U_E=\frac{q^2}{2C},
\qquad
U_B=\frac12Li^2.
$$

Substitution of $q$ and $i$, together with $L\omega_0^2=1/C$, gives

$$
U_E=\frac{Q_0^2}{2C}\cos^2(\omega_0t+\phi),
$$

$$
U_B=\frac{Q_0^2}{2C}\sin^2(\omega_0t+\phi).
$$

Therefore

$$
\boxed{U_E+U_B=\frac{Q_0^2}{2C}=\text{constant}}.
$$

The conservation can also be checked directly:

$$
\frac{d}{dt}(U_E+U_B)
=\frac qC\dot q+Li\dot i
=i\left(\frac qC+L\dot i\right)=0
$$

by Kirchhoff's equation. The mechanical correspondences are $q\leftrightarrow x$, $i\leftrightarrow\dot x$, $L\leftrightarrow m$, and $1/C\leftrightarrow k$.

![Ideal LC loop with charge and current as the electrical SHM variables]({{ '/assets/images/bsc/sem-i/unit-2/lc-circuit.png' | relative_url }})

## Free damped oscillator

For a mechanical oscillator with viscous resistance $-b\dot x$, where $b>0$, Newton's equation is

$$
m\ddot x=-kx-b\dot x.
$$

Hence

$$
m\ddot x+b\dot x+kx=0.
$$

Define

$$
2\beta=\frac bm,
\qquad
\omega_0^2=\frac km.
$$

The equation becomes

$$
\boxed{\ddot x+2\beta\dot x+\omega_0^2x=0}.
$$

With $x=e^{\lambda t}$,

$$
(\lambda^2+2\beta\lambda+\omega_0^2)e^{\lambda t}=0,
$$

so the characteristic roots are

$$
\boxed{\lambda=-\beta\pm\sqrt{\beta^2-\omega_0^2}}.
$$

### Underdamping: $0<\beta<\omega_0$

Now $\beta^2-\omega_0^2<0$. Define

$$
\omega_d=\sqrt{\omega_0^2-\beta^2}.
$$

Then $\lambda=-\beta\pm i\omega_d$, and the real solution is

$$
\boxed{x=Ae^{-\beta t}\cos(\omega_dt+\phi)}.
$$

The system oscillates at the damped angular frequency $\omega_d<\omega_0$ inside the exact amplitude envelopes $\pm Ae^{-\beta t}$.

### Critical damping: $\beta=\omega_0$

The characteristic equation has the repeated root $\lambda=-\beta$. Two independent solutions are $e^{-\beta t}$ and $te^{-\beta t}$, so

$$
\boxed{x=(C_1+C_2t)e^{-\beta t}}.
$$

The displacement returns to equilibrium without oscillating.

### Overdamping: $\beta>\omega_0$

Both characteristic roots are real and negative. Therefore

$$
\boxed{x=C_1e^{(-\beta+\sqrt{\beta^2-\omega_0^2})t}
+C_2e^{(-\beta-\sqrt{\beta^2-\omega_0^2})t}}.
$$

This motion also returns to equilibrium without oscillating.

![Underdamped displacement with the exact positive and negative exponential amplitude envelopes]({{ '/assets/images/bsc/sem-i/unit-2/damped-oscillation.png' | relative_url }})

For the mechanical energy

$$
E=\frac12m\dot x^2+\frac12kx^2,
$$

the exact rate of change is

$$
\frac{dE}{dt}
=\dot x(m\ddot x+kx)
=-b\dot x^2\le0.
$$

Thus damping removes energy monotonically. The displacement envelope decays exactly as $e^{-\beta t}$ in the underdamped case. Only in the weak-damping limit, $\beta\ll\omega_0$, may the energy averaged over a cycle be written as $\langle E\rangle\propto e^{-2\beta t}$.

The LC equation and energy, the three damped solutions, and the mechanical-energy loss are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/lc-and-damped-oscillations.mac' | relative_url }}); every printed residual is zero.

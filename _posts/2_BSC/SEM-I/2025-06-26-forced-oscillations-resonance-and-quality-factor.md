---
title: "Forced Oscillations, Resonance, and Quality Factor"
summary: "Steady forced response, displacement and power resonance, bandwidth, power dissipation, and quality factor."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-i
tags: [oscillations, forced-oscillation, resonance, quality-factor]
permalink: /bsc/sem-i/forced-oscillations-resonance-quality-factor/
---

A damped oscillator driven by the harmonic force $F_0\cos\omega t$ obeys

$$
m\ddot x+b\dot x+kx=F_0\cos\omega t,
\qquad
m>0,\ b>0,\ k>0.
$$

The complete motion is the sum of a decaying transient and a steady forced oscillation. After the transient has died away, write

$$
x=A\cos(\omega t-\delta),
\qquad
A>0.
$$

Then

$$
\dot x=-\omega A\sin(\omega t-\delta),
\qquad
\ddot x=-\omega^2A\cos(\omega t-\delta).
$$

Substitution in the equation of motion gives

$$
A(k-m\omega^2)\cos(\omega t-\delta)
-Ab\omega\sin(\omega t-\delta)
=F_0\cos\omega t.
$$

Using

$$
\cos(\omega t-\delta)
=\cos\omega t\cos\delta+\sin\omega t\sin\delta,
$$

$$
\sin(\omega t-\delta)
=\sin\omega t\cos\delta-\cos\omega t\sin\delta,
$$

the cosine and sine coefficients give

$$
A\left[(k-m\omega^2)\cos\delta+b\omega\sin\delta\right]=F_0,
$$

$$
A\left[(k-m\omega^2)\sin\delta-b\omega\cos\delta\right]=0.
$$

The second equation yields

$$
\tan\delta=\frac{b\omega}{k-m\omega^2}.
$$

The tangent alone does not fix the quadrant. For $\omega>0$, choose

$$
\boxed{\delta=\operatorname{atan2}(b\omega,k-m\omega^2)},
\qquad
0<\delta<\pi.
$$

Squaring and adding the two coefficient equations gives

$$
A^2\left[(k-m\omega^2)^2+b^2\omega^2\right]=F_0^2.
$$

Therefore the steady displacement amplitude is

$$
\boxed{A(\omega)=
\frac{F_0}{\sqrt{(k-m\omega^2)^2+b^2\omega^2}}}.
$$

## Displacement resonance

The amplitude is largest when its squared denominator

$$
D(\omega)=(k-m\omega^2)^2+b^2\omega^2
$$

is smallest. Differentiation gives

$$
\frac{dD}{d\omega}
=2(k-m\omega^2)(-2m\omega)+2b^2\omega.
$$

For a nonzero stationary frequency,

$$
-2m(k-m\omega_r^2)+b^2=0.
$$

Using $\omega_0^2=k/m$ and $\beta=b/(2m)$,

$$
\boxed{\omega_r=\sqrt{\omega_0^2-2\beta^2}}.
$$

A nonzero displacement-resonance peak exists only when

$$
\boxed{\beta<\frac{\omega_0}{\sqrt2}}.
$$

As the damping becomes smaller, the amplitude peak becomes higher and narrower, and $\omega_r\to\omega_0$. If $b=0$ exactly at $\omega=\omega_0$, there is no finite steady-state amplitude; the resonant response grows with time.

## Average power dissipation

The positive instantaneous rate at which the damper removes mechanical energy is

$$
P_{\rm diss}=b\dot x^2.
$$

Since $\langle\sin^2(\omega t-\delta)\rangle=1/2$ over a cycle,

$$
\langle P\rangle
=b\omega^2A^2\left\langle\sin^2(\omega t-\delta)\right\rangle
=\frac12b\omega^2A^2.
$$

Thus

$$
\boxed{\langle P\rangle=
\frac{F_0^2b\omega^2}
{2\left[(k-m\omega^2)^2+b^2\omega^2\right]}}.
$$

In steady motion, this equals the average input power. Indeed,

$$
\langle F\dot x\rangle
=\frac12F_0A\omega\sin\delta
=\frac12b\omega^2A^2.
$$

To locate the power maximum, put $y=\omega^2$. Apart from a positive constant,

$$
\langle P\rangle\propto
\frac{y}{m^2(\omega_0^2-y)^2+b^2y}.
$$

Differentiating with respect to $y$, the numerator of the derivative reduces to

$$
m^2(\omega_0^4-y^2).
$$

Hence the power is maximum at

$$
\boxed{\omega=\omega_0},
\qquad
\boxed{\langle P\rangle_{\max}=\frac{F_0^2}{2b}}.
$$

At this frequency $k-m\omega_0^2=0$, so $\delta=\pi/2$: the velocity is in phase with the driving force.

## Sharpness, bandwidth, and quality factor

Let $\omega_1<\omega_0<\omega_2$ be the two frequencies at which the average power is half its maximum. The half-power condition is

$$
\frac{F_0^2b\omega^2}{2D(\omega)}
=\frac12\frac{F_0^2}{2b}.
$$

After cancellation,

$$
(k-m\omega^2)^2=b^2\omega^2.
$$

The positive roots on the two sides of $\omega_0$ are

$$
\boxed{\omega_1=\sqrt{\omega_0^2+\beta^2}-\beta},
$$

$$
\boxed{\omega_2=\sqrt{\omega_0^2+\beta^2}+\beta}.
$$

Therefore the full width at half maximum of the power curve is exactly

$$
\boxed{\Delta\omega=\omega_2-\omega_1=2\beta=\frac bm}.
$$

The quality factor is

$$
\boxed{Q=\frac{\omega_0}{\Delta\omega}
=\frac{m\omega_0}{b}
=\frac{\omega_0}{2\beta}}.
$$

A sharp resonance has $\Delta\omega\ll\omega_0$, equivalently $Q\gg1$.

At $\omega=\omega_0$, the stored mechanical energy is $E=\tfrac12m\omega_0^2A^2$, while the energy dissipated in one period is $\langle P\rangle(2\pi/\omega_0)=\pi b\omega_0A^2$. Hence

$$
\boxed{Q=2\pi\frac{\text{energy stored}}
{\text{energy dissipated per cycle}}}.
$$

![Displacement resonance for several damping values and the exact half-power bandwidth of the power resonance]({{ '/assets/images/bsc/sem-i/unit-2/forced-resonance.png' | relative_url }})

The steady response, displacement-resonance condition, power maximum, half-power roots, bandwidth, and quality factor are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/forced-oscillations.mac' | relative_url }}); every printed residual is zero.

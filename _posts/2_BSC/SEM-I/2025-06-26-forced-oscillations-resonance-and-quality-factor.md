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

Three limiting values provide useful checks. In the quasistatic limit,

$$
\lim_{\omega\to0}A=\frac{F_0}{k},
\qquad
\lim_{\omega\to0}\delta=0.
$$

At the natural frequency,

$$
A(\omega_0)=\frac{F_0}{b\omega_0},
\qquad
\delta(\omega_0)=\frac\pi2.
$$

At very high frequency, inertia dominates:

$$
A(\omega)\sim\frac{F_0}{m\omega^2},
\qquad
\delta\to\pi
\quad(\omega\to\infty).
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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable resonance diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/forced-resonance.png' | relative_url }}" alt="Displacement resonance for several damping values and the exact half-power bandwidth of the power resonance" loading="lazy">
</div>

## Solved Problems

### 1. Off-resonance amplitude, phase, and power

**Problem.** A driven oscillator has $m=1.0\ \mathrm{kg}$, $k=25\ \mathrm{N\,m^{-1}}$, $b=2.0\ \mathrm{kg\,s^{-1}}$, and $F_0=3.0\ \mathrm{N}$. Find the steady amplitude, phase lag, and average dissipated power at $\omega=4.0\ \mathrm{rad\,s^{-1}}$.

**Solution.** The stiffness and damping terms are

$$
k-m\omega^2=25-1(4^2)=9\ \mathrm{N\,m^{-1}},
$$

$$
b\omega=(2)(4)=8\ \mathrm{N\,m^{-1}}.
$$

Thus

$$
A=\frac{3}{\sqrt{9^2+8^2}}
=\frac3{\sqrt{145}}
=0.2491\ \mathrm{m}.
$$

The phase lag is

$$
\delta=\operatorname{atan2}(8,9)
=0.7266\ \mathrm{rad}
=41.63^\circ.
$$

The average power is

$$
\langle P\rangle
=\frac12b\omega^2A^2
=\frac12(2)(4^2)\frac9{145}
=\frac{144}{145}
=0.9931\ \mathrm{W}.
$$

**Checks.** Both terms under the amplitude square root have units $(\mathrm{N\,m^{-1}})^2$, so the result has units of length. Since $\omega<\omega_0=5\ \mathrm{rad\,s^{-1}}$, both arguments of $\operatorname{atan2}$ are positive and $0<\delta<\pi/2$, as found. The dissipated power is positive. If $b\to0$ at this nonresonant frequency, $A\to F_0/(k-m\omega^2)=1/3\ \mathrm{m}$ and $\delta\to0$.

### 2. Exact natural-frequency response and energy definition of $Q$

**Problem.** For $m=0.50\ \mathrm{kg}$, $k=72\ \mathrm{N\,m^{-1}}$, $b=3.0\ \mathrm{kg\,s^{-1}}$, and $F_0=6.0\ \mathrm{N}$, evaluate the amplitude, phase, maximum average power, bandwidth, quality factor, stored energy, and energy lost per cycle at $\omega=\omega_0$.

**Solution.** The natural angular frequency is

$$
\omega_0=\sqrt{\frac{k}{m}}
=\sqrt{\frac{72}{0.50}}
=12\ \mathrm{rad\,s^{-1}}.
$$

At this frequency $k-m\omega_0^2=0$, so

$$
A(\omega_0)=\frac{F_0}{b\omega_0}
=\frac6{(3)(12)}
=\frac16\ \mathrm{m},
\qquad
\delta=\frac\pi2.
$$

The maximum average power is

$$
\langle P\rangle_{\max}=\frac{F_0^2}{2b}
=\frac{36}{6}
=6.0\ \mathrm{W}.
$$

Also,

$$
\Delta\omega=\frac bm=6.0\ \mathrm{rad\,s^{-1}},
\qquad
Q=\frac{m\omega_0}{b}=2.0.
$$

At $\omega_0$, the stored mechanical energy is

$$
E=\frac12m\omega_0^2A^2
=\frac12(0.50)(12^2)\left(\frac16\right)^2
=1.00\ \mathrm{J}.
$$

The energy dissipated in one period is

$$
\Delta E_{\rm cycle}
=\langle P\rangle_{\max}\frac{2\pi}{\omega_0}
=6\frac{2\pi}{12}
=\pi\ \mathrm{J}.
$$

Consequently $2\pi E/\Delta E_{\rm cycle}=2=Q$.

**Checks.** $b/m$ has units $\mathrm{s^{-1}}$ and $Q$ is dimensionless. The phase is exactly $\pi/2$, so the velocity is in phase with the force and the input power is positive. The energy lost per cycle equals average power times period. As $b\to0^+$, the steady resonant amplitude and power diverge, signalling the failure of a finite steady-state solution for the undamped resonant system.

## Descriptive Questions

1. Derive the steady-state amplitude and phase lag of a harmonically driven damped oscillator by matching sine and cosine coefficients.
2. Distinguish displacement resonance from power resonance and derive the frequency and existence condition for the displacement peak.
3. Derive the average input and dissipated powers and prove that the power maximum occurs at $\omega_0$.
4. Derive the exact half-power frequencies, bandwidth, and both standard forms of the quality factor.

## Numerical Problems

1. A force of amplitude $4.0\ \mathrm{N}$ acts quasistatically on an oscillator of stiffness $80\ \mathrm{N\,m^{-1}}$. Find the steady displacement amplitude and phase lag.

   **Final answer:** $A(0)=0.050\ \mathrm{m}$ and $\delta(0)=0$.

2. Find the displacement-resonance frequency for $\omega_0=20\ \mathrm{rad\,s^{-1}}$ and $\beta=3.0\ \mathrm{s^{-1}}$.

   **Final answer:** $\omega_r=\sqrt{382}=19.545\ \mathrm{rad\,s^{-1}}$.

3. For $m=0.50\ \mathrm{kg}$ and $k=50\ \mathrm{N\,m^{-1}}$, find the largest $b$ that permits a nonzero displacement-resonance peak. Does $b=8.0\ \mathrm{kg\,s^{-1}}$ permit one?

   **Final answer:** $b<\sqrt{2mk}=7.071\ \mathrm{kg\,s^{-1}}$; therefore $b=8.0\ \mathrm{kg\,s^{-1}}$ does not.

4. An oscillator has $\omega_0=12\ \mathrm{rad\,s^{-1}}$ and $b/m=3.0\ \mathrm{s^{-1}}$. Find its exact half-power frequencies and bandwidth.

   **Final answer:** $\omega_1=10.593\ \mathrm{rad\,s^{-1}}$, $\omega_2=13.593\ \mathrm{rad\,s^{-1}}$, and $\Delta\omega=3.000\ \mathrm{rad\,s^{-1}}$.

5. A $0.500\ \mathrm{kg}$ oscillator driven at $10.0\ \mathrm{rad\,s^{-1}}$ has steady amplitude $4.00\ \mathrm{cm}$ and lags the force by $45.0^\circ$. If $b=3.00\ \mathrm{kg\,s^{-1}}$, determine the stiffness $k$ and force amplitude $F_0$.

   **Final answer:**

   $$
   \begin{aligned}
   k-m\omega^2
   &=\frac{b\omega}{\tan\delta}
   =30.0\ \mathrm{N\,m^{-1}},\\
   k&=80.0\ \mathrm{N\,m^{-1}},\\
   F_0
   &=A\sqrt{(k-m\omega^2)^2+b^2\omega^2}\\
   &=1.20\sqrt2\ \mathrm{N}
   =1.697\ \mathrm{N}.
   \end{aligned}
   $$

6. A resonance has $f_0=100\ \mathrm{Hz}$ and half-power bandwidth $\Delta f=5.0\ \mathrm{Hz}$. Find its quality factor.

   **Final answer:** $Q=f_0/\Delta f=20$.

The response identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/forced-oscillations.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Resonance — Wikipedia](https://en.wikipedia.org/wiki/Resonance).
2. [OpenStax, *University Physics Volume 1*, Section 15.6: Forced Oscillations](https://openstax.org/books/university-physics-volume-1/pages/15-6-forced-oscillations).
3. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 5.

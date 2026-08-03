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

Therefore the oscillation period and frequency are

$$
\boxed{T=2\pi\sqrt{LC}},
\qquad
\boxed{f=\frac{1}{2\pi\sqrt{LC}}}.
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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable LC-circuit diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/lc-circuit.png' | relative_url }}" alt="Ideal LC loop with charge and current as the electrical SHM variables" loading="lazy">
</div>

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

Successive maxima of the same sign are separated by the damped period

$$
T_d=\frac{2\pi}{\omega_d}.
$$

If their magnitudes are $x_n$ and $x_{n+1}$, the exponential envelope gives

$$
\frac{|x_n|}{|x_{n+1}|}=e^{\beta T_d}.
$$

The **logarithmic decrement** is therefore

$$
\boxed{\Lambda=\ln\frac{|x_n|}{|x_{n+1}|}
=\beta T_d=\frac{2\pi\beta}{\omega_d}}.
$$

The amplitude relaxation time is $\tau_A=1/\beta$, the time in which the envelope falls by a factor $e$.

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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable damped-oscillation diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/damped-oscillation.png' | relative_url }}" alt="Underdamped displacement with the exact positive and negative exponential amplitude envelopes" loading="lazy">
</div>

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

## Solved Problems

### 1. Charge, current, and energy in an LC oscillator

**Problem.** An ideal circuit has $L=0.250\ \mathrm{H}$ and $C=10.0\ \mu\mathrm{F}$. Initially the capacitor carries charge $Q_0=40.0\ \mu\mathrm{C}$ and the current is zero. Find $\omega_0$, $T$, the maximum current, and the total energy.

**Solution.** The angular frequency is

$$
\omega_0=\frac1{\sqrt{LC}}
=\frac1{\sqrt{(0.250)(10.0\times10^{-6})}}
=632.46\ \mathrm{rad\,s^{-1}}.
$$

Hence

$$
T=\frac{2\pi}{\omega_0}
=9.935\times10^{-3}\ \mathrm{s}.
$$

With $q=Q_0\cos\omega_0t$, the current amplitude is

$$
I_{\max}=\omega_0Q_0
=(632.46)(40.0\times10^{-6})
=2.530\times10^{-2}\ \mathrm{A}.
$$

The conserved energy is initially electric:

$$
E=\frac{Q_0^2}{2C}
=\frac{(40.0\times10^{-6})^2}{2(10.0\times10^{-6})}
=8.00\times10^{-5}\ \mathrm{J}.
$$

**Checks.** $LC$ has units $\mathrm{s^2}$, $\omega_0Q_0$ has units of amperes, and $Q_0^2/C$ has units of joules. The current initially vanishes and then has the sign $i=-\omega_0Q_0\sin\omega_0t$ for the stated loop convention. At $q=0$, $LI_{\max}^2/2=8.00\times10^{-5}\ \mathrm{J}$, independently checking the energy. As $C\to\infty$, $\omega_0\to0$.

### 2. An underdamped initial-value problem

**Problem.** A damped oscillator has $m=1.0\ \mathrm{kg}$, $k=25\ \mathrm{N\,m^{-1}}$, and $b=6.0\ \mathrm{kg\,s^{-1}}$. It is released from rest at $x(0)=0.100\ \mathrm{m}$. Find $x(t)$, the logarithmic decrement, and the same-sign peak-amplitude ratio after one cycle.

**Solution.** The parameters are

$$
\beta=\frac{b}{2m}=3.0\ \mathrm{s^{-1}},
\qquad
\omega_0=\sqrt{\frac{k}{m}}=5.0\ \mathrm{rad\,s^{-1}}.
$$

Since $\beta<\omega_0$, the motion is underdamped, with

$$
\omega_d=\sqrt{\omega_0^2-\beta^2}
=\sqrt{25-9}
=4.0\ \mathrm{rad\,s^{-1}}.
$$

Write

$$
x=e^{-3t}(C\cos4t+D\sin4t).
$$

The initial displacement gives $C=0.100\ \mathrm{m}$. Differentiating and setting $t=0$ gives

$$
v(0)=-3C+4D=0,
$$

so $D=0.075\ \mathrm{m}$. Therefore

$$
\boxed{x(t)=e^{-3t}(0.100\cos4t+0.075\sin4t)\ \mathrm{m}}.
$$

The logarithmic decrement is

$$
\Lambda=\frac{2\pi\beta}{\omega_d}
=\frac{2\pi(3)}4
=\frac{3\pi}{2}
=4.712.
$$

Thus

$$
\frac{|x_{n+1}|}{|x_n|}=e^{-\Lambda}
=e^{-3\pi/2}
=8.98\times10^{-3}.
$$

**Checks.** $\beta$ and $\omega_d$ both have units $\mathrm{s^{-1}}$, so $\Lambda$ is dimensionless. Direct substitution gives $x(0)=0.100\ \mathrm{m}$ and $v(0)=0$. Both characteristic roots have negative real part, so the envelope decays rather than grows. The critical value is $b_c=2\sqrt{mk}=10\ \mathrm{kg\,s^{-1}}$; as $b\to b_c^-$, $\omega_d\to0$ and the oscillatory description reaches its boundary.

## Descriptive Questions

1. Derive the differential equation, frequency, charge, current, and energy conservation law of an ideal LC oscillator.
2. Starting from the characteristic equation, derive the underdamped, critically damped, and overdamped solutions and state the condition for each.
3. Derive the logarithmic decrement and explain how it measures the decay of successive same-sign maxima.
4. Prove that $dE/dt=-b\dot x^2$ for viscous damping and distinguish exact amplitude decay from weak-damping cycle-averaged energy decay.

## Numerical Problems

1. An ideal LC oscillator has $L=0.200\ \mathrm{H}$, $C=8.00\ \mu\mathrm{F}$, and charge amplitude $Q_0=40.0\ \mu\mathrm{C}$. At an instant when $q=20.0\ \mu\mathrm{C}$ and decreasing, find the current and the fractions of the total energy stored electrically and magnetically.

   **Final answer:**

   $$
   \begin{aligned}
   i&=-\sqrt{\frac{Q_0^2-q^2}{LC}}
   =-2.739\times10^{-2}\ \mathrm{A},\\
   \frac{U_E}{E}&=\frac14,
   \qquad
   \frac{U_B}{E}=\frac34,\\
   U_E+U_B&=E.
   \end{aligned}
   $$

2. A $3.0\ \mu\mathrm{F}$ capacitor has maximum charge $12\ \mu\mathrm{C}$. Find its maximum voltage.

   **Final answer:** $V_{\max}=Q_0/C=4.0\ \mathrm{V}$.

3. The amplitude envelope of an underdamped oscillator of mass $0.500\ \mathrm{kg}$ falls from $12.0\ \mathrm{mm}$ to $9.00\ \mathrm{mm}$ in $0.800\ \mathrm{s}$. Find the amplitude relaxation time $\tau_A$ and viscous damping coefficient $b$.

   **Final answer:** $\tau_A=0.800/\ln(12/9)=2.781\ \mathrm{s}$ and $b=2m/\tau_A=0.3596\ \mathrm{kg\,s^{-1}}$.

4. Classify the damping for $m=2.0\ \mathrm{kg}$, $k=18\ \mathrm{N\,m^{-1}}$, and $b=12\ \mathrm{kg\,s^{-1}}$.

   **Final answer:** $\beta=3.0\ \mathrm{s^{-1}}=\omega_0$; the motion is critically damped.

5. For $m=1.0\ \mathrm{kg}$, $k=100\ \mathrm{N\,m^{-1}}$, and $b=8.0\ \mathrm{kg\,s^{-1}}$, find $\omega_d$ and $T_d$.

   **Final answer:** $\omega_d=\sqrt{84}=9.165\ \mathrm{rad\,s^{-1}}$ and $T_d=0.6856\ \mathrm{s}$.

6. Find the two decay constants for $m=1.0\ \mathrm{kg}$, $k=8.0\ \mathrm{N\,m^{-1}}$, and $b=6.0\ \mathrm{kg\,s^{-1}}$.

   **Final answer:** $\lambda_1=-2.0\ \mathrm{s^{-1}}$ and $\lambda_2=-4.0\ \mathrm{s^{-1}}$; the motion is overdamped.

The LC and damping identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/lc-and-damped-oscillations.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [RLC circuit — Wikipedia](https://en.wikipedia.org/wiki/RLC_circuit).
2. [OpenStax, *University Physics Volume 2*, Section 14.5: Oscillations in an LC Circuit](https://openstax.org/books/university-physics-volume-2/pages/14-5-oscillations-in-an-lc-circuit).
3. [OpenStax, *University Physics Volume 2*, Section 14.6: RLC Series Circuits](https://openstax.org/books/university-physics-volume-2/pages/14-6-rlc-series-circuits).
4. [OpenStax, *University Physics Volume 1*, Section 15.5: Damped Oscillations](https://openstax.org/books/university-physics-volume-1/pages/15-5-damped-oscillations).
5. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapter 5.

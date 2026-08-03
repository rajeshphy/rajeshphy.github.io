---
title: "Progressive Waves and Superposition"
summary: "Plane and spherical waves, longitudinal and transverse motion, the wave equation, particle and wave velocities, beats, and Lissajous figures."
date: 2025-05-29 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, wave-equation, progressive-waves, superposition, beats, lissajous-figures]
permalink: /bsc/sem-iii/progressive-waves-superposition/
hidden: true
---

A wave is a disturbance that transports energy without a net transport of the medium. In a transverse wave the displacement is perpendicular to the direction of propagation; in a longitudinal wave it is parallel.

## Wave equation and travelling waves

For a stretched string of tension $T$ and linear mass density $\mu$, take an element $dx$ whose slope is small. The transverse resultant of the tensions is

$$
T\left[\frac{\partial y}{\partial x}(x+dx,t)
-\frac{\partial y}{\partial x}(x,t)\right]
=T\frac{\partial^2y}{\partial x^2}\,dx.
$$

Newton's second law therefore gives

$$
\mu\,dx\frac{\partial^2y}{\partial t^2}
=T\frac{\partial^2y}{\partial x^2}\,dx,
$$

or

$$
\boxed{\frac{\partial^2y}{\partial x^2}
=\frac1{v^2}\frac{\partial^2y}{\partial t^2}},
\qquad
\boxed{v=\sqrt{\frac{T}{\mu}}}.
$$

The dimensions are $[T/\mu]={\rm m^2\,s^{-2}}$, so $v$ has units ${\rm m\,s^{-1}}$. For a right-moving profile $y=f(x-vt)$, put $\xi=x-vt$. Then

$$
y_{xx}=f^{\prime\prime}(\xi),
\qquad
y_{tt}=v^2f^{\prime\prime}(\xi),
$$

so the profile satisfies the wave equation. Similarly, $g(x+vt)$ travels in the $-x$ direction. The general one-dimensional solution is

$$
\boxed{y(x,t)=f(x-vt)+g(x+vt)}.
$$

For a harmonic progressive wave,

$$
y=A\cos(kx-\omega t+\phi),
\qquad
k=\frac{2\pi}{\lambda},
\qquad
\omega=2\pi f,
$$

a point of constant phase obeys $kx-\omega t={\rm constant}$; hence

$$
\boxed{v=\frac{dx}{dt}=\frac{\omega}{k}=f\lambda}.
$$

This wave velocity is distinct from the transverse velocity of a string particle:

$$
\boxed{u_y(x,t)=\frac{\partial y}{\partial t}
=\omega A\sin(kx-\omega t+\phi)}.
$$

The particle velocity oscillates and can be positive, negative, or zero while the profile continues to move in $+x$.

In three dimensions the scalar wave equation is $\nabla^2\psi=v^{-2}\psi_{tt}$. A plane harmonic wave is

$$
\psi(\mathbf r,t)=A\cos(\mathbf k\cdot\mathbf r-\omega t+\phi),
$$

whose constant-phase surfaces are planes normal to $\mathbf k$. For spherical symmetry, setting $U=r\psi$ reduces the radial equation (for $r>0$) to $U_{rr}=v^{-2}U_{tt}$. Thus an outgoing spherical wave is

$$
\boxed{\psi(r,t)=\frac{1}{r}F(r-vt)}
$$

and, for a harmonic source, $\psi=(A/r)\cos(kr-\omega t+\phi)$. Since intensity is proportional to amplitude squared,

$$
I(r)\propto\frac1{r^2},
$$

so $4\pi r^2I(r)$ is constant when there is no absorption.

## Linearity and equal-frequency superposition

If $L[y]=y_{xx}-v^{-2}y_{tt}$, then

$$
L[ay_1+by_2]=aL[y_1]+bL[y_2].
$$

Therefore any linear combination of solutions is also a solution. For two collinear oscillations of the same angular frequency,

$$
y_1=A_1\cos\omega t,
\qquad
y_2=A_2\cos(\omega t+\delta),
$$

their sum is

$$
y=(A_1+A_2\cos\delta)\cos\omega t
-A_2\sin\delta\sin\omega t.
$$

Write this as $y=R\cos(\omega t+\alpha)$. Comparing the cosine and sine coefficients,

$$
R\cos\alpha=A_1+A_2\cos\delta,
\qquad
R\sin\alpha=A_2\sin\delta.
$$

Squaring and adding gives

$$
\boxed{R=\sqrt{A_1^2+A_2^2+2A_1A_2\cos\delta}},
\qquad
\boxed{\tan\alpha=
\frac{A_2\sin\delta}{A_1+A_2\cos\delta}}.
$$

The same result is obtained graphically by adding phasors of lengths $A_1$ and $A_2$ separated by $\delta$. In particular, $R=A_1+A_2$ for $\delta=0$, while $R=\lvert A_1-A_2\rvert$ for $\delta=\pi$.

## Different frequencies and beats

Take two equal-amplitude waves:

$$
y_1=A\cos(k_1x-\omega_1t),
\qquad
y_2=A\cos(k_2x-\omega_2t).
$$

Using $\cos p+\cos q=2\cos[(p-q)/2]\cos[(p+q)/2]$,

$$
\boxed{y=2A\cos\left(\frac{\Delta k\,x-\Delta\omega\,t}{2}\right)
\cos(\bar kx-\bar\omega t)},
$$

where $\Delta k=k_1-k_2$, $\Delta\omega=\omega_1-\omega_2$, $\bar k=(k_1+k_2)/2$, and $\bar\omega=(\omega_1+\omega_2)/2$. At a fixed position the rapidly oscillating factor has frequency close to $\bar f$, while the magnitude of the envelope is

$$
A_{\rm env}=2A\left\lvert\cos\left(\frac{\Delta k\,x-\Delta\omega\,t}{2}\right)\right\rvert.
$$

Successive envelope maxima are separated by $T_b=2\pi/\lvert\Delta\omega\rvert$. Hence

$$
\boxed{f_b=\frac1{T_b}=\frac{\lvert\Delta\omega\rvert}{2\pi}
=\lvert f_1-f_2\rvert}.
$$

Because intensity is proportional to $A_{\rm env}^2$, the sound or light intensity rises and falls at this beat frequency.

## Lissajous figures and their uses

Two perpendicular simple harmonic motions,

$$
x=A\sin\omega_xt,
\qquad
y=B\sin(\omega_yt+\delta),
$$

trace a Lissajous figure. For equal frequencies, put $X=x/A=\sin\omega t$ and expand

$$
\frac yB=\sin\omega t\cos\delta+\cos\omega t\sin\delta.
$$

Thus $y/B-X\cos\delta=\cos\omega t\sin\delta$. Squaring and using $\cos^2\omega t=1-X^2$ gives

$$
\boxed{\frac{x^2}{A^2}+\frac{y^2}{B^2}
-2\frac{x}{A}\frac{y}{B}\cos\delta=\sin^2\delta}.
$$

It is generally an ellipse. It becomes a straight line for $\delta=0$ or $\pi$, and a circle for $A=B$ with $\delta=\pi/2$ or $3\pi/2$. If the ellipse cuts the $y$-axis at $y_0$, then

$$
\boxed{\lvert\sin\delta\rvert=\frac{\lvert y_0\rvert}{B}},
$$

while the slope/orientation identifies the appropriate phase quadrant.

If $\omega_x/\omega_y=p/q$ with coprime integers $p,q$, the curve closes after a common period. Counting non-degenerate vertical and horizontal tangencies gives

$$
\boxed{\frac{f_x}{f_y}=\frac{N_{\rm vertical}}{N_{\rm horizontal}}}.
$$

On an oscilloscope in $X$-$Y$ mode, these facts allow measurement of an unknown frequency against a standard and measurement of phase difference for equal frequencies.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable wave-superposition diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-1/waves-superposition.png' | relative_url }}" alt="Equation-generated transverse wave, spherical amplitude decay, beat envelope, and Lissajous ellipse" loading="lazy">
  </div>
  <figcaption>Every curve is plotted from the equations in the note with its parameter values printed beside the panel.</figcaption>
</figure>

## Solved Problems

### 1. Resultant of two equal-frequency oscillations

Two collinear oscillations have amplitudes $A_1=3\,\mathrm{mm}$ and $A_2=4\,\mathrm{mm}$, with the second leading the first by $90^\circ$. Find the resultant amplitude and phase lead.

**Step 1: Use the phasor components.** With $\delta=\pi/2$,

$$
R\cos\alpha=A_1+A_2\cos\delta=3\,\mathrm{mm},
$$

$$
R\sin\alpha=A_2\sin\delta=4\,\mathrm{mm}.
$$

**Step 2: Determine the amplitude.**

$$
R=\sqrt{3^2+4^2}\,\mathrm{mm}=5\,\mathrm{mm}.
$$

**Step 3: Determine the phase.**

$$
\tan\alpha=\frac{4}{3}
\quad\Longrightarrow\quad
\alpha=\tan^{-1}\!\left(\frac43\right)\simeq53.13^\circ.
$$

The component check is $5\cos\alpha=3$ and $5\sin\alpha=4$, so both the amplitude and quadrant are consistent.

### 2. Phase from an equal-frequency Lissajous figure

An equal-frequency Lissajous ellipse has vertical semiaxis $B=6\,\mathrm{cm}$ and crosses the positive $y$-axis at $y_0=3\,\mathrm{cm}$. Its major axis has positive slope. Find the phase difference.

**Step 1: Use the intercept relation.**

$$
\left\lvert\sin\delta\right\rvert
=\frac{\lvert y_0\rvert}{B}=\frac{3}{6}=\frac12.
$$

Thus the possible phases in $0\leq\delta\leq\pi$ are $30^\circ$ and $150^\circ$.

**Step 2: Use the orientation.** A positive-slope ellipse has $\cos\delta>0$, which selects the first quadrant:

$$
\boxed{\delta=30^\circ}.
$$

Substitution gives $\lvert\sin30^\circ\rvert=1/2$, reproducing the measured intercept.

## Descriptive Questions

1. How does particle velocity differ from wave velocity in a transverse progressive wave?
2. Why does the amplitude of an ideal spherical wave vary as $1/r$ while its intensity varies as $1/r^2$?
3. How does linearity of the wave equation lead to the superposition principle?
4. How can a Lissajous figure determine an unknown frequency and an equal-frequency phase difference?

## Numerical Problems

1. A string has tension $64\,\mathrm{N}$ and linear density $1.00\times10^{-2}\,\mathrm{kg\,m^{-1}}$. A travelling wave on it has wavelength $0.400\,\mathrm{m}$. Find its speed and frequency.

   **Answer:** $v=80.0\,\mathrm{m\,s^{-1}}$ and $f=200\,\mathrm{Hz}$.

2. The displacement amplitude of an outgoing spherical wave is $3.00\,\mathrm{mm}$ at $r=2.00\,\mathrm{m}$. Find its amplitude at $r=5.00\,\mathrm{m}$ and the corresponding intensity ratio $I(5)/I(2)$.

   **Answer:** $A(5)=1.20\,\mathrm{mm}$ and $I(5)/I(2)=4/25=0.160$.

3. Two tuning forks of frequencies $256\,\mathrm{Hz}$ and $260\,\mathrm{Hz}$ sound together. Find the beat frequency and the time between successive intensity maxima.

   **Answer:** $f_b=4.00\,\mathrm{Hz}$ and $T_b=0.250\,\mathrm{s}$.

4. A closed Lissajous figure has three vertical tangencies and two horizontal tangencies. If the standard signal applied along $y$ has frequency $f_y=200\,\mathrm{Hz}$, find the unknown frequency $f_x$ using the tangency-count relation stated above.

   **Answer:** $f_x=(3/2)f_y=300\,\mathrm{Hz}$.

The solved results and all numerical answers are verified by exact residuals in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-1/mj4-unit-1-checks.mac' | relative_url }}).

## References

1. [Wave equation - Wikipedia](https://en.wikipedia.org/wiki/Wave_equation)
2. F. S. Crawford Jr., *Waves*, Berkeley Physics Course, Vol. 3, McGraw-Hill, sections on progressive waves and superposition.
3. H. J. Pain, *The Physics of Vibrations and Waves*, Wiley, chapters on travelling waves and beats.
4. A. P. French, *Vibrations and Waves*, MIT Introductory Physics Series, W. W. Norton, chapters on coupled harmonic motions and Lissajous figures.

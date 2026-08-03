---
title: "Relativistic Doppler Effect"
summary: "Longitudinal, angular, and transverse relativistic Doppler shifts with explicit sign and angle conventions."
date: 2025-07-16 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - relativistic-doppler-effect
permalink: /bsc/sem-i/relativistic-doppler-effect/
---

Let a source emit successive wave crests with proper period $T_0=1/\nu_0$. The two emissions occur at the same source position in its rest frame, so an observer who sees the source move at speed $v$ measures the emission interval

$$
\Delta t_{\rm e}=\gamma T_0.
$$

## Receding source

During this interval the source moves away by

$$
\Delta x_{\rm e}=v\Delta t_{\rm e}=v\gamma T_0.
$$

The second crest must traverse this additional distance, taking $\Delta x_{\rm e}/c$. The reception period is therefore

$$
\begin{aligned}
T_{\rm obs}
&=\Delta t_{\rm e}+\frac{\Delta x_{\rm e}}{c}\\
&=\gamma T_0(1+\beta).
\end{aligned}
$$

Consequently,

$$
\begin{aligned}
\nu_{\rm obs}
&=\frac{\nu_0}{\gamma(1+\beta)}\\
&=\nu_0\frac{\sqrt{1-\beta^2}}{1+\beta}\\
&=\boxed{\nu_0\sqrt{\frac{1-\beta}{1+\beta}}}.
\end{aligned}
$$

The frequency decreases: this is a redshift.

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable relativistic-Doppler diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/relativistic-doppler.png' | relative_url }}" alt="Spacetime diagram of two emissions from a receding source and their reception by a stationary observer" loading="lazy">
  </div>
  <figcaption>The second light ray starts farther from the observer; the plotted intercepts give $T_{\rm obs}=\gamma T_0(1+\beta)$.</figcaption>
</figure>

## Approaching source

If the source approaches, its second emission is closer by $v\gamma T_0$. The reception interval becomes

$$
T_{\rm obs}=\gamma T_0(1-\beta),
$$

and

$$
\boxed{\nu_{\rm obs}
=\nu_0\sqrt{\frac{1+\beta}{1-\beta}}}.
$$

The frequency increases: this is a blueshift. For purely longitudinal motion, both cases can be written with signed radial velocity $\beta_r=v_r/c$, positive for recession:

$$
\boxed{\frac{\nu_{\rm obs}}{\nu_0}
=\sqrt{\frac{1-\beta_r}{1+\beta_r}}}.
$$

For $\lvert\beta_r\rvert\ll1$, use $(1+x)^a\simeq1+ax$:

$$
\frac{\nu_{\rm obs}}{\nu_0}
=(1-\beta_r)^{1/2}(1+\beta_r)^{-1/2}
\simeq\left(1-\frac{\beta_r}{2}\right)
\left(1-\frac{\beta_r}{2}\right)
\simeq1-\beta_r.
$$

Thus the classical first-order Doppler shift is recovered, while the exact square-root factor contains the relativistic correction.

## Arbitrary viewing angle

Let $\theta$ be the angle, measured in the observer's frame, between the source velocity $+\hat{\mathbf x}$ and the light propagation direction. A light wave has $k_x=(\omega/c)\cos\theta$. Transforming its frequency to the source rest frame gives

$$
\omega_0
=\gamma(\omega-vk_x)
=\gamma\omega(1-\beta\cos\theta).
$$

Therefore the observed frequency is

$$
\boxed{
\nu_{\rm obs}
=\frac{\nu_0}{\gamma(1-\beta\cos\theta)}
}.
$$

Here $0\le\beta<1$ and $-1\le\cos\theta\le1$, so $1-\beta\cos\theta\ge1-\beta>0$; the frequency is finite and positive throughout its physical domain.

This convention reproduces the longitudinal results: $\theta=\pi$ for a receding source and $\theta=0$ for an approaching source. When the light is transverse in the observer's frame, $\theta=\pi/2$, so

$$
\boxed{\nu_\perp=\frac{\nu_0}{\gamma}}.
$$

This purely relativistic transverse Doppler shift is a redshift. The angle must always be stated because the emission angle in the source frame is not the same as $\theta$.

## Solved Problems

### 1. Recession speed from a spectral-line redshift

A source emits the hydrogen line at rest wavelength $\lambda_0=656.28\ \mathrm{nm}$. A stationary observer in frame $S$ measures $\lambda_{\rm obs}=820.35\ \mathrm{nm}$ while the source recedes along the line of sight. Find its speed. Take positive radial velocity to mean recession.

For longitudinal recession,

$$
R\equiv\frac{\lambda_{\rm obs}}{\lambda_0}
=\sqrt{\frac{1+\beta}{1-\beta}}.
$$

Here $R=820.35/656.28=1.2500$. Squaring and solving,

$$
R^2(1-\beta)=1+\beta,
$$

$$
\beta=\frac{R^2-1}{R^2+1}
=\frac{1.25^2-1}{1.25^2+1}
=\boxed{0.21951}.
$$

Therefore

$$
v=+0.21951c
=\boxed{6.58\times10^7\ \mathrm{m\,s^{-1}}}.
$$

The sign is positive because the observed wavelength is longer than the rest wavelength. For $R\to1$, $v\to0$; at small redshift, $\beta\simeq R-1$, whereas the exact expression remains subluminal for every finite $R$.

### 2. Viewing angle for zero net Doppler shift

A source moves at $v=+0.600c$ along $+x$. At what observer-frame angle $\theta$ between $+x$ and the light propagation direction is the observed frequency equal to the source rest frequency?

The angular formula is

$$
\frac{\nu_{\rm obs}}{\nu_0}
=\frac{1}{\gamma(1-\beta\cos\theta)}.
$$

For $\beta=0.600$, $\gamma=1.25$. Setting the ratio to one gives

$$
\gamma(1-\beta\cos\theta)=1,
$$

$$
\cos\theta
=\frac{1-1/\gamma}{\beta}
=\frac{1-0.800}{0.600}
=\frac13.
$$

Hence

$$
\boxed{\theta=\cos^{-1}\!\left(\frac13\right)
\simeq70.53^\circ}.
$$

The photon has a positive $x$ component because $\cos\theta>0$. At smaller angles the longitudinal approach contribution dominates and produces a blueshift; at larger angles time dilation dominates and produces a redshift. This zero-shift angle tends to $90^\circ$ as $\beta\to0$, although the shift itself then vanishes for every angle.

## Descriptive Questions

1. Derive the longitudinal relativistic Doppler factor for a receding source from successive emission and reception events.
2. Obtain the approaching-source result and show that the classical first-order shift is recovered for small radial speed.
3. Derive the observer-angle formula by Lorentz transforming the wave frequency and wave-vector component.
4. Explain the transverse Doppler redshift and why the reference frame used to define the angle must be stated.

## Numerical Problems

1. A receding source moves at $0.800c$ and emits at $600\ \mathrm{THz}$. Find the observed frequency. **Answer:** $\nu_{\rm obs}=200\ \mathrm{THz}$.
2. A source approaches at $0.600c$ and emits wavelength $500\ \mathrm{nm}$. Find the observed wavelength. **Answer:** $\lambda_{\rm obs}=250\ \mathrm{nm}$.
3. A source moves transversely in the observer frame at $0.800c$ and emits at $500\ \mathrm{THz}$. Find the observed frequency. **Answer:** $\nu_\perp=300\ \mathrm{THz}$.
4. A source with $\beta=0.600$ is seen at $\theta=60^\circ$ and has $\nu_0=400\ \mathrm{THz}$. Find the observed frequency. **Answer:** $\nu_{\rm obs}=(8/7)\nu_0=457.14\ \mathrm{THz}$.
5. Two identical beacons move along the line of sight at equal unknown speeds, one approaching and one receding. Their observed frequencies are $800\ \mathrm{THz}$ and $200\ \mathrm{THz}$, respectively. Find their common speed and rest frequency. **Answer:** $v=0.600c$ and $\nu_0=\sqrt{\nu_{\rm app}\nu_{\rm rec}}=400\ \mathrm{THz}$.
6. A star recedes at $30.0\ \mathrm{km\,s^{-1}}$ and emits a $600\ \mathrm{nm}$ line. Compare the first-order and exact wavelength shifts using $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$. **Answer:** $\Delta\lambda_{\rm first}=0.0600\ \mathrm{nm}$; $\Delta\lambda_{\rm exact}=0.060003\ \mathrm{nm}$.

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/relativistic-doppler.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Relativistic Doppler effect,” Wikipedia](https://en.wikipedia.org/wiki/Relativistic_Doppler_effect).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 5, “Relativistic Kinematics.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.1, “The Special Theory of Relativity.”

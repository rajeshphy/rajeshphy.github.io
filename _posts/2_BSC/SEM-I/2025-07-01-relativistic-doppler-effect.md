---
title: "Relativistic Doppler Effect"
summary: "Longitudinal, angular, and transverse relativistic Doppler shifts with explicit sign and angle conventions."
date: 2025-07-01 09:00:00 +0530
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
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/relativistic-doppler.png' | relative_url }}" alt="Spacetime diagram of two emissions from a receding source and their reception by a stationary observer" loading="lazy">
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

The longitudinal and angular shift forms, their limiting angles, and the low-speed coefficient are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/relativistic-doppler.mac' | relative_url }}); every printed residual is zero.

---
title: "Laplace Transforms and Applications"
summary: "Elementary and inverse Laplace transforms, scaling and shifting, delta and periodic functions, derivatives, integrals, convolution, and differential equations."
date: 2025-06-22 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-17, laplace-transform, convolution, differential-equations]
permalink: /bsc/sem-vii/laplace-transforms/
hidden: true
---

For $t\ge0$, the Laplace transform is

$$
\boxed{F(s)=\mathcal L\{f(t)\}
=\int_0^\infty e^{-st}f(t)\,dt,}
$$

where $\operatorname{Re}s$ is large enough for the integral to converge.

## Elementary functions

For $\operatorname{Re}s>0$,

$$
\mathcal L\{1\}=\int_0^\infty e^{-st}dt=\frac1s.
$$

With $u=st$,

$$
\mathcal L\{t^n\}
=\frac1{s^{n+1}}\int_0^\infty u^ne^{-u}du
=\boxed{\frac{n!}{s^{n+1}}}.
$$

Direct integration gives

$$
\mathcal L\{e^{at}\}=\frac1{s-a},
\qquad \operatorname{Re}s>\operatorname{Re}a.
$$

Using $e^{i\omega t}=\cos\omega t+i\sin\omega t$,

$$
\frac1{s-i\omega}=\frac{s+i\omega}{s^2+\omega^2},
$$

so comparison of real and imaginary parts gives

$$
\boxed{
\mathcal L\{\cos\omega t\}=\frac{s}{s^2+\omega^2},
\qquad
\mathcal L\{\sin\omega t\}=\frac{\omega}{s^2+\omega^2}.
}
$$

## Change of scale and shifting

For $a>0$, put $u=at$:

$$
\boxed{
\mathcal L\{f(at)\}(s)
=\frac1aF\!\left(\frac sa\right).
}
$$

Multiplication by an exponential shifts $s$:

$$
\boxed{\mathcal L\{e^{at}f(t)\}=F(s-a).}
$$

For a delay $a>0$, the Heaviside factor is essential. Substituting
$u=t-a$ gives

$$
\boxed{
\mathcal L\{H(t-a)f(t-a)\}=e^{-as}F(s).
}
$$

## Dirac delta and periodic functions

The sampling property gives, for $a\ge0$,

$$
\boxed{\mathcal L\{\delta(t-a)\}=e^{-as}.}
$$

If $f(t+T)=f(t)$, split the transform into periods:

$$
\begin{aligned}
F(s)&=\sum_{n=0}^\infty
\int_{nT}^{(n+1)T}e^{-st}f(t)dt\\
&=\sum_{n=0}^\infty e^{-nsT}
\int_0^T e^{-su}f(u)du.
\end{aligned}
$$

The geometric sum yields

$$
\boxed{
F(s)=\frac{\int_0^T e^{-st}f(t)dt}{1-e^{-sT}}.
}
$$

## Derivatives and integrals

Integration by parts gives

$$
\begin{aligned}
\mathcal L\{f'(t)\}
&=\left[e^{-st}f(t)\right]_0^\infty
+s\int_0^\infty e^{-st}f(t)dt\\
&=sF(s)-f(0^+),
\end{aligned}
$$

assuming $e^{-st}f(t)\to0$ at infinity. Repetition gives

$$
\boxed{
\mathcal L\{f^{(n)}\}
=s^nF-s^{n-1}f(0^+)-s^{n-2}f'(0^+)-\cdots-f^{(n-1)}(0^+).
}
$$

Let $g(t)=\int_0^t f(u)du$. Then $g'=f$ and $g(0)=0$, hence

$$
\boxed{\mathcal L\left\{\int_0^t f(u)du\right\}=\frac{F(s)}s.}
$$

## Convolution theorem

For the causal convolution

$$
(f*g)(t)=\int_0^t f(u)g(t-u)du,
$$

change the order of integration over $0\le u\le t<\infty$ and put
$v=t-u$:

$$
\begin{aligned}
\mathcal L\{f*g\}
&=\int_0^\infty du\,f(u)e^{-su}
\int_0^\infty dv\,g(v)e^{-sv}\\
&=\boxed{F(s)G(s)}.
\end{aligned}
$$

## Inverse transform and an application

The inverse transform may be found by decomposing $F(s)$ into known transform
pairs. For example,

$$
F(s)=\frac{2s+5}{(s+1)(s+2)}
=\frac3{s+1}-\frac1{s+2},
$$

so

$$
\mathcal L^{-1}\{F(s)\}=3e^{-t}-e^{-2t}.
$$

Now consider the initial-value equation

$$
y''+\omega_0^2y=\frac{F_0}{m}H(t),
\qquad y(0)=0,\quad y'(0)=0.
$$

Transforming each derivative,

$$
[s^2Y(s)-sy(0)-y'(0)]+\omega_0^2Y(s)
=\frac{F_0}{ms},
$$

and therefore

$$
Y(s)=\frac{F_0}{m}\frac1{s(s^2+\omega_0^2)}
=\frac{F_0}{m\omega_0^2}
\left(\frac1s-\frac{s}{s^2+\omega_0^2}\right).
$$

Taking the inverse transform gives

$$
\boxed{
y(t)=\frac{F_0}{m\omega_0^2}[1-\cos(\omega_0t)]H(t).
}
$$

The displacement has units
$[F_0/(m\omega_0^2)]=\mathrm m$. Direct substitution gives
$y''+\omega_0^2y=F_0/m$ for $t>0$, and the initial conditions are satisfied.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-17/unit-2/laplace-step-response.png' | relative_url }}" alt="Equation-generated step force and undamped oscillator response obtained by Laplace transformation" loading="lazy">
  </div>
  <figcaption>A constant force switched on at \(t=0\) produces \(y/(F_0/m\omega_0^2)=1-\cos\omega_0t\).</figcaption>
</figure>

The transform theorems, partial fractions, initial values, and differential-
equation residual are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-2/laplace-transforms.mac' | relative_url }}); every printed residual is zero.

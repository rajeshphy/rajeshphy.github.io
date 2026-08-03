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
\mathcal L\{f^{\prime}(t)\}
&=\left[e^{-st}f(t)\right]_0^\infty
+s\int_0^\infty e^{-st}f(t)dt\\
&=sF(s)-f(0^+),
\end{aligned}
$$

assuming $e^{-st}f(t)\to0$ at infinity. Repetition gives

$$
\boxed{
\mathcal L\{f^{(n)}\}
=s^nF-s^{n-1}f(0^+)-s^{n-2}f^{\prime}(0^+)-\cdots-f^{(n-1)}(0^+).
}
$$

Let $g(t)=\int_0^t f(u)du$. Then $g^{\prime}=f$ and $g(0)=0$, hence

$$
\boxed{\mathcal L\left\{\int_0^t f(u)du\right\}=\frac{F(s)}s.}
$$

## Convolution theorem

For the causal convolution

$$
(f\ast g)(t)=\int_0^t f(u)g(t-u)du,
$$

change the order of integration over $0\le u\le t<\infty$ and put
$v=t-u$:

$$
\begin{aligned}
\mathcal L\{f\ast g\}
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
y^{\prime\prime}+\omega_0^2y=\frac{F_0}{m}H(t),
\qquad y(0)=0,\quad y^{\prime}(0)=0.
$$

Transforming each derivative,

$$
[s^2Y(s)-sy(0)-y^{\prime}(0)]+\omega_0^2Y(s)
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
$y^{\prime\prime}+\omega_0^2y=F_0/m$ for $t>0$, and the initial conditions are satisfied.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-17/unit-2/laplace-step-response.png' | relative_url }}" alt="Equation-generated step force and undamped oscillator response obtained by Laplace transformation" loading="lazy">
  </div>
  <figcaption>A constant force switched on at \(t=0\) produces \(y/(F_0/m\omega_0^2)=1-\cos\omega_0t\).</figcaption>
</figure>

## Solved Problems

### 1. Transform of a periodic ramp

Let $f(t)=t$ for $0\le t<T$ and repeat this segment with period $T$. The
periodic-function formula requires the one-period integral

$$
\begin{aligned}
I(s)&=\int_0^Tte^{-st}\,dt\\
&=\left[-\frac{te^{-st}}s-\frac{e^{-st}}{s^2}\right]_0^T\\
&=\frac{1-e^{-sT}(1+sT)}{s^2}.
\end{aligned}
$$

Hence, for $\operatorname{Re}s>0$,

$$
\begin{aligned}
F(s)&=\frac{I(s)}{1-e^{-sT}}\\
&=\boxed{\frac1{s^2}-\frac{T}{s(e^{sT}-1)}}.
\end{aligned}
$$

As $s\to\infty$, the second term is exponentially small and
$F(s)\sim s^{-2}$, consistent with $f(t)\sim t$ immediately to the right of
the origin. Since $f$ has units of time, its transform has units of time
squared.

### 2. Inversion after completing the square

Find the inverse transform of

$$
F(s)=\frac{2s+7}{s^2+4s+13}.
$$

Complete the square in the denominator and rearrange the numerator:

$$
s^2+4s+13=(s+2)^2+3^2,
\qquad 2s+7=2(s+2)+3.
$$

Therefore

$$
F(s)=2\frac{s+2}{(s+2)^2+3^2}
+\frac3{(s+2)^2+3^2}.
$$

The exponential-shift theorem gives

$$
\boxed{
f(t)=e^{-2t}[2\cos(3t)+\sin(3t)].
}
$$

The initial-value limit $\lim_{s\to\infty}sF(s)=2$ agrees with $f(0^+)=2$.
The numerical constants carry the reciprocal-time units required to make
each exponential and trigonometric argument dimensionless.

### 3. Response to an impulsive force

A damped coordinate satisfies

$$
y^{\prime\prime}+4\,\mathrm{s}^{-1}y^{\prime}+5\,\mathrm{s}^{-2}y
=v_0\delta(t),
\qquad y(0^-)=y^{\prime}(0^-)=0,
$$

with $v_0=0.30\,\mathrm{m\,s}^{-1}$. Transforming from $0^-$ includes the
impulse on the right and gives

$$
[s^2+4s+5]Y(s)=v_0.
$$

Since $s^2+4s+5=(s+2)^2+1$, inversion gives

$$
\boxed{
y(t)=0.30e^{-2t}\sin t\,H(t)\ \mathrm m,
}
$$

where numerical frequencies are in $\mathrm{s}^{-1}$. Integrating the
differential equation across $t=0$ gives
$y^{\prime}(0^+)-y^{\prime}(0^-)=v_0$; the solution indeed has
$y^{\prime}(0^+)=0.30\,\mathrm{m\,s}^{-1}$. For $t>0$ direct differentiation leaves zero residual,
and $y(t)\to0$ as required for positive damping.

## Descriptive Questions

1. How do the convergence half-plane and the boundary term at infinity enter the definition and derivative theorem of the Laplace transform?
2. Why must a time delay be written with a Heaviside factor before applying the shifting theorem?
3. How is the transform of a periodic function obtained by summing its contributions over successive periods?
4. How do the derivative-transform rules turn a linear initial-value problem into an algebraic equation in the $s$-domain, and how is convolution then used to invert a resulting product of transforms?

## Numerical Problems

1. If $f(t)=e^{-2t}$, use the change-of-scale theorem to find
$\mathcal{L}[f(4t)]$.

   **Final answer:** $1/(s+8)$.

2. Find the transform of $2\delta(t-1)-3\delta(t-4)$.

   **Final answer:** $2e^{-s}-3e^{-4s}$.

3. A unit pulse equals $1$ on $0\le t<1$ and $0$ on $1\le t<3$, then
repeats with period $3$. Find its Laplace transform.

   **Final answer:** $(1-e^{-s})/[s(1-e^{-3s})]$.

4. Evaluate the causal convolution of $f(t)=1$ and $g(t)=t$, and check its
transform by multiplication.

   **Final answer:** $(f\ast g)(t)=t^2/2$ and
$\mathcal{L}[f\ast g]=1/s^3=(1/s)(1/s^2)$.

5. Find the transform of $\int_0^t\sin(2u)\,du$.

   **Final answer:** $2/[s(s^2+4)]$.

6. Solve $y^{\prime}+2y=6$ with $y(0)=1$.

   **Final answer:** $y(t)=3-2e^{-2t}$.

The transform theorems, inversions, differential equations, all solved
results, and every final answer are checked in the
[Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-2/laplace-transforms.mac' | relative_url }}); every printed residual is zero.

## References

1. [Laplace transform — Wikipedia](https://en.wikipedia.org/wiki/Laplace_transform)
2. [NIST Digital Library of Mathematical Functions, §1.14: Integral Transforms](https://dlmf.nist.gov/1.14)
3. [MIT OpenCourseWare 18.03: Laplace-transform notes and exercises](https://ocw.mit.edu/courses/18-03-differential-equations-spring-2010/pages/readings/notes_exe/)
4. K. F. Riley, M. P. Hobson and S. J. Bence, *Mathematical Methods for Physics and Engineering*, 3rd ed., chapter on integral transforms.

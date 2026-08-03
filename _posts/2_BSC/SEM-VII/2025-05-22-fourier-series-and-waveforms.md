---
title: "Fourier Series and Periodic Waveforms"
summary: "Orthogonality, real and complex Fourier coefficients, Dirichlet conditions, and the sawtooth, square, and triangular waveforms."
date: 2025-05-22 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-17, mathematical-physics, fourier-series, periodic-waveforms]
permalink: /bsc/sem-vii/fourier-series-and-waveforms/
hidden: true
---

Let $f(x+L)=f(x)$ and put $k_0=2\pi/L$. The product-to-sum identities give,
for positive integers $m,n$,

$$
\cos(mk_0x)\cos(nk_0x)
=\frac12\{\cos[(m-n)k_0x]+\cos[(m+n)k_0x]\},
$$

$$
\sin(mk_0x)\sin(nk_0x)
=\frac12\{\cos[(m-n)k_0x]-\cos[(m+n)k_0x]\}.
$$

Every nonconstant sine or cosine integrates to zero over a complete period.
The constant term occurs only when $m=n$, so

$$
\int_{-L/2}^{L/2}\cos(mk_0x)\cos(nk_0x)\,dx
=\frac L2\delta_{mn},
$$

$$
\int_{-L/2}^{L/2}\sin(mk_0x)\sin(nk_0x)\,dx
=\frac L2\delta_{mn},
\qquad
\int_{-L/2}^{L/2}\sin(mk_0x)\cos(nk_0x)\,dx=0.
$$

## Dirichlet conditions and coefficients

The Dirichlet conditions are stated as follows: over one period, $f$ is
absolutely integrable and has only finitely many finite discontinuities and
finitely many maxima and minima. Under these conditions its Fourier series is

$$
f(x)\sim\frac{a_0}{2}+\sum_{n=1}^{\infty}
\left[a_n\cos(nk_0x)+b_n\sin(nk_0x)\right].
$$

Multiply by $\cos(mk_0x)$ and integrate over one period. Orthogonality removes
every term except $a_m$:

$$
\int_{-L/2}^{L/2}f(x)\cos(mk_0x)\,dx=\frac L2a_m.
$$

The three coefficients are therefore

$$
\boxed{
a_0=\frac2L\int_{-L/2}^{L/2}f(x)\,dx,
\quad
a_n=\frac2L\int_{-L/2}^{L/2}f(x)\cos(nk_0x)\,dx,
\quad
b_n=\frac2L\int_{-L/2}^{L/2}f(x)\sin(nk_0x)\,dx.
}
$$

Parity reduces these integrals without changing their normalization. If
$f(-x)=f(x)$, then $f(x)\sin(nk_0x)$ is odd and

$$
b_n=0,\qquad
a_n=\frac4L\int_0^{L/2}f(x)\cos(nk_0x)\,dx.
$$

If $f(-x)=-f(x)$, then $a_0=a_n=0$ and

$$
b_n=\frac4L\int_0^{L/2}f(x)\sin(nk_0x)\,dx.
$$

At a point of continuity the series converges to $f(x)$. At a jump it
converges to the midpoint
$[f(x^-)+f(x^+)]/2$.

## Complex representation

Euler's relations convert the real series to

$$
f(x)\sim\sum_{n=-\infty}^{\infty}c_ne^{ink_0x}.
$$

Since
$\int_{-L/2}^{L/2}e^{i(n-m)k_0x}dx=L\delta_{mn}$,
multiplication by $e^{-imk_0x}$ gives

$$
\boxed{c_n=\frac1L\int_{-L/2}^{L/2}f(x)e^{-ink_0x}\,dx.}
$$

Comparison with the real form yields

$$
c_0=\frac{a_0}{2},\qquad
c_n=\frac{a_n-ib_n}{2},\qquad
c_{-n}=\frac{a_n+ib_n}{2}.
$$

For real $f$, $c_{-n}=c_n^{\ast}$.

## Sawtooth waveform

Choose the $2\pi$-periodic function $f(x)=x$ for $-\pi<x<\pi$. It is odd,
so $a_0=a_n=0$. Integration by parts gives

$$
\begin{aligned}
b_n&=\frac1\pi\int_{-\pi}^{\pi}x\sin(nx)\,dx
=\frac2\pi\int_0^\pi x\sin(nx)\,dx\\
&=\frac2\pi\left[
-\frac{x\cos(nx)}n+\frac{\sin(nx)}{n^2}
\right]_0^\pi
=\frac{2(-1)^{n+1}}n.
\end{aligned}
$$

Hence

$$
\boxed{x=2\sum_{n=1}^{\infty}\frac{(-1)^{n+1}}n\sin(nx),
\qquad -\pi<x<\pi.}
$$

At $x=\pm\pi$ the periodic extension jumps between $\pi$ and $-\pi$, so
the series converges there to zero.

## Square waveform

Let $f(x)=1$ on $(0,\pi)$ and $f(x)=-1$ on $(-\pi,0)$. Again $f$ is odd:

$$
\begin{aligned}
b_n&=\frac2\pi\int_0^\pi\sin(nx)\,dx
=\frac{2[1-(-1)^n]}{n\pi}\\
&=\begin{cases}
4/(n\pi),&n\text{ odd},\\
0,&n\text{ even}.
\end{cases}
\end{aligned}
$$

Thus

$$
\boxed{
f(x)=\frac4\pi\sum_{m=0}^{\infty}
\frac{\sin[(2m+1)x]}{2m+1}.
}
$$

## Triangular waveform

Take $f(x)=\lvert x\rvert$ on $[-\pi,\pi]$ and extend it periodically. It is even, so
$b_n=0$ and

$$
a_0=\frac2\pi\int_0^\pi x\,dx=\pi.
$$

For $n\ge1$,

$$
\begin{aligned}
a_n&=\frac2\pi\int_0^\pi x\cos(nx)\,dx\\
&=\frac2\pi\left[
\frac{x\sin(nx)}n+\frac{\cos(nx)}{n^2}
\right]_0^\pi
=\frac{2[(-1)^n-1]}{\pi n^2}.
\end{aligned}
$$

Only odd harmonics remain:

$$
\boxed{
\lvert x\rvert=\frac\pi2-\frac4\pi\sum_{m=0}^{\infty}
\frac{\cos[(2m+1)x]}{(2m+1)^2}.
}
$$

The $n^{-2}$ coefficients decrease faster than the $n^{-1}$ coefficients of
the discontinuous sawtooth and square waves.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-17/unit-1/fourier-waveforms.png' | relative_url }}" alt="Exact sawtooth, square, and triangular waves with equation-generated Fourier partial sums" loading="lazy">
  </div>
  <figcaption>The plotted partial sums use the coefficients derived above. Oscillations persist near jumps, whereas the continuous triangular wave converges more rapidly.</figcaption>
</figure>

## Solved Problems

### 1. Fourier series of a periodic parabola

Find the Fourier series of $f(x)=x^2$ on $-\pi<x<\pi$, extended with period
$2\pi$.

The function is even, so $b_n=0$. Its constant coefficient is

$$
a_0=\frac2\pi\int_0^\pi x^2\,dx
=\frac2\pi\left[\frac{x^3}{3}\right]_0^\pi
=\frac{2\pi^2}{3}.
$$

For $n\ge1$, integrate twice by parts. First,

$$
\begin{aligned}
I_n&=\int_0^\pi x^2\cos(nx)\,dx\\
&=\left[\frac{x^2\sin(nx)}n\right]_0^\pi
-\frac2n\int_0^\pi x\sin(nx)\,dx.
\end{aligned}
$$

The boundary term vanishes, while

$$
\int_0^\pi x\sin(nx)\,dx
=\left[-\frac{x\cos(nx)}n+\frac{\sin(nx)}{n^2}\right]_0^\pi
=-\frac{\pi(-1)^n}{n}.
$$

Therefore $I_n=2\pi(-1)^n/n^2$ and

$$
\boxed{
x^2=\frac{\pi^2}{3}
+4\sum_{n=1}^{\infty}\frac{(-1)^n}{n^2}\cos(nx),
\qquad -\pi\le x\le\pi.
}
$$

The periodic extension is continuous at $x=\pm\pi$, so the endpoint value is
$\pi^2$. Substitution at $x=\pi$ gives
$\pi^2=\pi^2/3+4\sum_{n=1}^{\infty}n^{-2}$, which is a consistency check.
All terms have the same dimensions as $f$; here $x$ has been taken as a
dimensionless angular variable.

### 2. A periodic function with neither even nor odd symmetry

Let $f(x)=e^x$ on $-\pi<x<\pi$ and extend it with period $2\pi$. Determine
its real Fourier coefficients.

The mean coefficient is

$$
a_0=\frac1\pi\int_{-\pi}^{\pi}e^x\,dx
=\frac{e^\pi-e^{-\pi}}\pi
=\frac{2\sinh\pi}{\pi}.
$$

The required antiderivatives are

$$
\int e^x\cos(nx)\,dx
=\frac{e^x[\cos(nx)+n\sin(nx)]}{1+n^2},
$$

$$
\int e^x\sin(nx)\,dx
=\frac{e^x[\sin(nx)-n\cos(nx)]}{1+n^2}.
$$

Using $\sin(n\pi)=0$ and $\cos(n\pi)=(-1)^n$ gives

$$
a_n=\frac{2(-1)^n\sinh\pi}{\pi(1+n^2)},
\qquad
b_n=\frac{2n(-1)^{n+1}\sinh\pi}{\pi(1+n^2)}.
$$

Hence

$$
\boxed{
e^x\sim\frac{\sinh\pi}{\pi}
+\frac{2\sinh\pi}{\pi}\sum_{n=1}^{\infty}
\frac{(-1)^n\cos(nx)+n(-1)^{n+1}\sin(nx)}{1+n^2}.
}
$$

At $x=\pm\pi$ the periodic extension jumps from $e^\pi$ to $e^{-\pi}$;
there the series converges to their midpoint $\cosh\pi$. If the exponent
represents a dimensional coordinate, it must instead be written as a
dimensionless ratio such as $x/x_0$.

### 3. Half-wave rectified sine

For one period $0<\theta<2\pi$, let

$$
f(\theta)=
\begin{cases}
A\sin\theta,&0<\theta<\pi,\\
0,&\pi<\theta<2\pi,
\end{cases}
$$

where $A$ has the units of the waveform. Its $2\pi$-periodic coefficients
are obtained over this interval. First,

$$
a_0=\frac1\pi\int_0^\pi A\sin\theta\,d\theta=\frac{2A}{\pi}.
$$

For $n\ge1$,

$$
a_n=\frac A\pi\int_0^\pi\sin\theta\cos(n\theta)\,d\theta.
$$

The product-to-sum identity shows that the integral vanishes for odd $n$,
including $n=1$, whereas for $n=2m$ it is $2/(1-4m^2)$. Thus

$$
a_{2m}=-\frac{2A}{\pi(4m^2-1)},\qquad a_{2m-1}=0.
$$

Orthogonality on $(0,\pi)$ also gives

$$
b_n=\frac A\pi\int_0^\pi\sin\theta\sin(n\theta)\,d\theta
=\begin{cases}A/2,&n=1,\\0,&n\ne1.\end{cases}
$$

Therefore

$$
\boxed{
f(\theta)=\frac A\pi+\frac A2\sin\theta
-\frac{2A}{\pi}\sum_{m=1}^{\infty}
\frac{\cos(2m\theta)}{4m^2-1}.
}
$$

The positive mean $A/\pi$ has the units of $A$. The waveform is continuous
but has slope discontinuities, consistent with the $m^{-2}$ decrease of its
cosine coefficients.

## Descriptive Questions

1. How do the orthogonality relations determine the real Fourier coefficients, and what value does the series take at a finite jump?
2. How are the real and complex Fourier representations related for a real periodic function?
3. Why do the Fourier coefficients of the triangular waveform decrease faster than those of the square and sawtooth waveforms?
4. How does shifting the origin mix the sine and cosine coefficients while leaving each harmonic amplitude unchanged?

## Numerical Problems

1. For $f(x)=3+2\cos(2x)-4\sin(3x)$, list all nonzero real and complex Fourier coefficients.

   **Final answer:** $a_0=6$, $a_2=2$, $b_3=-4$; $c_0=3$, $c_{\pm2}=1$, $c_3=2i$, and $c_{-3}=-2i$.

2. With $L=4$ and $k_0=\pi/2$, evaluate
$\int_{-2}^{2}\cos(3k_0x)\cos(5k_0x)\,dx$ and
$\int_{-2}^{2}\cos^2(3k_0x)\,dx$.

   **Final answer:** $0$ and $2$, respectively.

3. The $2\pi$-periodic function is $f(x)=1+x/\pi$ on $-\pi<x<\pi$.
Find $c_0$ and $c_1$.

   **Final answer:** $c_0=1$ and $c_1=-i/\pi$.

4. Approximate the triangular waveform $f(x)=\lvert x\rvert$ at $x=0$
using only its first two nonzero cosine harmonics.

   **Final answer:** $S_2(0)=\pi/2-40/(9\pi)$.

5. A $2\pi$-periodic function equals $2$ on $(-\pi,0)$ and $5$ on
$(0,\pi)$. What values do its Fourier series take at $x=0$ and at the
identified endpoints $x=\pm\pi$?

   **Final answer:** $7/2$ at all three jump points.

6. Express $8\cos(4x-\pi/3)$ in real and complex Fourier coefficients.

   **Final answer:** $a_4=4$, $b_4=4\sqrt3$,
$c_4=2-2i\sqrt3$, and $c_{-4}=2+2i\sqrt3$; all other coefficients vanish.

Orthogonality, waveform coefficients, all solved results, and every final
answer are checked symbolically in the
[Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-1/fourier-series.mac' | relative_url }}); every printed residual is zero.

## References

1. [Fourier series — Wikipedia](https://en.wikipedia.org/wiki/Fourier_series)
2. [NIST Digital Library of Mathematical Functions, §1.8: Fourier Series](https://dlmf.nist.gov/1.8)
3. G. B. Arfken, H. J. Weber and F. E. Harris, *Mathematical Methods for Physicists*, 7th ed., chapter on Fourier series.
4. K. F. Riley, M. P. Hobson and S. J. Bence, *Mathematical Methods for Physics and Engineering*, 3rd ed., chapter on Fourier series.

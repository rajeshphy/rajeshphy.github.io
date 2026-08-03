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

For real $f$, $c_{-n}=c_n^*$.

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

Orthogonality and the three coefficient formulas are checked symbolically in
the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-1/fourier-series.mac' | relative_url }}); every printed residual is zero.

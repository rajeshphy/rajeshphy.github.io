---
title: "Contour Integration for Definite Integrals"
summary: "Residue calculations for a real rational integral and a trigonometric integral on the unit circle."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, contour-integration, definite-integrals]
permalink: /bsc/sem-ii/contour-integration-definite-integrals/
hidden: true
---

Contour choice is controlled by decay and singularities. If $f(z)=P(z)/Q(z)$ and $\deg Q\geq\deg P+2$, then on a semicircle of radius $R$ the integrand is $O(R^{-2})$ or smaller, while the arc length is $\pi R$; hence the arc contribution tends to zero. For $e^{ibz}$ with $b>0$, the upper half-plane is preferred because

$$
\lvert e^{ib(x+iy)}\rvert=e^{-by}\leq1.
$$

If a pole lies on the real axis, the contour must be indented and the result interpreted as a Cauchy principal value; an ordinary improper integral cannot be assumed to exist.

## A rational integral on the real line

Let $a>0$ and consider

$$
I=\int_{-\infty}^{\infty}\frac{dx}{x^2+a^2}.
$$

Use

$$
f(z)=\frac1{z^2+a^2}
=\frac1{(z-ia)(z+ia)}
$$

and close the real segment $[-R,R]$ by the upper semicircle. Only the pole $z=ia$ lies inside.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-3/contour-definite-integral.png' | relative_url }}" alt="Upper semicircular contour with pole at i a and an arc estimate" loading="lazy">
  </div>
  <figcaption>The upper semicircle encloses \(z=ia\) but not \(z=-ia\). Counterclockwise orientation fixes the positive sign in the residue theorem.</figcaption>
</figure>

The residue is

$$
\operatorname{Res}(f,ia)
=\lim_{z\to ia}\frac{z-ia}{(z-ia)(z+ia)}
=\frac1{2ia}.
$$

Thus

$$
\int_{-R}^{R}\frac{dx}{x^2+a^2}
+\int_{\Gamma_R}\frac{dz}{z^2+a^2}
=2\pi i\frac1{2ia}
=\frac{\pi}{a}.
$$

On the arc $\lvert z\rvert=R>a$,

$$
\lvert z^2+a^2\rvert\ge
\left\lvert\lvert z\rvert^2-a^2\right\rvert=R^2-a^2.
$$

Since the arc length is $\pi R$,

$$
\left\lvert
\int_{\Gamma_R}\frac{dz}{z^2+a^2}
\right\rvert
\le\frac{\pi R}{R^2-a^2}
\longrightarrow0.
$$

Taking $R\to\infty$ gives

$$
\boxed{
\int_{-\infty}^{\infty}\frac{dx}{x^2+a^2}
=\frac{\pi}{a}}.
$$

If $x$ and $a$ have units of length, both sides have units of inverse length.

## A trigonometric integral

For real $a>\lvert b\rvert>0$, evaluate

$$
J=\int_0^{2\pi}\frac{d\theta}{a+b\cos\theta}.
$$

Set $z=e^{i\theta}$ on the unit circle. Then

$$
d\theta=\frac{dz}{iz},
\qquad
\cos\theta=\frac12\left(z+\frac1z\right).
$$

Therefore

$$
\begin{aligned}
J
&=\oint_{\lvert z\rvert=1}
\frac{1}{a+\dfrac b2(z+z^{-1})}\frac{dz}{iz}\\
&=\frac2i\oint_{\lvert z\rvert=1}
\frac{dz}{bz^2+2az+b}.
\end{aligned}
$$

The poles are the roots

$$
z_\pm=\frac{-a\pm\sqrt{a^2-b^2}}{b}.
$$

Their product is $z_+z_-=1$. Because $a>\lvert b\rvert>0$, $z_+$ has magnitude less than one and $z_-$ has magnitude greater than one. Only $z_+$ is enclosed.

The derivative of the quadratic denominator is $2bz+2a$, so

$$
\operatorname{Res}
\left(\frac1{bz^2+2az+b},z_+\right)
=\frac1{2(bz_++a)}.
$$

Using $bz_++a=\sqrt{a^2-b^2}$,

$$
\begin{aligned}
J
&=\frac2i(2\pi i)
\frac1{2\sqrt{a^2-b^2}}\\
&=\boxed{\frac{2\pi}{\sqrt{a^2-b^2}}}.
\end{aligned}
$$

Both definite-integral results are independently reduced from their residues in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

## Solved Problems

1. Evaluate

   $$
   I=\int_{-\infty}^{\infty}\frac{dx}{(x^2+1)^2}
   $$

   by residues.

   Close the contour in the upper half-plane. The only enclosed singularity is the double pole $z=i$. Write

   $$
   f(z)=\frac1{(z-i)^2(z+i)^2}.
   $$

   Its residue is

   $$
   \begin{aligned}
   \operatorname{Res}(f,i)
   &=\left.\frac{d}{dz}\frac1{(z+i)^2}\right\rvert_{z=i}\\
   &=\left.-\frac2{(z+i)^3}\right\rvert_{z=i}
   =-\frac2{(2i)^3}
   =\frac1{4i}.
   \end{aligned}
   $$

   On $\lvert z\rvert=R>1$,

   $$
   \lvert(z^2+1)^2\rvert
   \geq(R^2-1)^2,
   $$

   so the arc magnitude is at most $\pi R/(R^2-1)^2\to0$. Therefore

   $$
   I=2\pi i\left(\frac1{4i}\right)
   =\boxed{\frac{\pi}{2}}.
   $$

   The integrand is positive and behaves as $x^{-4}$, consistent with a finite positive result.

2. For $a>0$ and $b>0$, evaluate

   $$
   I(a,b)=\int_{-\infty}^{\infty}
   \frac{\cos(bx)}{x^2+a^2}\,dx.
   $$

   Integrate

   $$
   f(z)=\frac{e^{ibz}}{z^2+a^2}
   $$

   over the upper semicircle. On its arc,

   $$
   \lvert e^{ibz}\rvert=e^{-b\,\operatorname{Im}z}\leq1,
   $$

   and

   $$
   \left\lvert\int_{\Gamma_R}f(z)\,dz\right\rvert
   \leq\frac{\pi R}{R^2-a^2}\longrightarrow0.
   $$

   The enclosed pole is $z=ia$, with residue

   $$
   \operatorname{Res}(f,ia)
   =\frac{e^{ib(ia)}}{2ia}
   =\frac{e^{-ab}}{2ia}.
   $$

   Hence

   $$
   \int_{-\infty}^{\infty}
   \frac{e^{ibx}}{x^2+a^2}\,dx
   =2\pi i\frac{e^{-ab}}{2ia}
   =\frac{\pi}{a}e^{-ab}.
   $$

   The sine part is odd and integrates to zero, so taking the real part gives

   $$
   \boxed{I(a,b)=\frac{\pi}{a}e^{-ab}}.
   $$

   At $b\to0^+$ this reduces to $\pi/a$, the rational integral derived above in the article.

## Descriptive Questions

1. Explain how decay, pole locations, and exponential factors determine the choice and orientation of a contour.
2. Derive the semicircle estimate required for rational functions whose denominator degree exceeds the numerator degree by at least two.
3. Derive the substitution $z=e^{i\theta}$ for trigonometric integrals and explain how poles inside the unit circle are selected.
4. Explain why poles on the real axis require indentation and a Cauchy principal-value prescription.

## Numerical Problems

1. Evaluate $\int_0^\infty dx/(x^4+1)$.

   **Answer:** $\pi/(2\sqrt2)$.

2. Evaluate $\int_0^\infty dx/(1+x^6)$.

   **Answer:** $\pi/3$.

3. Evaluate $\int_{-\infty}^{\infty}x\sin(2x)\,dx/(x^2+1)$.

   **Answer:** $\pi e^{-2}$.

4. Evaluate $\int_0^{2\pi}\cos\theta\,d\theta/(5+4\cos\theta)$.

   **Answer:** $-\pi/3$.

5. Evaluate $\operatorname{PV}\int_{-\infty}^{\infty}dx/(x^2-1)$.

   **Answer:** $0$.

All added pole residues, arc reductions, Fourier-type values, and principal-value checks are verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}); every printed residual is zero.

## References

1. [Contour integration — Wikipedia](https://en.wikipedia.org/wiki/Contour_integration)
2. [MIT OpenCourseWare 18.04, lecture notes: Topic 9, Definite Integrals Using the Residue Theorem](https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/resources/lecture-notes/)
3. James Ward Brown and Ruel V. Churchill, *Complex Variables and Applications*, 9th ed., Chapter 7.

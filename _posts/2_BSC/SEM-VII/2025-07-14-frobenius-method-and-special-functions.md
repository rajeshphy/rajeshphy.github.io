---
title: "Frobenius Method and Special Functions"
summary: "Regular singular points and the Legendre, Bessel, Hermite, and Laguerre equations, generating functions, recurrence relations, and orthogonality."
date: 2025-07-14 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-17, frobenius-method, legendre-polynomials, bessel-functions, hermite-polynomials, laguerre-polynomials]
permalink: /bsc/sem-vii/frobenius-method-and-special-functions/
hidden: true
---

Write a second-order linear equation as

$$
y''+P(x)y'+Q(x)y=0.
$$

A point $x_0$ is ordinary if $P$ and $Q$ are analytic there. It is a regular
singular point if $(x-x_0)P(x)$ and $(x-x_0)^2Q(x)$ are analytic. Otherwise
it is an irregular singular point. This classification matters because a
power series is guaranteed at an ordinary point, while a regular singular
point generally requires a noninteger leading power.

## Frobenius method

Near a regular singular point, set $z=x-x_0$ and write

$$
P(x)=\sum_{j=0}^{\infty}p_jz^{j-1},
\qquad
Q(x)=\sum_{j=0}^{\infty}q_jz^{j-2},
$$

$$
y=z^r\sum_{n=0}^{\infty}a_nz^n,
\qquad a_0\ne0.
$$

Then

$$
y'=\sum_{n=0}^{\infty}(n+r)a_nz^{n+r-1},
\qquad
y''=\sum_{n=0}^{\infty}(n+r)(n+r-1)a_nz^{n+r-2}.
$$

The coefficient of the lowest power $z^{r-2}$ is

$$
a_0[r(r-1)+p_0r+q_0]=0.
$$

Since $a_0\ne0$, the indicial equation is

$$
\boxed{r(r-1)+p_0r+q_0=0.}
$$

Higher powers determine $a_n$ recursively. Equal roots, or roots differing
by an integer, can require a logarithmic second solution.

## Bessel equation as a Frobenius construction

For

$$
x^2y''+xy'+(x^2-\nu^2)y=0,
$$

$x=0$ is a regular singular point. Substitute
$y=\sum_{n=0}^{\infty}a_nx^{n+r}$:

$$
\sum_{n=0}^{\infty}[(n+r)^2-\nu^2]a_nx^{n+r}
+\sum_{n=2}^{\infty}a_{n-2}x^{n+r}=0.
$$

The indicial equation is $r^2-\nu^2=0$. Choose the regular order
$\nu\ge0$ and the root $r=\nu$. The $n=1$ equation is
$(2\nu+1)a_1=0$, hence $a_1=0$, and for $n\ge2$,

$$
a_n=-\frac{a_{n-2}}{(n+\nu)^2-\nu^2}
=-\frac{a_{n-2}}{n(n+2\nu)}.
$$

Choosing $a_0=1/[2^\nu\Gamma(\nu+1)]$ gives

$$
\boxed{
J_\nu(x)=\sum_{m=0}^{\infty}
\frac{(-1)^m}{m!\Gamma(m+\nu+1)}
\left(\frac x2\right)^{2m+\nu}.
}
$$

For noninteger $\nu$, $J_\nu$ and $J_{-\nu}$ are independent. For integer
order, the second independent solution is singular at the origin, while
$J_n$ remains finite.

The integer-order generating function is

$$
\boxed{
\exp\!\left[\frac x2\left(t-\frac1t\right)\right]
=\sum_{n=-\infty}^{\infty}J_n(x)t^n.
}
$$

Differentiating with respect to $t$ and $x$, then matching powers of $t$,
gives

$$
J_{n-1}(x)+J_{n+1}(x)=\frac{2n}{x}J_n(x),
$$

$$
J_{n-1}(x)-J_{n+1}(x)=2J_n'(x).
$$

For the regular order $\nu\ge0$, let $\alpha_{\nu m}$ be the $m$th positive
zero of $J_\nu$. The Bessel equation in self-adjoint form,

$$
\frac d{dx}\left(x\frac{dy}{dx}\right)
+\left(\alpha^2x-\frac{\nu^2}{x}\right)y=0,
$$

gives, after multiplying two solutions by one another and subtracting,

$$
(\alpha_m^2-\alpha_n^2)
\int_0^1xJ_\nu(\alpha_mx)J_\nu(\alpha_nx)dx
=\left[x(y_my_n'-y_ny_m')\right]_0^1=0.
$$

The regular behavior $J_\nu(\alpha x)\sim x^\nu$ makes the $x=0$ boundary
term vanish, while both functions vanish at $x=1$. Thus distinct modes are
orthogonal. Taking the coincident-root limit and using
$J_\nu'(\alpha_{\nu n})=-J_{\nu+1}(\alpha_{\nu n})$ gives

$$
\boxed{
\int_0^1xJ_\nu(\alpha_{\nu m}x)J_\nu(\alpha_{\nu n}x)dx
=\frac12J_{\nu+1}^2(\alpha_{\nu n})\delta_{mn}.
}
$$

## Legendre functions

Legendre's equation is

$$
\frac d{dx}\left[(1-x^2)y'\right]+l(l+1)y=0,
\qquad -1\le x\le1.
$$

Finiteness at both endpoints selects $l=0,1,2,\ldots$ and the Legendre
polynomials $P_l(x)$. Their generating function is

$$
\boxed{
\frac1{\sqrt{1-2xt+t^2}}=\sum_{l=0}^{\infty}P_l(x)t^l.
}
$$

Differentiate with respect to $t$, multiply by $1-2xt+t^2$, and compare the
coefficient of $t^l$ to obtain

$$
\boxed{(l+1)P_{l+1}=(2l+1)xP_l-lP_{l-1}.}
$$

The first functions are

$$
P_0=1,\quad P_1=x,\quad
P_2=\frac12(3x^2-1),\quad
P_3=\frac12(5x^3-3x).
$$

For $l\ne m$, subtracting the two self-adjoint equations and integrating
gives

$$
[l(l+1)-m(m+1)]\int_{-1}^{1}P_lP_mdx
=\left[(1-x^2)(P_lP_m'-P_mP_l')\right]_{-1}^{1}=0.
$$

The norm follows from Rodrigues' formula

$$
P_l(x)=\frac1{2^ll!}\frac{d^l}{dx^l}(x^2-1)^l.
$$

Integrating by parts $l$ times, using
$P_l^{(l)}=(2l)!/(2^ll!)$, and

$$
\int_{-1}^{1}(1-x^2)^l dx
=\frac{2^{2l+1}(l!)^2}{(2l+1)!},
$$

gives

$$
\boxed{\int_{-1}^{1}P_l(x)P_m(x)dx
=\frac2{2l+1}\delta_{lm}.}
$$

## Hermite functions

Hermite's equation is

$$
y''-2xy'+2ny=0.
$$

Its generating function

$$
\boxed{e^{2xt-t^2}=\sum_{n=0}^{\infty}H_n(x)\frac{t^n}{n!}}
$$

gives, by differentiating with respect to $x$ and $t$,

$$
H_n'=2nH_{n-1},
\qquad
H_{n+1}=2xH_n-2nH_{n-1}.
$$

The first functions are
$H_0=1$, $H_1=2x$, $H_2=4x^2-2$, and $H_3=8x^3-12x$.
To obtain their normalization, multiply two generating functions and
integrate:

$$
\int_{-\infty}^{\infty}e^{-x^2}
e^{2xt-t^2}e^{2xu-u^2}dx
=\sqrt\pi e^{2tu}.
$$

Comparison of the coefficient of $t^nu^m$ yields

$$
\boxed{
\int_{-\infty}^{\infty}e^{-x^2}H_n(x)H_m(x)dx
=\sqrt\pi\,2^nn!\,\delta_{nm}.
}
$$

## Laguerre functions

Laguerre's equation is

$$
xy''+(1-x)y'+ny=0,
\qquad 0\le x<\infty.
$$

Its generating function is

$$
\boxed{
\frac1{1-t}\exp\!\left(-\frac{xt}{1-t}\right)
=\sum_{n=0}^{\infty}L_n(x)t^n.
}
$$

Differentiation and coefficient comparison give

$$
\boxed{(n+1)L_{n+1}=(2n+1-x)L_n-nL_{n-1}.}
$$

The first functions are

$$
L_0=1,\quad L_1=1-x,\quad
L_2=1-2x+\frac{x^2}{2},\quad
L_3=1-3x+\frac{3x^2}{2}-\frac{x^3}{6}.
$$

For the norm, let $G(x,t)$ denote the generating function. Direct integration
gives

$$
\int_0^\infty e^{-x}G(x,t)G(x,u)dx
=\frac1{1-tu}=\sum_{n=0}^{\infty}(tu)^n.
$$

Equating coefficients gives

$$
\boxed{\int_0^\infty e^{-x}L_n(x)L_m(x)dx=\delta_{nm}.}
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-17/unit-3/special-functions.png' | relative_url }}" alt="Equation-generated Legendre, Bessel, Hermite, and Laguerre functions" loading="lazy">
  </div>
  <figcaption>Representative functions are plotted directly from the differential-equation solutions and polynomial formulas stated above.</figcaption>
</figure>

The differential-equation residuals, recurrence relations, and normalization
integrals are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-3/special-functions.mac' | relative_url }}); every printed residual is zero.

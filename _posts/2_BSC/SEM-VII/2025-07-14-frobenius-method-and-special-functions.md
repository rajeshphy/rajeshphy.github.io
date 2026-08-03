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
y^{\prime\prime}+P(x)y^{\prime}+Q(x)y=0.
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
y^{\prime}=\sum_{n=0}^{\infty}(n+r)a_nz^{n+r-1},
\qquad
y^{\prime\prime}=\sum_{n=0}^{\infty}(n+r)(n+r-1)a_nz^{n+r-2}.
$$

The coefficient of the lowest power $z^{r-2}$ is

$$
a_0[r(r-1)+p_0r+q_0]=0.
$$

Since $a_0\ne0$, the indicial equation is

$$
\boxed{r(r-1)+p_0r+q_0=0.}
$$

For $n\ge1$, the coefficient of $z^{n+r-2}$ gives the explicit recursion

$$
\begin{aligned}
&[(n+r)(n+r-1)+p_0(n+r)+q_0]a_n\\
&\qquad+
\sum_{j=1}^{n}[p_j(n-j+r)+q_j]a_{n-j}=0.
\end{aligned}
$$

Thus the indicial root fixes the leading power and the higher equations fix
$a_n$ successively. Equal roots, or roots differing by an integer, can
require a logarithmic second solution.

## Bessel equation as a Frobenius construction

For

$$
x^2y^{\prime\prime}+xy^{\prime}+(x^2-\nu^2)y=0,
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
J_{n-1}(x)-J_{n+1}(x)=2J_n^{\prime}(x).
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
=\left[x(y_my_n^{\prime}-y_ny_m^{\prime})\right]_0^1=0.
$$

The regular behavior $J_\nu(\alpha x)\sim x^\nu$ makes the $x=0$ boundary
term vanish, while both functions vanish at $x=1$. Thus distinct modes are
orthogonal. Taking the coincident-root limit and using
$J_\nu^{\prime}(\alpha_{\nu n})=-J_{\nu+1}(\alpha_{\nu n})$ gives

$$
\boxed{
\int_0^1xJ_\nu(\alpha_{\nu m}x)J_\nu(\alpha_{\nu n}x)dx
=\frac12J_{\nu+1}^2(\alpha_{\nu n})\delta_{mn}.
}
$$

## Legendre functions

Legendre's equation is

$$
\frac d{dx}\left[(1-x^2)y^{\prime}\right]+l(l+1)y=0,
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
=\left[(1-x^2)(P_lP_m^{\prime}-P_mP_l^{\prime})\right]_{-1}^{1}=0.
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
y^{\prime\prime}-2xy^{\prime}+2ny=0.
$$

Its generating function

$$
\boxed{e^{2xt-t^2}=\sum_{n=0}^{\infty}H_n(x)\frac{t^n}{n!}}
$$

gives, by differentiating with respect to $x$ and $t$,

$$
H_n^{\prime}=2nH_{n-1},
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
xy^{\prime\prime}+(1-x)y^{\prime}+ny=0,
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

## Solved Problems

### 1. A regular Frobenius solution

Find the solution of

$$
x^2y^{\prime\prime}+2xy^{\prime}+x^2y=0
$$

that remains finite at $x=0$. In normalized form,
$P(x)=2/x$ and $Q(x)=1$, so $xP=2$ and $x^2Q=x^2$ are analytic at the
origin: $x=0$ is a regular singular point.

Insert $y=\sum_{n=0}^{\infty}a_nx^{n+r}$. After shifting the second sum,

$$
\sum_{n=0}^{\infty}(n+r)(n+r+1)a_nx^{n+r}
+\sum_{n=2}^{\infty}a_{n-2}x^{n+r}=0.
$$

The indicial equation is $r(r+1)=0$. The root $r=0$ gives the finite
solution. The $n=1$ equation is $2a_1=0$, and for $n\ge2$,

$$
a_n=-\frac{a_{n-2}}{n(n+1)}.
$$

Consequently all odd coefficients vanish and

$$
a_2=-\frac{a_0}{3!},\qquad
a_4=\frac{a_0}{5!},\qquad
a_6=-\frac{a_0}{7!},\ldots
$$

Thus

$$
\boxed{
y(x)=a_0\left(1-\frac{x^2}{3!}+\frac{x^4}{5!}-\cdots\right)
=a_0\frac{\sin x}{x}.
}
$$

Although the closed form contains $1/x$, the limit is
$\lim_{x\to0}\sin x/x=1$, so $y(0)=a_0$ is finite. The independent solution
associated with the other root is singular at the origin.

### 2. Expansion in Legendre polynomials

Expand $x^2$ in Legendre polynomials on $[-1,1]$. Orthogonality gives the
coefficient of $P_l$ as

$$
A_l=\frac{2l+1}{2}\int_{-1}^{1}x^2P_l(x)\,dx.
$$

Parity removes all odd $l$, and a polynomial of degree two requires only
$P_0$ and $P_2$. Their coefficients are

$$
A_0=\frac12\int_{-1}^{1}x^2dx=\frac13,
$$

$$
\begin{aligned}
A_2&=\frac52\int_{-1}^{1}x^2\frac{3x^2-1}{2}\,dx\\
&=\frac54\left(3\frac25-\frac23\right)=\frac23.
\end{aligned}
$$

Therefore

$$
\boxed{x^2=\frac13P_0(x)+\frac23P_2(x).}
$$

At $x=0$ the right side is $1/3-(2/3)(1/2)=0$, and at $x=\pm1$ it is
$1$, so both the centre and endpoint limits agree with $x^2$.

### 3. Reducing a higher Bessel order

Express $J_3(x)$ using only $J_0(x)$ and $J_1(x)$. The recurrence
$J_{n-1}+J_{n+1}=2nJ_n/x$ gives, for $n=1$,

$$
J_2=\frac2xJ_1-J_0.
$$

For $n=2$,

$$
\begin{aligned}
J_3&=\frac4xJ_2-J_1\\
&=\boxed{\left(\frac8{x^2}-1\right)J_1-\frac4xJ_0}.
\end{aligned}
$$

The apparent inverse powers cancel at the origin. Indeed,

$$
J_0=1-\frac{x^2}{4}+\frac{x^4}{64}+O(x^6),
\qquad
J_1=\frac x2-\frac{x^3}{16}+\frac{x^5}{384}+O(x^7),
$$

so substitution gives $J_3=x^3/48+O(x^5)$, the regular behavior expected
from the Frobenius leading power $x^3$.

## Descriptive Questions

1. How are ordinary, regular singular, and irregular points distinguished, and why can an integer difference between indicial roots introduce a logarithm?
2. How does the Bessel generating function produce the two standard recurrence relations, and which boundary behavior selects the regular solution?
3. How does self-adjoint form make the boundary term responsible for Legendre and Bessel orthogonality vanish?
4. How do the generating functions, weight functions, domains, and normalization integrals differ for Hermite and Laguerre polynomials?

## Numerical Problems

1. Classify $x=0$ for (a) $y^{\prime\prime}+xy^{\prime}+y=0$, (b)
$y^{\prime\prime}+x^{-1}y^{\prime}+y=0$, and (c)
$y^{\prime\prime}+x^{-3}y^{\prime}+y=0$.

   **Final answer:** (a) ordinary, (b) regular singular, and (c) irregular singular.

2. For $x^2y^{\prime\prime}+3xy^{\prime}+(x^2-4)y=0$, find the indicial roots and the
Frobenius coefficient recurrence.

   **Final answer:** $r=-1\pm\sqrt5$, $a_1=0$, and
$a_n=-a_{n-2}/[(n+r)^2+2(n+r)-4]$ for $n\ge2$.

3. Use $P_4(x)=(35x^4-30x^2+3)/8$ to evaluate $P_4(1/2)$.

   **Final answer:** $-37/128$.

4. Use the first four terms of the Frobenius series for $J_0(x)$ to
approximate $J_0(1)$.

   **Final answer:** $1-1/4+1/64-1/2304=1763/2304$.

5. Generate $H_4(x)$ from the Hermite recurrence and evaluate it at the
origin.

   **Final answer:** $H_4(x)=16x^4-48x^2+12$ and $H_4(0)=12$.

6. Evaluate $L_3(2)$ from the polynomial stated above.

   **Final answer:** $-1/3$.

The Frobenius recurrences, differential equations, orthogonality integrals,
all solved results, and every final answer are checked in the
[Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-17/unit-3/special-functions.mac' | relative_url }}); every printed residual is zero.

## References

1. [Frobenius method — Wikipedia](https://en.wikipedia.org/wiki/Frobenius_method)
2. [NIST Digital Library of Mathematical Functions, §2.7: Differential Equations and Fuchs–Frobenius Theory](https://dlmf.nist.gov/2.7)
3. NIST Digital Library of Mathematical Functions: [Chapter 10, Bessel Functions](https://dlmf.nist.gov/10) and [Chapter 14, Legendre and Related Functions](https://dlmf.nist.gov/14).
4. [NIST Digital Library of Mathematical Functions, Chapter 18: Orthogonal Polynomials](https://dlmf.nist.gov/18)
5. G. B. Arfken, H. J. Weber and F. E. Harris, *Mathematical Methods for Physicists*, 7th ed., chapters on series solutions and special functions.

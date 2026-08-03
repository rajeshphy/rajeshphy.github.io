---
title: "Cauchy-Euler and Simultaneous Differential Equations"
summary: "Power-law solutions of the Cauchy-Euler equation and normal combinations for coupled first- and second-order systems."
date: 2025-06-24 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, cauchy-euler-equation, simultaneous-equations]
permalink: /bsc/sem-ii/cauchy-euler-simultaneous-equations/
hidden: true
---

## Cauchy-Euler equation

A second-order Cauchy-Euler equation has the form

$$
ax^2y''+bxy'+cy=0,
\qquad x>0.
$$

Every derivative of a power reduces its exponent by one, while the prefactor restores it. With $y=x^m$,

$$
y'=mx^{m-1},
\qquad
y''=m(m-1)x^{m-2}.
$$

Substitution gives

$$
x^m\left[am(m-1)+bm+c\right]=0.
$$

Thus the indicial equation is

$$
\boxed{am(m-1)+bm+c=0}.
$$

For

$$
x^2y''-3xy'+4y=0,
$$

the indicial polynomial is

$$
m(m-1)-3m+4=(m-2)^2.
$$

The repeated-root solution is

$$
\boxed{y=x^2(C_1+C_2\ln x)}.
$$

The logarithm follows directly from the change of variable $t=\ln x$. Since

$$
\frac{dy}{dx}=\frac1x\frac{dy}{dt},
$$

another differentiation gives

$$
\frac{d^2y}{dx^2}
=\frac1{x^2}\left(\frac{d^2y}{dt^2}-\frac{dy}{dt}\right).
$$

The original equation becomes

$$
\frac{d^2y}{dt^2}-4\frac{dy}{dt}+4y=0,
$$

whose repeated root is $2$. Hence $y=(C_1+C_2t)e^{2t}=x^2(C_1+C_2\ln x)$.

## Simultaneous first-order equations

Consider

$$
x'=3x+y,
\qquad
y'=x+3y.
$$

Add and subtract the equations. With

$$
u=x+y,
\qquad v=x-y,
$$

we obtain

$$
u'=4u,
\qquad v'=2v.
$$

Therefore $u=Ae^{4t}$ and $v=Be^{2t}$. Solving $u=x+y$, $v=x-y$ for the original variables gives

$$
\boxed{
x=\frac12(Ae^{4t}+Be^{2t}),
\qquad
y=\frac12(Ae^{4t}-Be^{2t})}.
$$

## Simultaneous second-order equations

For

$$
x''+2x-y=0,
\qquad
y''+2y-x=0,
$$

the same combinations decouple the system. Addition gives

$$
u''+u=0,
$$

while subtraction gives

$$
v''+3v=0.
$$

Thus

$$
u=A\cos t+B\sin t,
\qquad
v=C\cos(\sqrt3t)+D\sin(\sqrt3t),
$$

and

$$
\boxed{x=\frac{u+v}{2},\qquad y=\frac{u-v}{2}}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/coupled-normal-combinations.png' | relative_url }}" alt="In-phase and out-of-phase normal combinations for two coupled variables" loading="lazy">
  <figcaption>The combinations \(u=x+y\) and \(v=x-y\) isolate the in-phase and out-of-phase motions. Their equations contain no remaining coupling.</figcaption>
</figure>

Direct substitution into both coupled systems is carried out in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

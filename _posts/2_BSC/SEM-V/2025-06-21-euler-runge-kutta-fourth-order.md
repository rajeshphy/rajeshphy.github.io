---
title: "Euler and Fourth-Order Runge-Kutta Methods"
date: 2025-06-21 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, ordinary-differential-equations, euler-method, runge-kutta]
permalink: /bsc/sem-v/mj-9/euler-runge-kutta-fourth-order/
---

Consider the initial-value problem

$$\frac{dy}{dx}=f(x,y),\qquad y(x_0)=y_0.$$

A step method constructs $y_{n+1}$ at $x_{n+1}=x_n+h$ from information near $(x_n,y_n)$.

![Euler tangent and the four-slope idea of RK4]({{ '/assets/images/bsc/sem-v/mj-9/quadrature-ode.png' | relative_url }})

The figure is reproducible from its [TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-9/quadrature-ode.tex' | relative_url }}).

## Euler's method

Taylor expansion gives

$$y(x_n+h)=y(x_n)+hy'(x_n)+\frac{h^2}{2}y''(\xi_n).$$

Using $y'=f(x,y)$ and dropping terms of order $h^2$ produces

$$\boxed{y_{n+1}=y_n+h f(x_n,y_n)}.$$

Thus Euler's method follows the tangent at the start of each interval. Its local truncation error is $O(h^2)$; after roughly $(b-a)/h$ steps, these accumulated errors give global error $O(h)$.

## Fourth-order Runge-Kutta method

RK4 samples four slopes:

$$k_1=h f(x_n,y_n),$$

$$k_2=h f\left(x_n+\frac h2,y_n+\frac{k_1}{2}\right),$$

$$k_3=h f\left(x_n+\frac h2,y_n+\frac{k_2}{2}\right),$$

$$k_4=h f(x_n+h,y_n+k_3).$$

Their weighted combination is

$$\boxed{y_{n+1}=y_n+\frac{k_1+2k_2+2k_3+k_4}{6}}.$$

The weights are chosen to match the Taylor expansion through $h^4$. This can be seen directly for $y'=y$:

$$k_1=hy,$$

$$k_2=hy\left(1+\frac h2\right),$$

$$k_3=hy\left(1+\frac h2+\frac{h^2}{4}\right),$$

$$k_4=hy\left(1+h+\frac{h^2}{2}+\frac{h^3}{4}\right).$$

Substitution in the weighted update gives

$$y_{n+1}=y_n\left(
1+h+\frac{h^2}{2}+\frac{h^3}{6}+\frac{h^4}{24}
\right),$$

which is the fourth-degree Taylor polynomial of $e^h$. For a smooth general equation, RK4 has local error $O(h^5)$ and global error $O(h^4)$.

## One step for $y'=y$

Let $y(0)=1$ and $h=0.1$. Euler gives

$$y_1^{\rm Euler}=1+0.1(1)=1.1.$$

For RK4,

$$k_1=0.1,\qquad
k_2=0.105,\qquad
k_3=0.10525,\qquad
k_4=0.110525,$$

so

$$y_1^{\rm RK4}
=1+\frac{0.1+2(0.105)+2(0.10525)+0.110525}{6}
=1.105170833\ldots.$$

The exact value is $e^{0.1}=1.105170918\ldots$. The same step size therefore gives a visibly smaller RK4 error.

The symbolic expansion in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/quadrature-ode-fit-checks.mac' | relative_url }}) returns

~~~text
rk4_residual = 0
~~~

where the residual is RK4 minus the fourth-degree Taylor update for $y'=y$.

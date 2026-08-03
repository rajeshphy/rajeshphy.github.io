---
title: "Least-Squares Linear and Polynomial Regression"
date: 2025-06-20 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, least-squares, linear-regression, polynomial-regression]
permalink: /bsc/sem-v/mj-9/least-squares-linear-polynomial-regression/
---

Measurements $(x_i,y_i)$ generally do not lie exactly on one curve. Regression chooses model parameters that minimize the total squared vertical residual,

$$r_i=y_i-P(x_i),\qquad
S=\sum_{i=1}^{n}r_i^2.$$

Unlike interpolation, the fitted curve need not pass through every point.

## Polynomial normal equations

Let the degree-$m$ model be

$$P_m(x)=a_0+a_1x+\cdots+a_mx^m
=\sum_{k=0}^{m}a_kx^k.$$

Then

$$S=\sum_{i=1}^{n}
\left(y_i-\sum_{k=0}^{m}a_kx_i^k\right)^2.$$

At the minimum, $\partial S/\partial a_j=0$. Differentiating gives

$$-2\sum_{i=1}^{n}x_i^j
\left(y_i-\sum_{k=0}^{m}a_kx_i^k\right)=0,$$

and hence the $m+1$ normal equations

$$\boxed{\sum_{k=0}^{m}a_k
\left(\sum_{i=1}^{n}x_i^{j+k}\right)
=\sum_{i=1}^{n}x_i^j y_i,\qquad j=0,\ldots,m.}$$

In matrix notation these are

$$X^TX\,\mathbf a=X^T\mathbf y,$$

where row $i$ of $X$ is $(1,x_i,x_i^2,\ldots,x_i^m)$.

## Straight-line regression

For $P_1(x)=a+bx$, the normal equations reduce to

$$na+b\sum x_i=\sum y_i,$$

$$a\sum x_i+b\sum x_i^2=\sum x_i y_i.$$

Eliminating $a$ gives

$$\boxed{b=
\frac{n\sum x_i y_i-(\sum x_i)(\sum y_i)}
{n\sum x_i^2-(\sum x_i)^2}},\qquad
\boxed{a=\bar y-b\bar x}.$$

For the data

| $x$ | 0 | 1 | 2 |
|---:|---:|---:|---:|
| $y$ | 1 | 3 | 5 |

the sums are

$$n=3,\quad\sum x=3,\quad\sum y=9,\quad
\sum x^2=5,\quad\sum xy=13.$$

Thus $b=2$, $a=1$, and

$$\boxed{P_1(x)=1+2x}.$$

## Quadratic regression

For $P_2(x)=a_0+a_1x+a_2x^2$, the general formula gives

$$
\begin{pmatrix}
n&\sum x&\sum x^2\\
\sum x&\sum x^2&\sum x^3\\
\sum x^2&\sum x^3&\sum x^4
\end{pmatrix}
\begin{pmatrix}a_0\\a_1\\a_2\end{pmatrix}
=
\begin{pmatrix}\sum y\\\sum xy\\\sum x^2y\end{pmatrix}.
$$

For the four points

$$(-1,2),\quad(0,1),\quad(1,2),\quad(2,5),$$

the normal equations are

$$
\begin{aligned}
4a_0+2a_1+6a_2&=10,\\
2a_0+6a_1+8a_2&=10,\\
6a_0+8a_1+18a_2&=24.
\end{aligned}
$$

Their solution is

$$a_0=1,\qquad a_1=0,\qquad a_2=1,$$

so

$$\boxed{P_2(x)=1+x^2}.$$

These illustrative data happen to lie exactly on their fitted models. With experimental data, the residuals usually remain non-zero even though the normal-equation residuals vanish.

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/quadrature-ode-fit-checks.mac' | relative_url }}) displays

~~~text
normal_residual_1     = 0
normal_residual_2     = 0
polynomial_residual_0 = 0
polynomial_residual_1 = 0
polynomial_residual_2 = 0
~~~

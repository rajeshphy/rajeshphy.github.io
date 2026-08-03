---
title: "Least-Squares Linear and Polynomial Regression"
date: 2025-06-23 09:00:00 +0530
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

The normal equations also have a geometric meaning. With residual vector

$$\mathbf r=\mathbf y-X\mathbf a,$$

the stationarity condition is

$$X^T\mathbf r=\mathbf0.$$

Thus the residual is orthogonal to every column of the design matrix. For a straight line, this gives both $\sum r_i=0$ and $\sum x_ir_i=0$; non-zero individual residuals can remain even though these weighted sums vanish.

## Solved Problems

### 1. A least-squares line through noisy data

Fit $P(x)=a+bx$ to $(0,1)$, $(1,2)$, and $(2,2)$. The required sums are

$$n=3,\quad\sum x_i=3,\quad\sum y_i=5,
\quad\sum x_i^2=5,\quad\sum x_iy_i=6.$$

The normal equations are

$$3a+3b=5,$$

$$3a+5b=6.$$

Subtracting gives $2b=1$, so $b=1/2$. Then

$$a=\frac{5-3/2}{3}=\frac76.$$

Therefore

$$\boxed{P(x)=\frac76+\frac12x}.$$

The residuals $r_i=y_i-P(x_i)$ are

$$\left(-\frac16,\frac13,-\frac16\right).$$

They satisfy

$$\sum r_i=0,\qquad\sum x_ir_i=0,$$

and the residual sum of squares is

$$S=\frac1{36}+\frac19+\frac1{36}=\frac16.$$

### 2. Quadratic regression with non-zero residuals

Fit $P_2(x)=a_0+a_1x+a_2x^2$ to

$$(-1,2),\quad(0,1),\quad(1,2),\quad(2,6).$$

The normal equations are

$$
\begin{aligned}
4a_0+2a_1+6a_2&=11,\\
2a_0+6a_1+8a_2&=12,\\
6a_0+8a_1+18a_2&=28.
\end{aligned}
$$

Elimination gives

$$a_0=\frac{17}{20},\qquad
a_1=\frac1{20},\qquad
a_2=\frac54.$$

Hence

$$\boxed{P_2(x)=\frac{17}{20}+\frac{x}{20}+\frac54x^2}.$$

The residuals are

$$\left(-\frac1{20},\frac3{20},-\frac3{20},\frac1{20}\right),$$

so

$$S=\frac1{400}+\frac9{400}+\frac9{400}+\frac1{400}
=\frac1{20}.$$

All three orthogonality sums $\sum x_i^jr_i$, $j=0,1,2$, vanish, confirming the minimum without claiming that the fit interpolates the data.

## Descriptive Questions

1. Derive the normal equations for a degree-$m$ least-squares polynomial.
2. Distinguish interpolation from least-squares regression in terms of residuals and data constraints.
3. Derive the closed formulae for the slope and intercept of a fitted straight line.
4. Explain the orthogonality condition $X^T\mathbf r=\mathbf0$ for a least-squares fit.

## Numerical Problems

1. Fit a straight line to $(1,2)$, $(2,4)$, and $(3,5)$.
   **Answer:** $P(x)=2/3+(3/2)x$.

2. Use the fitted line in Problem 1 to predict the value at $x=4$.
   **Answer:** $P(4)=20/3\approx6.6667$.

3. At $x=0,1,2$, a line fit has residuals $(-0.2,0.4,-0.2)$. Verify the two normal-equation conditions.
   **Answer:** $\sum r_i=0$ and $\sum x_ir_i=0$.

4. Observed values are $(1,3,5)$ and fitted values are $(1.1,2.9,5.2)$. Find the residual sum of squares.
   **Answer:** residuals $(-0.1,0.1,-0.2)$; $S=0.06$.

The fitted coefficients, residuals, normal equations, and sums of squares are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-ii-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Least squares — Wikipedia](https://en.wikipedia.org/wiki/Least_squares).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 8, “Approximation Theory.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapter 17, “Least-Squares Regression.”

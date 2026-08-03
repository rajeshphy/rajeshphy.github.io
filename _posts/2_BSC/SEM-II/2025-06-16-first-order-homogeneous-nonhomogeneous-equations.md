---
title: "First-Order Homogeneous and Non-Homogeneous Differential Equations"
summary: "Homogeneous first-order equations and the integrating-factor solution of linear homogeneous and non-homogeneous equations."
date: 2025-06-16 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, differential-equations, first-order-equations]
permalink: /bsc/sem-ii/first-order-homogeneous-nonhomogeneous-equations/
hidden: true
---

A first-order ordinary differential equation contains $y(x)$ and $dy/dx$, but no higher derivative. Two meanings of *homogeneous* occur in first-order work, so they must be kept distinct.

## Homogeneous in the ratio (y/x)

An equation

$$
\frac{dy}{dx}=F\!\left(\frac yx\right)
$$

is homogeneous because a common scaling $(x,y)\mapsto(\lambda x,\lambda y)$ leaves $y/x$ unchanged. Put

$$
v=\frac yx,
\qquad y=xv(x).
$$

The product rule, which must not be omitted, gives

$$
\frac{dy}{dx}=v+x\frac{dv}{dx}.
$$

Hence

$$
v+x\frac{dv}{dx}=F(v),
\qquad
\frac{dv}{F(v)-v}=\frac{dx}{x}.
$$

After integration, substitute $v=y/x$.

For example,

$$
\frac{dy}{dx}=1+\frac yx
$$

becomes $v+xv'=1+v$, so $xv'=1$. Therefore

$$
v=\ln\lvert x\rvert+C,
\qquad
\boxed{y=x\bigl(\ln\lvert x\rvert+C\bigr)}.
$$

Differentiating the answer gives $y'=\ln\lvert x\rvert+C+1=1+y/x$, so the original equation is recovered.

## Linear homogeneous and non-homogeneous equations

A first-order linear equation is

$$
\boxed{y'+P(x)y=Q(x)}.
$$

It is linear homogeneous when $Q=0$ and non-homogeneous when $Q\ne0$. To combine the two terms on the left into one derivative, multiply by a function $\mu(x)$:

$$
\mu y'+\mu Py=\frac{d}{dx}(\mu y)
=\mu y'+\mu' y.
$$

The coefficients of $y$ agree when

$$
\mu'=P\mu,
\qquad
\frac{d\mu}{\mu}=P(x)dx.
$$

Thus an integrating factor is

$$
\boxed{\mu(x)=e^{\int P(x)dx}}.
$$

The multiplied equation is $(\mu y)'=\mu Q$. Integrating between a reference point $x_0$ and $x$ gives

$$
\mu(x)y(x)-\mu(x_0)y(x_0)
=\int_{x_0}^{x}\mu(s)Q(s)\,ds.
$$

Equivalently,

$$
\boxed{
y(x)=\frac{1}{\mu(x)}
\left[C+\int^x\mu(s)Q(s)\,ds\right]}.
$$

For $Q=0$, this reduces to $y_h=C/\mu$. For $Q\ne0$, the answer is $y=y_h+y_p$.

### Example

Solve

$$
y'+2y=e^{-x}.
$$

Here $P=2$, so $\mu=e^{2x}$. Then

$$
e^{2x}y'+2e^{2x}y=(e^{2x}y)'=e^x.
$$

Therefore

$$
e^{2x}y=e^x+C,
\qquad
\boxed{y=e^{-x}+Ce^{-2x}}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/first-order-solution-family.png' | relative_url }}" alt="Solution curves y equals exponential minus x plus C exponential minus two x for several constants C" loading="lazy">
  <figcaption>Every curve satisfies \(y'+2y=e^{-x}\). The \(Ce^{-2x}\) part is the homogeneous freedom, while \(e^{-x}\) is one particular solution.</figcaption>
</figure>

Substitution gives

$$
y'+2y=(-e^{-x}-2Ce^{-2x})
+2(e^{-x}+Ce^{-2x})=e^{-x}.
$$

The substitutions in this post are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}); every reported residual is zero.

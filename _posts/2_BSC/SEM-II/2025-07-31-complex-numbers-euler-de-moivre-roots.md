---
title: "Complex Numbers, Euler's Formula, De Moivre's Theorem, and Roots"
summary: "Argand-plane geometry, polar form, complex multiplication, integer powers, and all roots of a complex number."
date: 2025-07-31 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, complex-analysis, complex-numbers]
permalink: /bsc/sem-ii/complex-numbers-euler-de-moivre-roots/
hidden: true
---

A complex number is

$$
z=x+iy,
\qquad i^2=-1,
$$

and is represented by the point $(x,y)$ in the Argand plane. Its conjugate and modulus are

$$
\bar z=x-iy,
\qquad
\lvert z\rvert=\sqrt{z\bar z}=\sqrt{x^2+y^2}.
$$

For $z\ne0$, let $\theta$ be an argument of $z$. Then

$$
x=r\cos\theta,\qquad y=r\sin\theta,\qquad r=\lvert z\rvert,
$$

so

$$
\boxed{z=r(\cos\theta+i\sin\theta)}.
$$

Because $\theta$ and $\theta+2\pi k$ represent the same point, the argument is multivalued. A selected principal argument is commonly restricted to one interval of length $2\pi$.

## Euler's formula

Let

$$
w(\theta)=\cos\theta+i\sin\theta.
$$

Differentiation gives

$$
\frac{dw}{d\theta}
=-\sin\theta+i\cos\theta
=i(\cos\theta+i\sin\theta)
=iw,
$$

with $w(0)=1$. The exponential $e^{i\theta}$ is the solution of the same equation $w'=iw$ with the same initial value. Hence

$$
\boxed{e^{i\theta}=\cos\theta+i\sin\theta}.
$$

Therefore the polar form is

$$
\boxed{z=re^{i\theta}}.
$$

Multiplication now has a direct geometrical meaning:

$$
z_1z_2=r_1r_2e^{i(\theta_1+\theta_2)}.
$$

The moduli multiply and the arguments add.

## De Moivre's theorem

For an integer $n$,

$$
(\cos\theta+i\sin\theta)^n
=(e^{i\theta})^n=e^{in\theta}.
$$

Using Euler's formula again,

$$
\boxed{
(\cos\theta+i\sin\theta)^n
=\cos(n\theta)+i\sin(n\theta)}.
$$

For negative $n$, the result follows by taking reciprocals, since $\lvert e^{i\theta}\rvert=1$.

## Roots of a complex number

Let

$$
z^n=Re^{i\Theta},
\qquad R>0.
$$

Write $z=re^{i\theta}$. Then

$$
r^ne^{in\theta}=Re^{i(\Theta+2\pi k)}.
$$

Equality of moduli and arguments gives

$$
r=R^{1/n},
\qquad
\theta=\frac{\Theta+2\pi k}{n}.
$$

Only $k=0,1,\ldots,n-1$ give distinct roots, because increasing $k$ by $n$ adds $2\pi$ to $\theta$. Thus

$$
\boxed{
z_k=R^{1/n}
\exp\!\left[i\frac{\Theta+2\pi k}{n}\right],
\quad k=0,\ldots,n-1}.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/complex-roots-argand.png' | relative_url }}" alt="The five fifth roots of a complex number equally spaced on a circle in the Argand plane" loading="lazy">
  <figcaption>The roots \(z_k=R^{1/5}e^{i(\Theta+2\pi k)/5}\) lie at equal angular intervals \(2\pi/5\). Their polygon is equation-generated from the root formula.</figcaption>
</figure>

For example, the cube roots of $8=8e^{i2\pi k}$ are

$$
z_k=2e^{i2\pi k/3},
\qquad k=0,1,2,
$$

or

$$
\boxed{2,\quad -1+i\sqrt3,\quad -1-i\sqrt3}.
$$

Cubing each value gives $8$, as verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

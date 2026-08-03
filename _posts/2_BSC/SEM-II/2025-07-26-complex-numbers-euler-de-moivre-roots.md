---
title: "Complex Numbers, Euler's Formula, De Moivre's Theorem, and Roots"
summary: "Argand-plane geometry, polar form, complex multiplication, integer powers, and all roots of a complex number."
date: 2025-07-26 09:00:00 +0530
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

with $w(0)=1$. The exponential $e^{i\theta}$ is the solution of the same equation $w^{\prime}=iw$ with the same initial value. Hence

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

For $z_2\ne0$, division follows by multiplying by $e^{-i\theta_2}/r_2$:

$$
\boxed{\frac{z_1}{z_2}
=\frac{r_1}{r_2}e^{i(\theta_1-\theta_2)}}.
$$

Thus division divides moduli and subtracts arguments.

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
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-3/complex-roots-argand.png' | relative_url }}" alt="The five fifth roots of a complex number equally spaced on a circle in the Argand plane" loading="lazy">
  </div>
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

## Solved Problems

1. Write $z=-\sqrt3+i$ in polar form and evaluate $z^6$ using De Moivre's theorem.

   Its modulus is

   $$
   r=\sqrt{(-\sqrt3)^2+1^2}=2.
   $$

   The point is in quadrant II, with reference angle $\pi/6$, so its principal argument is

   $$
   \Theta=\pi-\frac{\pi}{6}=\frac{5\pi}{6}.
   $$

   Hence

   $$
   z=2e^{i5\pi/6}.
   $$

   De Moivre's theorem gives

   $$
   z^6=2^6e^{i5\pi}
   =64(\cos5\pi+i\sin5\pi)
   =\boxed{-64}.
   $$

   The modulus check is $\lvert z^6\rvert=2^6=64$, and the angle $5\pi$ is equivalent to $\pi$ modulo $2\pi$, so the result must lie on the negative real axis.

2. Find all solutions of $z^4=-16$ and verify their geometrical arrangement.

   Write

   $$
   -16=16e^{i(\pi+2\pi k)}.
   $$

   The fourth-root modulus is $16^{1/4}=2$, and the distinct arguments are

   $$
   \theta_k=\frac{\pi+2\pi k}{4}
   =\frac{\pi}{4}+\frac{k\pi}{2},
   \qquad k=0,1,2,3.
   $$

   Therefore

   $$
   \boxed{
   z=\sqrt2+i\sqrt2,\;
   -\sqrt2+i\sqrt2,\;
   -\sqrt2-i\sqrt2,\;
   \sqrt2-i\sqrt2}.
   $$

   Each root has modulus $2$, consecutive roots differ in argument by $\pi/2$, and raising any root to the fourth power gives modulus $16$ and argument $\pi$ modulo $2\pi$.

## Descriptive Questions

1. Derive Euler's formula from the differential equation satisfied by $\cos\theta+i\sin\theta$.
2. Explain geometrically why complex multiplication multiplies moduli and adds arguments, while division subtracts arguments.
3. Prove De Moivre's theorem for positive and negative integers.
4. Derive all $n$th roots of $Re^{i\Theta}$ and prove that they form a regular polygon.

## Numerical Problems

1. Express $(3-4i)/(1+2i)$ in Cartesian form.

   **Answer:** $-1-2i$.

2. Find the modulus and principal argument of $-\!1-i\sqrt3$.

   **Answer:** modulus $2$; principal argument $-2\pi/3$.

3. Find the area of the triangle in the Argand plane with vertices $z_1=0$, $z_2=2+i$, and $z_3=1+3i$.

   **Answer:** $5/2$ square units.

4. Solve $z+2\bar z=3+i$.

   **Answer:** $z=1-i$.

5. Describe the locus $\lvert z-(2-i)\rvert=3$ in the Argand plane.

   **Answer:** the circle with center $2-i$ and radius $3$.

6. Find both square roots of $5+12i$.

   **Answer:** $\pm(3+2i)$.

All added algebraic powers, roots, and answer checks are verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}); every printed residual is zero.

## References

1. [Complex number — Wikipedia](https://en.wikipedia.org/wiki/Complex_number)
2. [MIT OpenCourseWare 18.04, lecture notes: Topic 1, Complex Algebra and the Complex Plane](https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/resources/lecture-notes/)
3. James Ward Brown and Ruel V. Churchill, *Complex Variables and Applications*, 9th ed., Chapter 1.

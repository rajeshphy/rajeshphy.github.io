---
title: "Functions of a Complex Variable, Analyticity, and Cauchy-Riemann Equations"
summary: "Complex differentiation from path-independent limits, derivation of the Cauchy-Riemann equations, and analytic examples."
date: 2025-07-27 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, analytic-functions, cauchy-riemann-equations]
permalink: /bsc/sem-ii/functions-analyticity-cauchy-riemann/
hidden: true
---

A function of a complex variable can be written

$$
w=f(z)=u(x,y)+iv(x,y),
\qquad z=x+iy,
$$

where $u$ and $v$ are real functions. Its derivative at $z_0$ is

$$
\boxed{
f^{\prime}(z_0)=\lim_{\Delta z\to0}
\frac{f(z_0+\Delta z)-f(z_0)}{\Delta z}}.
$$

Unlike a real increment, $\Delta z$ can approach zero from infinitely many directions. The same limit must be obtained along every path.

## Derivation of the Cauchy-Riemann equations

First approach along the real direction: $\Delta z=\Delta x$. Then

$$
f^{\prime}(z)=\lim_{\Delta x\to0}
\left(\frac{\Delta u}{\Delta x}
+i\frac{\Delta v}{\Delta x}\right)
=u_x+iv_x.
$$

Now approach along the imaginary direction: $\Delta z=i\Delta y$. Since $1/i=-i$,

$$
\begin{aligned}
f^{\prime}(z)
&=\lim_{\Delta y\to0}
\frac{\Delta u+i\Delta v}{i\Delta y}\\
&=\lim_{\Delta y\to0}
\left(\frac{\Delta v}{\Delta y}
-i\frac{\Delta u}{\Delta y}\right)\\
&=v_y-iu_y.
\end{aligned}
$$

Equality of real and imaginary parts gives

$$
\boxed{u_x=v_y,\qquad u_y=-v_x}.
$$

These are the Cauchy-Riemann equations. When the first partial derivatives are continuous in a neighborhood, these equations are also sufficient for complex differentiability there.

To see the sufficiency, write

$$
\Delta f=u_x\Delta x+u_y\Delta y
+i(v_x\Delta x+v_y\Delta y)+o(\lvert\Delta z\rvert).
$$

Use $v_y=u_x$ and $v_x=-u_y$:

$$
\begin{aligned}
\Delta f
&=(u_x-iu_y)(\Delta x+i\Delta y)+o(\lvert\Delta z\rvert)\\
&=(u_x+iv_x)\Delta z+o(\lvert\Delta z\rvert).
\end{aligned}
$$

Division by $\Delta z$ and the limit $\Delta z\to0$ give

$$
\boxed{f^{\prime}(z)=u_x+iv_x=v_y-iu_y}.
$$

A function differentiable throughout an open neighborhood is analytic there.

If $u$ and $v$ have continuous second partial derivatives, the Cauchy-Riemann equations also imply harmonicity. Differentiate $u_x=v_y$ with respect to $x$ and $u_y=-v_x$ with respect to $y$:

$$
u_{xx}=v_{yx},
\qquad
u_{yy}=-v_{xy}.
$$

Equality of mixed partials gives

$$
\boxed{u_{xx}+u_{yy}=0}.
$$

The same calculation with $v_x=-u_y$ and $v_y=u_x$ gives $\nabla^2v=0$. The function $v$ is then called a harmonic conjugate of $u$, determined up to an additive real constant on a connected domain.

## Examples

For $f(z)=z^2$,

$$
z^2=(x^2-y^2)+i(2xy),
$$

so

$$
u_x=2x=v_y,
\qquad
u_y=-2y=-v_x.
$$

Thus $z^2$ is analytic everywhere and

$$
f^{\prime}(z)=2x+i2y=2z.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-3/z-square-mapping.png' | relative_url }}" alt="Equation-generated mapping of polar rays and circles under w equals z squared" loading="lazy">
  </div>
  <figcaption>Under \(w=z^2\), the modulus becomes \(\lvert w\rvert=\lvert z\rvert^2\) and the argument doubles. Radial lines \(\theta=\text{constant}\) map to lines at angle \(2\theta\).</figcaption>
</figure>

For $f(z)=\bar z=x-iy$,

$$
u_x=1,\qquad v_y=-1,
$$

so the Cauchy-Riemann equations fail everywhere. Indeed,

$$
\frac{\overline{\Delta z}}{\Delta z}
=e^{-2i\arg(\Delta z)}
$$

depends on the direction of approach.

For $f(z)=\lvert z\rvert^2=x^2+y^2$, the Cauchy-Riemann equations hold only at the origin. The derivative there exists because

$$
\frac{\lvert h\rvert^2}{h}=\bar h\longrightarrow0.
$$

However, the function is not analytic at the origin because it is not differentiable throughout any neighborhood of it. The Cauchy-Riemann residuals for the analytic and non-analytic examples are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

## Solved Problems

1. Given $u=x^2-y^2+x$, find a harmonic conjugate $v$, construct the analytic function $f=u+iv$, and obtain $f^{\prime}(z)$.

   The Cauchy-Riemann equations require

   $$
   v_y=u_x=2x+1,
   \qquad
   v_x=-u_y=2y.
   $$

   Integrating the first equation with respect to $y$ gives

   $$
   v=(2x+1)y+g(x).
   $$

   Differentiation with respect to $x$ gives

   $$
   v_x=2y+g^{\prime}(x).
   $$

   Comparison with $v_x=2y$ yields $g^{\prime}(x)=0$, so

   $$
   v=2xy+y+C.
   $$

   Therefore

   $$
   f=(x^2-y^2+x)+i(2xy+y+C)
   =\boxed{z^2+z+iC},
   $$

   and

   $$
   \boxed{f^{\prime}(z)=2z+1}.
   $$

   The consistency of both first-order equations is equivalent to $\nabla^2u=0$.

2. Determine every point at which $f(z)=x^2+iy^2$ is complex differentiable, find the derivative there, and decide whether it is analytic anywhere.

   Here

   $$
   u=x^2,\qquad v=y^2.
   $$

   The first Cauchy-Riemann equation gives

   $$
   u_x=v_y
   \quad\Longrightarrow\quad
   2x=2y,
   $$

   while the second is

   $$
   u_y=-v_x
   \quad\Longrightarrow\quad
   0=0.
   $$

   Since the partial derivatives are continuous, $f$ is complex differentiable exactly on the line $x=y$. At such a point,

   $$
   \boxed{f^{\prime}(z)=u_x+iv_x=2x}.
   $$

   No open disk lies inside the line $x=y$, so the function is not analytic in any neighborhood. This separates differentiability at a point from analyticity on an open set.

## Descriptive Questions

1. Derive the Cauchy-Riemann equations by approaching the derivative along the real and imaginary directions.
2. Prove the sufficiency of the Cauchy-Riemann equations when the first partial derivatives are continuous.
3. Derive the harmonic equations for the real and imaginary parts of an analytic function.
4. Explain, with an example, why complex differentiability at one point does not imply analyticity there.

## Numerical Problems

1. Find $f^{\prime}(1-i)$ for $f(z)=z^3$.

   **Answer:** $-6i$.

2. For real constants $a,b$, determine when
   $f(z)=(x^3-3xy^2+ax)+i(bx^2y-y^3+2y)$ is analytic, and identify the resulting function.

   **Answer:** $a=2$, $b=3$; then $f(z)=z^3+2z$.

3. Determine where $f(z)=\bar z^{\,2}$ is complex differentiable.

   **Answer:** only at $z=0$, where $f^{\prime}(0)=0$.

4. Near $z_0=\ln2+i\pi/3$, give the first-order linearization of $w=e^z$ for an increment $\Delta z$.

   **Answer:** $\Delta w=(1+i\sqrt3)\Delta z+O(\lvert\Delta z\rvert^2)$.

5. Determine where $f(z)=\lvert z\rvert^4$ is complex differentiable.

   **Answer:** only at $z=0$, with derivative $0$.

6. For $f(z)=1/z$, find $f(1+i)$ and $f^{\prime}(1+i)$.

   **Answer:** $f(1+i)=(1-i)/2$; $f^{\prime}(1+i)=i/2$.

All added Cauchy-Riemann, harmonic-conjugate, and derivative checks are verified in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}); every printed residual is zero.

## References

1. [Holomorphic function — Wikipedia](https://en.wikipedia.org/wiki/Holomorphic_function)
2. [MIT OpenCourseWare 18.04, lecture notes: Topic 2, Analytic Functions](https://ocw.mit.edu/courses/18-04-complex-variables-with-applications-spring-2018/resources/lecture-notes/)
3. James Ward Brown and Ruel V. Churchill, *Complex Variables and Applications*, 9th ed., Chapter 2.

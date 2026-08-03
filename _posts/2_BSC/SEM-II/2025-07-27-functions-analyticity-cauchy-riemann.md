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
f'(z_0)=\lim_{\Delta z\to0}
\frac{f(z_0+\Delta z)-f(z_0)}{\Delta z}}.
$$

Unlike a real increment, $\Delta z$ can approach zero from infinitely many directions. The same limit must be obtained along every path.

## Derivation of the Cauchy-Riemann equations

First approach along the real direction: $\Delta z=\Delta x$. Then

$$
f'(z)=\lim_{\Delta x\to0}
\left(\frac{\Delta u}{\Delta x}
+i\frac{\Delta v}{\Delta x}\right)
=u_x+iv_x.
$$

Now approach along the imaginary direction: $\Delta z=i\Delta y$. Since $1/i=-i$,

$$
\begin{aligned}
f'(z)
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
\boxed{f'(z)=u_x+iv_x=v_y-iu_y}.
$$

A function differentiable throughout an open neighborhood is analytic there.

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
f'(z)=2x+i2y=2z.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/z-square-mapping.png' | relative_url }}" alt="Equation-generated mapping of polar rays and circles under w equals z squared" loading="lazy">
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

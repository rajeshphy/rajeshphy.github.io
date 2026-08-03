---
title: "Vibrational Modes of a Circular Membrane"
summary: "Angular periodicity, the radial Bessel equation, fixed-rim roots, and circular-membrane frequencies."
date: 2025-06-28 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, circular-membrane, bessel-functions]
permalink: /bsc/sem-ii/circular-membrane-modes/
hidden: true
---

For a circular membrane of radius $a$, take the polar wave equation as given:

$$
\boxed{
u_{tt}=c^2\left[
\frac1r\frac{\partial}{\partial r}
\left(r\frac{\partial u}{\partial r}\right)
+\frac1{r^2}\frac{\partial^2u}{\partial\varphi^2}
\right]}.
$$

Use $u(r,\varphi,t)=R(r)\Phi(\varphi)T(t)$. Division by $c^2R\Phi T$ gives

$$
\frac{T^{\prime\prime}}{c^2T}
=\frac1R\frac1r(rR^{\prime})^{\prime}
+\frac1{r^2}\frac{\Phi^{\prime\prime}}{\Phi}.
$$

Set $T^{\prime\prime}/(c^2T)=-k^2$. After multiplying the remaining equation by $r^2$,

$$
\frac rR(rR^{\prime})^{\prime}+k^2r^2=-\frac{\Phi^{\prime\prime}}{\Phi}.
$$

The two sides depend on different variables, so each equals a constant $m^2$. The angular equation is

$$
\Phi^{\prime\prime}+m^2\Phi=0.
$$

Single-valuedness requires $\Phi(\varphi+2\pi)=\Phi(\varphi)$, hence $m=0,1,2,\ldots$ and

$$
\Phi=A\cos m\varphi+B\sin m\varphi.
$$

The radial equation is

$$
r^2R^{\prime\prime}+rR^{\prime}+(k^2r^2-m^2)R=0.
$$

With $s=kr$, this becomes Bessel's equation,

$$
\boxed{s^2R_{ss}+sR_s+(s^2-m^2)R=0}.
$$

Its solution finite at the centre is $J_m(s)$. The second independent solution is singular at $r=0$ and is excluded. Therefore

$$
R(r)=J_m(kr).
$$

The fixed rim requires $R(a)=0$, so

$$
J_m(ka)=0.
$$

Let $\alpha_{mn}$ be the $n$th positive zero of $J_m$. Then

$$
k_{mn}=\frac{\alpha_{mn}}a,
\qquad
\boxed{\omega_{mn}=\frac{c\alpha_{mn}}a}.
$$

A real mode is

$$
\boxed{
u_{mn}=J_m\!\left(\alpha_{mn}\frac ra\right)
\left(A\cos m\varphi+B\sin m\varphi\right)
\cos(\omega_{mn}t+\delta)}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-2/circular-membrane-nodes.png' | relative_url }}" alt="Nodal circles and nodal diameters for selected circular membrane modes" loading="lazy">
  </div>
  <figcaption>A mode with angular index \(m\) has \(m\) nodal diameters; increasing the radial index introduces interior nodal circles at the corresponding zeros of \(J_m\). The outer circle is the fixed rim.</figcaption>
</figure>

For $m>0$, the cosine and sine angular factors have the same frequency and differ only by a rotation. A mode $(m,n)$ has $m$ nodal diameters and $n-1$ interior nodal circles; the fixed rim is not counted as an interior circle. The frequency has the correct units because $\alpha_{mn}$ is dimensionless and $[c/a]=\mathrm{time}^{-1}$.

The $m=0$ radial function is checked directly in Bessel's differential equation in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. The axisymmetric fundamental mode

A circular membrane has radius $a=0.25\,\mathrm{m}$ and wave speed $c=90\,\mathrm{m\,s^{-1}}$. Find its fundamental frequency. The first zero of $J_0$ is

$$
\alpha_{01}=2.4048255577.
$$

For the axisymmetric fundamental,

$$
\omega_{01}=\frac{c\alpha_{01}}a
=865.737\,\mathrm{rad\,s^{-1}},
$$

and therefore

$$
\boxed{
f_{01}=\frac{\omega_{01}}{2\pi}
=\frac{90(2.4048255577)}{2\pi(0.25)}
=137.786\,\mathrm{Hz}}.
$$

Here $m=0$ gives no nodal diameter and $n=1$ gives no interior nodal circle. The displacement is finite at $r=0$, vanishes at $r=a$, and $c/a$ supplies the required inverse-time unit.

### 2. A non-axisymmetric mode and its nodal circle

For $a=0.40\,\mathrm{m}$ and $c=100\,\mathrm{m\,s^{-1}}$, consider the $(m,n)=(1,2)$ mode. Use

$$
\alpha_{11}=3.8317059702,
\qquad
\alpha_{12}=7.0155866698.
$$

Its frequency is

$$
\boxed{
f_{12}=\frac{c\alpha_{12}}{2\pi a}
=279.141\,\mathrm{Hz}}.
$$

The angular factor has one nodal diameter. An interior nodal circle occurs when the radial argument reaches the preceding zero $\alpha_{11}$:

$$
\alpha_{12}\frac{r_1}{a}=\alpha_{11}.
$$

Thus

$$
\boxed{
r_1=a\frac{\alpha_{11}}{\alpha_{12}}
=0.218468\,\mathrm{m}}.
$$

There is one interior nodal circle, as required by $n-1=1$. Substitution of $r=a$ gives $J_1(\alpha_{12})=0$, so the rim condition is also satisfied.

## Descriptive Questions

1. Starting from the given polar wave equation, derive the angular and radial separated equations.
2. Explain how single-valuedness quantizes the angular index and why the singular radial solution is excluded at the centre.
3. Derive the fixed-rim frequency condition in terms of positive zeros of $J_m$.
4. Explain the rotational degeneracy of the sine and cosine angular factors for $m>0$.

## Numerical Problems

1. Using $\alpha_{01}=2.4048255577$ and $\alpha_{02}=5.5200781103$, find $f_{02}/f_{01}$.
   **Final answer:** $f_{02}/f_{01}=\alpha_{02}/\alpha_{01}=2.29542$.
2. State the interior nodal set and number of angular sectors for a $(3,1)$ mode.
   **Final answer:** three nodal diameters, no interior nodal circle, and six angular sectors.
3. For a membrane of radius $a=0.20\,\mathrm{m}$, normalize the fundamental radial shape $R(r)=A J_0(\alpha_{01}r/a)$ by requiring $\int_0^a R^2r\,dr=1$. Use $J_1(\alpha_{01})=0.5191474973$ and $\int_0^a rJ_0^2(\alpha_{01}r/a)\,dr=a^2J_1^2(\alpha_{01})/2$.
   **Final answer:** $A=\sqrt2/[a\lvert J_1(\alpha_{01})\rvert]=13.6205\,\mathrm{m^{-1}}$.
4. For $m=2$, rewrite $\sqrt3\cos2\varphi+\sin2\varphi$ as one shifted cosine and find the nodal-diameter orientations in $0\le\varphi<\pi$.
   **Final answer:** $2\cos(2\varphi-\pi/6)$; $\varphi=\pi/3$ and $5\pi/6$.

The Bessel-zero ratios, frequencies, nodal radii, radial normalization, and angular identities are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Vibration of a circular membrane — Wikipedia](https://en.wikipedia.org/wiki/Vibrations_of_a_circular_membrane)
2. Richard Haberman, *Applied Partial Differential Equations with Fourier Series and Boundary Value Problems*, 5th ed., Chapter 7, §7.7, “Vibrating Circular Membrane and Bessel Functions,” Pearson.
3. George B. Arfken, Hans J. Weber, and Frank E. Harris, *Mathematical Methods for Physicists*, 7th ed., chapter “Bessel Functions,” Academic Press.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., chapters “Special Functions” and “Partial Differential Equations,” Wiley.

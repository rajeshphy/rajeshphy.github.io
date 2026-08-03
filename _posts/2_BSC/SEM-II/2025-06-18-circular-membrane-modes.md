---
title: "Vibrational Modes of a Circular Membrane"
summary: "Angular periodicity, the radial Bessel equation, fixed-rim roots, and circular-membrane frequencies."
date: 2025-06-18 09:00:00 +0530
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
\frac{T''}{c^2T}
=\frac1R\frac1r(rR')'
+\frac1{r^2}\frac{\Phi''}{\Phi}.
$$

Set $T''/(c^2T)=-k^2$. After multiplying the remaining equation by $r^2$,

$$
\frac rR(rR')'+k^2r^2=-\frac{\Phi''}{\Phi}.
$$

The two sides depend on different variables, so each equals a constant $m^2$. The angular equation is

$$
\Phi''+m^2\Phi=0.
$$

Single-valuedness requires $\Phi(\varphi+2\pi)=\Phi(\varphi)$, hence $m=0,1,2,\ldots$ and

$$
\Phi=A\cos m\varphi+B\sin m\varphi.
$$

The radial equation is

$$
r^2R''+rR'+(k^2r^2-m^2)R=0.
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
  <img src="{{ '/assets/images/bsc/sem-ii/unit-2/circular-membrane-nodes.png' | relative_url }}" alt="Nodal circles and nodal diameters for selected circular membrane modes" loading="lazy">
  <figcaption>A mode with angular index \(m\) has \(m\) nodal diameters; increasing the radial index introduces interior nodal circles at the corresponding zeros of \(J_m\). The outer circle is the fixed rim.</figcaption>
</figure>

For $m>0$, the cosine and sine angular factors have the same frequency and differ only by a rotation. The frequency has the correct units because $\alpha_{mn}$ is dimensionless and $[c/a]={\rm time}^{-1}$.

The $m=0$ radial function is checked directly in Bessel's differential equation in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

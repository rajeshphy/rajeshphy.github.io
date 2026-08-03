---
title: "Complex Integration and the Cauchy-Goursat Results"
summary: "Contour parametrization, connected regions, Cauchy-Goursat theorem, Cauchy's integral formula, and Cauchy's inequality."
date: 2025-07-29 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, complex-integration, cauchy-integral-formula]
permalink: /bsc/sem-ii/complex-integration-cauchy-results/
hidden: true
---

Let a directed contour $C$ be parametrized by

$$
z=z(t),\qquad a\le t\le b.
$$

Because $dz=z'(t)dt$, define

$$
\boxed{
\int_C f(z)\,dz
=\int_a^b f(z(t))z'(t)\,dt}.
$$

Reversing the direction changes the sign. If $F'(z)=f(z)$ throughout a domain containing the contour, the chain rule gives

$$
\int_C f(z)dz
=\int_a^b\frac{d}{dt}F(z(t))dt
=F(z_b)-F(z_a).
$$

## Simply and multiply connected regions

A region is simply connected if every closed contour in it can be continuously contracted to a point without leaving the region. A region with a hole is multiply connected.

For the unit circle $z=e^{it}$,

$$
\oint_{\lvert z\rvert=1}\frac{dz}{z}
=\int_0^{2\pi}\frac{ie^{it}}{e^{it}}dt
=2\pi i.
$$

The integrand is analytic in the punctured plane, but the contour surrounds its missing point $z=0$. It cannot be contracted to a point while remaining in that domain.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-ii/unit-3/connected-contours.png' | relative_url }}" alt="Contractible contour in a simply connected region and noncontractible contour around a hole" loading="lazy">
  <figcaption>A closed contour contracts to a point in a simply connected region. In a multiply connected region, a contour surrounding a hole cannot contract without crossing the excluded set.</figcaption>
</figure>

## Cauchy-Goursat theorem

If $f$ is analytic throughout a simply connected region and on its boundary $C$, then

$$
\boxed{\oint_C f(z)\,dz=0}.
$$

Under continuous first partial derivatives, the cancellation follows directly from Green's theorem. With $f=u+iv$ and $dz=dx+i\,dy$,

$$
f\,dz=(u\,dx-v\,dy)+i(v\,dx+u\,dy).
$$

For counterclockwise $C=\partial D$, Green's theorem gives

$$
\oint_C(u\,dx-v\,dy)
=\iint_D(-v_x-u_y)dA,
$$

and

$$
\oint_C(v\,dx+u\,dy)
=\iint_D(u_x-v_y)dA.
$$

Both integrands vanish by the Cauchy-Riemann equations. Goursat's form of the theorem removes the extra assumption that $f'$ is continuous.

## Cauchy's integral formula

Let $f$ be analytic on and inside a positively oriented simple contour $C$, and let $z_0$ lie inside it. Remove a small circle $C_\varepsilon$ about $z_0$. The integrand

$$
\frac{f(z)}{z-z_0}
$$

is analytic in the region between the two contours, so Cauchy-Goursat gives

$$
\oint_C\frac{f(z)}{z-z_0}dz
=\oint_{C_\varepsilon}\frac{f(z)}{z-z_0}dz.
$$

Split $f(z)=f(z_0)+[f(z)-f(z_0)]$. On

$$
z-z_0=\varepsilon e^{it},
\qquad dz=i\varepsilon e^{it}dt,
$$

the constant part is

$$
f(z_0)\int_0^{2\pi}i\,dt=2\pi i f(z_0).
$$

For the remaining part, continuity makes

$$
\max_{C_\varepsilon}\lvert f(z)-f(z_0)\rvert\to0.
$$

Its integral has magnitude at most this maximum times

$$
\frac{\operatorname{length}(C_\varepsilon)}{\varepsilon}
=\frac{2\pi\varepsilon}{\varepsilon}=2\pi,
$$

so it tends to zero. Therefore

$$
\boxed{
f(z_0)=\frac{1}{2\pi i}
\oint_C\frac{f(z)}{z-z_0}dz}.
$$

Repeated differentiation with respect to $z_0$ gives

$$
\boxed{
f^{(n)}(z_0)=\frac{n!}{2\pi i}
\oint_C\frac{f(z)}{(z-z_0)^{n+1}}dz}.
$$

## Cauchy's inequality

If $\lvert f(z)\rvert\le M$ on the circle $\lvert z-z_0\rvert=R$, then

$$
\begin{aligned}
\lvert f^{(n)}(z_0)\rvert
&\le\frac{n!}{2\pi}
\oint_C\frac{\lvert f(z)\rvert}{R^{n+1}}\lvert dz\rvert\\
&\le\frac{n!}{2\pi}\frac{M}{R^{n+1}}(2\pi R).
\end{aligned}
$$

Hence

$$
\boxed{\lvert f^{(n)}(z_0)\rvert\le\frac{n!M}{R^n}}.
$$

The unit-circle integral and sample Cauchy-formula integrals are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-3/unit-3-complex-analysis.mac' | relative_url }}).

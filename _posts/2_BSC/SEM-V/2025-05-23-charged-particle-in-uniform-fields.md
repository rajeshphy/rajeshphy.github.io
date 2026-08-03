---
title: "Newtonian Mechanics and Charged Particles in Uniform Fields"
summary: "Newtonian motion in uniform electric, magnetic, and crossed fields, including gyroradius, gyrofrequency, and drift."
date: 2025-05-23 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, classical-mechanics, mj-10, unit-i, charged-particle]
permalink: /bsc/sem-v/mj-10/charged-particle-uniform-fields/
---

## Newtonian mechanics: a concise review

In an inertial frame, a particle of constant mass obeys

$$
\mathbf p=m\mathbf v,
\qquad
\frac{d\mathbf p}{dt}=\mathbf F,
\qquad
\mathbf v=\dot{\mathbf r}.
$$

Thus Newton's second law is $m\ddot{\mathbf r}=\mathbf F$. The first law is the zero-force case, and the third law makes the internal forces of an isolated system cancel in pairs. Consequently,

$$
\frac{d\mathbf P}{dt}=\mathbf F_{\mathrm{ext}},
\qquad
\frac{d\mathbf L_O}{dt}=\boldsymbol\tau_{O,\mathrm{ext}},
$$

where $\mathbf P$ is total linear momentum and $\mathbf L_O$ is angular momentum about $O$. For one particle,

$$
\frac{dT}{dt}=\mathbf F\cdot\mathbf v,
\qquad
T=\frac12mv^2.
$$

If $\mathbf F=-\nabla V$ and $V$ has no explicit time dependence, $T+V$ is conserved.

## Lorentz-force equation

For a particle of charge $q$ in prescribed fields,

$$
\boxed{m\ddot{\mathbf r}=q(\mathbf E+\dot{\mathbf r}\times\mathbf B)}.
$$

In SI units, $qE$ and $qvB$ are forces in newtons. Taking the scalar product with $\mathbf v$ gives

$$
\frac{dT}{dt}=q\mathbf E\cdot\mathbf v,
$$

so a magnetic field changes the direction of motion but does no work.

## Uniform electric field

With constant $\mathbf E$ and $\mathbf B=0$, direct integration gives

$$
\boxed{\mathbf v(t)=\mathbf v_0+\frac{q\mathbf E}{m}t},
\qquad
\boxed{\mathbf r(t)=\mathbf r_0+\mathbf v_0t+\frac{q\mathbf E}{2m}t^2}.
$$

The acceleration $q\mathbf E/m$ has units $\mathrm{m\,s^{-2}}$. The velocity perpendicular to $\mathbf E$ remains constant, while the parallel component changes uniformly. For example, take $\mathbf E=E\hat{\mathbf y}$, $\mathbf r_0=0$, and $\mathbf v_0=v_0\hat{\mathbf x}$. Eliminating $t$ from

$$
x=v_0t,
\qquad
y=\frac{qE}{2m}t^2
$$

gives the parabola

$$
\boxed{y=\frac{qE}{2mv_0^2}x^2}.
$$

The opening reverses when the sign of $qE$ reverses.

## Uniform magnetic field

Let $\mathbf B=B\hat{\mathbf z}$ with $B>0$ and $\mathbf E=0$. The component equations are

$$
\dot v_x=\omega_c v_y,
\qquad
\dot v_y=-\omega_c v_x,
\qquad
\dot v_z=0,
\qquad
\omega_c=\frac{qB}{m}.
$$

Here $\omega_c$ is signed: its sign fixes the sense of rotation. For $v_x(0)=v_\perp$ and $v_y(0)=0$,

$$
v_x=v_\perp\cos(\omega_ct),
\qquad
v_y=-v_\perp\sin(\omega_ct).
$$

Integrating once more,

$$
x=x_0+\frac{v_\perp}{\omega_c}\sin(\omega_ct),
\qquad
y=y_0+\frac{v_\perp}{\omega_c}\bigl[\cos(\omega_ct)-1\bigr].
$$

With $x_c=x_0$ and $y_c=y_0-v_\perp/\omega_c$,

$$
(x-x_c)^2+(y-y_c)^2=\left(\frac{v_\perp}{\omega_c}\right)^2.
$$

Therefore the gyroradius, gyrofrequency magnitude, and gyroperiod are

$$
\boxed{r_g=\frac{mv_\perp}{\lvert q\rvert B}},
\qquad
\boxed{\Omega_g=\frac{\lvert q\rvert B}{m}},
\qquad
\boxed{T_g=\frac{2\pi}{\Omega_g}}.
$$

$r_g$ is measured in metres, $\Omega_g$ in $\mathrm{s^{-1}}$, and $T_g$ in seconds. A constant component $v_\parallel$ along $\mathbf B$ turns the circle into a helix with pitch $2\pi v_\parallel/\Omega_g$.

## Crossed electric and magnetic fields

Suppose $\mathbf E\cdot\mathbf B=0$ and both fields are uniform. Define

$$
\boxed{\mathbf v_D=\frac{\mathbf E\times\mathbf B}{B^2}},
\qquad
\mathbf v=\mathbf u+\mathbf v_D.
$$

The vector identity

$$
(\mathbf E\times\mathbf B)\times\mathbf B
=-B^2\mathbf E
$$

shows that $\mathbf v_D\times\mathbf B=-\mathbf E$. The equation of motion therefore becomes

$$
m\dot{\mathbf u}=q\mathbf u\times\mathbf B.
$$

The motion is a gyration superposed on a uniform guiding-centre drift. The drift speed has units $E/B=\mathrm{m\,s^{-1}}$ and is independent of both $m$ and $q$.

For the special case $q>0$, $\mathbf E=E\hat{\mathbf x}$, $\mathbf B=B\hat{\mathbf z}$, and $\mathbf r(0)=\mathbf v(0)=0$, put $a=E/B$ and $\Omega=qB/m$. The exact trajectory is

$$
x(t)=\frac{a}{\Omega}\bigl[1-\cos(\Omega t)\bigr],
\qquad
y(t)=-\frac{a}{\Omega}\bigl[\Omega t-\sin(\Omega t)\bigr],
\qquad
z(t)=0.
$$

It is a cycloid whose mean velocity is $-(E/B)\hat{\mathbf y}=\mathbf v_D$. For a negative charge the gyration reverses, but the $\mathbf E\times\mathbf B$ drift does not.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-10/unit-i/charged-particle-trajectories.png' | relative_url }}" alt="Equation-generated trajectories in a uniform electric field, a uniform magnetic field, and crossed electric and magnetic fields" loading="lazy">
  <figcaption>Parabolic electric-field motion, circular magnetic gyration, and the exact crossed-field cycloid described above.</figcaption>
</figure>

[Maxima verification: uniform-field equations and crossed-field trajectory residuals]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-i/charged-particle-fields.mac' | relative_url }}).

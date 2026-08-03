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

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-10/unit-i/charged-particle-trajectories.png' | relative_url }}" alt="Equation-generated trajectories in a uniform electric field, a uniform magnetic field, and crossed electric and magnetic fields" loading="lazy">
  <figcaption>Parabolic electric-field motion, circular magnetic gyration, and the exact crossed-field cycloid described above.</figcaption>
</figure>

[Maxima verification: uniform-field equations and crossed-field trajectory residuals]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-i/charged-particle-fields.mac' | relative_url }}).

## Solved Problems

### 1. Helical motion of an electron

An electron enters a uniform field $\mathbf B=0.20\,\hat{\mathbf z}\ \mathrm T$ with

$$
\mathbf v_0=(3.0\times10^6\,\hat{\mathbf x}
+1.2\times10^6\,\hat{\mathbf z})\ \mathrm{m\,s^{-1}}.
$$

Find its gyroradius, gyroperiod, pitch, and sense of rotation. Use $e=1.602\,176\,634\times10^{-19}\ \mathrm C$ and $m_e=9.109\,383\,7139\times10^{-31}\ \mathrm{kg}$.

The magnetic field separates the velocity into

$$
v_\perp=3.0\times10^6\ \mathrm{m\,s^{-1}},
\qquad
v_\parallel=1.2\times10^6\ \mathrm{m\,s^{-1}}.
$$

The positive gyrofrequency magnitude is

$$
\Omega_g=\frac{eB}{m_e}
=\frac{(1.602\,176\,634\times10^{-19})(0.20)}
{9.109\,383\,7139\times10^{-31}}
=3.5188\times10^{10}\ \mathrm{s^{-1}}.
$$

Hence

$$
r_g=\frac{v_\perp}{\Omega_g}
=8.528\times10^{-5}\ \mathrm m,
$$

$$
T_g=\frac{2\pi}{\Omega_g}
=1.786\times10^{-10}\ \mathrm s,
$$

and the advance along $\mathbf B$ in one turn is

$$
p=v_\parallel T_g
=2.143\times10^{-4}\ \mathrm m.
$$

At entry, $\mathbf v_\perp\times\mathbf B=-v_\perp B\hat{\mathbf y}$. Since the electron has $q=-e$, its force is initially along $+\hat{\mathbf y}$; viewed from the $+\hat{\mathbf z}$ side, its velocity therefore rotates counterclockwise. Reversing the charge reverses this sense but leaves $r_g$, $T_g$, and the pitch magnitude unchanged.

### 2. Gyration relative to the crossed-field drift

A proton moves in $\mathbf E=3.0\times10^4\hat{\mathbf x}\ \mathrm{V\,m^{-1}}$ and $\mathbf B=0.15\hat{\mathbf z}\ \mathrm T$. Its initial velocity is $4.0\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}$. Find the guiding-centre velocity and the gyroradius about that centre.

First,

$$
\mathbf v_D=\frac{\mathbf E\times\mathbf B}{B^2}
=-\frac EB\hat{\mathbf y}
=-2.00\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}.
$$

The velocity that gyrates is not $\mathbf v_0$ but

$$
\mathbf u_0=\mathbf v_0-\mathbf v_D
=6.00\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}.
$$

With $m_p=1.672\,621\,923\,69\times10^{-27}\ \mathrm{kg}$,

$$
\Omega_p=\frac{eB}{m_p}=1.437\times10^7\ \mathrm{s^{-1}},
$$

so

$$
r_g=\frac{u_0}{\Omega_p}
=\frac{m_pu_0}{eB}
=4.176\times10^{-2}\ \mathrm m.
$$

The proton's mean motion is therefore $-2.00\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}$, with a $4.176\ \mathrm{cm}$ gyration superposed. The result separates continuously into pure magnetic gyration when $E\to0$ and pure drift when $\mathbf u_0\to0$.

## Descriptive Questions

1. Derive the signed component equations for a charged particle in $\mathbf B=B\hat{\mathbf z}$ and explain how the sign of the charge fixes the sense of gyration.
2. Explain why a uniform magnetic field changes momentum but not kinetic energy, whereas a uniform electric field can change both.
3. Starting from the Lorentz equation, obtain the charge-independent $\mathbf E\times\mathbf B$ guiding-centre velocity for mutually perpendicular uniform fields.
4. Distinguish gyroradius, gyrofrequency, gyroperiod, and helical pitch, stating the dependence of each on $m$, $q$, $B$, $v_\perp$, and $v_\parallel$.

## Numerical Problems

1. A proton starts from rest in $\mathbf E=2.5\times10^4\hat{\mathbf x}\ \mathrm{V\,m^{-1}}$. Find its acceleration, speed, and displacement after $2.0\ \mu\mathrm s$. **Answer:** $2.395\times10^{12}\ \mathrm{m\,s^{-2}}$, $4.789\times10^6\ \mathrm{m\,s^{-1}}$, $4.789\ \mathrm m$.
2. An electron moves perpendicular to a $0.080\ \mathrm T$ field at $2.0\times10^6\ \mathrm{m\,s^{-1}}$. Find its orbit radius and ordinary cyclotron frequency $f=\Omega_g/(2\pi)$. **Answer:** $1.421\times10^{-4}\ \mathrm m$, $2.239\times10^9\ \mathrm{Hz}$.
3. An alpha particle has $v_\perp=5.0\times10^5\ \mathrm{m\,s^{-1}}$ and $v_\parallel=8.0\times10^5\ \mathrm{m\,s^{-1}}$ in $B=0.30\ \mathrm T$. Take $q=2e$ and $m_\alpha=6.6447\times10^{-27}\ \mathrm{kg}$. Find its gyroradius and pitch. **Answer:** $3.456\times10^{-2}\ \mathrm m$, $3.474\times10^{-1}\ \mathrm m$.
4. In $\mathbf E=1.8\times10^4\hat{\mathbf x}\ \mathrm{V\,m^{-1}}$ and $\mathbf B=0.12\hat{\mathbf z}\ \mathrm T$, a proton is launched at $-3.0\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}$. Find the guiding-centre velocity and its gyroradius relative to that centre. **Answer:** $\mathbf v_D=-1.50\times10^5\hat{\mathbf y}\ \mathrm{m\,s^{-1}}$, $r_g=1.305\times10^{-2}\ \mathrm m$.

[Maxima verification: all solved-problem and numerical values]({{ '/assets/maxima/bsc/sem-v/mj-10/unit-i/charged-particle-problems.mac' | relative_url }}).

## References

1. [Lorentz force — Wikipedia](https://en.wikipedia.org/wiki/Lorentz_force)
2. H. Goldstein, C. Poole, and J. Safko, *Classical Mechanics*, 3rd ed., Chapter 1, Pearson (2002).
3. D. J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Chapter 5, Pearson (2013).
4. J. D. Jackson, *Classical Electrodynamics*, 3rd ed., Chapter 12, Wiley (1998).

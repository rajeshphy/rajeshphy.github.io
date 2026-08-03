---
title: "Reflection and Refraction at a Dielectric Interface"
summary: "Phase matching, reflection and refraction laws, Fresnel formulae, Brewster's law, and power coefficients."
date: 2025-06-17 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, fresnel-formulae, brewster-law]
permalink: /bsc/sem-v/mj-8/unit-ii/dielectric-interface-fresnel-formulae/
---

Let a plane interface at $z=0$ separate two lossless, isotropic, nonmagnetic dielectrics with refractive indices $n_1$ and $n_2$. The plane containing the incident wave vector and the interface normal is the plane of incidence.

<figure class="post-figure">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-ii/dielectric-interface.png' | relative_url }}" alt="Incident reflected and refracted wave vectors at a plane dielectric interface" loading="lazy">
  <figcaption>Phase matching along the interface determines the directions before amplitudes are found from field boundary conditions. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-ii/dielectric-interface.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Laws from phase matching

At every point of the stationary interface and at every time, the tangential fields must match. Their phase factors must therefore agree:

$$\omega_i=\omega_r=\omega_t,
\qquad
(\mathbf k_i)_\parallel=(\mathbf k_r)_\parallel=(\mathbf k_t)_\parallel.$$

Since $k_j=n_j\omega/c$,

$$k_1\sin\theta_i=k_1\sin\theta_r=k_2\sin\theta_t.$$

The first equality gives the law of reflection,

$$\boxed{\theta_r=\theta_i},$$

and the second gives Snell's law,

$$\boxed{n_1\sin\theta_i=n_2\sin\theta_t}.$$

The frequency is unchanged; the wavelength changes because $k$ changes.

## Boundary equations for amplitudes

With no free surface charge or current,

$$\hat{\mathbf n}\times(\mathbf E_2-\mathbf E_1)=\mathbf0,
\qquad
\hat{\mathbf n}\times(\mathbf H_2-\mathbf H_1)=\mathbf0.$$

Write $r=E_{0r}/E_{0i}$ and $t=E_{0t}/E_{0i}$ using polarization unit vectors tied to each propagation direction. For nonmagnetic dielectrics, $\eta_j=\eta_0/n_j$.

### Perpendicular or s polarization

For s polarization, $\mathbf E$ is perpendicular to the plane of incidence. Tangential-$E$ continuity gives

$$E_{0i}+E_{0r}=E_{0t}.$$

The tangential magnetic components are $E\cos\theta/\eta$, with the reflected contribution carrying the opposite propagation sign:

$$\frac{E_{0i}-E_{0r}}{\eta_1}\cos\theta_i
=\frac{E_{0t}}{\eta_2}\cos\theta_t.$$

Solving the two simultaneous equations,

$$\boxed{r_s=\frac{n_1\cos\theta_i-n_2\cos\theta_t}
{n_1\cos\theta_i+n_2\cos\theta_t}},$$

$$\boxed{t_s=\frac{2n_1\cos\theta_i}
{n_1\cos\theta_i+n_2\cos\theta_t}}.$$

### Parallel or p polarization

For p polarization, $\mathbf E$ lies in the plane of incidence. Applying the same two tangential conditions gives

$$\boxed{r_p=\frac{n_2\cos\theta_i-n_1\cos\theta_t}
{n_2\cos\theta_i+n_1\cos\theta_t}},$$

$$\boxed{t_p=\frac{2n_1\cos\theta_i}
{n_2\cos\theta_i+n_1\cos\theta_t}}.$$

With the conventional p-polarization unit vectors, $r_p$ and $r_s$ have opposite signs at normal incidence. This is a basis-orientation sign; the measurable reflected fraction depends on $\lvert r\rvert^2$.

## Reflection and transmission coefficients

The normal component of average Poynting flux is

$$\langle S_n\rangle=\frac{\lvert E_0\rvert^2}{2\eta}\cos\theta.$$

Therefore the power reflection and transmission coefficients are

$$\boxed{R_s=\lvert r_s\rvert^2,\qquad R_p=\lvert r_p\rvert^2},$$

$$\boxed{T_s=\frac{n_2\cos\theta_t}{n_1\cos\theta_i}\lvert t_s\rvert^2,
\qquad
T_p=\frac{n_2\cos\theta_t}{n_1\cos\theta_i}\lvert t_p\rvert^2}.$$

For lossless media,

$$\boxed{R_s+T_s=1,\qquad R_p+T_p=1}.$$

At normal incidence,

$$R=\left(\frac{n_1-n_2}{n_1+n_2}\right)^2,
\qquad
T=\frac{4n_1n_2}{(n_1+n_2)^2}.$$

These are power fractions and hence dimensionless.

## Brewster's law

The p-polarized reflection vanishes when the numerator of $r_p$ is zero:

$$n_2\cos\theta_B=n_1\cos\theta_t.$$

Combine this with Snell's law $n_1\sin\theta_B=n_2\sin\theta_t$. Division gives

$$\frac{\sin\theta_B}{\sin\theta_t}
=\frac{\cos\theta_t}{\cos\theta_B}.$$

Hence $\sin(2\theta_B)=\sin(2\theta_t)$. For unequal media the physical solution is $\theta_B+\theta_t=90^\circ$. Snell's law then becomes

$$n_1\sin\theta_B=n_2\cos\theta_B,$$

and hence

$$\boxed{\tan\theta_B=\frac{n_2}{n_1}}.$$

At Brewster incidence the reflected and refracted rays are perpendicular, and the reflected beam contains only s polarization.

The s and p energy balances and the Brewster zero are checked symbolically in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}); every printed residual is zero.

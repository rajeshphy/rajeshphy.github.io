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

<figure class="diagram-figure diagram-pan" tabindex="0">
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

## Solved Problems

### 1. Normal-incidence fields and power balance

A plane wave in air is normally incident on lossless glass of refractive index $1.50$. Its incident peak electric field is $200\ \mathrm{V\,m^{-1}}$. Find the reflected and transmitted field amplitudes and the two power fractions.

**Solution.** Choose each polarization unit vector so that its electric-field sign is compared along the same laboratory axis. At normal incidence,

$$r=\frac{n_1-n_2}{n_1+n_2}
=\frac{1-1.5}{1+1.5}=-0.200,$$

$$t=\frac{2n_1}{n_1+n_2}=0.800.$$

Therefore

$$E_{0r}=rE_{0i}=-40.0\ \mathrm{V\,m^{-1}},
\qquad
E_{0t}=tE_{0i}=160\ \mathrm{V\,m^{-1}}.$$

The negative reflected amplitude means a $\pi$ phase reversal relative to the chosen incident electric axis. The power coefficients are

$$R=r^2=0.0400,$$

$$T=\frac{n_2}{n_1}t^2=1.5(0.8)^2=0.960.$$

Hence

$$\boxed{E_{0r}=-40.0\ \mathrm{V\,m^{-1}},\quad
E_{0t}=160\ \mathrm{V\,m^{-1}},\quad R=4.00\%,\quad T=96.0\%}.$$

$R+T=1$ supplies the lossless energy check. Amplitude coefficients are dimensionless, while the Poynting-flux factor $n_2/n_1$ is essential because transmitted field amplitude alone does not measure transmitted power. In the matched-index limit $n_2\to n_1$, $r\to0$ and $T\to1$.

### 2. Brewster incidence from air to glass

For the same air-glass interface, find the Brewster angle, the refracted angle, and the s-polarized reflectance at that incidence.

**Solution.** The angles are measured from the interface normal. Brewster's law gives

$$\theta_B=\tan^{-1}\!\left(\frac{1.50}{1.00}\right)=56.31^\circ.$$

At Brewster incidence the rays are perpendicular, so

$$\theta_t=90^\circ-\theta_B=33.69^\circ.$$

For p polarization, $r_p=0$. The s coefficient at the same geometry is

$$r_s=\frac{\cos\theta_B-1.5\cos\theta_t}
{\cos\theta_B+1.5\cos\theta_t}
=-0.3846,$$

and hence

$$R_s=\lvert r_s\rvert^2=0.1479.$$

Thus

$$\boxed{\theta_B=56.31^\circ,\quad \theta_t=33.69^\circ,\quad
R_p=0,\quad R_s=14.79\%}.$$

The reflected beam is therefore purely s polarized. All angles are dimensionless in the trigonometric equations, and $\theta_B+\theta_t=90^\circ$ checks the geometry. If $n_2/n_1\to1$, the interface contrast and both reflectances vanish.

## Descriptive Questions

1. Derive the laws of reflection and refraction from phase matching along a stationary plane interface.
2. Why do the s- and p-polarized Fresnel coefficients differ even though both obey the same Snell law?
3. Explain the distinction between field-amplitude transmission coefficient and power transmission coefficient at oblique incidence.
4. Give a physical interpretation of zero p-polarized reflection at Brewster incidence.

## Numerical Problems

1. Light passes from air into water of index $4/3$ at $30.0^\circ$ incidence. Find the refracted angle.
   **Final answer:** $\boxed{\theta_t=22.02^\circ}$.
2. Find the normal-incidence power reflectance between media of indices $1.33$ and $1.50$.
   **Final answer:** $\boxed{R=3.608\times10^{-3}=0.3608\%}$.
3. At $45.0^\circ$ incidence from air to glass of index $1.50$, find the s- and p-polarized reflectances.
   **Final answer:** $\boxed{R_s=9.201\%,\qquad R_p=0.8466\%}$.

The symbolic energy balances and Brewster zero are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Fresnel equations - Wikipedia](https://en.wikipedia.org/wiki/Fresnel_equations)
2. [RP Photonics Encyclopedia, Fresnel Equations](https://www.rp-photonics.com/fresnel_equations.html)
3. [MIT 6.014, Lecture 24: Waves at Planar Boundaries](https://web.mit.edu/6.014/www/handouts/lecture24_notes.pdf)

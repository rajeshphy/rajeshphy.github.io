---
title: "Planar Dielectric Waveguides and Guided-Wave Power"
summary: "Total-reflection phase, slab continuity conditions, eigenvalue equations, velocities, field energy, and power."
date: 2025-06-18 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, planar-waveguide, guided-waves]
permalink: /bsc/sem-v/mj-8/unit-ii/planar-dielectric-waveguides/
---

A symmetric planar dielectric guide has a core of refractive index $n_1$ in $\lvert x\rvert<a$, cladding of index $n_2<n_1$ in $\lvert x\rvert>a$, and is uniform along $y$ and the propagation direction $z$. A guided field must oscillate in the core and decay in the cladding.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-ii/slab-waveguide.png' | relative_url }}" alt="Planar dielectric waveguide and equation-generated even TE mode profile" loading="lazy">
  <figcaption>A guided mode is a standing transverse field joined continuously to evanescent cladding tails. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-ii/slab-waveguide.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Total internal reflection and its phase

Consider a core ray incident on a core-cladding interface at angle $\theta$ to the normal. Snell's law is

$$n_1\sin\theta=n_2\sin\theta_t.$$

When $\theta>\theta_c$, where

$$\boxed{\sin\theta_c=\frac{n_2}{n_1}},$$

$\sin\theta_t>1$ and the cladding field is evanescent. Define

$$\gamma=\sqrt{\sin^2\theta-\left(\frac{n_2}{n_1}\right)^2}.$$

The Fresnel reflection coefficients have unit magnitude but a nonzero phase. They may be written

$$r_s=\exp(i\phi_s),
\qquad
\boxed{\phi_s=-2\tan^{-1}\!\left(\frac{\gamma}{\cos\theta}\right)},$$

$$r_p=\exp(i\phi_p),
\qquad
\boxed{\phi_p=-2\tan^{-1}\!\left(\frac{n_1^2\gamma}{n_2^2\cos\theta}\right)}.$$

The reflected power is unity, but the phase shift is essential in the guided-mode condition.

## Wave equation across the slab

For a TE mode choose

$$\mathbf E=\hat{\mathbf y}\,\psi(x)e^{i(\beta z-\omega t)},
\qquad k_0=\frac{\omega}{c}.$$

The Helmholtz equation becomes

$$\boxed{\frac{d^2\psi}{dx^2}+[n^2(x)k_0^2-\beta^2]\psi=0}.$$

Define the real positive transverse constants

$$\boxed{h=\sqrt{n_1^2k_0^2-\beta^2}},
\qquad
\boxed{q=\sqrt{\beta^2-n_2^2k_0^2}}.$$

Both are real only when

$$\boxed{n_2k_0<\beta<n_1k_0}.$$

This inequality is the guided-wave condition. It is often written $n_2<n_{\mathrm{eff}}<n_1$, where

$$\boxed{n_{\mathrm{eff}}=\frac{\beta}{k_0}}.$$

## Continuity and TE eigenvalue equations

For the convention $e^{i(\beta z-\omega t)}$, Faraday's law gives

$$H_z=\frac{1}{i\omega\mu}\frac{dE_y}{dx}
=-\frac{i}{\omega\mu}\frac{dE_y}{dx}.$$

For equal magnetic permeabilities, tangential $E_y$ and $H_z$ are continuous. Hence both $\psi$ and $d\psi/dx$ are continuous at $x=\pm a$; the common factor $-i/(\omega\mu)$ does not alter the eigenvalue equation.

For an even mode,

$$\psi(x)=\begin{cases}
A\cos(hx),&\lvert x\rvert\le a,\\
A\cos(ha)e^{-q(\lvert x\rvert-a)},&\lvert x\rvert\ge a.
\end{cases}$$

Derivative continuity at $x=a$ gives

$$-Ah\sin(ha)=-qA\cos(ha),$$

so

$$\boxed{h\tan(ha)=q\qquad\text{(even TE)}}.$$

For an odd core field $A\sin(hx)$, the same boundary condition gives

$$\boxed{-h\cot(ha)=q\qquad\text{(odd TE)}}.$$

These transcendental eigenvalue equations select discrete $\beta$ values at a fixed frequency.

For TM modes it is convenient to use $H_y=\psi(x)e^{i(\beta z-\omega t)}$. Tangential $H_y$ and tangential $E_z\propto(1/\epsilon)dH_y/dx$ are continuous. Therefore

$$\boxed{h\tan(ha)=\frac{\epsilon_1}{\epsilon_2}q
\qquad\text{(even TM)}},$$

$$\boxed{-h\cot(ha)=\frac{\epsilon_1}{\epsilon_2}q
\qquad\text{(odd TM)}}.$$

With normalized variables

$$u=ha,\qquad w=qa,$$

the definitions give

$$\boxed{u^2+w^2=V^2},
\qquad
\boxed{V=k_0a\sqrt{n_1^2-n_2^2}}.$$

$V$ is dimensionless and controls how many slab modes can exist.

## Phase and group velocities

The longitudinal phase is $\beta z-\omega t$. Therefore

$$\boxed{v_p=\frac{\omega}{\beta}=\frac{c}{n_{\mathrm{eff}}}}.$$

The envelope of a narrow frequency band travels at

$$\boxed{v_g=\frac{d\omega}{d\beta}=\left(\frac{d\beta}{d\omega}\right)^{-1}}.$$

Both material dispersion $n_j(\omega)$ and waveguide dispersion through the eigenvalue equation contribute to $d\beta/d\omega$. In the simpler nondispersive relation $\beta^2+\kappa^2=n^2\omega^2/c^2$ with fixed transverse eigenvalue $\kappa$,

$$\boxed{v_pv_g=\left(\frac cn\right)^2}.$$

## Field energy and transmitted power

For peak phasors in a lossless, nondispersive guide, the cycle-averaged energy density is

$$\boxed{\overline u=\frac14\left(\epsilon\lvert\mathbf E\rvert^2+\mu\lvert\mathbf H\rvert^2\right)}
\quad[\mathrm{J\,m^{-3}}].$$

The time-averaged longitudinal power per unit width in $y$ is

$$\boxed{P^{\prime}=\frac12\Re\int_{-\infty}^{\infty}
(\mathbf E\times\mathbf H^{\ast})\cdot\hat{\mathbf z}\,dx}
\quad[\mathrm{W\,m^{-1}}].$$

For the TE field above, Faraday's law gives $H_x=-\beta E_y/(\omega\mu)$. Consequently,

$$\boxed{P^{\prime}=\frac{\beta}{2\omega\mu}
\int_{-\infty}^{\infty}\lvert\psi(x)\rvert^2dx}.$$

The energy stored per unit guide length and per unit width is

$$U^{\prime}=\int_{-\infty}^{\infty}\overline u\,dx
\quad[\mathrm{J\,m^{-2}}].$$

Their ratio has units of speed. For a lossless guide it equals the group velocity:

$$\boxed{\frac{P^{\prime}}{U^{\prime}}=v_g}.$$

## Solved Problems

### 1. Testing a proposed guided mode

A symmetric slab has $n_1=1.50$, $n_2=1.45$, half-thickness $a=2.00\ \mathrm{\mu m}$, and vacuum wavelength $\lambda_0=1.30\ \mathrm{\mu m}$. A proposed mode has $n_{\mathrm{eff}}=1.475$. Find $\beta$, $h$, $q$, $u$, $w$, $V$, and the cladding $1/e$ amplitude distance.

**Solution.** The propagation convention is $e^{i(\beta z-\omega t)}$ with $\beta>0$ for $+z$ phase propagation. Since

$$n_2<n_{\mathrm{eff}}<n_1,$$

the field can oscillate in the core and decay in the cladding. With $k_0=2\pi/\lambda_0$,

$$\beta=n_{\mathrm{eff}}k_0=7.129\times10^6\ \mathrm{rad\,m^{-1}},$$

$$h=\sqrt{n_1^2k_0^2-\beta^2}
=1.318\times10^6\ \mathrm{m^{-1}},$$

$$q=\sqrt{\beta^2-n_2^2k_0^2}
=1.307\times10^6\ \mathrm{m^{-1}}.$$

The normalized variables are

$$u=ha=2.636,
\qquad
w=qa=2.614,$$

$$V=k_0a\sqrt{n_1^2-n_2^2}=3.712.$$

They obey $u^2+w^2=V^2$. The exterior field is proportional to $e^{-q(x-a)}$, so its $1/e$ amplitude distance is

$$q^{-1}=7.651\times10^{-7}\ \mathrm m=0.765\ \mathrm{\mu m}.$$

Thus

$$\boxed{\beta=7.129\times10^6\ \mathrm{rad\,m^{-1}},\quad
h=1.318\times10^6\ \mathrm{m^{-1}},\quad
q=1.307\times10^6\ \mathrm{m^{-1}},\quad q^{-1}=0.765\ \mathrm{\mu m}}.$$

$u$, $w$, and $V$ are dimensionless; $h$, $q$, and $\beta$ are inverse lengths. As $n_{\mathrm{eff}}\to n_2^+$, $q\to0$ and the cladding tail becomes unconfined, which is the cutoff limit.

### 2. Phase and group velocities for a fixed transverse eigenvalue

In a nondispersive medium of index $n=1.50$, a guided mode satisfies

$$\beta^2+\kappa^2=\frac{n^2\omega^2}{c^2},$$

with a fixed transverse eigenvalue whose value at the frequency considered is $\kappa=0.60n\omega/c$. Find $v_p$ and $v_g$.

**Solution.** The positive-$\beta$ branch gives

$$\beta=\frac{n\omega}{c}\sqrt{1-0.60^2}
=0.80\frac{n\omega}{c}.$$

Hence

$$v_p=\frac{\omega}{\beta}
=\frac{c}{0.80n}=2.498\times10^8\ \mathrm{m\,s^{-1}}.$$

Differentiating the dispersion relation at fixed $\kappa$ gives

$$v_g=\frac{d\omega}{d\beta}
=\frac{c^2\beta}{n^2\omega}
=0.80\frac cn
=1.599\times10^8\ \mathrm{m\,s^{-1}}.$$

Therefore

$$\boxed{v_p=2.498\times10^8\ \mathrm{m\,s^{-1}},\qquad
v_g=1.599\times10^8\ \mathrm{m\,s^{-1}}}.$$

The phase velocity exceeds the plane-wave speed $c/n$, while the group and energy velocity is smaller; no information travels at $v_p$. The check $v_pv_g=(c/n)^2$ is dimensionally a squared speed. In the limit $\kappa\to0$, both velocities approach $c/n$.

## Descriptive Questions

1. Explain why a guided slab mode must satisfy $n_2k_0<\beta<n_1k_0$.
2. Derive the even and odd TE eigenvalue equations from tangential-field continuity at the two interfaces.
3. How does the phase shift on total internal reflection enter a ray description of the discrete guided-mode condition?
4. Explain why $P^{\prime}/U^{\prime}$ equals group velocity in a lossless guide and state the units of both $P^{\prime}$ and $U^{\prime}$.

## Numerical Problems

1. Find the critical angle for a core-cladding interface with $n_1=1.52$ and $n_2=1.46$.
   **Final answer:** $\boxed{\theta_c=73.85^\circ}$.
2. A cladding field has $q=2.00\times10^5\ \mathrm{m^{-1}}$. Find its amplitude fraction $10.0\ \mathrm{\mu m}$ beyond the interface.
   **Final answer:** $\boxed{e^{-q x}=e^{-2}=0.1353}$.
3. For s polarization at $80.0^\circ$ internal incidence from $n_1=1.50$ to $n_2=1.45$, find the total-reflection phase in the convention $r_s=e^{i\phi_s}$.
   **Final answer:** $\boxed{\phi_s=-94.59^\circ}$.

The normalized-frequency and velocity identities are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Waveguide (optics) - Wikipedia](https://en.wikipedia.org/wiki/Waveguide_%28optics%29)
2. [RP Photonics Encyclopedia, Waveguides](https://www.rp-photonics.com/waveguides.html)
3. [MIT 6.013, Dielectric Waveguides: Optical Fibers and Slabs](https://web.mit.edu/6.013_book/www/chapter13/13.5.html)

---
title: "Partial-Wave Analysis and Phase Shifts"
summary: "Construction of the elastic scattering amplitude from angular-momentum channels, phase shifts, partial cross sections, and unitarity."
date: 2026-07-16 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - quantum-mechanics
  - scattering
  - partial-wave-analysis
  - phase-shift
permalink: /msc/sem-ii/partial-wave-analysis-and-phase-shifts/
hidden: true
---

Take the incident direction as the $z$-axis. Because
$z=r\cos\theta$, expand the plane wave in Legendre polynomials:

$$
e^{ikr\cos\theta}
=\sum_{l=0}^{\infty}a_l(kr)P_l(\cos\theta).
$$

Multiplication by $P_l(x)$ and integration over $x=\cos\theta$ use

$$
\int_{-1}^{1}P_l(x)P_{l'}(x)\,dx
=\frac{2}{2l+1}\delta_{ll'}.
$$

The coefficient is

$$
a_l(kr)
=\frac{2l+1}{2}
\int_{-1}^{1}e^{ikrx}P_l(x)\,dx
=(2l+1)i^l j_l(kr).
$$

Thus

$$
\boxed{
e^{ikz}
=\sum_{l=0}^{\infty}
i^l(2l+1)j_l(kr)P_l(\cos\theta).
}
$$

## Incoming and outgoing parts

For a central potential, distinct values of $l$ do not mix. Outside the potential, the $l$th radial wave is a superposition of incoming and outgoing spherical waves. If their amplitudes are $A_l^{(-)}$ and
$A_l^{(+)}$, write

$$
u_l(r)\sim
A_l^{(-)}e^{-i\alpha}
+A_l^{(+)}e^{i\alpha},
\qquad
\alpha=kr-\frac{l\pi}{2}.
$$

The radial current of $Ae^{\pm ikr}/r$ is
$j_r=\pm(\hbar k/\mu)|A|^2/r^2$. Elastic probability conservation
therefore requires
$|A_l^{(+)}|=|A_l^{(-)}|$. The regular free wave
$\sin\alpha=(e^{i\alpha}-e^{-i\alpha})/(2i)$ has
$A_l^{(+)}/A_l^{(-)}=-1$, so define the partial-wave scattering matrix by

$$
S_l=-\frac{A_l^{(+)}}{A_l^{(-)}}.
$$

This convention makes $S_l=1$ when there is no interaction. Conservation
gives $|S_l|=1$, and a unit-modulus complex number can be written

$$
\boxed{
S_l=e^{2i\delta_l}.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/partial-wave-phase-shift.png' | relative_url }}" alt="Unit-circle representation of a partial-wave scattering matrix and its scattering-amplitude chord" loading="lazy">
  <figcaption>Elasticity confines \(S_l\) to the unit circle. The potential fixes \(2\delta_l\), while the chord \(S_l-1\) is the outgoing wave added to the free solution.</figcaption>
</figure>

The large-$r$ spherical Bessel function is

$$
j_l(kr)
\sim\frac{\sin\alpha}{kr}
=\frac{e^{i\alpha}-e^{-i\alpha}}{2ikr}.
$$

Multiplication by $i^l=e^{il\pi/2}$ turns the free plane-wave channel into

$$
\psi_l^{(0)}
\sim
\frac{2l+1}{2ikr}P_l(\cos\theta)
\left[e^{ikr}-(-1)^l e^{-ikr}\right].
$$

The second exponential is incoming and retains its plane-wave coefficient. The interaction multiplies the outgoing coefficient by $S_l$:

$$
\psi_l
\sim
\frac{2l+1}{2ikr}P_l(\cos\theta)
\left[S_l e^{ikr}-(-1)^l e^{-ikr}\right].
$$

Subtracting the free channel,

$$
\psi_l-\psi_l^{(0)}
\sim
\frac{2l+1}{2ik}(S_l-1)P_l(\cos\theta)
\frac{e^{ikr}}r.
$$

Comparison with $f_l(\theta)e^{ikr}/r$ identifies

$$
f_l(\theta)
=\frac{2l+1}{2ik}(S_l-1)P_l(\cos\theta).
$$

Summing the channels,

$$
\boxed{
f(\theta)
=\frac{1}{2ik}
\sum_{l=0}^{\infty}
(2l+1)(S_l-1)P_l(\cos\theta).
}
$$

Now

$$
\begin{aligned}
\frac{e^{2i\delta_l}-1}{2i}
&=\frac{e^{i\delta_l}
\left(e^{i\delta_l}-e^{-i\delta_l}\right)}{2i}\\
&=e^{i\delta_l}\sin\delta_l.
\end{aligned}
$$

The phase-shift form of the amplitude is

$$
\boxed{
f(\theta)
=\frac1k\sum_{l=0}^{\infty}
(2l+1)e^{i\delta_l}\sin\delta_l
P_l(\cos\theta).
}
$$

## Partial and total cross sections

Insert this amplitude into
$\sigma_{\mathrm{tot}}=\int|f|^2d\Omega$. The angular integral contains

$$
\int P_l(\cos\theta)P_{l'}(\cos\theta)\,d\Omega
=2\pi\int_{-1}^{1}P_l(x)P_{l'}(x)\,dx
=\frac{4\pi}{2l+1}\delta_{ll'}.
$$

All terms with $l\neq l'$ vanish, and
$|e^{i\delta_l}\sin\delta_l|^2=\sin^2\delta_l$. Therefore

$$
\boxed{
\sigma_{\mathrm{tot}}
=\frac{4\pi}{k^2}
\sum_{l=0}^{\infty}
(2l+1)\sin^2\delta_l.
}
$$

The contribution of one channel is

$$
\boxed{
\sigma_l
=\frac{4\pi}{k^2}(2l+1)\sin^2\delta_l.
}
$$

Since $\sin^2\delta_l\leq1$, elastic unitarity imposes

$$
\sigma_l\leq\frac{4\pi}{k^2}(2l+1).
$$

The coefficient identity, Legendre orthogonality, and partial-cross-section sum are verified in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/unit-2/partial-wave-analysis.mac' | relative_url }}).

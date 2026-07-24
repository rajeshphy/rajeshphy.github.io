---
title: "Partial-Wave Analysis and Phase Shifts"
summary: "Construction of the elastic scattering amplitude from angular-momentum channels, partial cross sections, unitarity, and the optical theorem."
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
  - optical-theorem
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
$A_l^{(+)}$, define

$$
S_l=\frac{A_l^{(+)}}{A_l^{(-)}}.
$$

Elastic probability conservation requires
$|A_l^{(+)}|=|A_l^{(-)}|$, hence $|S_l|=1$. A unit-modulus complex number can be written

$$
\boxed{
S_l=e^{2i\delta_l}.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/partial-wave-phase-shift.png' | relative_url }}" alt="Unit-circle representation of a partial-wave scattering matrix and its scattering-amplitude chord" loading="lazy">
  <figcaption>Elasticity confines \(S_l\) to the unit circle. The potential fixes \(2\delta_l\), while the chord \(S_l-1\) is the outgoing wave added to the free solution.</figcaption>
</figure>

The incoming part must match the incident plane wave. The free outgoing part corresponds to $S_l=1$; the extra outgoing coefficient is therefore $S_l-1$. Matching it to
$f(\theta)e^{ikr}/r$ gives

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

## Forward amplitude and total scattering

At $\theta=0$, $P_l(1)=1$. Expanding
$e^{i\delta_l}\sin\delta_l$,

$$
f(0)
=\frac1k\sum_l(2l+1)
\left[
\sin\delta_l\cos\delta_l+i\sin^2\delta_l
\right].
$$

Its imaginary part is

$$
\operatorname{Im}f(0)
=\frac1k\sum_l(2l+1)\sin^2\delta_l.
$$

Comparison with the integrated cross section produces the optical theorem:

$$
\boxed{
\sigma_{\mathrm{tot}}
=\frac{4\pi}{k}\operatorname{Im}f(0).
}
$$

The coefficient identity, Legendre orthogonality, partial cross sections, and optical-theorem equality are verified in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/unit-2/partial-wave-analysis.mac' | relative_url }}).

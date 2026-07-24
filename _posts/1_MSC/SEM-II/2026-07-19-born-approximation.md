---
title: "Born Approximation"
summary: "Outgoing Green function, Lippmann–Schwinger equation, first Born amplitude, central-potential transform, and screened Coulomb scattering."
date: 2026-07-19 09:00:00 +0530
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
  - born-approximation
  - lippmann-schwinger-equation
  - momentum-transfer
permalink: /msc/sem-ii/born-approximation/
hidden: true
---

Write the stationary Schrödinger equation as

$$
\left(\nabla^2+k^2\right)\psi(\mathbf r)
=\frac{2\mu}{\hbar^2}V(\mathbf r)\psi(\mathbf r).
$$

The outgoing Green function

$$
G^{(+)}(\mathbf r-\mathbf r')
=-\frac1{4\pi}
\frac{e^{ik|\mathbf r-\mathbf r'|}}
{|\mathbf r-\mathbf r'|}
$$

satisfies

$$
\left(\nabla^2+k^2\right)G^{(+)}
=\delta^{(3)}(\mathbf r-\mathbf r').
$$

Adding the homogeneous incident solution
$e^{i\mathbf k_i\cdot\mathbf r}$ and applying this Green function to the source term produces the Lippmann–Schwinger equation:

$$
\boxed{
\psi(\mathbf r)
=e^{i\mathbf k_i\cdot\mathbf r}
-\frac{\mu}{2\pi\hbar^2}
\int
\frac{e^{ik|\mathbf r-\mathbf r'|}}
{|\mathbf r-\mathbf r'|}
V(\mathbf r')\psi(\mathbf r')\,d^3r'.
}
$$

This normalization contains one factor $1/(4\pi)$, through
$G^{(+)}$, and the physical potential is kept as $V$ throughout.

## Exact amplitude from the far field

For $r$ much larger than the range of the potential,

$$
\begin{aligned}
|\mathbf r-\mathbf r'|
&=r\left[
1-\frac{2\hat{\mathbf r}\cdot\mathbf r'}r
+\frac{r'^2}{r^2}
\right]^{1/2}\\
&\simeq r-\hat{\mathbf r}\cdot\mathbf r',
\end{aligned}
$$

and

$$
\frac{e^{ik|\mathbf r-\mathbf r'|}}
{|\mathbf r-\mathbf r'|}
\simeq
\frac{e^{ikr}}r
e^{-ik\hat{\mathbf r}\cdot\mathbf r'}.
$$

Define $\mathbf k_f=k\hat{\mathbf r}$. Comparison with

$$
\psi\sim e^{i\mathbf k_i\cdot\mathbf r}
+f(\mathbf k_f,\mathbf k_i)\frac{e^{ikr}}r
$$

identifies the exact elastic amplitude:

$$
\boxed{
f(\mathbf k_f,\mathbf k_i)
=-\frac{\mu}{2\pi\hbar^2}
\int e^{-i\mathbf k_f\cdot\mathbf r}
V(\mathbf r)\psi(\mathbf r)\,d^3r.
}
$$

## First Born approximation

If the potential changes the incident wave only weakly inside the interaction region, use the zeroth iterate

$$
\psi(\mathbf r)\simeq e^{i\mathbf k_i\cdot\mathbf r}
$$

inside the exact amplitude. Then

$$
\boxed{
f_{\mathrm B}(\mathbf q)
=-\frac{\mu}{2\pi\hbar^2}
\int e^{-i\mathbf q\cdot\mathbf r}
V(\mathbf r)\,d^3r,
\qquad
\mathbf q=\mathbf k_f-\mathbf k_i.
}
$$

The Born amplitude is therefore proportional to the spatial Fourier transform of the potential.

For elastic scattering,

$$
\begin{aligned}
q^2
&=|\mathbf k_f-\mathbf k_i|^2\\
&=k_f^2+k_i^2-2k_fk_i\cos\theta\\
&=2k^2(1-\cos\theta)
=4k^2\sin^2\frac{\theta}{2}.
\end{aligned}
$$

Hence

$$
\boxed{
q=2k\sin\frac{\theta}{2}.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/born-momentum-transfer.png' | relative_url }}" alt="Elastic-scattering momentum triangle with equal incident and final wavevectors and their momentum-transfer chord" loading="lazy">
  <figcaption>The momentum-transfer chord is \(q=2k\sin(\theta/2)\). The earlier cosine form has been removed.</figcaption>
</figure>

## Spherically symmetric potential

For $V(\mathbf r)=V(r)$, choose the polar axis along $\mathbf q$. Then

$$
\mathbf q\cdot\mathbf r=qr\cos\vartheta,
\qquad
d^3r=r^2dr\,d\varphi\,d(\cos\vartheta).
$$

The angular factor is

$$
\begin{aligned}
\int e^{-i\mathbf q\cdot\mathbf r}\,d\Omega
&=2\pi\int_{-1}^{1}e^{-iqrx}\,dx\\
&=2\pi
\left[
\frac{e^{-iqrx}}{-iqr}
\right]_{-1}^{1}\\
&=4\pi\frac{\sin(qr)}{qr}.
\end{aligned}
$$

Substitution in the Fourier integral gives

$$
\boxed{
f_{\mathrm B}(q)
=-\frac{2\mu}{\hbar^2q}
\int_0^\infty rV(r)\sin(qr)\,dr.
}
$$

## Screened Coulomb potential

For

$$
V(r)=\kappa\frac{e^{-\lambda r}}r,
\qquad
\lambda>0,
$$

the remaining integral is

$$
\begin{aligned}
\int_0^\infty e^{-\lambda r}\sin(qr)\,dr
&=\operatorname{Im}
\int_0^\infty e^{-(\lambda-iq)r}\,dr\\
&=\operatorname{Im}\frac1{\lambda-iq}
=\frac{q}{\lambda^2+q^2}.
\end{aligned}
$$

Therefore

$$
\boxed{
f_{\mathrm B}(q)
=-\frac{2\mu\kappa}
{\hbar^2(q^2+\lambda^2)}.
}
$$

In the limit $\lambda\to0$,

$$
|f_{\mathrm B}|^2
=\frac{4\mu^2\kappa^2}{\hbar^4q^4}.
$$

Using $q=2k\sin(\theta/2)$ and
$E=\hbar^2k^2/(2\mu)$,

$$
\boxed{
\frac{d\sigma}{d\Omega}
=|f_{\mathrm B}|^2
=\left(\frac{\kappa}{4E}\right)^2
\csc^4\frac{\theta}{2}.
}
$$

The screened transform is well behaved. A strictly unscreened Coulomb wave has a long-range phase absent from the plane-wave Born state, although its exact modulus has the same Rutherford angular dependence.

The approximation is controlled when the next iteration of the integral equation is small compared with the incident wave, which is favored by a weak potential or sufficiently high incident energy. The momentum-transfer identity, central angular integral, screened-Coulomb transform, and Rutherford limit are evaluated in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/unit-2/born-approximation.mac' | relative_url }}).

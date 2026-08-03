---
title: "Quantum Scattering Theory"
summary: "Cross sections, wave packets, Green functions, partial waves, Coulomb and Born scattering, the optical theorem, phase shifts, scattering length, and effective range."
date: 2025-07-30 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-18, quantum-scattering, partial-waves, coulomb-scattering, born-approximation, optical-theorem]
permalink: /bsc/sem-vii/quantum-scattering-theory/
hidden: true
---

For a localized potential $V(\mathbf r)$ and energy
$E=\hbar^2k^2/(2\mu)$, choose the incident wave along $z$. The stationary
scattering state has the large-distance form

$$
\boxed{
\psi(\mathbf r)\underset{r\to\infty}{\sim}
e^{ikz}+f(\theta,\phi)\frac{e^{ikr}}r.
}
$$

The first term is the incident plane wave; the second is an outgoing spherical
wave. This boundary condition excludes incoming waves from infinity.

## Differential and total cross sections

The probability current is

$$
\mathbf j=\frac{\hbar}{2\mu i}
(\psi^*\nabla\psi-\psi\nabla\psi^*).
$$

For $e^{ikz}$, $j_{\rm in}=\hbar k/\mu$. For the outgoing term, keeping the
leading power at large $r$,

$$
j_{\mathrm{sc},r}
=\frac{\hbar k}{\mu r^2}\lvert f(\theta,\phi)\rvert^2.
$$

The rate crossing $r^2d\Omega$ divided by incident flux is therefore

$$
\boxed{\frac{d\sigma}{d\Omega}=\lvert f(\theta,\phi)\rvert^2,}
\qquad
\boxed{\sigma_{\rm tot}=\int\lvert f\rvert^2d\Omega.}
$$

$f$ has dimensions of length and a cross section has dimensions of area.

## Scattering of a wave packet

A physical incident state is a packet,

$$
\Psi(\mathbf r,t)=\frac{1}{(2\pi)^{3/2}}\int a(\mathbf k)
\psi_{\mathbf k}^{(+)}(\mathbf r)
e^{-i\hbar k^2t/(2\mu)}d^3k,
$$

where the scattering states use the plane-wave convention
$\langle\psi_{\mathbf k}^{(+)}\mid\psi_{\mathbf k'}^{(+)}\rangle
=(2\pi)^3\delta^3(\mathbf k-\mathbf k')$. Thus $a(\mathbf k)$ is concentrated
near $\mathbf k_0$ and $\int\lvert a(\mathbf k)\rvert^2d^3k=1$. Before collision, the
incoming part is localized;
after collision, the outgoing packet separates spatially. The stationary
cross section is recovered when the packet is narrow enough that $f$ and the
incident speed vary negligibly across its momentum width.

## Green function and scattering amplitude

The stationary Schrödinger equation is

$$
(E-H_0)\psi=V\psi,
\qquad H_0=-\frac{\hbar^2}{2\mu}\nabla^2.
$$

Define the outgoing Green function by

$$
(E-H_0)G^{(+)}(\mathbf r-\mathbf r')
=\delta^3(\mathbf r-\mathbf r').
$$

Since

$$
(\nabla^2+k^2)\frac{e^{ikR}}R=-4\pi\delta^3(\mathbf R),
$$

its normalization is

$$
\boxed{
G^{(+)}(\mathbf R)
=-\frac{\mu}{2\pi\hbar^2}\frac{e^{ikR}}R.
}
$$

Adding a free incident solution gives the Lippmann-Schwinger equation

$$
\psi(\mathbf r)=e^{i\mathbf k\cdot\mathbf r}
-\frac{\mu}{2\pi\hbar^2}
\int\frac{e^{ik\lvert\mathbf r-\mathbf r'\rvert}}
{\lvert\mathbf r-\mathbf r'\rvert}
V(\mathbf r')\psi(\mathbf r')d^3r'.
$$

For $r$ much larger than the range of the potential,

$$
\lvert\mathbf r-\mathbf r'\rvert\simeq r-\hat{\mathbf r}\cdot\mathbf r',
\qquad
\frac1{\lvert\mathbf r-\mathbf r'\rvert}\simeq\frac1r.
$$

Comparison with the asymptotic definition identifies
$\mathbf k'=k\hat{\mathbf r}$ and

$$
\boxed{
f(\mathbf k',\mathbf k)
=-\frac{\mu}{2\pi\hbar^2}
\int e^{-i\mathbf k'\cdot\mathbf r'}
V(\mathbf r')\psi(\mathbf r')d^3r'.
}
$$

This formula is exact; its unknown scattering state remains inside the
integral.

## Born approximation

When the scattered wave is small inside the interaction region, replace
$\psi(\mathbf r')$ by the incident plane wave. The first Born amplitude is

$$
\boxed{
f_B(\mathbf q)
=-\frac{\mu}{2\pi\hbar^2}
\int e^{-i\mathbf q\cdot\mathbf r}V(\mathbf r)d^3r,
\qquad \mathbf q=\mathbf k'-\mathbf k.
}
$$

Elastic scattering has $\lvert\mathbf k'\rvert=\lvert\mathbf k\rvert=k$, so

$$
q^2=\lvert\mathbf k'-\mathbf k\rvert^2
=2k^2(1-\cos\theta)=4k^2\sin^2\frac\theta2.
$$

The approximation requires the potential-induced wave to remain small; it is
generally reliable for weak potentials or sufficiently large incident energy.

## Scattering in a Coulomb field

Let $V(r)=\kappa_C/r$. Because the Coulomb field is long-ranged, introduce
$e^{-\eta r}$ and take $\eta\to0^+$ after transforming:

$$
\begin{aligned}
\int e^{-i\mathbf q\cdot\mathbf r}
\frac{e^{-\eta r}}r\,d^3r
&=\frac{4\pi}{q}\int_0^\infty e^{-\eta r}\sin(qr)dr\\
&=\frac{4\pi}{q^2+\eta^2}
\longrightarrow\frac{4\pi}{q^2}.
\end{aligned}
$$

Thus the screened Born limit gives

$$
f_C(\theta)
=-\frac{2\mu\kappa_C}{\hbar^2q^2}
=-\frac{\mu\kappa_C}
{2\hbar^2k^2\sin^2(\theta/2)}.
$$

Using $E=\hbar^2k^2/(2\mu)$,

$$
\boxed{
\frac{d\sigma_C}{d\Omega}
=\frac{\kappa_C^2}{16E^2\sin^4(\theta/2)}.
}
$$

This is the Rutherford angular dependence. The unscreened Coulomb potential
also produces a long-range logarithmic phase, so the short-range asymptotic
phase conventions used below must not be applied to it without modification.

## Partial-wave analysis and phase shifts

For a central short-range potential, expand the incident wave as

$$
e^{ikz}=\sum_{l=0}^{\infty}
i^l(2l+1)j_l(kr)P_l(\cos\theta).
$$

Since

$$
j_l(kr)\sim\frac1{kr}
\sin\left(kr-\frac{l\pi}{2}\right),
$$

the incident plane wave contains, in each $l$ channel, equal incoming and
outgoing radial flux. Outside the potential range, the radial solution obeys
$u_l''+[k^2-l(l+1)/r^2]u_l=0$ and may be written

$$
\boxed{
u_l(r)\sim A_l
\sin\left(kr-\frac{l\pi}{2}+\delta_l\right).
}
$$

$\delta_l$ is the phase shift. Writing the sine as two exponentials shows that
the outgoing-to-incoming ratio changes from its free value by

$$
S_l=e^{2i\delta_l}.
$$

Elastic flux conservation gives $\lvert S_l\rvert=1$, so $\delta_l$ is real. Keep the
incoming coefficient equal to the plane-wave value and replace only the
outgoing coefficient by $S_l$. Subtracting the free outgoing part gives

$$
f(\theta)=\frac1{2ik}\sum_{l=0}^{\infty}
(2l+1)(S_l-1)P_l(\cos\theta).
$$

Since $(e^{2i\delta_l}-1)/(2i)=e^{i\delta_l}\sin\delta_l$,

$$
\boxed{
f(\theta)=\frac1k\sum_{l=0}^{\infty}
(2l+1)e^{i\delta_l}\sin\delta_lP_l(\cos\theta).
}
$$

Legendre orthogonality,

$$
\int P_l(\cos\theta)P_{l'}(\cos\theta)d\Omega
=\frac{4\pi}{2l+1}\delta_{ll'},
$$

then gives

$$
\boxed{
\sigma_{\rm tot}=\frac{4\pi}{k^2}
\sum_{l=0}^{\infty}(2l+1)\sin^2\delta_l.
}
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-18/unit-3/partial-wave-scattering.png' | relative_url }}" alt="Equation-generated partial-wave differential cross section and elastic phase-shift circle" loading="lazy">
  </div>
  <figcaption>The angular pattern uses the exact \(l=0,1,2\) amplitude with stated phase shifts; elastic \(S_l=e^{2i\delta_l}\) lies on the unit circle.</figcaption>
</figure>

## Optical theorem

At $\theta=0$, $P_l(1)=1$, so

$$
\operatorname{Im}f(0)
=\frac1k\sum_l(2l+1)
\operatorname{Im}[e^{i\delta_l}\sin\delta_l]
=\frac1k\sum_l(2l+1)\sin^2\delta_l.
$$

Comparison with the total cross section gives

$$
\boxed{
\sigma_{\rm tot}=\frac{4\pi}{k}\operatorname{Im}f(0).
}
$$

The relation follows from probability conservation, even though it connects
the total cross section to the strictly forward amplitude.

## Scattering length and effective range

At sufficiently small $k$, a finite-range potential is dominated by $l=0$.
Its amplitude is

$$
f_0(k)=\frac{e^{2i\delta_0}-1}{2ik}
=\boxed{\frac1{k\cot\delta_0-ik}}.
$$

At zero energy and outside the potential range, the radial equation is
$u_0''=0$. Normalize its solution as

$$
u_0(r)\longrightarrow1-\frac ra.
$$

The intercept $a$ is the scattering length. Matching this limit to
$\sin(kr+\delta_0)$ gives

$$
\lim_{k\to0}k\cot\delta_0=-\frac1a,
\qquad
f_0(0)=-a,
\qquad
\boxed{\sigma_{k\to0}=4\pi a^2.}
$$

For a short-range potential, the next even power defines the effective range:

$$
\boxed{
k\cot\delta_0=-\frac1a+\frac12r_ek^2+O(k^4).
}
$$

If the zero-energy solution is normalized as above, comparison of the finite-
and zero-energy radial equations gives Bethe's integral form

$$
\boxed{
r_e=2\int_0^\infty
\left[\left(1-\frac ra\right)^2-u_0^2(r)\right]dr.
}
$$

The integral terminates effectively outside the interaction range because the
two terms then coincide. Substitution into $f_0(k)$ describes the leading
finite-energy correction to scattering-length behavior.

The outgoing Green equation for $r>0$, screened-Coulomb transform,
Rutherford form, partial-wave optical theorem, and scattering-length limit
are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-18/unit-3/quantum-scattering.mac' | relative_url }}); every printed residual is zero.

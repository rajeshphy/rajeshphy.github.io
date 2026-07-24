---
title: "Scattering Amplitude and Cross Sections"
summary: "Asymptotic scattering states, probability flux, differential cross section, and total cross section."
date: 2026-07-10 09:00:00 +0530
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
  - scattering-amplitude
  - differential-cross-section
  - total-cross-section
permalink: /msc/sem-ii/scattering/
hidden: true
---

For relative motion of reduced mass $\mu$ in a localized potential
$V(\mathbf r)$, the stationary Schrödinger equation is

$$
\left[-\frac{\hbar^2}{2\mu}\nabla^2+V(\mathbf r)\right]\psi
=E\psi,
\qquad
E=\frac{\hbar^2k^2}{2\mu}.
$$

Choose the incident wavevector as $\mathbf k=k\hat{\mathbf z}$. Before reaching the potential, a monochromatic beam is represented by

$$
\psi_{\mathrm{in}}=e^{ikz}.
$$

Outside the finite interaction region the equation is free. For its radial
$l=0$ part, write $R(r)=\chi(r)/r$. Substitution into

$$
\frac1{r^2}\frac{d}{dr}
\left(r^2\frac{dR}{dr}\right)+k^2R=0
$$

reduces it to

$$
\chi''+k^2\chi=0.
$$

Hence

$$
R(r)=\frac{Ae^{ikr}+Be^{-ikr}}r.
$$

With time dependence $e^{-iEt/\hbar}$, constant phase in
$e^{i(kr-Et/\hbar)}$ moves toward increasing $r$, while the
$e^{-ikr}$ term moves inward. The Sommerfeld condition

$$
\lim_{r\to\infty}r
\left(\frac{\partial}{\partial r}-ik\right)\psi_{\mathrm{sc}}=0
$$

selects the outgoing term. Allowing its coefficient to depend on direction produces the physical large-distance boundary condition

$$
\boxed{
\psi(\mathbf r)
\underset{r\to\infty}{\sim}
e^{ikz}+f(\theta,\phi)\frac{e^{ikr}}{r}.
}
$$

The coefficient $f(\theta,\phi)$ is the scattering amplitude. It contains both a magnitude and a phase and has dimensions of length. Its angular dependence is determined by the potential.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/scattering-amplitude.png' | relative_url }}" alt="Incident plane wave scattered by a localized potential into concentric outgoing spherical wavefronts and a detector solid angle" loading="lazy">
  <figcaption>The outgoing wave crossing \(r^2d\Omega\) has amplitude \(f(\theta,\phi)e^{ikr}/r\). The rendered arcs are concentric about the scattering centre.</figcaption>
</figure>

## Incident probability flux

Begin with the time-dependent Schrödinger equation and its conjugate:

$$
i\hbar\frac{\partial\psi}{\partial t}
=-\frac{\hbar^2}{2\mu}\nabla^2\psi+V\psi,
$$

$$
-i\hbar\frac{\partial\psi^*}{\partial t}
=-\frac{\hbar^2}{2\mu}\nabla^2\psi^*+V\psi^*.
$$

Multiply the first by $\psi^*$, the second by $\psi$, and subtract. The real-potential terms cancel:

$$
\frac{\partial|\psi|^2}{\partial t}
=-\frac{\hbar}{2\mu i}
\left(\psi^*\nabla^2\psi-\psi\nabla^2\psi^*\right).
$$

Using

$$
\psi^*\nabla^2\psi-\psi\nabla^2\psi^*
=\nabla\cdot
\left(\psi^*\nabla\psi-\psi\nabla\psi^*\right),
$$

one obtains

$$
\frac{\partial|\psi|^2}{\partial t}+\nabla\cdot\mathbf j=0,
$$

with probability-current density

$$
\mathbf j
=\frac{\hbar}{2\mu i}
\left(\psi^*\nabla\psi-\psi\nabla\psi^*\right).
$$

For the incident plane wave,

$$
\nabla\psi_{\mathrm{in}}
=ik\hat{\mathbf z}\psi_{\mathrm{in}},
\qquad
\nabla\psi_{\mathrm{in}}^*
=-ik\hat{\mathbf z}\psi_{\mathrm{in}}^*.
$$

Since $|\psi_{\mathrm{in}}|^2=1$,

$$
\begin{aligned}
\mathbf j_{\mathrm{in}}
&=\frac{\hbar}{2\mu i}
\left(ik\hat{\mathbf z}+ik\hat{\mathbf z}\right)\\
&=\boxed{\frac{\hbar k}{\mu}\hat{\mathbf z}}.
\end{aligned}
$$

Thus the incident particle flux is

$$
\mathcal F_{\mathrm{in}}=\frac{\hbar k}{\mu}.
$$

## Scattered radial flux

Write

$$
\psi_{\mathrm{sc}}=f(\theta,\phi)\frac{e^{ikr}}{r}.
$$

At fixed direction,

$$
\frac{\partial\psi_{\mathrm{sc}}}{\partial r}
=f e^{ikr}\left(\frac{ik}{r}-\frac1{r^2}\right).
$$

Insert this derivative into the radial component of the current:

$$
j_{\mathrm{sc},r}
=\frac{\hbar}{2\mu i}
\left(
\psi_{\mathrm{sc}}^*
\frac{\partial\psi_{\mathrm{sc}}}{\partial r}
-\psi_{\mathrm{sc}}
\frac{\partial\psi_{\mathrm{sc}}^*}{\partial r}
\right).
$$

The real $1/r^3$ terms cancel, leaving

$$
\boxed{
j_{\mathrm{sc},r}
=\frac{\hbar k}{\mu}\frac{|f(\theta,\phi)|^2}{r^2}.
}
$$

The rate through the detector area
$dA=r^2d\Omega$ is therefore

$$
d\dot N_{\mathrm{sc}}
=j_{\mathrm{sc},r}r^2d\Omega
=\frac{\hbar k}{\mu}|f|^2d\Omega.
$$

By definition,

$$
d\dot N_{\mathrm{sc}}
=\mathcal F_{\mathrm{in}}\,d\sigma.
$$

Dividing by $\mathcal F_{\mathrm{in}}d\Omega$ produces the elastic differential cross section:

$$
\boxed{
\frac{d\sigma}{d\Omega}=|f(\theta,\phi)|^2.
}
$$

The phase of one isolated amplitude disappears from this modulus, but relative phases remain observable when different scattering contributions interfere.

## Total cross section

Adding the rates in all directions,

$$
\boxed{
\sigma_{\mathrm{tot}}
=\int_{4\pi}|f(\theta,\phi)|^2\,d\Omega.
}
$$

For a spherically symmetric potential, rotations about the incident direction change neither the experiment nor $f$, so $f=f(\theta)$. With
$d\Omega=\sin\theta\,d\theta\,d\phi$,

$$
\boxed{
\sigma_{\mathrm{tot}}
=2\pi\int_0^\pi
|f(\theta)|^2\sin\theta\,d\theta.
}
$$

A short-range potential normally makes this integral finite. The unscreened Coulomb amplitude is singular in the forward direction, which is why its ideal total cross section diverges.

---
title: "Scattering by Spherically Symmetric Potentials"
summary: "Separation of the central-potential Schrödinger equation into radial angular-momentum channels and the origin of scattering phase shifts."
date: 2026-07-13 09:00:00 +0530
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
  - central-potential
  - radial-equation
  - phase-shift
permalink: /msc/sem-ii/scattering-by-spherically-symmetric-potentials/
hidden: true
---

For a spherically symmetric interaction,

$$
V(\mathbf r)=V(r),
$$

the Hamiltonian is invariant under rotations. Hence

$$
[H,L^2]=[H,L_z]=0,
$$

and a scattering state can be resolved into independent angular-momentum channels.

## Separation of the Schrödinger equation

The Laplacian may be written

$$
\nabla^2
=\frac1{r^2}\frac{\partial}{\partial r}
\left(r^2\frac{\partial}{\partial r}\right)
-\frac{L^2}{\hbar^2r^2}.
$$

Expand the state in simultaneous eigenfunctions of $L^2$ and $L_z$:

$$
\psi(\mathbf r)
=\sum_{l,m}R_{lm}(r)Y_l^m(\theta,\phi),
$$

where

$$
L^2Y_l^m=\hbar^2l(l+1)Y_l^m.
$$

Substitution into

$$
\left[-\frac{\hbar^2}{2\mu}\nabla^2+V(r)\right]\psi=E\psi
$$

and projection onto one spherical harmonic produces

$$
-\frac{\hbar^2}{2\mu}
\left[
\frac1{r^2}\frac{d}{dr}
\left(r^2\frac{dR_l}{dr}\right)
-\frac{l(l+1)}{r^2}R_l
\right]
+V(r)R_l=ER_l.
$$

Define the reduced radial function

$$
u_l(r)=rR_l(r).
$$

Its derivatives obey

$$
\frac{dR_l}{dr}
=\frac{u_l'}r-\frac{u_l}{r^2},
$$

$$
\frac1{r^2}\frac{d}{dr}
\left(r^2\frac{dR_l}{dr}\right)
=\frac{u_l''}{r}.
$$

After multiplication by $r$, the radial equation becomes

$$
\boxed{
\frac{d^2u_l}{dr^2}
+\left[
k^2-\frac{2\mu}{\hbar^2}V(r)
-\frac{l(l+1)}{r^2}
\right]u_l=0,
}
$$

with $E=\hbar^2k^2/(2\mu)$.

The same equation has the one-dimensional form

$$
-\frac{\hbar^2}{2\mu}u_l''
+V_{\mathrm{eff},l}(r)u_l=Eu_l,
$$

where

$$
\boxed{
V_{\mathrm{eff},l}(r)
=V(r)+\frac{\hbar^2l(l+1)}{2\mu r^2}.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/central-potential-channels.png' | relative_url }}" alt="Effective radial potentials for several angular-momentum channels formed from one finite-range attractive central potential" loading="lazy">
  <figcaption>The \(l=0\) curve is the attractive potential itself. Increasing \(l\) adds a positive centrifugal barrier and reduces penetration into the interaction region.</figcaption>
</figure>

## Origin and exterior forms

Near a nonsingular origin, the centrifugal term dominates. Trying
$u_l\propto r^\alpha$ in

$$
u_l''-\frac{l(l+1)}{r^2}u_l\simeq0
$$

produces

$$
\alpha(\alpha-1)-l(l+1)=0.
$$

The roots are $\alpha=l+1$ and $\alpha=-l$. The second makes
$R_l=u_l/r$ singular, so the regular boundary condition is

$$
u_l(r)\propto r^{l+1}.
$$

Suppose $V(r)=0$ for $r>R$. The exterior radial equation is

$$
u_l''+\left[k^2-\frac{l(l+1)}{r^2}\right]u_l=0.
$$

Its independent solutions are $kr\,j_l(kr)$ and $kr\,n_l(kr)$. A real elastic solution can therefore be written

$$
u_l=C_lkr
\left[
\cos\delta_l\,j_l(kr)
-\sin\delta_l\,n_l(kr)
\right].
$$

For large $x$,

$$
j_l(x)\sim\frac{\sin(x-l\pi/2)}x,
\qquad
n_l(x)\sim-\frac{\cos(x-l\pi/2)}x.
$$

Substitution and the sine-addition identity lead to

$$
\boxed{
u_l(r)\sim
C_l\sin\left(kr-\frac{l\pi}{2}+\delta_l\right).
}
$$

The phase shift $\delta_l(E)$ is zero for a free particle and records the effect of the potential on that channel.

Semiclassically,

$$
p b\simeq\hbar\sqrt{l(l+1)}
\simeq\hbar\left(l+\frac12\right),
$$

so $b\simeq(l+1/2)/k$. For a potential of range $R$, channels with
$l\gg kR$ pass outside the interaction region and normally have negligible phase shifts.

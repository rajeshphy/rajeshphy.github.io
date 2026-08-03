---
title: "Electromagnetic Boundaries, Dielectric Waves, and Energy Flow"
summary: "Boundary conditions, source-free wave equations, dielectric plane waves, and Poynting's theorem."
date: 2025-05-16 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-i, boundary-conditions, poynting-theorem]
permalink: /bsc/sem-v/mj-8/unit-i/boundaries-dielectric-waves-energy/
---

Let a smooth interface separate medium 1 from medium 2, and define $\hat{\mathbf n}$ to point from 1 to 2. The limiting forms of Maxwell's integral equations determine which field components can jump.

## Normal boundary conditions

Place a thin pillbox of face area $\Delta A$ across the interface. As its height tends to zero, the side flux vanishes. Gauss's electric law leaves

$$\mathbf D_2\cdot\hat{\mathbf n}\,\Delta A
-\mathbf D_1\cdot\hat{\mathbf n}\,\Delta A
=\rho_s\Delta A,$$

so

$$\boxed{\hat{\mathbf n}\cdot(\mathbf D_2-\mathbf D_1)=\rho_s}.$$

$\rho_s$ is free surface-charge density in $\mathrm{C\,m^{-2}}$. Applying the same pillbox to magnetic flux gives

$$\boxed{\hat{\mathbf n}\cdot(\mathbf B_2-\mathbf B_1)=0}.$$

Thus $B_n$ is always continuous, while $D_n$ jumps only by the free surface charge.

## Tangential boundary conditions

Use a narrow rectangular loop of length $\Delta\ell$ parallel to the interface. Its area tends to zero with its height. Faraday's flux term then vanishes for finite $\partial\mathbf B/\partial t$, leaving

$$\boxed{\hat{\mathbf n}\times(\mathbf E_2-\mathbf E_1)=\mathbf0}.$$

For the Ampere-Maxwell law, a free sheet current $\mathbf K$ can remain finite as the loop height tends to zero. With $\mathbf K$ in $\mathrm{A\,m^{-1}}$,

$$\boxed{\hat{\mathbf n}\times(\mathbf H_2-\mathbf H_1)=\mathbf K}.$$

If $\rho_s=0$ and $\mathbf K=\mathbf0$, the continuous combinations are $D_n$, $B_n$, $\mathbf E_t$, and $\mathbf H_t$. The fields $E_n=D_n/\epsilon$ and $B_t=\mu H_t$ may still change when the material constants change.

## Wave equations in a source-free dielectric

In a homogeneous, source-free, nonconducting dielectric,

$$\rho_{\mathrm f}=0,\qquad \mathbf J=0,\qquad
\mathbf D=\epsilon\mathbf E,\qquad \mathbf B=\mu\mathbf H,$$

with constant $\epsilon$ and $\mu$. Maxwell's curl equations reduce to

$$\nabla\times\mathbf E=-\mu\frac{\partial\mathbf H}{\partial t},
\qquad
\nabla\times\mathbf H=\epsilon\frac{\partial\mathbf E}{\partial t}.$$

Take the curl of the first equation:

$$\nabla\times(\nabla\times\mathbf E)
=-\mu\frac{\partial}{\partial t}(\nabla\times\mathbf H)
=-\mu\epsilon\frac{\partial^2\mathbf E}{\partial t^2}.$$

The identity $\nabla\times(\nabla\times\mathbf E)=\nabla(\nabla\cdot\mathbf E)-\nabla^2\mathbf E$ and Gauss's law $\nabla\cdot\mathbf E=0$ give

$$\boxed{\nabla^2\mathbf E-\mu\epsilon\frac{\partial^2\mathbf E}{\partial t^2}=0}.$$

The same steps yield

$$\boxed{\nabla^2\mathbf H-\mu\epsilon\frac{\partial^2\mathbf H}{\partial t^2}=0}.$$

Both have wave speed

$$\boxed{v=\frac1{\sqrt{\mu\epsilon}}}.$$

## Plane wave in a dielectric

For propagation along $+z$, take

$$\mathbf E(z,t)=E_0\cos(kz-\omega t)\,\hat{\mathbf x}.$$

Substitution in the wave equation gives

$$-k^2+\mu\epsilon\omega^2=0,
\qquad
\boxed{k=\omega\sqrt{\mu\epsilon}}.$$

For a general plane-wave phasor $\mathbf E_0e^{i(\mathbf k\cdot\mathbf r-\omega t)}$, Gauss's law gives

$$i\mathbf k\cdot\mathbf E_0=0.$$

Therefore $\mathbf k\cdot\mathbf E_0=0$: the electric field is transverse. Faraday's law gives

$$\mathbf k\times\mathbf E_0=\omega\mu\mathbf H_0,$$

so $\mathbf H_0$ is transverse to both $\mathbf k$ and $\mathbf E_0$. Its magnitude is fixed by the intrinsic impedance

$$\boxed{\eta=\frac{E_0}{H_0}=\sqrt{\frac{\mu}{\epsilon}}},$$

measured in ohms. For the chosen axes,

$$\mathbf H(z,t)=\frac{E_0}{\eta}\cos(kz-\omega t)\,\hat{\mathbf y},$$

and $\mathbf E\times\mathbf H$ points along $+z$.

## Poynting theorem from Maxwell's equations

Dot the Ampere-Maxwell equation with $\mathbf E$ and Faraday's law with $\mathbf H$:

$$\mathbf E\cdot(\nabla\times\mathbf H)
=\mathbf J\cdot\mathbf E+\mathbf E\cdot\frac{\partial\mathbf D}{\partial t},$$

$$\mathbf H\cdot(\nabla\times\mathbf E)
=-\mathbf H\cdot\frac{\partial\mathbf B}{\partial t}.$$

Subtract the first relation from the second and use

$$\nabla\cdot(\mathbf E\times\mathbf H)
=\mathbf H\cdot(\nabla\times\mathbf E)
-\mathbf E\cdot(\nabla\times\mathbf H).$$

For a linear, nondispersive medium,

$$\mathbf E\cdot\frac{\partial\mathbf D}{\partial t}
=\frac{\partial}{\partial t}\left(\frac12\mathbf E\cdot\mathbf D\right),
\qquad
\mathbf H\cdot\frac{\partial\mathbf B}{\partial t}
=\frac{\partial}{\partial t}\left(\frac12\mathbf B\cdot\mathbf H\right).$$

Therefore

$$\boxed{\frac{\partial u}{\partial t}+\nabla\cdot\mathbf S+\mathbf J\cdot\mathbf E=0},$$

where

$$\boxed{u=\frac12(\mathbf E\cdot\mathbf D+\mathbf B\cdot\mathbf H)},
\qquad
\boxed{\mathbf S=\mathbf E\times\mathbf H}.$$

$u$ is electromagnetic energy density in $\mathrm{J\,m^{-3}}$, $\mathbf S$ is energy flux in $\mathrm{W\,m^{-2}}$, and $\mathbf J\cdot\mathbf E$ is the rate per unit volume at which field energy becomes material energy. Integration over a fixed volume $V$ gives

$$\boxed{\frac{d}{dt}\int_Vu\,dV
=-\oint_{\partial V}\mathbf S\cdot d\mathbf a
-\int_V\mathbf J\cdot\mathbf E\,dV}.$$

The outward surface normal fixes the signs: positive outward Poynting flux decreases the stored field energy.

For the dielectric plane wave, $H=E/\eta$ and $\eta^2=\mu/\epsilon$, so

$$u_E=\frac12\epsilon E^2,
\qquad
u_B=\frac12\mu H^2
=\frac12\mu\frac{E^2}{\eta^2}
=\frac12\epsilon E^2.$$

The electric and magnetic contributions are equal instantaneously. Averaging $\cos^2(kz-\omega t)$ over one cycle gives

$$\boxed{\langle\mathbf S\rangle
=\frac{E_0H_0}{2}\hat{\mathbf z}
=\frac{E_0^2}{2\eta}\hat{\mathbf z}}.$$

The dispersion, wave-speed, impedance, equal-energy, and Poynting identities are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/maxwell-wave-energy.mac' | relative_url }}); every printed residual is zero.

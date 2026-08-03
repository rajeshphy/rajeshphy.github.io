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

## Solved Problems

### 1. Free surface charge at a dielectric boundary

Medium 1 has $\epsilon_{r1}=2.00$ and medium 2 has $\epsilon_{r2}=5.00$. The unit normal points from 1 to 2. Immediately at the interface,

$$E_{1n}=3.00\ \mathrm{kV\,m^{-1}},
\qquad
E_{2n}=1.60\ \mathrm{kV\,m^{-1}},$$

with both normal components directed along $+\hat{\mathbf n}$. Find the free surface-charge density.

**Solution.** The signed normal boundary condition is

$$\rho_s=\hat{\mathbf n}\cdot(\mathbf D_2-\mathbf D_1)
=\epsilon_0(\epsilon_{r2}E_{2n}-\epsilon_{r1}E_{1n}).$$

Substitution gives

$$\rho_s=\epsilon_0[5.00(1600)-2.00(3000)]
=1.771\times10^{-8}\ \mathrm{C\,m^{-2}}.$$

Thus

$$\boxed{\rho_s=+17.7\ \mathrm{nC\,m^{-2}}}.$$

The positive sign means free positive charge resides on the interface for the chosen normal. Each term $\epsilon E$ has unit $\mathrm{C\,m^{-2}}$. If the two normal displacement components become equal, the expression correctly tends to $\rho_s=0$ even when the electric-field components differ.

### 2. Energy and power in a dielectric plane wave

A nonmagnetic, lossless dielectric has $\epsilon_r=4.00$. A $+z$-travelling plane wave has peak electric field $E_0=120\ \mathrm{V\,m^{-1}}$ along $+x$. Find $H_0$, the average Poynting flux, and the average total energy density.

**Solution.** For $\mu_r=1$,

$$\eta=\frac{\eta_0}{\sqrt{\epsilon_r}}
=\frac{376.73}{2}=188.37\ \Omega.$$

The right-handed orientation $\mathbf E\times\mathbf H\parallel+\hat{\mathbf z}$ fixes $\mathbf H$ along $+y$:

$$H_0=\frac{E_0}{\eta}=0.6371\ \mathrm{A\,m^{-1}}.$$

For peak amplitudes,

$$\langle S\rangle=\frac{E_0^2}{2\eta}
=38.22\ \mathrm{W\,m^{-2}}.$$

The electric and magnetic energies are equal, so their cycle-averaged sum is

$$\langle u\rangle=\frac{\epsilon E_0^2}{2}
=2.550\times10^{-7}\ \mathrm{J\,m^{-3}}.$$

Therefore

$$\boxed{\mathbf H_0=0.6371\hat{\mathbf y}\ \mathrm{A\,m^{-1}},\quad
\langle\mathbf S\rangle=38.22\hat{\mathbf z}\ \mathrm{W\,m^{-2}},\quad
\langle u\rangle=2.550\times10^{-7}\ \mathrm{J\,m^{-3}}}.$$

The ratio $\langle S\rangle/\langle u\rangle=1.499\times10^8\ \mathrm{m\,s^{-1}}$ equals the wave speed. This also checks dimensions because $\mathrm{(W\,m^{-2})/(J\,m^{-3})=m\,s^{-1}}$. As $E_0\to0$, both power and stored energy vanish quadratically.

## Descriptive Questions

1. Derive the four electromagnetic boundary conditions from pillbox and rectangular-loop constructions, stating which sources can create jumps.
2. Why can $E_n$ and $B_t$ change across a source-free material boundary even when $D_n$ and $H_t$ are continuous combinations?
3. Explain the local and integral meanings of every term in Poynting's theorem, including its sign convention.
4. Under what assumptions are the electric and magnetic energy densities of a plane wave equal instantaneously?

## Numerical Problems

1. With $\hat{\mathbf n}=\hat{\mathbf z}$, $\mathbf H_1=4\hat{\mathbf x}\ \mathrm{A\,m^{-1}}$ and $\mathbf H_2=1\hat{\mathbf x}\ \mathrm{A\,m^{-1}}$. Find the free sheet current.
   **Final answer:** $\boxed{\mathbf K=-3\hat{\mathbf y}\ \mathrm{A\,m^{-1}}}$.
2. No free surface charge exists between dielectrics with $\epsilon_{r1}=2.50$ and $\epsilon_{r2}=5.00$. If $E_{1n}=800\ \mathrm{V\,m^{-1}}$, find $E_{2n}$.
   **Final answer:** $\boxed{E_{2n}=400\ \mathrm{V\,m^{-1}}}$.
3. Find the wave speed in a nonmagnetic dielectric with $\epsilon_r=9.00$.
   **Final answer:** $\boxed{v=9.993\times10^7\ \mathrm{m\,s^{-1}}}$.
4. A lossless plane wave has peak $E_0=50.0\ \mathrm{V\,m^{-1}}$ in a medium of impedance $250\ \Omega$. Find its mean intensity.
   **Final answer:** $\boxed{\langle S\rangle=5.00\ \mathrm{W\,m^{-2}}}$.

The wave identities are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/maxwell-wave-energy.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Maxwell's equations: boundary conditions - Wikipedia](https://en.wikipedia.org/wiki/Maxwell%27s_equations#Boundary_conditions)
2. [MIT 6.013, Summary of Maxwell's Integral Laws and Continuity Conditions](https://web.mit.edu/6.013_book/www/chapter1/1.8.html)
3. [MIT 6.013, Poynting's Theorem](https://web.mit.edu/6.013_book/www/chapter11/11.2.html)

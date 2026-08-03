---
title: "Maxwell Equations, Displacement Current, and Potentials"
summary: "First-principles derivation of Maxwell's equations, current continuity, and electromagnetic potentials."
date: 2025-05-15 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-i, maxwell-equations]
permalink: /bsc/sem-v/mj-8/unit-i/maxwell-equations-displacement-current-potentials/
---

We use SI units and let $\hat{\mathbf n}$ point outward from a closed surface. In a linear, isotropic medium,

$$\mathbf D=\epsilon\mathbf E,\qquad
\mathbf B=\mu\mathbf H,\qquad
\mathbf J=\sigma\mathbf E.$$

Here $\mathbf E$ is in $\mathrm{V\,m^{-1}}$, $\mathbf D$ in $\mathrm{C\,m^{-2}}$, $\mathbf B$ in tesla, $\mathbf H$ in $\mathrm{A\,m^{-1}}$, $\epsilon$ in $\mathrm{F\,m^{-1}}$, $\mu$ in $\mathrm{H\,m^{-1}}$, and $\mathbf J$ in $\mathrm{A\,m^{-2}}$.

## Electric and magnetic Gauss laws

For a point charge $q$ in a homogeneous medium, Coulomb's field is

$$\mathbf E=\frac{q}{4\pi\epsilon r^2}\hat{\mathbf r}.$$

Its flux through a sphere is $E(4\pi r^2)=q/\epsilon$. Superposition extends this result to any charge distribution and any closed surface $S$:

$$\boxed{\oint_S\mathbf D\cdot d\mathbf a=Q_{\mathrm f,enc}}.$$

With $Q_{\mathrm f,enc}=\int_V\rho_{\mathrm f}\,dV$ and the divergence theorem,

$$\int_V(\nabla\cdot\mathbf D-\rho_{\mathrm f})\,dV=0.$$

The volume is arbitrary, so the integrand vanishes:

$$\boxed{\nabla\cdot\mathbf D=\rho_{\mathrm f}}.$$

Magnetic field lines have no observed beginning or end. Their flux through every closed surface is therefore zero:

$$\boxed{\oint_S\mathbf B\cdot d\mathbf a=0}
\quad\Longleftrightarrow\quad
\boxed{\nabla\cdot\mathbf B=0}.$$

## Faraday law and its sign

For a fixed contour $C$ bounding a fixed surface $S$, Faraday's induction law is

$$\oint_C\mathbf E\cdot d\boldsymbol\ell
=-\frac{d}{dt}\int_S\mathbf B\cdot d\mathbf a.$$

The contour direction and surface normal obey the right-hand rule. The minus sign is Lenz's law: the induced circulation opposes the change of magnetic flux. Moving the derivative inside the fixed surface and applying Stokes' theorem gives

$$\int_S\left(\nabla\times\mathbf E+\frac{\partial\mathbf B}{\partial t}\right)\cdot d\mathbf a=0.$$

Because the surface is arbitrary,

$$\boxed{\nabla\times\mathbf E=-\frac{\partial\mathbf B}{\partial t}}.$$

## Why Ampere's law needs displacement current

The magnetostatic equation $\nabla\times\mathbf H=\mathbf J$ cannot describe time-dependent charge. Taking its divergence would give $\nabla\cdot\mathbf J=0$, whereas conservation of charge requires

$$\boxed{\nabla\cdot\mathbf J=-\frac{\partial\rho_{\mathrm f}}{\partial t}}.$$

Use $\rho_{\mathrm f}=\nabla\cdot\mathbf D$ in the continuity equation:

$$\nabla\cdot\left(\mathbf J+\frac{\partial\mathbf D}{\partial t}\right)=0.$$

The current density that can consistently source a curl is therefore

$$\mathbf J_{\mathrm{total}}=\mathbf J+\mathbf J_d,
\qquad
\boxed{\mathbf J_d=\frac{\partial\mathbf D}{\partial t}}.$$

$\mathbf J_d$ has the same unit $\mathrm{A\,m^{-2}}$ as conduction-current density. The corrected law is

$$\boxed{\nabla\times\mathbf H
=\mathbf J+\frac{\partial\mathbf D}{\partial t}},$$

or, in integral form,

$$\boxed{\oint_C\mathbf H\cdot d\boldsymbol\ell
=\int_S\mathbf J\cdot d\mathbf a
+\frac{d}{dt}\int_S\mathbf D\cdot d\mathbf a}.$$

For a charging parallel-plate capacitor of plate area $A$, neglecting fringing,

$$D=\frac{Q}{A},\qquad
I_d=\frac{d}{dt}\int_A\mathbf D\cdot d\mathbf a
=\frac{d}{dt}(DA)=\frac{dQ}{dt}=I.$$

Thus a surface crossing the wire and a surface bulging through the capacitor gap give the same magnetic circulation.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-i/displacement-current.png' | relative_url }}" alt="Charging capacitor showing equal conduction current in the wire and displacement current in the gap" loading="lazy">
  <figcaption>Current continuity fixes the displacement-current term and removes the surface ambiguity in Ampere's law. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-i/displacement-current.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Maxwell equations together

The four macroscopic equations, with free charge and free conduction current as sources, are

$$\boxed{\begin{aligned}
\nabla\cdot\mathbf D&=\rho_{\mathrm f},
&\qquad \nabla\cdot\mathbf B&=0,\\
\nabla\times\mathbf E&=-\frac{\partial\mathbf B}{\partial t},
&\nabla\times\mathbf H&=\mathbf J+\frac{\partial\mathbf D}{\partial t}.
\end{aligned}}$$

Their integral forms are

$$\boxed{\begin{aligned}
\oint_S\mathbf D\cdot d\mathbf a&=Q_{\mathrm f,enc},
&\oint_S\mathbf B\cdot d\mathbf a&=0,\\
\oint_C\mathbf E\cdot d\boldsymbol\ell&=-\frac{d}{dt}\int_S\mathbf B\cdot d\mathbf a,
&\oint_C\mathbf H\cdot d\boldsymbol\ell&=I_{\mathrm f,enc}+\frac{d}{dt}\int_S\mathbf D\cdot d\mathbf a.
\end{aligned}}$$

Taking the divergence of the Ampere-Maxwell equation immediately reproduces charge continuity; the correction is therefore required, not optional.

## Scalar and vector potentials

Because $\nabla\cdot\mathbf B=0$, a vector potential $\mathbf A$ exists locally such that

$$\boxed{\mathbf B=\nabla\times\mathbf A}.$$

Substitution in Faraday's law gives

$$\nabla\times\left(\mathbf E+\frac{\partial\mathbf A}{\partial t}\right)=0.$$

A curl-free field is a gradient. Defining the scalar potential $\phi$ with the electrostatic sign convention,

$$\boxed{\mathbf E=-\nabla\phi-\frac{\partial\mathbf A}{\partial t}}.$$

$\phi$ is measured in volts and $\mathbf A$ in $\mathrm{Wb\,m^{-1}}=\mathrm{V\,s\,m^{-1}}$. The same fields result from

$$\boxed{\mathbf A^{\prime}=\mathbf A+\nabla\chi,
\qquad
\phi^{\prime}=\phi-\frac{\partial\chi}{\partial t}},$$

because $\nabla\times\nabla\chi=0$ and the added terms in $\mathbf E$ cancel. This is gauge freedom.

In a homogeneous medium choose the Lorenz gauge

$$\boxed{\nabla\cdot\mathbf A+\mu\epsilon\frac{\partial\phi}{\partial t}=0}.$$

Gauss's law then gives

$$-\nabla^2\phi-\frac{\partial}{\partial t}(\nabla\cdot\mathbf A)
=\frac{\rho_{\mathrm f}}{\epsilon},$$

and hence

$$\boxed{\left(\nabla^2-\mu\epsilon\frac{\partial^2}{\partial t^2}\right)\phi
=-\frac{\rho_{\mathrm f}}{\epsilon}}.$$

Similarly, substituting $\mathbf B=\nabla\times\mathbf A$ and $\mathbf E=-\nabla\phi-\partial_t\mathbf A$ in the Ampere-Maxwell law, then using the Lorenz gauge, gives

$$\boxed{\left(\nabla^2-\mu\epsilon\frac{\partial^2}{\partial t^2}\right)\mathbf A
=-\mu\mathbf J}.$$

In source-free regions both potentials propagate with speed $1/\sqrt{\mu\epsilon}$.

## Solved Problems

### 1. Magnetic field produced by a uniform displacement current

Inside a circular dielectric region of radius $R=3.00\ \mathrm{cm}$, a spatially uniform electric field points along $+z$ and increases at

$$\frac{\partial E}{\partial t}=4.00\times10^8\ \mathrm{V\,m^{-1}\,s^{-1}}.$$

The dielectric has $\epsilon_r=2.00$. Find $\mathbf H$ at $r=1.00\ \mathrm{cm}$, neglecting fringing and conduction current.

**Solution.** Take the contour direction to be $+\hat{\boldsymbol\phi}$ when the surface normal is $+\hat{\mathbf z}$. The displacement-current density is

$$J_d=\epsilon\frac{\partial E}{\partial t}
=2\epsilon_0(4.00\times10^8)
=7.083\times10^{-3}\ \mathrm{A\,m^{-2}}.$$

Because $r<R$, the enclosed displacement current is $I_d=J_d\pi r^2$. Cylindrical symmetry makes $H$ constant on the circular contour, so the Ampere-Maxwell law gives

$$2\pi rH=J_d\pi r^2,
\qquad
H=\frac{J_dr}{2}=3.542\times10^{-5}\ \mathrm{A\,m^{-1}}.$$

Therefore

$$\boxed{\mathbf H=(3.542\times10^{-5}\ \mathrm{A\,m^{-1}})\hat{\boldsymbol\phi}}.$$

The positive azimuthal sign follows from the right-hand rule about an increasing $+z$ electric flux. Dimensionally, $\epsilon\,\partial E/\partial t$ is $\mathrm{A\,m^{-2}}$, so $J_dr$ has unit $\mathrm{A\,m^{-1}}$. The result tends to zero linearly as $r\to0$, as symmetry requires; outside the active radius it would instead vary as $1/r$.

### 2. Explicit check of gauge invariance

Let

$$\mathbf A=B_0x\,\hat{\mathbf y},\qquad \phi=0,$$

and choose the gauge function $\chi=axt$, where $a$ has unit $\mathrm{V\,m^{-1}}$. Find the transformed potentials and verify the fields.

**Solution.** With the stated convention,

$$\mathbf A^{\prime}=\mathbf A+\nabla\chi
=at\,\hat{\mathbf x}+B_0x\,\hat{\mathbf y},
\qquad
\phi^{\prime}=\phi-\frac{\partial\chi}{\partial t}=-ax.$$

The transformed electric field is

$$\mathbf E^{\prime}=-\nabla\phi^{\prime}-\frac{\partial\mathbf A^{\prime}}{\partial t}
=a\hat{\mathbf x}-a\hat{\mathbf x}=\mathbf0,$$

while

$$\mathbf B^{\prime}=\nabla\times\mathbf A^{\prime}=B_0\hat{\mathbf z}.$$

Thus $\mathbf E^{\prime}=\mathbf E$ and $\mathbf B^{\prime}=\mathbf B$: the extra scalar-potential gradient and time derivative of $\mathbf A^{\prime}$ cancel with the required minus sign. Since $\chi$ has unit $\mathrm{V\,s}$, both $\nabla\chi$ and $\mathbf A$ have unit $\mathrm{V\,s\,m^{-1}}$. The limit $a\to0$ returns the original potentials, while every value of $a$ represents the same physical fields.

## Descriptive Questions

1. Why does taking the divergence of the Ampere-Maxwell equation enforce local conservation of free charge?
2. Explain why the magnetic Gauss law permits a vector potential but does not determine that potential uniquely.
3. Compare the information carried by the integral and differential forms of Maxwell's equations.
4. How do the Lorenz gauge and source-free potential equations reveal the propagation speed of electromagnetic influence?

## Numerical Problems

1. A charge of $3.00\ \mathrm{\mu C}$ crosses an area of $20.0\ \mathrm{cm^2}$ uniformly in $5.00\ \mathrm{\mu s}$. Find the mean current density.
   **Final answer:** $\boxed{J=300\ \mathrm{A\,m^{-2}}}$.
2. A $150\ \mathrm{pF}$ capacitor is driven by $V=40.0\cos(2\pi\times2.00\ \mathrm{MHz}\,t)\ \mathrm V$. Find the peak displacement current.
   **Final answer:** $\boxed{I_{d0}=75.4\ \mathrm{mA}}$.
3. A radial displacement field of magnitude $0.800\ \mathrm{\mu C\,m^{-2}}$ is uniform on a sphere of radius $5.00\ \mathrm{cm}$. Find the enclosed free charge.
   **Final answer:** $\boxed{Q_{\mathrm f}=25.1\ \mathrm{nC}}$.
4. Let $\phi=0$ and $\mathbf A=A_0\cos(kz-\omega t)\,\hat{\mathbf x}$, where $A_0=2.00\times10^{-7}\ \mathrm{V\,s\,m^{-1}}$, $k=0.500\ \mathrm{m^{-1}}$, and $f=10.0\ \mathrm{MHz}$. Find the peak electric- and magnetic-field magnitudes obtained from the potentials.
   **Final answer:** $\boxed{E_0=\omega A_0=12.57\ \mathrm{V\,m^{-1}}}$; $\boxed{B_0=kA_0=1.00\times10^{-7}\ \mathrm T}$.

The algebra and numerical values in both solved problems and all four numerical problems are checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed check is zero.

## References

1. [Maxwell's equations - Wikipedia](https://en.wikipedia.org/wiki/Maxwell%27s_equations)
2. [The Feynman Lectures on Physics, Vol. II, Chapter 18: The Maxwell Equations](https://www.feynmanlectures.caltech.edu/II_18.html)
3. [MIT 6.013, Chapter 12: Electrodynamic Fields and Potentials](https://web.mit.edu/6.013_book/www/chapter12/chap12.html)

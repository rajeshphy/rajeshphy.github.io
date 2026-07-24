---
title: "Klein–Gordon Equation"
summary: "Relativistic scalar wave equation, conserved current, and the limits of its single-particle interpretation."
date: 2026-06-03 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - klein-gordon-equation
  - scalar-particles
permalink: /msc/sem-ii/relativistic-quantum-mechanics/
hidden: true
---

The Schrödinger equation treats time and space differently and uses the nonrelativistic relation $E=p^2/(2m)$. A relativistic wave equation should instead reproduce

$$
E^2=p^2c^2+m^2c^4.
$$

For a scalar wavefunction $\phi(\mathbf r,t)$, make the operator substitutions

$$
E\longrightarrow i\hbar\frac{\partial}{\partial t},
\qquad
\mathbf p\longrightarrow-i\hbar\nabla.
$$

Acting on $\phi$, the energy–momentum relation first gives

$$
\left(i\hbar\frac{\partial}{\partial t}\right)^2\phi
=
\left[
c^2(-i\hbar\nabla)^2+m^2c^4
\right]\phi.
$$

Since $i^2=-1$, this is

$$
-\hbar^2\frac{\partial^2\phi}{\partial t^2}
=-\hbar^2c^2\nabla^2\phi+m^2c^4\phi.
$$

Move every term to the left and divide by $-\hbar^2c^2$:

$$
\boxed{
\left(
\frac{1}{c^2}\frac{\partial^2}{\partial t^2}
-\nabla^2+\frac{m^2c^2}{\hbar^2}
\right)\phi=0
}.
$$

With metric $g_{\mu\nu}=\operatorname{diag}(1,-1,-1,-1)$ and

$$
\Box=\partial_\mu\partial^\mu
=\frac{1}{c^2}\frac{\partial^2}{\partial t^2}-\nabla^2,
$$

this is the manifestly covariant equation

$$
\boxed{\left(\Box+\frac{m^2c^2}{\hbar^2}\right)\phi=0}.
$$

## Plane waves and the two frequency branches

For

$$
\phi=Ae^{i(\mathbf k\cdot\mathbf r-\omega t)},
$$

the required derivatives are

$$
\frac{\partial^2\phi}{\partial t^2}=-\omega^2\phi,
\qquad
\nabla^2\phi=-k^2\phi.
$$

Substitution into the Klein–Gordon equation gives

$$
\left(
-\frac{\omega^2}{c^2}
+k^2+\frac{m^2c^2}{\hbar^2}
\right)\phi=0.
$$

For a nonzero plane wave, the coefficient must vanish. Therefore

$$
\omega^2=c^2k^2+\frac{m^2c^4}{\hbar^2}.
$$

Therefore $E=\hbar\omega$ has both signs,

$$
E=\pm\sqrt{p^2c^2+m^2c^4}.
$$

The negative-frequency branch is not an algebraic accident: the equation is second order in time, so both signs are part of its complete solution space.

## Conserved Klein–Gordon current

Write the equation and its complex conjugate as

$$
\frac{1}{c^2}\partial_t^2\phi-\nabla^2\phi
+\frac{m^2c^2}{\hbar^2}\phi=0,
$$

$$
\frac{1}{c^2}\partial_t^2\phi^*-\nabla^2\phi^*
+\frac{m^2c^2}{\hbar^2}\phi^*=0.
$$

Multiply the first equation by $\phi^*$, the second by $\phi$, and subtract the second result from the first. The mass terms are identical and cancel:

$$
\frac{1}{c^2}
\left(\phi^*\partial_t^2\phi-\phi\partial_t^2\phi^*\right)
-
\left(\phi^*\nabla^2\phi-\phi\nabla^2\phi^*\right)
=0.
$$

The time term is a total derivative because

$$
\begin{aligned}
\partial_t
\left(\phi^*\partial_t\phi-\phi\partial_t\phi^*\right)
&=
(\partial_t\phi^*)(\partial_t\phi)+\phi^*\partial_t^2\phi\\
&\quad
-(\partial_t\phi)(\partial_t\phi^*)-\phi\partial_t^2\phi^*\\
&=\phi^*\partial_t^2\phi-\phi\partial_t^2\phi^*.
\end{aligned}
$$

Similarly, the spatial product rule gives

$$
\nabla\cdot
\left(\phi^*\nabla\phi-\phi\nabla\phi^*\right)
=\phi^*\nabla^2\phi-\phi\nabla^2\phi^*.
$$

The subtraction equation therefore becomes

$$
\frac{1}{c^2}\partial_t
\left(\phi^*\partial_t\phi-\phi\partial_t\phi^*\right)
-
\nabla\cdot
\left(\phi^*\nabla\phi-\phi\nabla\phi^*\right)
=0.
$$

Multiplication by $i\hbar/(2m)$ gives the continuity equation

$$
\frac{\partial \rho_{\mathrm{KG}}}{\partial t}
+\nabla\cdot\mathbf j_{\mathrm{KG}}=0,
$$

where

$$
\rho_{\mathrm{KG}}
=\frac{i\hbar}{2mc^2}
\left(
\phi^*\frac{\partial\phi}{\partial t}
-\phi\frac{\partial\phi^*}{\partial t}
\right),
$$

and

$$
\mathbf j_{\mathrm{KG}}
=-\frac{i\hbar}{2m}
\left(\phi^*\nabla\phi-\phi\nabla\phi^*\right).
$$

For the plane wave used above,

$$
\partial_t\phi=-i\omega\phi,
\qquad
\partial_t\phi^*=i\omega\phi^*.
$$

Substitution gives

$$
\begin{aligned}
\rho_{\mathrm{KG}}
&=\frac{i\hbar}{2mc^2}
\left(-i\omega|A|^2-i\omega|A|^2\right)\\
&=\frac{\hbar\omega}{mc^2}|A|^2
=\frac{E}{mc^2}|A|^2.
\end{aligned}
$$

It is positive on the positive-frequency branch and negative on the negative-frequency branch. Thus it cannot be a probability density for a single particle, because probability must be non-negative everywhere. In relativistic field theory the same current is instead interpreted as a charge current, whose sign may legitimately distinguish particles from antiparticles.

## Merits and limitations

The equation is Lorentz covariant, gives the correct relativistic dispersion relation, and describes free spin-zero particles and scalar fields. Its nonrelativistic positive-frequency limit reduces to the Schrödinger equation after the rapid rest-energy phase is removed.

Its difficulty is specifically the single-particle interpretation. It requires both $\phi$ and $\partial_t\phi$ as initial data, admits positive- and negative-frequency solutions, and has no positive-definite conserved density analogous to $|\psi|^2$. Describing spin zero is not itself a defect—it is the equation’s domain—but it makes the equation unsuitable for an electron. These points motivate a relativistic equation that is first order in time and acts on a multicomponent wavefunction.

[Maxima verification of the relativistic plane-wave relation]({{ '/assets/maxima/msc/sem-ii/unit-3/relativistic-wave-equations.mac' | relative_url }})

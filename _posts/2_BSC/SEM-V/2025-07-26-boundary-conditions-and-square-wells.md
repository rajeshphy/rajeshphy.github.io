---
title: "Boundary Conditions, Rigid-Wall Box, and Square Wells"
date: 2025-07-26 09:00:00 +0530
categories:
  - bsc-v
tags: [boundary-conditions, particle-in-a-box, infinite-square-well, finite-square-well]
permalink: /bsc/sem-v/mj-11/boundary-conditions-square-wells/
---

The stationary one-dimensional Schrödinger equation is

$$
-\frac{\hbar^2}{2m}\frac{d^2\psi}{dx^2}+V(x)\psi=E\psi.
$$

It is a second-order differential equation, so two boundary conditions are needed. Those conditions, together with normalizability, turn an apparently continuous energy parameter into a discrete set for a bound system.

## Continuity at a finite potential step

Integrate the equation across a small interval containing a finite step at $x=x_0$:

$$
-\frac{\hbar^2}{2m}
\left[\psi^{\prime}(x_0+\epsilon)-\psi^{\prime}(x_0-\epsilon)\right]
+\int_{x_0-\epsilon}^{x_0+\epsilon}(V-E)\psi\,dx=0.
$$

If $V$ and $\psi$ are finite, the integral tends to zero as $\epsilon\to0$. Hence

$$
\boxed{\psi^{\prime}(x_0^+)=\psi^{\prime}(x_0^-)}.
$$

The wavefunction itself must also be continuous. A finite jump in $\psi$ would produce a delta function in $\psi^{\prime}$ and a derivative of a delta function in $\psi^{\prime\prime}$, but the equation contains no term able to cancel it for a finite step. Thus

$$
\boxed{\psi(x_0^+)=\psi(x_0^-)}.
$$

At an infinite wall this finite-step argument does not apply. The accessible wavefunction must vanish at the wall, while derivative continuity with the forbidden exterior is not required.

## Free particle in a rigid one-dimensional box

Let

$$
V(x)=
\begin{cases}
0,&0<x<L,\\
\infty,&x\leq0\ \text{or}\ x\geq L.
\end{cases}
$$

Inside the box the particle is free, so

$$
\psi^{\prime\prime}+k^2\psi=0,
\qquad
k^2=\frac{2mE}{\hbar^2}.
$$

The general interior solution is

$$
\psi(x)=A\sin kx+B\cos kx.
$$

The rigid walls impose $\psi(0)=0$ and $\psi(L)=0$. The first condition gives $B=0$. A non-zero state then requires

$$
A\sin kL=0
\quad\Longrightarrow\quad
kL=n\pi,
$$

where $n=1,2,3,\ldots$; $n=0$ would make the wavefunction identically zero. Therefore

$$
\boxed{k_n=\frac{n\pi}{L}},
\qquad
\boxed{E_n=\frac{n^2\pi^2\hbar^2}{2mL^2}}.
$$

The energy has units $\hbar^2/(mL^2)=\mathrm J$. Normalization gives

$$
1=\lvert A\rvert^2\int_0^L\sin^2\!\left(\frac{n\pi x}{L}\right)dx
=\lvert A\rvert^2\frac L2,
$$

so a real phase convention gives

$$
\boxed{
\psi_n(x)=\sqrt{\frac2L}
\sin\!\left(\frac{n\pi x}{L}\right)
},\qquad 0<x<L.
$$

The boundary conditions allow only integer half-wavelengths, $L=n\lambda_n/2$. This is the direct emergence of discrete energy levels from confinement.

## Finite one-dimensional square well

Use a symmetric well of half-width $a$ and depth $V_0>0$:

$$
V(x)=
\begin{cases}
-V_0,&\lvert x\rvert<a,\\
0,&\lvert x\rvert\geq a.
\end{cases}
$$

A bound state must satisfy $-V_0<E<0$. Define positive real wave numbers

$$
k=\frac{\sqrt{2m(E+V_0)}}{\hbar},
\qquad
\kappa=\frac{\sqrt{-2mE}}{\hbar}.
$$

Both have units $\mathrm{m^{-1}}$, and

$$
k^2+\kappa^2=\frac{2mV_0}{\hbar^2}.
$$

Inside the well, $\psi^{\prime\prime}+k^2\psi=0$, so the solutions oscillate. Outside, $\psi^{\prime\prime}-\kappa^2\psi=0$. Normalizability removes the exponentials that grow as $x\to\pm\infty$.

Because $V(x)=V(-x)$, bound eigenfunctions may be chosen even or odd.

### Even states

Choose

$$
\psi_e(x)=
\begin{cases}
A\cos kx,&\lvert x\rvert<a,\\
A\cos(ka)e^{-\kappa(\lvert x\rvert-a)},&\lvert x\rvert\geq a.
\end{cases}
$$

Continuity of $\psi$ at $x=a$ is already built into this expression. Derivative continuity gives

$$
-Ak\sin(ka)=-A\kappa\cos(ka),
$$

and hence

$$
\boxed{k\tan(ka)=\kappa}.
$$

### Odd states

Choose

$$
\psi_o(x)=
\begin{cases}
A\sin kx,&\lvert x\rvert<a,\\
A\,\operatorname{sgn}(x)\sin(ka)e^{-\kappa(\lvert x\rvert-a)},&\lvert x\rvert\geq a.
\end{cases}
$$

At $x=a$, derivative continuity gives

$$
Ak\cos(ka)=-A\kappa\sin(ka),
$$

so

$$
\boxed{-k\cot(ka)=\kappa}.
$$

Introduce dimensionless quantities

$$
z=ka,\qquad
z_0=\frac{a\sqrt{2mV_0}}{\hbar}.
$$

Then $\kappa a=\sqrt{z_0^2-z^2}$, and the allowed bound energies are the isolated roots

$$
\boxed{z\tan z=\sqrt{z_0^2-z^2}}
\quad\text{(even)},
$$

$$
\boxed{-z\cot z=\sqrt{z_0^2-z^2}}
\quad\text{(odd)}.
$$

Once a root $z$ is found,

$$
\boxed{E=-\frac{\hbar^2\kappa^2}{2m}
=-V_0+\frac{\hbar^2z^2}{2ma^2}}.
$$

The matching equations have solutions only at discrete intersections. Unlike the rigid box, a finite well has exponentially decaying tails outside and only finitely many bound levels. In the limit $V_0\to\infty$, $\kappa\to\infty$ and the boundary values approach zero. Measured upward from the well bottom, $E+V_0$, the levels approach the rigid-wall spectrum for the full width $2a$.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-11/unit-iii/square-wells.png' | relative_url }}" alt="Equation-generated infinite and finite square wells with their admissible states" loading="lazy" decoding="async">
</figure>

The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-iii/square-wells.tex' | relative_url }}) generates the figure. Schrödinger-equation and matching residuals are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/square-well-checks.mac' | relative_url }}).

## Solved Problems

### 1. Electron levels and a photon from a rigid nanometre box

An electron is confined to an infinite one-dimensional box of width $L=1.00\ \mathrm{nm}$. Find $E_1$, $E_2$, and the photon wavelength for a transition from $n=2$ to $n=1$.

**Solution.** Energies are measured upward from the zero potential inside the box and are positive:

$$
E_n=\frac{n^2\pi^2\hbar^2}{2m_eL^2}.
$$

Thus

$$
\boxed{E_1=0.3760\ \mathrm{eV}},\qquad
\boxed{E_2=4E_1=1.504\ \mathrm{eV}}.
$$

For downward emission, the photon carries the positive energy difference

$$
E_\gamma=E_2-E_1=3E_1=1.1281\ \mathrm{eV}.
$$

Therefore

$$
\lambda_\gamma=\frac{hc}{E_\gamma}
=\boxed{1.099\times10^3\ \mathrm{nm}}.
$$

The scale $\hbar^2/(mL^2)$ has energy units. A smaller box raises every level as $L^{-2}$ and shortens the transition wavelength. In the limit $L\to\infty$, the spacing tends to zero and the spectrum approaches the continuum of a free particle.

### 2. Ground even state of a finite symmetric well

For a finite well with dimensionless strength $z_0=2.00$, find the lowest even root and express its bound-state energy as a fraction of the depth $V_0$.

**Solution.** An even state obeys

$$
z\tan z=\sqrt{z_0^2-z^2},
$$

with the lowest root in $0<z<\pi/2$. Numerical solution gives

$$
\boxed{z=1.02987}.
$$

The dimensionless exterior decay constant is

$$
\kappa a=\sqrt{z_0^2-z^2}
=\boxed{1.71446}.
$$

Because the potential is $-V_0$ inside and zero outside,

$$
\frac E{V_0}
=-1+\frac{z^2}{z_0^2}
=\boxed{-0.73484}.
$$

The negative sign is essential: a bound state lies below the exterior zero, while $-1<E/V_0<0$ keeps it above the well bottom. All quantities in the matching equation are dimensionless. The positive $\kappa$ selects exponential decay away from either boundary; choosing $-\kappa$ would produce a non-normalizable growing tail. As the depth increases, the exterior decay becomes sharper and the spectrum approaches that of a rigid box of width $2a$.

## Descriptive Questions

1. Why are both $\psi$ and $\psi^{\prime}$ continuous at a finite potential step, and why does the derivative condition change at an infinite wall?
2. Explain how rigid-wall boundary conditions exclude $n=0$ and generate a discrete one-dimensional energy spectrum.
3. How do parity and normalizability reduce the finite-well matching problem to separate even and odd eigenvalue equations?
4. Compare the number, energies, and spatial tails of finite-well bound states with those of an infinite square well.

## Numerical Problems

1. Find the probability that an electron in the ground state of a rigid box lies in its central half, $L/4<x<3L/4$.<br>
   **Final answer:** $\boxed{P=\tfrac12+\tfrac1\pi=0.8183}$.
2. An electron's ground-state energy in an infinite one-dimensional box is $1.00\ \mathrm{eV}$. Find the box width.<br>
   **Final answer:** $\boxed{L=0.6132\ \mathrm{nm}}$.
3. A finite-well tail is proportional to $e^{-\kappa(x-a)}$. Find its amplitude relative to the boundary value one decay length beyond the boundary.<br>
   **Final answer:** $\boxed{\psi(a+\kappa^{-1})/\psi(a)=e^{-1}=0.3679}$.

The original boundary and matching identities are checked in the topic worksheet linked above. Every added level, matching root, and probability value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Finite potential well](https://en.wikipedia.org/wiki/Finite_potential_well)
2. [OpenStax, *University Physics Volume 3*, Section 7.4: The Quantum Particle in a Box](https://openstax.org/books/university-physics-volume-3/pages/7-4-the-quantum-particle-in-a-box)
3. [MIT OpenCourseWare 8.04, lecture notes: Lecture 11 on infinite and finite square wells](https://www.ocw.mit.edu/courses/8-04-quantum-physics-i-spring-2016/pages/lecture-notes/)
4. [The Feynman Lectures on Physics, Vol. III, Chapter 16: Quantized energy levels](https://www.feynmanlectures.caltech.edu/III_16.html)

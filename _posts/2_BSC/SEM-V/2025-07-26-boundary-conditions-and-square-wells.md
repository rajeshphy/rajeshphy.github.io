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
\left[\psi'(x_0+\epsilon)-\psi'(x_0-\epsilon)\right]
+\int_{x_0-\epsilon}^{x_0+\epsilon}(V-E)\psi\,dx=0.
$$

If $V$ and $\psi$ are finite, the integral tends to zero as $\epsilon\to0$. Hence

$$
\boxed{\psi'(x_0^+)=\psi'(x_0^-)}.
$$

The wavefunction itself must also be continuous. A finite jump in $\psi$ would produce a delta function in $\psi'$ and a derivative of a delta function in $\psi''$, but the equation contains no term able to cancel it for a finite step. Thus

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
\psi''+k^2\psi=0,
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

Inside the well, $\psi''+k^2\psi=0$, so the solutions oscillate. Outside, $\psi''-\kappa^2\psi=0$. Normalizability removes the exponentials that grow as $x\to\pm\infty$.

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

![Equation-generated infinite and finite square wells with their admissible states]({{ '/assets/images/bsc/sem-v/mj-11/unit-iii/square-wells.png' | relative_url }})

The [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-11/unit-iii/square-wells.tex' | relative_url }}) generates the figure. Schrödinger-equation and matching residuals are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/square-well-checks.mac' | relative_url }}).

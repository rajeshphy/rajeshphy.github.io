---
title: "One-Dimensional Heat-Flow Equation"
summary: "Separated temperature modes in a finite rod, Fourier coefficients, and exponential decay rates."
date: 2025-06-30 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, heat-equation, separation-of-variables]
permalink: /bsc/sem-ii/one-dimensional-heat-flow/
hidden: true
---

The syllabus asks for the solution, not the derivation, of the one-dimensional heat equation. Take

$$
\boxed{\frac{\partial T}{\partial t}
=\kappa\frac{\partial^2T}{\partial x^2}}
$$

as given, where $[\kappa]=\mathrm{length}^2/\mathrm{time}$.

Consider a rod $0<x<L$ whose ends are held at zero temperature:

$$
T(0,t)=T(L,t)=0,
\qquad
T(x,0)=f(x).
$$

Put $T(x,t)=X(x)G(t)$. Then

$$
XG^{\prime}=\kappa X^{\prime\prime}G.
$$

After division by $\kappa XG$,

$$
\frac{G^{\prime}}{\kappa G}=\frac{X^{\prime\prime}}{X}=-k^2.
$$

Thus

$$
X^{\prime\prime}+k^2X=0,
\qquad
G^{\prime}+\kappa k^2G=0.
$$

The boundary conditions select

$$
X_n=\sin\frac{n\pi x}{L},
\qquad
k_n=\frac{n\pi}{L},
$$

and the time equation gives

$$
G_n(t)=\exp\!\left[-\kappa
\left(\frac{n\pi}{L}\right)^2t\right].
$$

Therefore

$$
\boxed{
T(x,t)=\sum_{n=1}^{\infty}B_n
\sin\frac{n\pi x}{L}
e^{-\kappa(n\pi/L)^2t}}.
$$

At $t=0$ this must equal $f(x)$. Multiply by $\sin(m\pi x/L)$ and integrate. Orthogonality gives

$$
\boxed{B_n=\frac2L\int_0^L f(x)
\sin\frac{n\pi x}{L}dx}.
$$

As an exact two-mode example, take

$$
f(x)=T_0\left(\sin\frac{\pi x}{L}
+\frac12\sin\frac{3\pi x}{L}\right).
$$

Only $B_1=T_0$ and $B_3=T_0/2$ are nonzero, so

$$
\boxed{
\frac{T(x,t)}{T_0}
=\sin\frac{\pi x}{L}e^{-\kappa\pi^2t/L^2}
+\frac12\sin\frac{3\pi x}{L}e^{-9\kappa\pi^2t/L^2}}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-2/heat-flow-decay.png' | relative_url }}" alt="Equation-generated temperature profiles in a rod at increasing dimensionless times" loading="lazy">
  </div>
  <figcaption>The plotted two-mode solution is shown at increasing \(\tau=\kappa\pi^2t/L^2\). The third spatial mode decays as \(e^{-9\tau}\), nine times faster in the exponent than the first.</figcaption>
</figure>

If the endpoints are held at unequal constants $T_a$ and $T_b$, first remove the steady profile

$$
S(x)=T_a+\frac{T_b-T_a}{L}x.
$$

Because $S^{\prime\prime}=0$, the difference $\theta=T-S$ satisfies the same heat equation with $\theta(0,t)=\theta(L,t)=0$. Its initial profile is $f(x)-S(x)$, so

$$
\boxed{
T(x,t)=S(x)+\sum_{n=1}^{\infty}C_n
\sin\frac{n\pi x}{L}
e^{-\kappa(n\pi/L)^2t}},
$$

where

$$
C_n=\frac2L\int_0^L[f(x)-S(x)]
\sin\frac{n\pi x}{L}\,dx.
$$

For one mode, the decay time is

$$
\tau_n=\frac{1}{\kappa k_n^2}
=\frac{L^2}{\kappa n^2\pi^2}.
$$

Its units are time, and the $n^{-2}$ dependence shows why fine spatial structure disappears first. The heat-equation and boundary residuals are zero in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. A rod initially at uniform excess temperature

A rod has both ends held at zero excess temperature and

$$
T(x,0)=T_0,
\qquad 0<x<L.
$$

The sine coefficients are

$$
\begin{aligned}
B_n
&=\frac{2T_0}{L}\int_0^L\sin\frac{n\pi x}{L}\,dx\\
&=\frac{2T_0}{n\pi}\left[1-(-1)^n\right].
\end{aligned}
$$

Thus only odd modes occur:

$$
\boxed{
T(x,t)=\frac{4T_0}{\pi}
\sum_{\substack{n=1\\ n\ \mathrm{odd}}}^{\infty}
\frac1n\sin\frac{n\pi x}{L}
e^{-\kappa n^2\pi^2t/L^2}}.
$$

Each term satisfies the fixed-end conditions and the heat equation. For every $t>0$ the exponential factors make the series convergent, and $T\to0$ as $t\to\infty$. The initial value is understood on the open interval; at the endpoints the imposed temperature changes at $t=0$.

### 2. Unequal endpoint temperatures with one transient mode

A $1.00\,\mathrm{m}$ rod has $T(0,t)=20^\circ\mathrm{C}$, $T(1,t)=80^\circ\mathrm{C}$ and diffusivity $\kappa=0.010\,\mathrm{m^2\,h^{-1}}$. Initially,

$$
T(x,0)=20+60x+10\sin(\pi x)
\quad (^\circ\mathrm{C}).
$$

The steady profile is $S=20+60x$. Hence

$$
\theta(x,0)=T(x,0)-S(x)=10\sin(\pi x),
$$

so only the first transient mode is present:

$$
\boxed{
T(x,t)=20+60x
+10\sin(\pi x)e^{-0.010\pi^2t}}.
$$

At the midpoint after $2.00\,\mathrm{h}$,

$$
\boxed{
T(0.5,2)=50+10e^{-0.02\pi^2}
=58.2087^\circ\mathrm{C}}.
$$

The transient is positive and decays toward the steady midpoint temperature $50^\circ\mathrm{C}$. The exponent is dimensionless because $\kappa t/L^2$ is dimensionless.

## Descriptive Questions

1. Starting from the given one-dimensional heat equation, derive the separated fixed-end temperature modes.
2. Derive the Fourier sine coefficients from an arbitrary initial temperature profile.
3. Explain why the decay time is proportional to $L^2$ and inversely proportional to $\kappa n^2$.
4. Show how subtracting a steady linear profile converts unequal fixed-end temperatures into homogeneous boundary conditions.

## Numerical Problems

1. A rod has $L=0.50\,\mathrm{m}$ and $\kappa=1.2\times10^{-5}\,\mathrm{m^2\,s^{-1}}$. Find the half-life of its first mode.
   **Final answer:** $t_{1/2}=L^2\ln2/(\kappa\pi^2)=1463.14\,\mathrm{s}=24.3856\,\mathrm{min}$.
2. Two initial modes $n=1$ and $n=3$ have equal amplitudes. For $L=1.00\,\mathrm{m}$, $\kappa=0.010\,\mathrm{m^2\,h^{-1}}$, find their amplitude ratio $A_3/A_1$ after $2.00\,\mathrm{h}$.
   **Final answer:** $A_3/A_1=e^{-8\kappa\pi^2t/L^2}=0.206153$.
3. For $f(x)=T_0x(L-x)/L^2$ with $T_0=100\,\mathrm{K}$, find the first sine coefficient.
   **Final answer:** $B_1=8T_0/\pi^3=25.8012\,\mathrm{K}$.
4. For $L=0.40\,\mathrm{m}$ and $\kappa=2.0\times10^{-5}\,\mathrm{m^2\,s^{-1}}$, find the time for the $n=2$ amplitude to fall to $1\%$ of its initial value.
   **Final answer:** $t=L^2\ln100/(4\kappa\pi^2)=933.203\,\mathrm{s}=15.5534\,\mathrm{min}$.

The Fourier coefficients, transient solution, decay times, and numerical values are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Heat equation — Wikipedia](https://en.wikipedia.org/wiki/Heat_equation)
2. Richard Haberman, *Applied Partial Differential Equations with Fourier Series and Boundary Value Problems*, 5th ed., Chapters 1–2, “Heat Equation” and “Method of Separation of Variables,” Pearson.
3. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., Chapter 12, “Partial Differential Equations,” Wiley.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 13, “Partial Differential Equations,” Wiley.

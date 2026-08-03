---
title: "Vibrational Modes of a Stretched String and Rectangular Membrane"
summary: "Separated standing-wave solutions and normal-mode frequencies for fixed string and rectangular membrane boundaries."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, wave-equation, normal-modes]
permalink: /bsc/sem-ii/stretched-string-rectangular-membrane/
hidden: true
---

The syllabus asks for solutions of the wave equation, not its derivation. We therefore take

$$
\boxed{u_{tt}=c^2u_{xx}}
$$

as given for a string, where $[c]=\mathrm{length}/\mathrm{time}$.

## String fixed at both ends

Let $0<x<L$ and impose

$$
u(0,t)=u(L,t)=0.
$$

Set $u(x,t)=X(x)T(t)$. Then

$$
XT^{\prime\prime}=c^2X^{\prime\prime}T,
\qquad
\frac{T^{\prime\prime}}{c^2T}=\frac{X^{\prime\prime}}{X}=-k^2.
$$

The separated equations are

$$
X^{\prime\prime}+k^2X=0,
\qquad
T^{\prime\prime}+c^2k^2T=0.
$$

The spatial solution is $X=A\cos kx+B\sin kx$. The condition $X(0)=0$ gives $A=0$, and $X(L)=0$ gives

$$
\sin(kL)=0,
\qquad
k_n=\frac{n\pi}{L}.
$$

Thus

$$
\boxed{
u(x,t)=\sum_{n=1}^{\infty}
\left[A_n\cos(\omega_nt)+B_n\sin(\omega_nt)\right]
\sin\frac{n\pi x}{L}},
$$

with

$$
\boxed{\omega_n=ck_n=\frac{n\pi c}{L}},
\qquad
f_n=\frac{\omega_n}{2\pi}=\frac{nc}{2L}.
$$

If $u(x,0)=f(x)$ and $u_t(x,0)=g(x)$, sine-series orthogonality gives

$$
\boxed{
A_n=\frac2L\int_0^L f(x)\sin\frac{n\pi x}{L}\,dx,
\qquad
B_n=\frac{2}{\omega_nL}\int_0^L g(x)
\sin\frac{n\pi x}{L}\,dx}.
$$

The factor $1/\omega_n$ in $B_n$ is required because differentiating the time factor contributes $\omega_n$.

## Rectangular membrane

For $0<x<a$, $0<y<b$, take the given two-dimensional wave equation

$$
u_{tt}=c^2(u_{xx}+u_{yy})
$$

with all four edges fixed. Put $u=XYT$. Division by $c^2XYT$ gives

$$
\frac{T^{\prime\prime}}{c^2T}=\frac{X^{\prime\prime}}{X}+\frac{Y^{\prime\prime}}{Y}.
$$

Choose

$$
\frac{X^{\prime\prime}}{X}=-k_x^2,
\qquad
\frac{Y^{\prime\prime}}{Y}=-k_y^2.
$$

Fixed edges require

$$
X_m=\sin\frac{m\pi x}{a},
\qquad
Y_n=\sin\frac{n\pi y}{b}.
$$

The time equation is

$$
T^{\prime\prime}+\omega_{mn}^2T=0,
$$

where

$$
\boxed{
\omega_{mn}=c\pi
\sqrt{\left(\frac ma\right)^2+\left(\frac nb\right)^2}}.
$$

One normal mode is therefore

$$
\boxed{
u_{mn}=A_{mn}
\sin\frac{m\pi x}{a}
\sin\frac{n\pi y}{b}
\cos(\omega_{mn}t+\delta_{mn})}.
$$

For prescribed displacement $F(x,y)$ and zero initial velocity, the cosine-mode coefficient is

$$
\boxed{
A_{mn}=\frac{4}{ab}
\int_0^a\int_0^b F(x,y)
\sin\frac{m\pi x}{a}
\sin\frac{n\pi y}{b}\,dy\,dx}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-2/string-rectangular-modes.png' | relative_url }}" alt="Equation-generated fixed-string modes and nodal lines of a rectangular membrane mode" loading="lazy">
  </div>
  <figcaption>The string curves are \(\sin(n\pi x/L)\). The membrane panel shows the nodal lines of \(\sin(2\pi x/a)\sin(3\pi y/b)\); the boundary itself is also nodal.</figcaption>
</figure>

The dimensions are consistent: each term under the square root has dimension $\mathrm{length}^{-2}$, so $[\omega_{mn}]=\mathrm{time}^{-1}$.

The separated string and membrane modes are substituted into their given wave equations in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. A string released from a triangular displacement

A string of length $L$ is fixed at both ends, displaced to height $h$ at its midpoint in two straight segments, and released from rest:

$$
f(x)=
\begin{cases}
2hx/L, & 0\le x\le L/2,\\
2h(1-x/L), & L/2\le x\le L,
\end{cases}
\qquad g(x)=0.
$$

The displacement is symmetric about $L/2$. Since

$$
\sin\frac{n\pi(L-x)}{L}
=(-1)^{n+1}\sin\frac{n\pi x}{L},
$$

the two halves cancel for even $n$ and reinforce for odd $n$. For odd $n$, with $k_n=n\pi/L$,

$$
\begin{aligned}
A_n
&=\frac4L\int_0^{L/2}\frac{2hx}{L}\sin(k_nx)\,dx\\
&=\frac{8h}{L^2}
\left[-\frac{x\cos(k_nx)}{k_n}
+\frac{\sin(k_nx)}{k_n^2}\right]_0^{L/2}\\
&=\frac{8h}{n^2\pi^2}\sin\frac{n\pi}{2}.
\end{aligned}
$$

The same formula is zero for even $n$, and release from rest gives $B_n=0$. Thus

$$
\boxed{
u(x,t)=\frac{8h}{\pi^2}
\sum_{\substack{n=1\\ n\ \mathrm{odd}}}^{\infty}
\frac{\sin(n\pi/2)}{n^2}
\sin\frac{n\pi x}{L}
\cos\frac{n\pi ct}{L}}.
$$

At $t=0$ the series reconstructs the triangular profile, and $u_t(x,0)=0$. Every coefficient has units of length, matching the displacement.

### 2. Frequency and nodes of a square membrane mode

A square membrane has side $a=b=0.60\,\mathrm{m}$ and wave speed $c=120\,\mathrm{m\,s^{-1}}$. Find the frequency and nodal set of the $(m,n)=(1,2)$ mode.

The cyclic frequency is

$$
\begin{aligned}
f_{12}
&=\frac{\omega_{12}}{2\pi}\\
&=\frac c2
\sqrt{\left(\frac1a\right)^2+\left(\frac2b\right)^2}\\
&=100\sqrt5\,\mathrm{Hz}
=223.607\,\mathrm{Hz}.
\end{aligned}
$$

The factor $\sin(\pi x/a)$ has no interior zero, while $\sin(2\pi y/b)$ vanishes at $y=b/2=0.30\,\mathrm{m}$. Hence the mode has one interior horizontal nodal line. Because the membrane is square, the $(2,1)$ mode has the same frequency; rotation through $90^\circ$ interchanges the two patterns. The units follow from $c/a$, which is inverse time.

## Descriptive Questions

1. Starting from the given string wave equation, derive the fixed-end normal modes and explain the exclusion of $n=0$.
2. Derive both string Fourier-coefficient formulas from prescribed initial displacement and velocity.
3. Explain how fixed rectangular boundaries quantize two independent wave numbers.
4. Distinguish degeneracy of frequency from equality of mode shapes for a square membrane.

## Numerical Problems

1. A fixed string has $L=0.75\,\mathrm{m}$ and $c=180\,\mathrm{m\,s^{-1}}$. Find its fundamental frequency.
   **Final answer:** $f_1=c/(2L)=120\,\mathrm{Hz}$.
2. For the same string, find the fifth-harmonic frequency and its interior node positions.
   **Final answer:** $f_5=600\,\mathrm{Hz}$; $x=0.15,0.30,0.45,0.60\,\mathrm{m}$.
3. A string with $L=1.00\,\mathrm{m}$ and $c=100\,\mathrm{m\,s^{-1}}$ has $u(x,0)=0$ and $u_t(x,0)=0.20\sin(2\pi x/L)\,\mathrm{m\,s^{-1}}$. Find the displacement coefficient of that mode.
   **Final answer:** $B_2=0.20/(200\pi)=3.18310\times10^{-4}\,\mathrm{m}$.
4. A rectangular membrane has $a=0.80\,\mathrm{m}$, $b=0.60\,\mathrm{m}$, and $c=120\,\mathrm{m\,s^{-1}}$. Find $f_{23}$ and the numbers of interior vertical and horizontal nodal lines.
   **Final answer:** $f_{23}=335.410\,\mathrm{Hz}$; one vertical and two horizontal interior nodal lines.

The Fourier coefficients, frequencies, boundary conditions, and wave-equation residuals are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [String vibration — Wikipedia](https://en.wikipedia.org/wiki/Vibrating_string)
2. Richard Haberman, *Applied Partial Differential Equations with Fourier Series and Boundary Value Problems*, 5th ed., chapter “The Wave Equation: Vibrating Strings and Membranes,” Pearson.
3. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., Chapter 12, “Partial Differential Equations,” Wiley.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 13, “Partial Differential Equations,” Wiley.

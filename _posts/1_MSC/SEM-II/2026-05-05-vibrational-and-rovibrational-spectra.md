---
title: "Vibrational and Rovibrational Spectra of Diatomic Molecules"
summary: "Quantization of bond vibration and the origin of the P and R branches in a vibration–rotation band."
date: 2026-05-05 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - vibrational-spectra
  - rovibrational-spectra
  - harmonic-oscillator
permalink: /msc/sem-ii/molecular-spectra/vibrational-and-rovibrational-spectra/
hidden: true
---

After the centre-of-mass motion of a diatomic molecule has been removed, write
the three-dimensional radial wavefunction as $R(r)=u(r)/r$. For $J=0$, the
reduced radial function $u(r)$ on $r>0$ obeys

$$
\widehat H_{\mathrm{vib}}
=-\frac{\hbar^2}{2\mu_{\mathrm r}}\frac{d^2}{dr^2}+V(r),
$$

where

$$
\mu_{\mathrm r}=\frac{m_1m_2}{m_1+m_2}
$$

is the nuclear reduced mass.

The stable equilibrium separation $r_e$ satisfies

$$
\left.\frac{dV}{dr}\right|_{r_e}=0,
\qquad
\left.\frac{d^2V}{dr^2}\right|_{r_e}=k>0.
$$

Put $x=r-r_e$. A Taylor expansion about equilibrium gives

$$
V(r)
=V(r_e)+\frac12kx^2+\frac16V^{(3)}(r_e)x^3+\cdots.
$$

Choosing the zero of energy at $V(r_e)$ and retaining the first nonconstant
term produces the harmonic approximation

$$
\widehat H_{\mathrm{vib}}
=-\frac{\hbar^2}{2\mu_{\mathrm r}}\frac{d^2}{dx^2}+\frac12kx^2.
$$

Exactly, $x>-r_e$ and the reduced radial function satisfies $u(0)=0$. For
low vibrational states localized tightly around $r_e$, their amplitude is
negligible near $r=0$, so the coordinate may be extended to
$-\infty<x<\infty$ and the standard one-dimensional oscillator solution may
be used. In the following equations,

$$
\psi(x)\equiv u(r_e+x).
$$

## Vibrational eigenvalues

Define

$$
\omega=\sqrt{\frac{k}{\mu_{\mathrm r}}},
\qquad
\xi=\sqrt{\frac{\mu_{\mathrm r}\omega}{\hbar}}\,x,
\qquad
\epsilon=\frac{E}{\hbar\omega}.
$$

Since

$$
\frac{d}{dx}
=\sqrt{\frac{\mu_{\mathrm r}\omega}{\hbar}}\frac{d}{d\xi},
$$

the Schrödinger equation becomes

$$
\frac{d^2\psi}{d\xi^2}+(2\epsilon-\xi^2)\psi=0.
$$

For large $|\xi|$, normalizability requires
$\psi\sim e^{-\xi^2/2}$. Write

$$
\psi(\xi)=e^{-\xi^2/2}H(\xi).
$$

Direct differentiation gives

$$
\psi''
=e^{-\xi^2/2}
\left[H''-2\xi H'+(\xi^2-1)H\right].
$$

Substitution cancels the $\xi^2H$ terms:

$$
H''-2\xi H'+(2\epsilon-1)H=0.
$$

Let $H=\sum_{n=0}^{\infty}a_n\xi^n$. Equating the coefficient of $\xi^n$
gives

$$
a_{n+2}
=\frac{2n+1-2\epsilon}{(n+2)(n+1)}a_n.
$$

If the series never terminates, it ultimately grows as $e^{\xi^2}$ and makes
$\psi$ non-normalizable. It must stop at some nonnegative integer $v$, so

$$
2v+1-2\epsilon=0.
$$

Therefore

$$
\boxed{E_v=\hbar\omega\left(v+\frac12\right)},
\qquad v=0,1,2,\ldots.
$$

In wavenumber units,

$$
G(v)=\frac{E_v}{hc}
=\widetilde\nu_e\left(v+\frac12\right),
\qquad
\widetilde\nu_e=\frac{\omega}{2\pi c}
=\frac{1}{2\pi c}\sqrt{\frac{k}{\mu_{\mathrm r}}}.
$$

The molecule has a nonzero zero-point energy
$E_0=\hbar\omega/2$ because a state with both exactly fixed position and zero
momentum would violate the uncertainty principle.

## Vibrational transition rule

Near equilibrium, expand the molecular dipole moment:

$$
\mu(x)=\mu_e+
\left(\frac{d\mu}{dx}\right)_e x+\cdots.
$$

The constant term has the matrix element
$\mu_e\langle v'|v\rangle$ and therefore cannot connect different
vibrational states. Introduce the oscillator operators

$$
x=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega}}\,(a+a^\dagger),
$$

with

$$
a|v\rangle=\sqrt v\,|v-1\rangle,
\qquad
a^\dagger|v\rangle=\sqrt{v+1}\,|v+1\rangle.
$$

It follows step by step that

$$
\begin{aligned}
\langle v'|x|v\rangle
=\sqrt{\frac{\hbar}{2\mu_{\mathrm r}\omega}}
\left[
\sqrt v\,\delta_{v',v-1}
 +\sqrt{v+1}\,\delta_{v',v+1}
\right].
\end{aligned}
$$

Thus the harmonic electric-dipole rule is

$$
\boxed{\Delta v=\pm1}
$$

provided $(d\mu/dx)_e\ne0$. In absorption from the ground vibrational state,
the fundamental transition is $v=0\rightarrow1$ at
$\widetilde\nu_e$.

## Anharmonic vibration

A real molecular potential has a finite dissociation energy and is not
parabolic far from equilibrium. The Morse potential,

$$
V(x)=D_e\left(1-e^{-ax}\right)^2,
$$

has the correct minimum $V(0)=0$ and approaches $D_e$ as $x\rightarrow\infty$.
Define

$$
\lambda=\frac{\sqrt{2\mu_{\mathrm r}D_e}}{a\hbar},
\qquad
y=2\lambda e^{-ax}.
$$

Because

$$
\frac{d}{dx}=-ay\frac{d}{dy},
\qquad
\frac{d^2}{dx^2}
=a^2\left(y^2\frac{d^2}{dy^2}+y\frac{d}{dy}\right),
$$

the Schrödinger equation becomes

$$
y^2\psi_{yy}+y\psi_y
+\left(\varepsilon+\lambda y-\frac{y^2}{4}\right)\psi=0,
\qquad
\varepsilon=\frac{2\mu_{\mathrm r}(E-D_e)}{a^2\hbar^2}.
$$

For a bound state $E<D_e$, put $s=\sqrt{-\varepsilon}$ and
$\psi=y^s e^{-y/2}L(y)$. Substitution gives

$$
yL''+(2s+1-y)L'
+\left(\lambda-s-\frac12\right)L=0.
$$

Normalizability requires the associated-Laguerre series to terminate at
degree $v$. Hence

$$
\lambda-s-\frac12=v,
\qquad
s=\lambda-v-\frac12.
$$

A bound state also requires $s>0$, so

$$
v<\lambda-\frac12.
$$

Unlike the harmonic oscillator, the Morse well therefore has only finitely
many bound vibrational levels before dissociation.

Using $\omega_e=a\sqrt{2D_e/\mu_{\mathrm r}}$, expansion of
$E=D_e-a^2\hbar^2s^2/(2\mu_{\mathrm r})$ gives

$$
E_v
=\hbar\omega_e\left(v+\frac12\right)
-\frac{\hbar^2\omega_e^2}{4D_e}
\left(v+\frac12\right)^2.
$$

Therefore, in wavenumber units,

$$
\boxed{
G(v)=\widetilde\nu_e\left(v+\frac12\right)
-\widetilde\nu_ex_e\left(v+\frac12\right)^2,
}
$$

where $x_e=\hbar\omega_e/(4D_e)$. The adjacent spacing is

$$
\begin{aligned}
G(v+1)-G(v)
&=\widetilde\nu_e
-\widetilde\nu_ex_e\left[(v+\tfrac32)^2-(v+\tfrac12)^2\right]\\
&=\widetilde\nu_e-2\widetilde\nu_ex_e(v+1).
\end{aligned}
$$

It decreases with $v$, and the zero-point term is

$$
G(0)=\frac{\widetilde\nu_e}{2}
-\frac{\widetilde\nu_ex_e}{4}.
$$

Weak overtones may acquire intensity because anharmonic eigenfunctions mix
harmonic-oscillator basis states and because higher derivatives of
$\mu(x)$ contribute. Anharmonicity does not make every $\Delta v$ transition
automatically allowed.

## Simultaneous vibration and rotation

The nuclear energy contains both motions. To leading order,

$$
\frac{E(v,J)}{hc}
=G(v)+F_v(J)
=\widetilde\nu_e\left(v+\frac12\right)+B_vJ(J+1),
$$

where the rotational constant depends weakly on the vibrational state because

$$
B_v=\frac{h}{8\pi^2c\mu_{\mathrm r}}
\left\langle\frac1{r^2}\right\rangle_v.
$$

For a fundamental vibration–rotation absorption,

$$
v''=0\longrightarrow v'=1.
$$

The electric-dipole rotational rule is $\Delta J=\pm1$. Therefore the spectrum
separates into

$$
\begin{array}{ll}
P\text{ branch}:&J'=J''-1,\\[2pt]
R\text{ branch}:&J'=J''+1.
\end{array}
$$

There is no $Q$ branch with $\Delta J=0$ for an ordinary
$\Sigma\leftrightarrow\Sigma$ electric-dipole band of a diatomic molecule.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/rovibrational-branches.png' | relative_url }}" alt="Vibration-rotation transitions between two vibrational manifolds, showing the delta J minus one P branch and delta J plus one R branch, together with their spectral lines around an absent Q branch" loading="lazy">
  <figcaption>The \(P\) branch lies below the band origin and the \(R\) branch lies above it. The central \(Q\)-branch line is absent for a \(\Sigma\leftrightarrow\Sigma\) band.</figcaption>
</figure>

Let

$$
\widetilde\nu_0=G(1)-G(0)
$$

be the vibrational band origin. A line beginning at the lower rotational
quantum number $J=J''$ has

$$
\widetilde\nu
=\widetilde\nu_0+B'J'(J'+1)-B''J(J+1).
$$

For the $R$ branch, $J'=J+1$, so

$$
\begin{aligned}
\widetilde\nu_R(J)
&=\widetilde\nu_0+B'(J+1)(J+2)-B''J(J+1)\\
&=\widetilde\nu_0+(B'+B'')(J+1)
 +(B'-B'')(J+1)^2.
\end{aligned}
$$

For the $P$ branch, $J'=J-1$, so

$$
\begin{aligned}
\widetilde\nu_P(J)
&=\widetilde\nu_0+B'(J-1)J-B''J(J+1)\\
&=\widetilde\nu_0-(B'+B'')J+(B'-B'')J^2.
\end{aligned}
$$

If bond-length changes are neglected, $B'=B''=B$. These expressions reduce to

$$
\boxed{
\widetilde\nu_R(J)=\widetilde\nu_0+2B(J+1),
\qquad
\widetilde\nu_P(J)=\widetilde\nu_0-2BJ.
}
$$

Thus the simplest band consists of two line combs separated by a central gap
of approximately $4B$, with adjacent lines separated by approximately $2B$.

The reduced-mass separation, rigid and distorted rotational lines, Morse
spacing, and complete $P/R$ branch algebra are checked in the
[Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-2/rotational-vibrational-spectrum.mac' | relative_url }}).

---
title: "I: Magnetic oscillator stability and rotated-coordinate reduction"
description: "Derives the magnetic oscillator from minimal coupling, separates coordinate rotation from true phase-space dynamics, and establishes the confinement conditions."
date: 2026-06-04 09:00:00 +0530
categories: research
tags:
  - magnetic oscillator
  - minimal coupling
  - angular momentum
  - stability
  - quantum quench
permalink: "/magnetic-oscillator-stability-reduction/"
---

This chapter develops a two-dimensional charged oscillator from the basic
minimal-coupling rule. No prior magnetic-oscillator calculation is assumed.
The central distinction is that a rotation can remove the $xy$ term from the
potential, but it does not remove the magnetic angular-momentum coupling.
Keeping those two operations separate is necessary for correct stability,
state-preparation, and time-evolution calculations.

## 1. Physical starting point

Consider a particle of mass $M$ and electric charge $q_{\mathrm e}$ moving in the
$xy$ plane. Its position and canonical momentum operators are

$$
\boldsymbol r=(x,y)^{\mathsf T},
\qquad
\boldsymbol p=(p_x,p_y)^{\mathsf T},
$$

with

$$
[x,p_x]=[y,p_y]=\mathrm i\hbar,
\qquad
[x,y]=[p_x,p_y]=[x,p_y]=[y,p_x]=0.
$$

A uniform magnetic field points perpendicular to the plane,
$\boldsymbol B=B\hat{\boldsymbol z}$. A vector potential is not unique, but a
convenient symmetric-gauge choice is

$$
\boldsymbol A(x,y)=\frac{B}{2}(-y,x,0),
\qquad
\boldsymbol\nabla\times\boldsymbol A=B\hat{\boldsymbol z}.
$$

Minimal coupling replaces mechanical momentum by

$$
\boldsymbol p_{\mathrm{mech}}
=\boldsymbol p-\frac{q_{\mathrm e}}{c}\boldsymbol A.
$$

The bare trap is allowed to be anisotropic and to have an $xy$ coupling:

$$
V_0(x,y)
=\frac{M}{2}
\left(\omega_x^2x^2+\omega_y^2y^2-2gxy\right).
$$

Here $\omega_x$ and $\omega_y$ are trap-frequency parameters, while $g$ has
units of frequency squared. The starting Hamiltonian is therefore

$$
H_B
=\frac{1}{2M}
\left(\boldsymbol p-\frac{q_{\mathrm e}}{c}\boldsymbol A\right)^2
+V_0.
$$

This formula is already gauge invariant when states and canonical momenta
are transformed consistently. The symmetric gauge is chosen only because it
makes rotational structure visible.

## 2. Units and the signed magnetic scale

Set

$$
\hbar=2M=1.
$$

Thus $\hbar=1$, $M=1/2$, $p_j=-\mathrm i\,\partial_j$, and energy has the
same dimension as frequency. Define the **signed half-cyclotron frequency**

$$
\omega_c=\frac{q_{\mathrm e}B}{2Mc}.
$$

The sign matters. Reversing either the charge or the magnetic field sends
$\omega_c\mapsto-\omega_c$. Terms proportional to $\omega_c^2$ are
unchanged, but the direction of angular circulation reverses.

With these conventions,

$$
\frac{q_{\mathrm e}}{c}\boldsymbol A
=\left(-\frac{\omega_c}{2}y,\frac{\omega_c}{2}x\right),
$$

so

$$
\begin{aligned}
H_B={}&
\left(p_x+\frac{\omega_c}{2}y\right)^2
+\left(p_y-\frac{\omega_c}{2}x\right)^2\\
&+\frac{\omega_x^2x^2}{4}
+\frac{\omega_y^2y^2}{4}
-\frac{g}{2}xy.
\end{aligned}
$$

### Dimensional check

In these units, $q$ has scale $\text{frequency}^{-1/2}$ and $p$ has scale
$\text{frequency}^{1/2}$. Consequently,

$$
p^2,\quad \omega^2q^2,\quad gxy,\quad
\omega_c(qp)
$$

all have the dimension of energy. This quick check catches many missing
factors of $\omega_c$ or $1/2$.

## 3. Expanding the kinetic energy without guessing the sign

Because $[y,p_x]=[x,p_y]=0$, no ordering correction appears:

$$
\left(p_x+\frac{\omega_c}{2}y\right)^2
=p_x^2+\omega_cyp_x+\frac{\omega_c^2}{4}y^2,
$$

and

$$
\left(p_y-\frac{\omega_c}{2}x\right)^2
=p_y^2-\omega_cxp_y+\frac{\omega_c^2}{4}x^2.
$$

Introduce the canonical angular momentum

$$
L_z=xp_y-yp_x.
$$

The two linear terms combine as

$$
\omega_cyp_x-\omega_cxp_y=-\omega_cL_z.
$$

Hence

$$
\boxed{
H_B=p_x^2+p_y^2
+\frac{\omega_x^2+\omega_c^2}{4}x^2
+\frac{\omega_y^2+\omega_c^2}{4}y^2
-\frac{g}{2}xy-\omega_cL_z.
}
$$

The magnetic field has produced two different structures:

- the **diamagnetic term**, proportional to $\omega_c^2(x^2+y^2)$; and
- the **chiral term**, $-\omega_cL_z$, which is sensitive to the sign of
  $q_{\mathrm e}B$.

Replacing $\omega_c$ by $$\lvert\omega_c\rvert$$ everywhere would therefore erase real
dynamical information.

## 4. Diagonalizing the coordinate quadratic form

Separate the coordinate part from the momentum-dependent part:

$$
H_B=\boldsymbol p^{\mathsf T}\boldsymbol p
+\frac14\boldsymbol r^{\mathsf T}K\boldsymbol r
-\omega_cL_z,
$$

where

$$
K=
\begin{pmatrix}
\omega_x^2+\omega_c^2 & -g\\
-g & \omega_y^2+\omega_c^2
\end{pmatrix}.
$$

Since $K$ is real and symmetric, an orthogonal rotation diagonalizes it.
Define

$$
\Delta=
\sqrt{(\omega_x^2-\omega_y^2)^2+4g^2}.
$$

For $\Delta>0$, choose the angle unambiguously through

$$
2\theta=
\operatorname{atan2}\!\left(-2g,\omega_x^2-\omega_y^2\right).
$$

Equivalently,

$$
\cos(2\theta)=\frac{\omega_x^2-\omega_y^2}{\Delta},
\qquad
\sin(2\theta)=-\frac{2g}{\Delta}.
$$

Using `atan2` rather than a one-argument arctangent prevents a quadrant error
and keeps the $+$ and $-$ eigenvalue labels consistent. If $\Delta=0$, then
$g=0$ and $\omega_x^2=\omega_y^2$; every rotation is equally valid.

Let

$$
R(\theta)=
\begin{pmatrix}
\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta
\end{pmatrix},
$$

and rotate coordinates **and momenta by the same matrix**:

$$
\begin{pmatrix}x\\y\end{pmatrix}
=R(\theta)\begin{pmatrix}q_+\\q_-\end{pmatrix},
\qquad
\begin{pmatrix}p_x\\p_y\end{pmatrix}
=R(\theta)\begin{pmatrix}p_+\\p_-\end{pmatrix}.
$$

Because $R^{\mathsf T}R=I$,

$$
[q_\alpha,p_\beta]=\mathrm i\delta_{\alpha\beta}.
$$

The transformation is therefore canonical, not merely a change of labels.
Direct multiplication gives

$$
R^{\mathsf T}KR
=\operatorname{diag}(\Omega_+^2,\Omega_-^2),
$$

with the ordered eigenvalues

$$
\boxed{
\Omega_\pm^2
=\frac{\omega_x^2+\omega_y^2+2\omega_c^2}{2}
\pm\frac{\Delta}{2}.
}
$$

The same rotation leaves the oriented area form invariant, so

$$
L_z=q_+p_- - q_-p_+.
$$

The Hamiltonian becomes

$$
\boxed{
H_B=p_+^2+p_-^2
+\frac{\Omega_+^2q_+^2}{4}
+\frac{\Omega_-^2q_-^2}{4}
-\omega_c(q_+p_- - q_-p_+).
}
$$

The $q_+q_-$ term is gone, but the two axes remain dynamically coupled.

## 5. Coordinate scales are not dynamical normal-mode frequencies

If $\omega_c=0$, the last term vanishes and $\Omega_\pm$ are ordinary
oscillator frequencies. If $\omega_c\ne0$, calling them the normal-mode
frequencies is incorrect: they diagonalize only $K$, not the complete
quadratic form in $(q_+,q_-,p_+,p_-)$.

Hamilton's equations, which agree with the Heisenberg equations for this
quadratic system, are

$$
\begin{aligned}
\dot q_+&=2p_+ +\omega_cq_-,
&
\dot q_-&=2p_- -\omega_cq_+,\\
\dot p_+&=-\frac{\Omega_+^2}{2}q_+ +\omega_cp_-,
&
\dot p_-&=-\frac{\Omega_-^2}{2}q_- -\omega_cp_+.
\end{aligned}
$$

With

$$
J=
\begin{pmatrix}0&-1\\1&0\end{pmatrix},
\qquad
D=\operatorname{diag}(\Omega_+^2,\Omega_-^2),
$$

eliminating the momenta gives

$$
\ddot{\boldsymbol q}
+2\omega_cJ\dot{\boldsymbol q}
+(D-\omega_c^2I)\boldsymbol q=0.
$$

Try $\boldsymbol q(t)=\boldsymbol u e^{\mathrm i\nu t}$. A nonzero
$\boldsymbol u$ exists only if

$$
\left[
(\Omega_+^2-\omega_c^2)-\nu^2
\right]
\left[
(\Omega_-^2-\omega_c^2)-\nu^2
\right]
-4\omega_c^2\nu^2=0.
$$

Define

$$
S=\Omega_+^2+\Omega_-^2+2\omega_c^2,
\qquad
P=(\Omega_+^2-\omega_c^2)
  (\Omega_-^2-\omega_c^2).
$$

The two positive squared frequencies in the stable regime are

$$
\boxed{
\nu_{\mathrm{high,low}}^2
=\frac{S\pm\sqrt{S^2-4P}}{2}.
}
$$

These $\nu$ values, not $\Omega_\pm$, describe the actual small-amplitude
time scales. The associated eigenvectors are generally elliptically
polarized combinations of both rotated coordinates.

As a useful check, an isotropic bare trap with frequency $\omega_0$ has
$\Omega_+^2=\Omega_-^2=\omega_0^2+\omega_c^2$, and the formula reduces to

$$
\nu_{\mathrm{high,low}}
=\sqrt{\omega_0^2+\omega_c^2}\pm|\omega_c|.
$$

Changing the sign of $\omega_c$ reverses the polarization, even though these
two positive frequency magnitudes are unchanged.

## 6. Stability from the bare trap

Before expanding the squares, the Hamiltonian was

$$
H_B=
\left(p_x+\frac{\omega_c}{2}y\right)^2
+\left(p_y-\frac{\omega_c}{2}x\right)^2
+\frac14\boldsymbol r^{\mathsf T}K_0\boldsymbol r,
$$

where

$$
K_0=
\begin{pmatrix}
\omega_x^2&-g\\
-g&\omega_y^2
\end{pmatrix}.
$$

The covariant kinetic squares are nonnegative. A strictly confining trap
therefore requires $K_0$ to be positive definite:

$$
\boxed{
\omega_x^2>0,
\qquad
\omega_y^2>0,
\qquad
\omega_x^2\omega_y^2-g^2>0.
}
$$

For a real symmetric $2\times2$ matrix, positivity of one leading diagonal
entry and the determinant is sufficient; both diagonal inequalities are
written to make the physical requirement transparent.

Why is positivity tested on $K_0$, not on $K$? The extra
$\omega_c^2I$ in $K$ came from expanding a kinetic square. A wave packet can
be translated while its canonical momentum compensates the local vector
potential, so that apparent coordinate term cannot repair a negative
direction of the bare potential.

Because

$$
K=K_0+\omega_c^2I,
$$

the eigenvalues of $K_0$ in the rotated basis are

$$
\Omega_+^2-\omega_c^2,
\qquad
\Omega_-^2-\omega_c^2.
$$

Thus the equivalent strict-confinement test is

$$
\boxed{
\Omega_+^2>\omega_c^2,
\qquad
\Omega_-^2>\omega_c^2.
}
$$

At equality, the Hamiltonian remains bounded below because it is a sum of
nonnegative covariant kinetic and potential terms, but it is not a strictly
confining two-dimensional trap. Here $P=0$, so the dynamical equation has
$\nu_{\mathrm{low}}=0$ and a delocalized or infinitely degenerate direction. For
localized state preparation and a discrete two-mode basis, use strict
inequalities with a numerical safety margin.

## 7. A complete worked parameter set

Take

$$
\omega_c=\frac34,\qquad
\omega_x^2=\frac{104}{125},\qquad
\omega_y^2=\frac{41}{125},\qquad
g=\frac{42}{125}.
$$

First,

$$
\Delta=\frac{21}{25},
\qquad
\cos(2\theta)=\frac35,
\qquad
\sin(2\theta)=-\frac45,
$$

so

$$
\theta=-0.463647609\ldots\ \mathrm{rad}
=-26.565051^\circ.
$$

The dressed coordinate scales are

$$
\Omega_+^2=\frac{25}{16},
\qquad
\Omega_-^2=\frac{289}{400},
$$

or

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20}.
$$

The bare stability margins are

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

The smaller margin is positive but close enough to the boundary to generate
a slow dynamical mode. Indeed,

$$
S=\frac{341}{100},
\qquad
P=\frac4{25},
$$

and

$$
\nu_{\mathrm{high,low}}^2
=\frac{341\pm\sqrt{109881}}{200}.
$$

Numerically,

$$
\nu_{\mathrm{high}}=1.8336889475\ldots,
\qquad
\nu_{\mathrm{low}}=0.2181395054\ldots.
$$

Neither frequency equals $\Omega_+$ or $\Omega_-$. This is the simplest
numerical demonstration of why coordinate diagonalization and phase-space
diagonalization must be kept separate.

### Compact Maxima check

```maxima
kill(all)$
wc:3/4$  wx2:104/125$  wy2:41/125$  g:42/125$

Delta:radcan(sqrt((wx2-wy2)^2+4*g^2))$
theta:atan2(-2*g,wx2-wy2)/2$
Op2:radcan((wx2+wy2+2*wc^2+Delta)/2)$
Om2:radcan((wx2+wy2+2*wc^2-Delta)/2)$
margins:[radcan(Op2-wc^2),radcan(Om2-wc^2)]$

S:radcan(Op2+Om2+2*wc^2)$
P:radcan(margins[1]*margins[2])$
nu:[sqrt((S+sqrt(S^2-4*P))/2),
    sqrt((S-sqrt(S^2-4*P))/2)]$

[Delta,float(theta),margins,ev(nu,numer)];
```

Maxima returns $\Delta=21/25$, the angle
$-0.4636476090\ldots$, margins $[1,4/25]$, and the two numerical
frequencies displayed above.

For numerical work, the most informative diagnostics are the smaller bare
margin and $\nu_{\mathrm{low}}$. As
$\Omega_-^2-\omega_c^2\rightarrow0^+$ with the other margin fixed,
$P\rightarrow0$ and

$$
\nu_{\mathrm{low}}^2
=\frac{P}{S}+O(P^2).
$$

The slow period and spatial extent therefore grow near the stability
boundary, making finite-basis calculations increasingly demanding.

## Result carried forward

The physical reduction supplies the next stage with canonical preparation
coordinates $(q_\pm,p_\pm)$, fixed positive scales $\Omega_\pm$, and the
strict stability condition $\Omega_\pm^2>\omega_c^2$. These scales
diagonalize the coordinate confinement only; the signed angular generator
$L_z=q_+p_- -q_-p_+$ remains a separate dynamical operator.

## Research pathway

1. [Magnetic oscillator stability and reduction](/magnetic-oscillator-stability-reduction/) — current chapter
2. [Exceptional-Hermite preparation](/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/fixed-confinement-angular-quench/)
4. [Exact covariance response](/exact-covariance-response/)
5. [Survival curvature](/survival-curvature/)
6. [Spectral propagation and synchronization](/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/non-gaussian-mutual-information/)

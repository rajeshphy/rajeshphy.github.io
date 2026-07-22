---
title: "I: Magnetic oscillator stability and rotated-coordinate reduction"
date: 2026-06-04 09:00:00 +05:30
categories: research
tags: [magnetic oscillator, minimal coupling, angular momentum, stability, quantum quench]
permalink: /research/magnetic-oscillator-stability-reduction/
description: "A signed-frequency derivation of the static coordinate reduction and stability conditions used in an exceptional-Hermite angular-momentum quench."
series: exceptional-hermite-angular-quench
part: 1
authors: [Rajesh Kumar, Rajesh Kumar Yadav]
status: manuscript
---

This article fixes the conventions and the static reduction behind our
exceptional-Hermite angular-momentum quench. The central point is simple but
easy to miss: rotating the coordinate quadratic form is not the same as
diagonalizing the complete magnetic Hamiltonian in phase space. The rotation
identifies useful preparation coordinates, while an angular-momentum term
remains to couple them dynamically.

## Conventions and the signed magnetic coupling

We use

$$
\hbar=2M=1,
$$

and retain the speed of light only in the signed half-cyclotron frequency

$$
\omega_c=\frac{qB}{2Mc}.
$$

The sign of $\omega_c$ records the charge-field orientation. It must not be
silently replaced by $|\omega_c|$: reversing the field changes the sign of the
angular flow even though the diamagnetic contribution depends on
$\omega_c^2$.

In the symmetric gauge, the anisotropic oscillator with coordinate coupling
$g$ is

$$
\begin{aligned}
H_B={}&\left(p_x+\frac{\omega_c}{2}y\right)^2
      +\left(p_y-\frac{\omega_c}{2}x\right)^2 \\
&+\frac{\omega_x^2x^2}{4}
  +\frac{\omega_y^2y^2}{4}
  -\frac{g}{2}xy .
\end{aligned}
$$

With

$$
L_z=xp_y-yp_x,
$$

expanding the two kinetic squares gives

$$
H_B=p_x^2+p_y^2
+\frac{\omega_x^2+\omega_c^2}{4}x^2
+\frac{\omega_y^2+\omega_c^2}{4}y^2
-\frac{g}{2}xy-\omega_cL_z.
$$

Thus the same parameter enters in two logically different ways:
$\omega_c^2$ dresses the coordinate confinement, while the signed
$\omega_c$ multiplies the angular-momentum generator. The accompanying
Maxima calculation expands the minimal-coupling expression and returns an
identically zero residual against this form.

## The coordinate quadratic form

Write the coordinate part as one quarter of a matrix quadratic form. Its
matrix is

$$
K=
\begin{pmatrix}
\omega_x^2+\omega_c^2 & -g \\
-g & \omega_y^2+\omega_c^2
\end{pmatrix}.
$$

Introduce

$$
\Delta=\sqrt{(\omega_x^2-\omega_y^2)^2+4g^2}
$$

and the rotation

$$
R(\theta)=
\begin{pmatrix}
\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta
\end{pmatrix}.
$$

The tangent relation alone does not fix the eigenvector labels or quadrant.
We therefore use the explicit branch

$$
\cos(2\theta)=\frac{\omega_x^2-\omega_y^2}{\Delta},
\qquad
\sin(2\theta)=-\frac{2g}{\Delta}.
$$

For $\Delta>0$, this is equivalent to

$$
\tan(2\theta)=\frac{2g}{\omega_y^2-\omega_x^2}
$$

together with the stated branch. When $\Delta=0$, the coordinate form is
degenerate and the angle is immaterial.

Apply the same orthogonal matrix to coordinates and momenta:

$$
\begin{pmatrix}x\\y\end{pmatrix}
=R(\theta)\begin{pmatrix}q_+\\q_-\end{pmatrix},
\qquad
\begin{pmatrix}p_x\\p_y\end{pmatrix}
=R(\theta)\begin{pmatrix}p_+\\p_-\end{pmatrix}.
$$

This is a canonical rotation, and it yields

$$
R^{\mathsf T}KR=\operatorname{diag}(\Omega_+^2,\Omega_-^2),
$$

where the ordered coordinate scales are

$$
\Omega_\pm^2=
\frac{\omega_x^2+\omega_y^2+2\omega_c^2}{2}
\pm\frac{\Delta}{2}.
$$

Because an ordinary planar rotation preserves angular momentum,

$$
L_z=q_+p_- - q_-p_+.
$$

The rotated Hamiltonian is consequently

$$
H_B=p_+^2+p_-^2
+\frac{\Omega_+^2q_+^2}{4}
+\frac{\Omega_-^2q_-^2}{4}
-\omega_c\left(q_+p_- - q_-p_+\right).
$$

The coordinate cross term has disappeared, but the two rotated degrees of
freedom are still coupled by $L_z$.

## Stability: dressed scales versus bare confinement

The full minimal-coupling Hamiltonian is bounded below when the *bare* trap
quadratic form is positive definite:

$$
\omega_x^2>0,
\qquad
\omega_y^2>0,
\qquad
\omega_x^2\omega_y^2-g^2>0.
$$

Why do the bare frequencies appear here even though $K$ contains
$\omega_c^2$? At a fixed point in coordinate space, the canonical momenta can
locally cancel the vector potential. The diamagnetic term cannot by itself
stabilize an indefinite bare trap.

The same condition is especially transparent after the rotation. Since the
diamagnetic contribution is proportional to the identity, the eigenvalues of
the rotated bare confinement are

$$
\Omega_+^2-\omega_c^2,
\qquad
\Omega_-^2-\omega_c^2.
$$

Hence stability requires

$$
\boxed{\Omega_+^2>\omega_c^2,
\qquad \Omega_-^2>\omega_c^2.}
$$

For the manuscript's finite-time benchmark,

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
$$

and the two Maxima-verified margins are

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25}.
$$

Both are positive, including the more restrictive minus-mode margin.

## What this reduction does—and does not—establish

The quantities $\Omega_\pm$ diagonalize only the static coordinate matrix
$K$. They are not the complete phase-space normal-mode frequencies of the
magnetic oscillator. A full symplectic transformation can diagonalize a
purely quadratic magnetic Hamiltonian, but it generally turns a rational
potential that is local in $q_+$ or $q_-$ into a phase-space-nonlocal
operator. That is a different representation and a different preparation
problem.

Our protocol therefore keeps the diamagnetically dressed confinement fixed.
The exceptional-Hermite product state is engineered using the target scales
$\Omega_\pm$, and at $t=0$ only the synthetic angular coupling
$-\omega_cL_z$ is activated. This is not a literal switch of the entire
electromagnetic field: changing a real magnetic field would also change the
$\omega_c^2$ confinement term.

This distinction will remain in force throughout the series. Later
fixed-coordinate commutators diagnose loss of additivity and stationarity in
the preparation coordinates; they are not, by themselves, claims of
entanglement, generic nonseparability, or the impossibility of every canonical
diagonalization.

## Series navigation

1. [Magnetic oscillator stability and reduction](/research/magnetic-oscillator-stability-reduction/) — current article
2. [Exceptional-Hermite preparation](/research/exceptional-hermite-preparation/)
3. [Fixed-confinement angular quench](/research/fixed-confinement-angular-quench/)
4. [Exact covariance response](/research/exact-covariance-response/)
5. [Survival curvature](/research/survival-curvature/)
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

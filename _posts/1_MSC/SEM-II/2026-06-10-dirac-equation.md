---
title: "Dirac Equation"
summary: "Linear relativistic dynamics, Dirac matrices, covariant form, and the origin of the four-component spinor."
date: 2026-06-10 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - dirac-equation
  - gamma-matrices
permalink: /msc/sem-ii/dirac-equation/
hidden: true
---

The Klein–Gordon equation has the correct relativistic energy relation but is second order in time. Dirac sought an equation of Schrödinger form,

$$
i\hbar\frac{\partial\psi}{\partial t}=H_D\psi,
$$

whose Hamiltonian is linear in momentum. Write

$$
\boxed{H_D=c\,\boldsymbol\alpha\cdot\mathbf p+\beta mc^2},
$$

where $\alpha_i$ and $\beta$ are constant matrices. Consistency with

$$
H_D^2=(p^2c^2+m^2c^4)I
$$

determines their algebra. Direct expansion gives

$$
\begin{aligned}
H_D^2
&=
\left(c\alpha_i p_i+\beta mc^2\right)
\left(c\alpha_j p_j+\beta mc^2\right)\\
&=
c^2\alpha_i\alpha_jp_ip_j
+mc^3(\alpha_i\beta+\beta\alpha_i)p_i
+\beta^2m^2c^4.
\end{aligned}
$$

The repeated spatial indices are summed. Since $p_ip_j=p_jp_i$ for a free particle, the first term contains only the symmetric part of the matrix product:

$$
\alpha_i\alpha_jp_ip_j
=
\frac{1}{2}
(\alpha_i\alpha_j+\alpha_j\alpha_i)p_ip_j
=\frac{1}{2}\{\alpha_i,\alpha_j\}p_ip_j.
$$

To leave $p_i p_i I=p^2I$, remove the momentum–mass cross term, and recover the rest-energy term, the matrices must satisfy

$$
\{\alpha_i,\alpha_j\}=2\delta_{ij}I,
\qquad
\{\alpha_i,\beta\}=0,
\qquad
\beta^2=I.
$$

Substituting these relations back into the expansion gives, step by step,

$$
H_D^2
=c^2\delta_{ij}p_ip_jI+0+m^2c^4I
=(p^2c^2+m^2c^4)I.
$$

Ordinary numbers cannot satisfy the required anticommutations, and $2\times2$ matrices are not sufficient for three spatial directions together with $\beta$. The smallest realization is four dimensional, so $\psi$ is a four-component spinor.

## Dirac–Pauli representation

Using the Pauli matrices $\sigma_i$, a convenient representation is

$$
\alpha_i=
\begin{pmatrix}
0&\sigma_i\\
\sigma_i&0
\end{pmatrix},
\qquad
\beta=
\begin{pmatrix}
I_2&0\\
0&-I_2
\end{pmatrix}.
$$

The four components do not represent four independent particles. For a free field they accommodate two spin states on each of the particle and antiparticle branches.

The Hamiltonian form is therefore

$$
\boxed{
i\hbar\frac{\partial\psi}{\partial t}
=
\left(c\,\boldsymbol\alpha\cdot\mathbf p+\beta mc^2\right)\psi
}.
$$

Because the matrices $\alpha_i$ and $\beta$ are Hermitian, $H_D$ is Hermitian for the usual momentum boundary conditions.

## Covariant form

Insert $\mathbf p=-i\hbar\nabla$ into the Hamiltonian equation and move every term to the left:

$$
\left[
i\hbar\frac{\partial}{\partial t}
+i\hbar c\,\alpha_i\partial_i
-\beta mc^2
\right]\psi=0.
$$

Multiply by $\beta/c$. Since $\beta^2=I$,

$$
\left[
i\hbar\beta\frac{1}{c}\frac{\partial}{\partial t}
+i\hbar\beta\alpha_i\partial_i
-mc
\right]\psi=0.
$$

Define

$$
\gamma^0=\beta,
\qquad
\gamma^i=\beta\alpha_i.
$$

Their products follow directly from the $\alpha_i,\beta$ algebra:

$$
\{\gamma^0,\gamma^0\}=2\beta^2=2I_4,
$$

$$
\begin{aligned}
\{\gamma^0,\gamma^i\}
&=\beta^2\alpha_i+\beta\alpha_i\beta\\
&=\alpha_i-\alpha_i=0,
\end{aligned}
$$

and

$$
\begin{aligned}
\{\gamma^i,\gamma^j\}
&=\beta\alpha_i\beta\alpha_j
+\beta\alpha_j\beta\alpha_i\\
&=-(\alpha_i\alpha_j+\alpha_j\alpha_i)\\
&=-2\delta_{ij}I_4.
\end{aligned}
$$

These three results combine into the Clifford algebra

$$
\boxed{\{\gamma^\mu,\gamma^\nu\}=2g^{\mu\nu}I_4},
$$

with $g^{\mu\nu}=\operatorname{diag}(1,-1,-1,-1)$. Writing $x^0=ct$, so that $\partial_0=c^{-1}\partial_t$, the preceding equation becomes

$$
\boxed{
\left(i\hbar\gamma^\mu\partial_\mu-mc\right)\psi=0
}.
$$

This compact expression is Lorentz covariant: the spinor and gamma matrices transform together so that the equation retains its form between inertial frames.

## Relation to the Klein–Gordon equation

Act on the Dirac equation with the complementary operator

$$
i\hbar\gamma^\nu\partial_\nu+mc.
$$

Let $D_-=i\hbar\gamma^\mu\partial_\mu-mc$ and $D_+=i\hbar\gamma^\nu\partial_\nu+mc$. Their product acting on $\psi$ is

$$
\begin{aligned}
D_+D_-\psi
&=
\left[
(i\hbar)^2\gamma^\nu\gamma^\mu
\partial_\nu\partial_\mu
+mc(i\hbar\gamma^\mu\partial_\mu)
-mc(i\hbar\gamma^\nu\partial_\nu)
-m^2c^2
\right]\psi\\
&=
\left[
-\hbar^2\gamma^\nu\gamma^\mu
\partial_\nu\partial_\mu
-m^2c^2
\right]\psi.
\end{aligned}
$$

The two mixed terms are the same operator with opposite signs and cancel. Since ordinary derivatives commute, their product is symmetric in $\mu,\nu$. The antisymmetric part of the gamma-matrix product therefore contributes nothing:

$$
\begin{aligned}
\gamma^\nu\gamma^\mu\partial_\nu\partial_\mu
&=
\frac{1}{2}
\left(\gamma^\nu\gamma^\mu+\gamma^\mu\gamma^\nu\right)
\partial_\nu\partial_\mu\\
&=
\frac{1}{2}\{\gamma^\nu,\gamma^\mu\}
\partial_\nu\partial_\mu\\
&=g^{\mu\nu}\partial_\mu\partial_\nu I_4
=\Box I_4.
\end{aligned}
$$

Thus $D_+D_-\psi=0$ becomes

$$
\left(-\hbar^2\Box-m^2c^2\right)\psi=0.
$$

After division by $-\hbar^2$, every component of a free Dirac spinor satisfies

$$
\left(\Box+\frac{m^2c^2}{\hbar^2}\right)\psi=0.
$$

Thus the Dirac equation does not replace the relativistic dispersion relation; it factorizes it into a first-order equation. The matrix structure introduced by that factorization is also what permits a positive density and produces electron spin.

[Maxima verification of the Dirac algebra and dispersion relation]({{ '/assets/maxima/msc/sem-ii/unit-3/relativistic-wave-equations.mac' | relative_url }})

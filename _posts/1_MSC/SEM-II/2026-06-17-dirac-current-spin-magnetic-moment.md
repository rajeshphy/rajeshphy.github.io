---
title: "Dirac Current, Electron Spin, and Magnetic Moment"
summary: "Positive Dirac density, conserved current, and the emergence of electron spin and magnetic moment."
date: 2026-06-17 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - dirac-current
  - electron-spin
  - magnetic-moment
permalink: /msc/sem-ii/current-density-conservation-equation/
hidden: true
---

The first-order time derivative in the Dirac equation permits a conserved density that is positive for every nonzero spinor. It is useful to derive it covariantly and then identify its time and space components.

In natural units $(\hbar=c=1)$, the free equation is

$$
\left(i\gamma^\mu\partial_\mu-m\right)\psi=0.
$$

Define the Dirac adjoint

$$
\bar\psi=\psi^\dagger\gamma^0.
$$

To obtain its equation, take the Hermitian conjugate of the Dirac equation. The derivative then acts on $\psi^\dagger$:

$$
-i(\partial_\mu\psi^\dagger)(\gamma^\mu)^\dagger
-m\psi^\dagger=0.
$$

The gamma matrices satisfy

$$
(\gamma^\mu)^\dagger
=\gamma^0\gamma^\mu\gamma^0,
\qquad
(\gamma^\mu)^\dagger\gamma^0
=\gamma^0\gamma^\mu.
$$

Multiply the conjugated equation on the right by $\gamma^0$:

$$
-i(\partial_\mu\psi^\dagger)\gamma^0\gamma^\mu
-m\psi^\dagger\gamma^0=0.
$$

Because the matrices are constant,

$$
(\partial_\mu\psi^\dagger)\gamma^0
=\partial_\mu(\psi^\dagger\gamma^0)
=\partial_\mu\bar\psi.
$$

After multiplication by $-1$, the adjoint equation is therefore

$$
i(\partial_\mu\bar\psi)\gamma^\mu+m\bar\psi=0.
$$

Multiplying the original equation from the left by $\bar\psi$ gives

$$
i\bar\psi\gamma^\mu\partial_\mu\psi
-m\bar\psi\psi=0.
$$

Multiplying the adjoint equation from the right by $\psi$ gives

$$
i(\partial_\mu\bar\psi)\gamma^\mu\psi
+m\bar\psi\psi=0.
$$

Add these equations. The mass terms cancel:

$$
i\left[
(\partial_\mu\bar\psi)\gamma^\mu\psi
+\bar\psi\gamma^\mu\partial_\mu\psi
\right]=0.
$$

The bracket is a product derivative, so

$$
\boxed{\partial_\mu(\bar\psi\gamma^\mu\psi)=0}.
$$

Restoring $c$, define the probability four-current

$$
J^\mu=c\,\bar\psi\gamma^\mu\psi=(c\rho,\mathbf j).
$$

Its time component is

$$
J^0
=c\bar\psi\gamma^0\psi
=c\psi^\dagger\gamma^0\gamma^0\psi
=c\psi^\dagger\psi.
$$

Its spatial components are

$$
J^i
=c\bar\psi\gamma^i\psi
=c\psi^\dagger\gamma^0\gamma^i\psi
=c\psi^\dagger\alpha_i\psi.
$$

Comparison with $J^\mu=(c\rho,\mathbf j)$ gives

$$
\boxed{\rho=\psi^\dagger\psi\ge0},
\qquad
\boxed{\mathbf j=c\,\psi^\dagger\boldsymbol\alpha\psi}.
$$

The covariant conservation law is exactly

$$
\frac{\partial\rho}{\partial t}+\nabla\cdot\mathbf j=0.
$$

For a normalized one-particle state, $\int\rho\,d^3x=1$. The electric charge current is a different quantity, $j_q^\mu=qJ^\mu$; for an electron $q=-e$, its charge density is negative even though its probability density is positive.

## Electromagnetic coupling and the Pauli limit

In electromagnetic potentials $(\Phi,\mathbf A)$, introduce the kinetic momentum

$$
\boldsymbol\Pi=\mathbf p-q\mathbf A.
$$

The Dirac Hamiltonian is

$$
H_D=c\,\boldsymbol\alpha\cdot\boldsymbol\Pi
+\beta mc^2+q\Phi.
$$

In the Dirac–Pauli representation, write the positive-energy spinor after removing its rapid rest-energy phase as

$$
\psi=e^{-imc^2t/\hbar}
\begin{pmatrix}\varphi\\ \chi\end{pmatrix}.
$$

The Hamiltonian has the block form

$$
H_D=
\begin{pmatrix}
mc^2+q\Phi & c\,\boldsymbol\sigma\cdot\boldsymbol\Pi\\
c\,\boldsymbol\sigma\cdot\boldsymbol\Pi & -mc^2+q\Phi
\end{pmatrix}.
$$

Differentiating the phase on the left side of the Dirac equation and comparing the upper two components gives

$$
i\hbar\frac{\partial\varphi}{\partial t}
=q\Phi\,\varphi
+c\,\boldsymbol\sigma\cdot\boldsymbol\Pi\,\chi.
$$

The lower two components give

$$
i\hbar\frac{\partial\chi}{\partial t}
=c\,\boldsymbol\sigma\cdot\boldsymbol\Pi\,\varphi
+q\Phi\,\chi-2mc^2\chi.
$$

Equivalently,

$$
\left(
2mc^2+i\hbar\frac{\partial}{\partial t}-q\Phi
\right)\chi
=c\,\boldsymbol\sigma\cdot\boldsymbol\Pi\,\varphi.
$$

In the nonrelativistic regime, kinetic and potential energies are much smaller than $mc^2$. The derivative and potential terms in the bracket are then small compared with $2mc^2$, so

$$
\chi\simeq\frac{\boldsymbol\sigma\cdot\boldsymbol\Pi}{2mc}\,\varphi.
$$

Substitution into the upper equation gives

$$
i\hbar\frac{\partial\varphi}{\partial t}
=
\left[
q\Phi+\frac{1}{2m}
(\boldsymbol\sigma\cdot\boldsymbol\Pi)^2
\right]\varphi.
$$

To simplify the square, use

$$
\sigma_i\sigma_j
=\delta_{ij}I+i\epsilon_{ijk}\sigma_k.
$$

Then

$$
\begin{aligned}
(\boldsymbol\sigma\cdot\boldsymbol\Pi)^2
&=\sigma_i\sigma_j\Pi_i\Pi_j\\
&=\Pi^2+i\epsilon_{ijk}\sigma_k\Pi_i\Pi_j\\
&=\Pi^2+\frac{i}{2}\epsilon_{ijk}\sigma_k
[\Pi_i,\Pi_j].
\end{aligned}
$$

For $\boldsymbol\Pi=\mathbf p-q\mathbf A$,

$$
\begin{aligned}
[\Pi_i,\Pi_j]
&=[p_i-qA_i,p_j-qA_j]\\
&=-q[p_i,A_j]-q[A_i,p_j]\\
&=iq\hbar
\left(\partial_iA_j-\partial_jA_i\right)\\
&=iq\hbar\,\epsilon_{ijl}B_l.
\end{aligned}
$$

Using $\epsilon_{ijk}\epsilon_{ijl}=2\delta_{kl}$,

$$
\begin{aligned}
(\boldsymbol\sigma\cdot\boldsymbol\Pi)^2
&=\Pi^2
-\frac{q\hbar}{2}
\epsilon_{ijk}\epsilon_{ijl}\sigma_kB_l\\
&=\boxed{\Pi^2-q\hbar\,\boldsymbol\sigma\cdot\mathbf B}.
\end{aligned}
$$

The upper equation consequently becomes the Pauli equation

$$
i\hbar\frac{\partial\varphi}{\partial t}
=
\left[
\frac{\Pi^2}{2m}+q\Phi
-\frac{q\hbar}{2m}\boldsymbol\sigma\cdot\mathbf B
\right]\varphi.
$$

## Identification of spin one-half

The Pauli matrices obey

$$
[\sigma_i,\sigma_j]=2i\epsilon_{ijk}\sigma_k.
$$

Define

$$
\mathbf S=\frac{\hbar}{2}\boldsymbol\sigma.
$$

Then

$$
\begin{aligned}
[S_i,S_j]
&=\frac{\hbar^2}{4}[\sigma_i,\sigma_j]\\
&=i\hbar\epsilon_{ijk}S_k,
\end{aligned}
$$

which is the angular-momentum algebra. Since

$$
\sigma_z=
\begin{pmatrix}1&0\\0&-1\end{pmatrix},
$$

the eigenvalues of $S_z=(\hbar/2)\sigma_z$ are

$$
S_z=\pm\frac{\hbar}{2}.
$$

Also, $\sigma_x^2=\sigma_y^2=\sigma_z^2=I_2$, so

$$
\begin{aligned}
\mathbf S^2
&=\frac{\hbar^2}{4}
\left(\sigma_x^2+\sigma_y^2+\sigma_z^2\right)\\
&=\frac{3\hbar^2}{4}I_2.
\end{aligned}
$$

Comparison with $\mathbf S^2=s(s+1)\hbar^2I_2$ gives

$$
s(s+1)=\frac{3}{4},
\qquad
\boxed{s=\frac{1}{2}}.
$$

The field-dependent energy in the Pauli equation is

$$
-\frac{q\hbar}{2m}\boldsymbol\sigma\cdot\mathbf B
=-\boldsymbol\mu\cdot\mathbf B.
$$

Since $\boldsymbol\sigma=2\mathbf S/\hbar$, comparison with $-\boldsymbol\mu\cdot\mathbf B$ gives

$$
\boxed{\boldsymbol\mu=\frac{q}{m}\mathbf S}.
$$

For the electron,

$$
\boldsymbol\mu_e=-\frac{e}{m}\mathbf S
=-g\mu_B\frac{\mathbf S}{\hbar},
\qquad
g=2,
\qquad
\mu_B=\frac{e\hbar}{2m}.
$$

Thus the magnetic moment is antiparallel to the electron spin, and the Dirac equation supplies the spin-$\tfrac12$ magnetic coupling without adding it separately.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-3/electron-spin-magnetic-moment.png' | relative_url }}" alt="Electron spin and magnetic moment in a magnetic field, with the corresponding two Zeeman energies" loading="lazy">
  <figcaption>Because the electron charge is negative, its magnetic moment is antiparallel to its spin. In an upward magnetic field the state with magnetic moment parallel to the field has the lower interaction energy.</figcaption>
</figure>

[Maxima verification of the Pauli identity and free spinors]({{ '/assets/maxima/msc/sem-ii/unit-3/dirac-spinors-and-spin.mac' | relative_url }})

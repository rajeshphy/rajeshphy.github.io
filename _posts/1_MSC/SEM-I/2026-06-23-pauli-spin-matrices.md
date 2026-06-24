---
title: "Pauli Spin Matrices and Spin Eigenvectors"
summary: "Spin one-half operators, Pauli matrices, spin eigenvectors, and basic spin measurement probabilities."
date: 2026-06-03 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - quantum-mechanics
  - spin
  - pauli-matrices
permalink: /msc/sem-i/pauli-spin-matrices/
hidden: true
---

Spin is intrinsic angular momentum. Unlike orbital angular momentum, it is not produced by motion around an origin. Experiments such as Stern-Gerlach show that a spin-one-half particle gives only two possible results when one component of spin is measured.

Therefore the spin state is represented by a two-component vector, called a spinor. The spin operators acting on this two-dimensional space are represented by the Pauli matrices.

## Spin operators

For spin one-half,

$$
\mathbf S=\frac{\hbar}{2}\boldsymbol{\sigma},
$$

where

$$
\boldsymbol{\sigma}=(\sigma_x,\sigma_y,\sigma_z).
$$

The Pauli matrices are

$$
\boxed{
\sigma_x=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix},
\qquad
\sigma_y=
\begin{pmatrix}
0&-i\\
i&0
\end{pmatrix},
\qquad
\sigma_z=
\begin{pmatrix}
1&0\\
0&-1
\end{pmatrix}.
}
$$

Thus

$$
S_x=\frac{\hbar}{2}\sigma_x,\qquad
S_y=\frac{\hbar}{2}\sigma_y,\qquad
S_z=\frac{\hbar}{2}\sigma_z.
$$

The factor $\hbar/2$ is fixed by the fact that a spin-one-half particle has possible measured values $+\hbar/2$ and $-\hbar/2$ for any chosen spin component.

## Algebra of Pauli matrices

The Pauli matrices satisfy

$$
\boxed{
[\sigma_i,\sigma_j]=2i\epsilon_{ijk}\sigma_k
}
$$

and

$$
\boxed{
\{\sigma_i,\sigma_j\}=2\delta_{ij}I.
}
$$

Therefore the spin operators satisfy the angular momentum algebra

$$
[S_i,S_j]=i\hbar\epsilon_{ijk}S_k.
$$

Also,

$$
\sigma_x^2=\sigma_y^2=\sigma_z^2=I.
$$

## Spin eigenvectors along $z$

The eigenvectors of $S_z$ are

$$
\chi_+=
\begin{pmatrix}
1\\
0
\end{pmatrix},
\qquad
\chi_-=
\begin{pmatrix}
0\\
1
\end{pmatrix}.
$$

They satisfy

$$
S_z\chi_+=\frac{\hbar}{2}\chi_+,
\qquad
S_z\chi_-=-\frac{\hbar}{2}\chi_-.
$$

These are often written as

$$
\chi_+=\lvert +z\rangle,
\qquad
\chi_-=\lvert -z\rangle.
$$

## Spin eigenvectors along $x$

The eigenvectors of $S_x$ are

$$
\lvert +x\rangle
=
\frac{1}{\sqrt2}
\begin{pmatrix}
1\\
1
\end{pmatrix},
\qquad
\lvert -x\rangle
=
\frac{1}{\sqrt2}
\begin{pmatrix}
1\\
-1
\end{pmatrix}.
$$

In the $z$-basis,

$$
\lvert +x\rangle
=
\frac{1}{\sqrt2}(\lvert +z\rangle+\lvert -z\rangle).
$$

Therefore a particle prepared in $\lvert +x\rangle$ has equal probability of giving $+\hbar/2$ or $-\hbar/2$ when $S_z$ is measured.

## Spin eigenvectors along $y$

The eigenvectors of $S_y$ are

$$
\lvert +y\rangle
=
\frac{1}{\sqrt2}
\begin{pmatrix}
1\\
i
\end{pmatrix},
\qquad
\lvert -y\rangle
=
\frac{1}{\sqrt2}
\begin{pmatrix}
1\\
-i
\end{pmatrix}.
$$

## General spinor

A general spin-one-half state can be written as

$$
\chi=
\begin{pmatrix}
a\\
b
\end{pmatrix}
=a\lvert +z\rangle+b\lvert -z\rangle,
$$

with normalization

$$
|a|^2+|b|^2=1.
$$

If $S_z$ is measured, the probabilities are

$$
P\left(+\frac{\hbar}{2}\right)=|a|^2,
\qquad
P\left(-\frac{\hbar}{2}\right)=|b|^2.
$$

The complex numbers $a$ and $b$ are probability amplitudes. Their moduli squared give probabilities, while their relative phase affects measurements along axes other than $z$.

## Verification of a commutator

Using the Pauli matrices,

$$
\sigma_x\sigma_y=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix}
\begin{pmatrix}
0&-i\\
i&0
\end{pmatrix}
=
\begin{pmatrix}
i&0\\
0&-i
\end{pmatrix}
=i\sigma_z.
$$

Similarly,

$$
\sigma_y\sigma_x=-i\sigma_z.
$$

Therefore

$$
\boxed{
[\sigma_x,\sigma_y]=2i\sigma_z.
}
$$

Multiplying by $\hbar/2$ gives

$$
[S_x,S_y]=i\hbar S_z.
$$

## Measurement example

Let

$$
\chi=
\begin{pmatrix}
1/\sqrt3\\
\sqrt{2/3}
\end{pmatrix}.
$$

The state is normalized because

$$
\frac13+\frac23=1.
$$

If $S_z$ is measured,

$$
P\left(+\frac{\hbar}{2}\right)=\left|\frac{1}{\sqrt3}\right|^2=\frac13,
$$

and

$$
P\left(-\frac{\hbar}{2}\right)=\left|\sqrt{\frac23}\right|^2=\frac23.
$$

## Main points

- Pauli matrices represent spin-one-half operators.
- Spin components satisfy the same angular momentum algebra.
- Spin eigenvectors form two-component spinors.
- A spinor contains probability amplitudes for different spin measurement results.

## Practice questions

1. Verify that $[\sigma_x,\sigma_y]=2i\sigma_z$.
2. Find the eigenvectors of $\sigma_x$.
3. Show that $S^2=\frac{3\hbar^2}{4}I$ for spin one-half.
4. If $\chi=(1/\sqrt3,\sqrt{2/3})^T$, find the probabilities for measuring $S_z$.
5. Express $\lvert +x\rangle$ in the $S_z$ basis.

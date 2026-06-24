---
title: "Eigenvalues and Eigenvectors of Matrices"
summary: "Characteristic equation, eigenvectors, diagonal form, and physical meaning of matrix modes."
date: 2026-03-05 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - eigenvalues
  - matrices
permalink: /msc/sem-i/eigenvalues-and-eigenvectors/
hidden: true
---

In many problems a matrix represents a linear operation: stretching a vector, coupling two oscillators, rotating axes, or acting with an operator on a state. Usually the direction of a vector changes after the operation. An eigenvector is a special vector whose direction is preserved.

For a square matrix $A$, a non-zero vector $\mathbf{x}$ is an eigenvector if multiplication by $A$ only changes its scale:

$$
A\mathbf{x}=\lambda\mathbf{x}.
$$

The number $\lambda$ is the corresponding eigenvalue.

## Characteristic equation

Rearrange the eigenvalue equation:

$$
(A-\lambda I)\mathbf{x}=0.
$$

For a non-zero solution, the determinant must vanish:

$$
\det(A-\lambda I)=0.
$$

This is the characteristic equation.

The determinant condition is necessary because $(A-\lambda I)\mathbf{x}=0$ is a homogeneous system. A non-zero solution exists only when the coefficient matrix is singular.

## Eigenvectors

After finding an eigenvalue $\lambda$, substitute it into

$$
(A-\lambda I)\mathbf{x}=0
$$

and solve for the components of $\mathbf{x}$.

## Physical meaning

Eigenvalue problems appear throughout physics:

- normal modes of coupled oscillators,
- energy levels in quantum mechanics,
- principal axes of inertia,
- stability analysis near equilibrium.

## Numerical viewpoint

For large matrices, one generally does not expand the determinant by hand. Numerical algorithms are used to compute eigenvalues and eigenvectors efficiently and accurately.

## Two-by-two example

Find the eigenvalues and eigenvectors of

$$
A=
\begin{pmatrix}
2&1\\
1&2
\end{pmatrix}.
$$

The characteristic equation is

$$
\det(A-\lambda I)=
\begin{vmatrix}
2-\lambda&1\\
1&2-\lambda
\end{vmatrix}
=0.
$$

Therefore

$$
(2-\lambda)^2-1=0,
$$

or

$$
\lambda^2-4\lambda+3=0.
$$

Hence

$$
\lambda=3,\quad 1.
$$

For $\lambda=3$,

$$
(A-3I)\mathbf{x}=0
\quad\Rightarrow\quad
-x+y=0,
$$

so an eigenvector is

$$
\mathbf{x}_1=
\begin{pmatrix}
1\\
1
\end{pmatrix}.
$$

For $\lambda=1$,

$$
(A-I)\mathbf{x}=0
\quad\Rightarrow\quad
x+y=0,
$$

so an eigenvector is

$$
\mathbf{x}_2=
\begin{pmatrix}
1\\
-1
\end{pmatrix}.
$$

These two eigenvectors are perpendicular, as expected for a real symmetric matrix.

## Key points

- Eigenvectors give special directions of a linear transformation.
- Eigenvalues give the scale factors along those directions.
- In symmetric or Hermitian problems, eigenvalues are real and eigenvectors have strong orthogonality properties.

## Practice questions

1. Define eigenvalue and eigenvector of a matrix.
2. Derive the characteristic equation $\det(A-\lambda I)=0$.
3. Find the eigenvalues of $\begin{pmatrix}2&1\\1&2\end{pmatrix}$.
4. Find an eigenvector corresponding to each eigenvalue in the previous question.
5. Mention two physical problems where eigenvalues occur.

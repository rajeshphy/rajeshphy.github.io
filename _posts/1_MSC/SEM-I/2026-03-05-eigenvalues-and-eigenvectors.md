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

## Key points

- Eigenvectors give special directions of a linear transformation.
- Eigenvalues give the scale factors along those directions.
- In symmetric or Hermitian problems, eigenvalues are real and eigenvectors have strong orthogonality properties.


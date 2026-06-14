---
title: "Maxima Matrix Essentials"
summary: "A concise workflow for constructing matrices and performing core linear-algebra tasks in Maxima."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - linear-algebra
permalink: /maxima-matrix/
hidden: true
---
Maxima supports standard matrix construction and linear-algebra operations needed for symbolic and exact computations, including linear transformations, coupled systems, and matrix methods in quantum mechanics. The commands below form a minimal toolkit for routine matrix algebra, determinants and inverses, linear systems, and spectral analysis.

## Constructing Matrices and Basic Algebra

Matrices can be created directly from row lists; standard special matrices are available for identity and zero matrices. Core algebra uses the usual operations, with matrix multiplication performed by the dot operator.

- **matrix(row1, row2, ...);** constructs a matrix from its rows.
- **ident(n);** returns the identity matrix of order $n$.
- **zeromatrix(m, n);** returns the $m \times n$ zero matrix.
- **A + B;** and **A - B;** perform matrix addition and subtraction.
- **A . B;** computes the matrix product.
- **transpose(A);** returns the transpose of $A$.

```python
A : matrix([1, 2], [3, 4]);
B : matrix([0, 1], [1, 0]);
I : ident(2);
Z : zeromatrix(2, 3);

A + B;
A - B;
A . B;
transpose(A);
```

## Determinants, Inverses, and Linear Systems

Determinants and inverses are central for testing singularity, coordinate transformations, and solving linear systems. Systems of linear equations can be solved directly, while coefficient and augmented matrices support structural analysis and algorithmic workflows.

- **determinant(A);** computes $\det(A)$.
- **invert(A);** returns $A^{-1}$ when it exists.
- **linsolve([eq1, eq2, ...], [x1, x2, ...]);** solves a linear system for the specified variables.
- **coefmatrix([eq1, eq2, ...], [x1, x2, ...]);** returns the coefficient matrix.
- **augcoefmatrix([eq1, eq2, ...], [x1, x2, ...]);** returns the augmented matrix.

```python
A : matrix([1, 2], [3, 4]);
determinant(A);
invert(A);

eq1 : 2*x + y = 5;
eq2 : x - y = 1;

linsolve([eq1, eq2], [x, y]);
coefmatrix([eq1, eq2], [x, y]);
augcoefmatrix([eq1, eq2], [x, y]);
```

## Eigenanalysis and Row Reduction

Eigenvalues and eigenvectors enable diagonalization, stability analysis, and normal-mode decompositions, especially in quantum mechanics and dynamical systems. Row-reduction-related routines support rank computation and identification of linear dependence.

- **eigenvalues(A);** returns the eigenvalues of $A$.
- **eigenvectors(A);** returns eigenvalues with corresponding eigenvectors.
- **triangularize(A);** reduces a matrix to triangular form.
- **rank(A);** computes the rank of a matrix.

```python
A : matrix([2, 1], [1, 2]);
eigenvalues(A);
eigenvectors(A);

C : matrix([1, 2, 3], [2, 4, 6], [1, 1, 1]);
triangularize(C);
rank(C);
```

```python
kill(all)$
A : matrix([1, 2], [3, 4])$
B : matrix([2, 0], [1, 5])$

A + B;
A . B;
transpose(A);
determinant(A);
invert(A);
eigenvalues(A);
```
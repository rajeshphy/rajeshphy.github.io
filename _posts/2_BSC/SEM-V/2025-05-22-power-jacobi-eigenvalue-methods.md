---
title: "Power and Jacobi Eigenvalue Methods"
date: 2025-05-22 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, eigenvalues, power-method, jacobi-method]
permalink: /bsc/sem-v/mj-9/power-jacobi-eigenvalue-methods/
---

For a square matrix $A$, an eigenpair satisfies

$$A\mathbf v=\lambda\mathbf v,\qquad \mathbf v\ne\mathbf0.$$

The power method extracts the eigenvalue of greatest magnitude. The Jacobi eigenvalue method uses rotations to find all eigenvalues of a real symmetric matrix.

## Power method

Assume that $A$ has independent eigenvectors $\mathbf v_i$ ordered so that

$$\lvert\lambda_1\rvert>\lvert\lambda_2\rvert\ge\cdots\ge\lvert\lambda_n\rvert,$$

and write the starting vector as

$$\mathbf x^{(0)}=c_1\mathbf v_1+c_2\mathbf v_2+\cdots+c_n\mathbf v_n,$$

with $c_1\ne0$. After $k$ matrix multiplications,

$$A^k\mathbf x^{(0)}
=c_1\lambda_1^k\left[
\mathbf v_1+\sum_{i=2}^{n}\frac{c_i}{c_1}
\left(\frac{\lambda_i}{\lambda_1}\right)^k\mathbf v_i
\right].$$

Because every ratio $\lvert\lambda_i/\lambda_1\rvert<1$, the bracket approaches $\mathbf v_1$. This proves the basic iteration:

$$\mathbf y^{(k+1)}=A\mathbf x^{(k)},\qquad
\mathbf x^{(k+1)}=\frac{\mathbf y^{(k+1)}}{\|\mathbf y^{(k+1)}\|}.$$

For a symmetric matrix, an eigenvalue estimate is the Rayleigh quotient

$$\boxed{\lambda^{(k)}
=\frac{(\mathbf x^{(k)})^TA\mathbf x^{(k)}}
{(\mathbf x^{(k)})^T\mathbf x^{(k)}}}.$$

The method fails to select a unique direction if the dominant magnitude is repeated, and it cannot find the dominant mode if $c_1=0$.

For

$$A=\begin{pmatrix}2&1\\1&2\end{pmatrix},\qquad
\mathbf x^{(0)}=\begin{pmatrix}1\\0\end{pmatrix},$$

normalizing by the largest component gives

$$\mathbf x^{(1)}=\begin{pmatrix}1\\1/2\end{pmatrix},\qquad
\mathbf x^{(2)}=\begin{pmatrix}1\\4/5\end{pmatrix},\qquad
\mathbf x^{(3)}=\begin{pmatrix}1\\13/14\end{pmatrix}.$$

The vectors approach $(1,1)^T$, and the Rayleigh quotient approaches $\lambda=3$.

## Jacobi rotations for a symmetric matrix

Let $A=A^T$. Choose a large off-diagonal element $a_{pq}$ and rotate only the $p,q$ coordinate plane. In that plane,

$$R=\begin{pmatrix}\cos\theta&-\sin\theta\\
\sin\theta&\cos\theta\end{pmatrix},\qquad
A'=R^TAR.$$

For the corresponding $2\times2$ block

$$\begin{pmatrix}a_{pp}&a_{pq}\\a_{pq}&a_{qq}\end{pmatrix},$$

the transformed off-diagonal element is

$$a'_{pq}=a_{pq}\cos2\theta
+\frac{a_{qq}-a_{pp}}2\sin2\theta.$$

Setting $a'_{pq}=0$ gives

$$\boxed{\tan2\theta=\frac{2a_{pq}}{a_{pp}-a_{qq}}}.$$

The same rotation is applied to rows and columns, so symmetry and eigenvalues are preserved. Repeatedly annihilating the largest off-diagonal entry drives the matrix toward diagonal form:

$$R_m^T\cdots R_2^TR_1^T A R_1R_2\cdots R_m
\longrightarrow\operatorname{diag}(\lambda_1,\ldots,\lambda_n).$$

The accumulated product $R_1R_2\cdots R_m$ contains the eigenvectors as columns.

For the matrix above, $a_{11}=a_{22}=2$ and $a_{12}=1$, so $\theta=\pi/4$. One rotation gives

$$R^TAR=\begin{pmatrix}3&0\\0&1\end{pmatrix}.$$

Thus the eigenvalues are $3$ and $1$, with eigenvectors proportional to $(1,1)^T$ and $(1,-1)^T$.

The [Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/linear-eigen-checks.mac' | relative_url }}) returns

~~~text
eigen_residual_1 = matrix([0],[0])
eigen_residual_2 = matrix([0],[0])
~~~

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
A^{\prime}=R^TAR.$$

For the corresponding $2\times2$ block

$$\begin{pmatrix}a_{pp}&a_{pq}\\a_{pq}&a_{qq}\end{pmatrix},$$

the transformed off-diagonal element is

$$a^{\prime}_{pq}=a_{pq}\cos2\theta
+\frac{a_{qq}-a_{pp}}2\sin2\theta.$$

Setting $a^{\prime}_{pq}=0$ gives

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

An approximate eigenpair must also be judged by its residual

$$\mathbf r=A\mathbf v-\lambda\mathbf v.$$

The change in successive eigenvalue estimates can be small even when the eigenvector is not yet accurate; requiring $\lVert\mathbf r\rVert$ to be small tests the defining equation itself.

## Solved Problems

### 1. Two power iterations and a Rayleigh quotient

Take

$$A=\begin{pmatrix}4&1\\1&2\end{pmatrix},\qquad
\mathbf x^{(0)}=\begin{pmatrix}1\\0\end{pmatrix},$$

and normalize each iterate by its largest component. The first multiplication gives

$$A\mathbf x^{(0)}=\begin{pmatrix}4\\1\end{pmatrix},\qquad
\mathbf x^{(1)}=\begin{pmatrix}1\\1/4\end{pmatrix}.$$

The second gives

$$A\mathbf x^{(1)}
=\begin{pmatrix}17/4\\3/2\end{pmatrix},\qquad
\mathbf x^{(2)}=\begin{pmatrix}1\\6/17\end{pmatrix}.$$

Scaling by $17$ does not change the Rayleigh quotient, so use $\mathbf v=(17,6)^T$:

$$
\begin{aligned}
\lambda^{(2)}
&=\frac{\mathbf v^TA\mathbf v}{\mathbf v^T\mathbf v}\\
&=\frac{17(74)+6(29)}{17^2+6^2}\\
&=\frac{1432}{325}\\
&\approx\boxed{4.40615}.
\end{aligned}
$$

The exact dominant eigenvalue is $3+\sqrt2\approx4.41421$, so the estimate is approaching it from below.

### 2. One exact Jacobi rotation

For

$$A=\begin{pmatrix}5&2\\2&2\end{pmatrix},$$

the rotation condition is

$$\tan2\theta=\frac{2a_{12}}{a_{11}-a_{22}}=\frac43.$$

Choose $\cos\theta=2/\sqrt5$ and $\sin\theta=1/\sqrt5$; then $\tan\theta=1/2$ and

$$\tan2\theta=\frac{2\tan\theta}{1-\tan^2\theta}=\frac43.$$

Thus

$$R=\frac1{\sqrt5}\begin{pmatrix}2&-1\\1&2\end{pmatrix}.$$

Direct multiplication gives

$$R^TAR=\begin{pmatrix}6&0\\0&1\end{pmatrix}.$$

Therefore the eigenvalues are $6$ and $1$, and the normalized eigenvectors are the columns of $R$. The trace $7$ and determinant $6$ are unchanged, providing two independent invariance checks.

## Descriptive Questions

1. Derive the power method from an expansion of the starting vector in eigenvectors.
2. Explain how the ratio $\lvert\lambda_2/\lambda_1\rvert$ controls power-method convergence.
3. Derive the Jacobi rotation angle that annihilates one off-diagonal element of a symmetric matrix.
4. Explain why the Rayleigh quotient and eigenpair residual should both be monitored.

## Numerical Problems

1. For $A=\operatorname{diag}(7,2,-1)$ and a starting vector with non-zero components in all eigendirections, which eigenvalue does power iteration select?
   **Answer:** $\lambda=7$, the eigenvalue of largest magnitude.

2. If the two largest eigenvalue magnitudes are $5$ and $2$, by what asymptotic factor is the unwanted component reduced per power iteration?
   **Answer:** $\lvert\lambda_2/\lambda_1\rvert=2/5=0.4$.

3. Calculate the Rayleigh quotient of $A=\begin{pmatrix}3&1\\1&3\end{pmatrix}$ at $\mathbf x=(1,0)^T$.
   **Answer:** $\lambda_R=3$.

4. Find a Jacobi rotation angle and the eigenvalues of $\begin{pmatrix}4&1\\1&4\end{pmatrix}$.
   **Answer:** $\theta=\pi/4$; eigenvalues $5$ and $3$.

The iterations, Rayleigh quotients, rotation, and eigenpairs are checked in the [Unit I Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-i-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Power iteration — Wikipedia](https://en.wikipedia.org/wiki/Power_iteration).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 9, “Approximating Eigenvalues.”
3. Gene H. Golub and Charles F. Van Loan, *Matrix Computations*, 4th ed., Chapters 7–8, “The Unsymmetric Eigenvalue Problem” and “The Symmetric Eigenvalue Problem.”

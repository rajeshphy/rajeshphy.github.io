---
title: "Homogeneous Differential Equations with Constant Coefficients"
summary: "Characteristic roots and the complete real solutions for distinct, repeated, and complex roots."
date: 2025-06-26 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, constant-coefficient-equations, characteristic-roots]
permalink: /bsc/sem-ii/homogeneous-constant-coefficient-equations/
hidden: true
---

Consider the homogeneous constant-coefficient equation

$$
a_n\frac{d^ny}{dx^n}+a_{n-1}\frac{d^{n-1}y}{dx^{n-1}}
+\cdots+a_1\frac{dy}{dx}+a_0y=0,
\qquad a_n\ne0.
$$

The exponential $y=e^{mx}$ is useful because every differentiation only multiplies it by $m$:

$$
\frac{d^k}{dx^k}e^{mx}=m^ke^{mx}.
$$

Substitution gives

$$
e^{mx}\left(a_nm^n+a_{n-1}m^{n-1}+\cdots+a_1m+a_0\right)=0.
$$

Since $e^{mx}\ne0$, the allowed values of $m$ satisfy the characteristic equation

$$
\boxed{a_nm^n+a_{n-1}m^{n-1}+\cdots+a_1m+a_0=0}.
$$

## Distinct real roots

For

$$
y''-5y'+6y=0,
$$

the characteristic polynomial is

$$
m^2-5m+6=(m-2)(m-3).
$$

The two independent solutions are $e^{2x}$ and $e^{3x}$, so

$$
\boxed{y=C_1e^{2x}+C_2e^{3x}}.
$$

## Repeated roots

If a root $m_0$ occurs $s$ times, the $s$ independent solutions are

$$
e^{m_0x},\ xe^{m_0x},\ldots,x^{s-1}e^{m_0x}.
$$

For example,

$$
y''-4y'+4y=0
$$

has $(m-2)^2=0$, and therefore

$$
\boxed{y=(C_1+C_2x)e^{2x}}.
$$

To see why the factor $x$ appears, start with the distinct-root quotient

$$
\frac{e^{(m_0+\varepsilon)x}-e^{m_0x}}{\varepsilon}.
$$

Taking $\varepsilon\to0$ gives

$$
\frac{\partial}{\partial m_0}e^{m_0x}=xe^{m_0x}.
$$

## Complex-conjugate roots

With real coefficients, a complex root $m=\alpha+i\beta$ is accompanied by $\alpha-i\beta$. Euler's formula gives

$$
e^{(\alpha+i\beta)x}=e^{\alpha x}
\bigl(\cos\beta x+i\sin\beta x\bigr).
$$

Taking real linear combinations of the conjugate solutions yields

$$
\boxed{y=e^{\alpha x}
\left(C_1\cos\beta x+C_2\sin\beta x\right)}.
$$

For $y''+4y=0$, $m=\pm2i$, so

$$
\boxed{y=C_1\cos2x+C_2\sin2x}.
$$

Each result is verified by direct differentiation in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

---
title: "Homogeneous Differential Equations with Constant Coefficients"
summary: "Characteristic roots and the complete real solutions for distinct, repeated, and complex roots."
date: 2025-06-20 09:00:00 +0530
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

An $n$th-order equation requires $n$ linearly independent basis solutions and therefore carries $n$ arbitrary constants. Root multiplicity determines which factors of $x$ are needed to complete that basis.

## Distinct real roots

For

$$
y^{\prime\prime}-5y^{\prime}+6y=0,
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
y^{\prime\prime}-4y^{\prime}+4y=0
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

For $y^{\prime\prime}+4y=0$, $m=\pm2i$, so

$$
\boxed{y=C_1\cos2x+C_2\sin2x}.
$$

Each result is verified by direct differentiation in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. A third-order initial-value problem

Solve

$$
y^{\prime\prime\prime}-y^{\prime}=0,
\qquad y(0)=1,
\qquad y^{\prime}(0)=0,
\qquad y^{\prime\prime}(0)=2.
$$

The characteristic equation is

$$
m^3-m=m(m-1)(m+1)=0.
$$

The distinct roots $0,1,-1$ give

$$
y=C_0+C_1e^x+C_2e^{-x}.
$$

At $x=0$ the three conditions give

$$
C_0+C_1+C_2=1,
\qquad C_1-C_2=0,
\qquad C_1+C_2=2.
$$

Hence $C_1=C_2=1$ and $C_0=-1$, so

$$
\boxed{y=2\cosh x-1}.
$$

Direct differentiation gives $y^{\prime\prime\prime}-y^{\prime}=0$ and reproduces all three initial values. The three constants before applying the data agree with the order of the equation.

### 2. Complex roots with a decaying envelope

Solve

$$
y^{\prime\prime}+2y^{\prime}+5y=0,
\qquad y(0)=1,
\qquad y^{\prime}(0)=0.
$$

The characteristic polynomial is

$$
m^2+2m+5=0,
$$

so $m=-1\pm2i$. Therefore

$$
y=e^{-x}(C_1\cos2x+C_2\sin2x).
$$

The first condition gives $C_1=1$. Differentiating,

$$
y^{\prime}(0)=-C_1+2C_2=0,
$$

so $C_2=1/2$. Thus

$$
\boxed{y=e^{-x}\left(\cos2x+\frac12\sin2x\right)}.
$$

Substitution gives a zero differential-equation residual. The oscillation is bounded by an envelope proportional to $e^{-x}$, so the solution tends to zero as $x\to\infty$.

## Descriptive Questions

1. Derive the characteristic equation for an $n$th-order homogeneous differential equation with constant coefficients.
2. Explain why a root of multiplicity $s$ generates the factors $1,x,\ldots,x^{s-1}$.
3. Show how a complex-conjugate root pair produces a real sine-cosine basis.
4. Relate the order of the equation, the number of independent solutions, and the number of initial conditions required for a unique solution.

## Numerical Problems

1. For $y^{\prime\prime}-6y^{\prime}+13y=0$, determine the roots and the change in the exponential envelope between $x=0$ and $x=1$.
   **Final answer:** $m=3\pm2i$; the envelope is multiplied by $e^3=20.0855$.
2. Solve $y^{\prime\prime}+6y^{\prime}+9y=0$ with $y(0)=2$, $y^{\prime}(0)=-3$, and evaluate $y(1)$.
   **Final answer:** $y=(2+3x)e^{-3x}$; $y(1)=5e^{-3}=0.24894$.
3. A mode obeys $y^{\prime\prime}+25y=0$. Find its angular frequency and period if the independent variable is time in seconds.
   **Final answer:** $\omega=5\,\mathrm{rad\,s^{-1}}$ and $T=2\pi/5=1.25664\,\mathrm{s}$.
4. Construct the monic differential equation whose characteristic roots are $-2,-2,1$.
   **Final answer:** $(m+2)^2(m-1)=m^3+3m^2-4$; hence $y^{\prime\prime\prime}+3y^{\prime\prime}-4y=0$.

The residuals, initial values, and numerical evaluations are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Linear differential equation — Wikipedia](https://en.wikipedia.org/wiki/Linear_differential_equation)
2. William E. Boyce, Richard C. DiPrima, and Douglas B. Meade, *Elementary Differential Equations and Boundary Value Problems*, 11th ed., chapter “Higher-Order Linear Equations,” Wiley.
3. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., Chapter 2, “Second-Order Linear ODEs,” Wiley.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 8, “Ordinary Differential Equations,” Wiley.

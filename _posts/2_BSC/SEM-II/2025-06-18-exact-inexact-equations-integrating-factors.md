---
title: "Exact and Inexact Differential Equations and Integrating Factors"
summary: "The exactness condition, construction of a potential function, and integrating factors depending on one variable."
date: 2025-06-18 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, exact-equations, integrating-factors]
permalink: /bsc/sem-ii/exact-inexact-equations-integrating-factors/
hidden: true
---

Write a first-order equation as

$$
M(x,y)dx+N(x,y)dy=0.
$$

It is exact if there is a scalar function $\Psi(x,y)$ such that

$$
d\Psi=\Psi_xdx+\Psi_y dy=Mdx+Ndy.
$$

Thus $M=\Psi_x$ and $N=\Psi_y$. If the second partial derivatives are continuous, then

$$
\boxed{M_y=\Psi_{xy}=\Psi_{yx}=N_x}.
$$

On a simply connected region this condition is also sufficient. The solution is the level curve

$$
\boxed{\Psi(x,y)=C}.
$$

## Constructing the potential

Consider

$$
(2xy+3)dx+(x^2+4y)dy=0.
$$

Since

$$
M_y=2x=N_x,
$$

the equation is exact. Integrate $M$ with respect to $x$, treating $y$ as constant:

$$
\Psi=\int(2xy+3)dx=x^2y+3x+g(y).
$$

Differentiate this expression with respect to $y$ and compare it with $N$:

$$
\Psi_y=x^2+g^{\prime}(y)=x^2+4y.
$$

Hence $g^{\prime}(y)=4y$, $g=2y^2$, and

$$
\boxed{x^2y+3x+2y^2=C}.
$$

## Turning an inexact equation into an exact one

If $M_y\ne N_x$, seek a nonzero integrating factor $\mu$ such that

$$
\mu Mdx+\mu Ndy=0
$$

is exact. If $\mu=\mu(x)$, exactness requires

$$
\frac{\partial(\mu M)}{\partial y}
=\frac{\partial(\mu N)}{\partial x},
$$

so

$$
\mu M_y=\mu^{\prime} N+\mu N_x.
$$

Therefore, when the right-hand side depends on $x$ alone,

$$
\boxed{
\frac{\mu^{\prime}}{\mu}=\frac{M_y-N_x}{N},
\qquad
\mu(x)=\exp\!\int\frac{M_y-N_x}{N}dx}.
$$

Similarly, if $\mu=\mu(y)$,

$$
\boxed{
\frac{1}{\mu}\frac{d\mu}{dy}=\frac{N_x-M_y}{M},
\qquad
\mu(y)=\exp\!\int\frac{N_x-M_y}{M}dy}.
$$

### Example

For

$$
(2y-x)dx+xdy=0,
$$

$M_y=2$ and $N_x=1$, so the equation is inexact. Moreover,

$$
\frac{M_y-N_x}{N}=\frac1x.
$$

Thus $\mu=e^{\int dx/x}=\lvert x\rvert$ on an interval not crossing $x=0$; an irrelevant constant sign lets us take $\mu=x$. Multiplication gives

$$
(2xy-x^2)dx+x^2dy=0.
$$

Now

$$
\frac{\partial}{\partial y}(2xy-x^2)=2x
=\frac{\partial}{\partial x}(x^2).
$$

Integrating the new $M$ with respect to $x$ gives

$$
\Psi=x^2y-\frac{x^3}{3}+g(y).
$$

Since $\Psi_y=x^2+g^{\prime}(y)=x^2$, $g$ is constant. Hence

$$
\boxed{x^2y-\frac{x^3}{3}=C}.
$$

The exactness tests and recovered potentials are verified in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. An exact initial-value problem

Solve

$$
(2x+y)dx+(x+2y)dy=0,
\qquad y(0)=1.
$$

Here $M=2x+y$ and $N=x+2y$, so

$$
M_y=1=N_x.
$$

Integrating $M$ with respect to $x$,

$$
\Psi=x^2+xy+g(y).
$$

Then

$$
\Psi_y=x+g^{\prime}(y)=x+2y,
$$

which gives $g=y^2$. The implicit solution is

$$
x^2+xy+y^2=C.
$$

The initial condition gives $C=1$, hence

$$
\boxed{x^2+xy+y^2=1}.
$$

At $x=1/2$ this becomes $4y^2+2y-3=0$. The branch connected continuously to $y(0)=1$ is

$$
\boxed{y\!\left(\frac12\right)=\frac{-1+\sqrt{13}}4=0.65139}.
$$

Both partial derivatives of $\Psi=x^2+xy+y^2$ reproduce $M$ and $N$, and the selected point gives $\Psi=1$ exactly.

### 2. An integrating factor depending on y

Solve, on $x>0$ and $y>0$,

$$
y\,dx+3x\,dy=0,
\qquad y(1)=2.
$$

Now $M=y$, $N=3x$, $M_y=1$, and $N_x=3$. Therefore

$$
\frac{N_x-M_y}{M}=\frac2y,
$$

which depends only on $y$. The integrating factor is

$$
\mu(y)=\exp\!\int\frac{2}{y}dy=y^2.
$$

After multiplication,

$$
y^3dx+3xy^2dy=d(xy^3)=0.
$$

Thus $xy^3=C$. The initial condition gives $C=8$, and positivity selects

$$
\boxed{y=2x^{-1/3}}.
$$

Indeed, $y+3xy^{\prime}=0$. The solution remains real and positive on the stated interval and diverges as $x\to0^+$, consistent with the conserved product $xy^3=8$.

## Descriptive Questions

1. Derive the exactness condition $M_y=N_x$ from the existence of a potential function.
2. Explain why the condition $M_y=N_x$ is sufficient only after suitable regularity and domain assumptions are imposed.
3. Derive the tests for integrating factors depending only on $x$ and only on $y$.
4. Explain why multiplying an integrating factor by a nonzero constant does not change the solution curves.

## Numerical Problems

1. For $(3x^2+2y)dx+(2x+4y^3)dy=0$, find the potential constant on the curve through $(1,1)$.
   **Final answer:** $\Psi=x^3+2xy+y^4$ and $C=4$.
2. Evaluate the line integral of $(2x+y)dx+(x+2y)dy$ from $(0,0)$ to $(1,2)$ along any smooth path.
   **Final answer:** $\Delta(x^2+xy+y^2)=7$.
3. Find an integrating factor depending on $x$ for $4y\,dx+x\,dy=0$. If $y(1)=16$, find $y(2)$.
   **Final answer:** $\mu=x^3$, $x^4y=16$, and $y(2)=1$.
4. On the unit circle traversed counterclockwise, evaluate $\oint Mdx+Ndy$ for $M=-y/(x^2+y^2)$ and $N=x/(x^2+y^2)$.
   **Final answer:** $2\pi$; the nonzero closed integral shows why the punctured plane does not admit a single-valued global potential for this form.

The problem solutions and exact evaluations are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Exact differential equation — Wikipedia](https://en.wikipedia.org/wiki/Exact_differential_equation)
2. William E. Boyce, Richard C. DiPrima, and Douglas B. Meade, *Elementary Differential Equations and Boundary Value Problems*, 11th ed., chapter “First-Order Differential Equations,” Wiley.
3. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., Chapter 1, “First-Order ODEs,” Wiley.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 8, “Ordinary Differential Equations,” Wiley.

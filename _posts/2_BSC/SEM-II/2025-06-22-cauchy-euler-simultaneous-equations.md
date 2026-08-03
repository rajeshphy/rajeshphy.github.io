---
title: "Cauchy-Euler and Simultaneous Differential Equations"
summary: "Power-law solutions of the Cauchy-Euler equation and normal combinations for coupled first- and second-order systems."
date: 2025-06-22 09:00:00 +0530
categories:
  - bsc-ii
tags: [bsc, semester-ii, mathematical-physics, cauchy-euler-equation, simultaneous-equations]
permalink: /bsc/sem-ii/cauchy-euler-simultaneous-equations/
hidden: true
---

## Cauchy-Euler equation

A second-order Cauchy-Euler equation has the form

$$
ax^2y^{\prime\prime}+bxy^{\prime}+cy=0,
\qquad x>0.
$$

Every derivative of a power reduces its exponent by one, while the prefactor restores it. With $y=x^m$,

$$
y^{\prime}=mx^{m-1},
\qquad
y^{\prime\prime}=m(m-1)x^{m-2}.
$$

Substitution gives

$$
x^m\left[am(m-1)+bm+c\right]=0.
$$

Thus the indicial equation is

$$
\boxed{am(m-1)+bm+c=0}.
$$

For

$$
x^2y^{\prime\prime}-3xy^{\prime}+4y=0,
$$

the indicial polynomial is

$$
m(m-1)-3m+4=(m-2)^2.
$$

The repeated-root solution is

$$
\boxed{y=x^2(C_1+C_2\ln x)}.
$$

The logarithm follows directly from the change of variable $t=\ln x$. Since

$$
\frac{dy}{dx}=\frac1x\frac{dy}{dt},
$$

another differentiation gives

$$
\frac{d^2y}{dx^2}
=\frac1{x^2}\left(\frac{d^2y}{dt^2}-\frac{dy}{dt}\right).
$$

The original equation becomes

$$
\frac{d^2y}{dt^2}-4\frac{dy}{dt}+4y=0,
$$

whose repeated root is $2$. Hence $y=(C_1+C_2t)e^{2t}=x^2(C_1+C_2\ln x)$.

## Simultaneous first-order equations

Consider

$$
x^{\prime}=3x+y,
\qquad
y^{\prime}=x+3y.
$$

Add and subtract the equations. With

$$
u=x+y,
\qquad v=x-y,
$$

we obtain

$$
u^{\prime}=4u,
\qquad v^{\prime}=2v.
$$

Therefore $u=Ae^{4t}$ and $v=Be^{2t}$. Solving $u=x+y$, $v=x-y$ for the original variables gives

$$
\boxed{
x=\frac12(Ae^{4t}+Be^{2t}),
\qquad
y=\frac12(Ae^{4t}-Be^{2t})}.
$$

## Simultaneous second-order equations

For

$$
x^{\prime\prime}+2x-y=0,
\qquad
y^{\prime\prime}+2y-x=0,
$$

the same combinations decouple the system. Addition gives

$$
u^{\prime\prime}+u=0,
$$

while subtraction gives

$$
v^{\prime\prime}+3v=0.
$$

Thus

$$
u=A\cos t+B\sin t,
\qquad
v=C\cos(\sqrt3t)+D\sin(\sqrt3t),
$$

and

$$
\boxed{x=\frac{u+v}{2},\qquad y=\frac{u-v}{2}}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-ii/unit-2/coupled-normal-combinations.png' | relative_url }}" alt="In-phase and out-of-phase normal combinations for two coupled variables" loading="lazy">
  </div>
  <figcaption>The combinations \(u=x+y\) and \(v=x-y\) isolate the in-phase and out-of-phase motions. Their equations contain no remaining coupling.</figcaption>
</figure>

Direct substitution into both coupled systems is carried out in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-differential-equations.mac' | relative_url }}).

## Solved Problems

### 1. A Cauchy-Euler initial-value problem

Solve, for $x>0$,

$$
x^2y^{\prime\prime}+xy^{\prime}-4y=0,
\qquad y(1)=5,
\qquad y^{\prime}(1)=6.
$$

With $y=x^m$, the indicial equation is

$$
m(m-1)+m-4=m^2-4=0.
$$

The roots are $m=2,-2$, so

$$
y=C_1x^2+C_2x^{-2}.
$$

At $x=1$,

$$
C_1+C_2=5,
\qquad 2C_1-2C_2=6.
$$

Hence $C_1=4$ and $C_2=1$, giving

$$
\boxed{y=4x^2+x^{-2}}.
$$

Substitution gives $x^2y^{\prime\prime}+xy^{\prime}-4y=0$, and both initial conditions are recovered. The restriction $x>0$ is consistent with the logarithmic transformation used for the general theory.

### 2. A first-order system solved by elimination

Solve

$$
x^{\prime}=x+y,
\qquad y^{\prime}=4x+y,
\qquad x(0)=1,
\qquad y(0)=0.
$$

From the first equation, $y=x^{\prime}-x$. Differentiating and using the second equation gives

$$
x^{\prime\prime}-x^{\prime}=4x+(x^{\prime}-x),
$$

or

$$
x^{\prime\prime}-2x^{\prime}-3x=0.
$$

Its roots are $3$ and $-1$, so

$$
x=Ae^{3t}+Be^{-t},
\qquad
y=x^{\prime}-x=2Ae^{3t}-2Be^{-t}.
$$

The initial data give $A+B=1$ and $A-B=0$. Therefore

$$
\boxed{
x=\frac{e^{3t}+e^{-t}}2,
\qquad
y=e^{3t}-e^{-t}}.
$$

Direct substitution makes both first-order residuals zero. The growing $e^{3t}$ normal component eventually dominates the decaying $e^{-t}$ component.

### 3. Two second-order normal combinations

Solve

$$
x^{\prime\prime}+3x-y=0,
\qquad
y^{\prime\prime}+3y-x=0,
$$

subject to $x(0)=1$, $y(0)=0$, and $x^{\prime}(0)=y^{\prime}(0)=0$.

Set $u=x+y$ and $v=x-y$. Adding and subtracting the equations gives

$$
u^{\prime\prime}+2u=0,
\qquad
v^{\prime\prime}+4v=0.
$$

The initial data become $u(0)=v(0)=1$ and $u^{\prime}(0)=v^{\prime}(0)=0$, hence

$$
u=\cos(\sqrt2t),
\qquad
v=\cos2t.
$$

Recovering the original variables,

$$
\boxed{
x=\frac{\cos(\sqrt2t)+\cos2t}{2},
\qquad
y=\frac{\cos(\sqrt2t)-\cos2t}{2}}.
$$

Both coupled equations and all four initial data are satisfied. If $t$ is measured in seconds, the two normal angular frequencies are $\sqrt2\,\mathrm{rad\,s^{-1}}$ and $2\,\mathrm{rad\,s^{-1}}$.

## Descriptive Questions

1. Derive the indicial equation for a second-order Cauchy-Euler equation and relate it to the substitution $t=\ln x$.
2. Explain the origin of the $x^m\ln x$ term when the indicial equation has a repeated root.
3. Show how elimination converts two simultaneous first-order equations into one second-order equation.
4. Explain why normal combinations decouple a symmetric pair of simultaneous second-order equations.

## Numerical Problems

1. For $x^2y^{\prime\prime}+xy^{\prime}+9y=0$, find the logarithmic phase period and the factor by which $x$ must be multiplied to repeat the phase.
   **Final answer:** $m=\pm3i$, $\Delta(\ln x)=2\pi/3$, and $x_2/x_1=e^{2\pi/3}=8.1205$.
2. Find the normal growth rates of $x^{\prime}=2x+3y$, $y^{\prime}=3x+2y$.
   **Final answer:** the rates are $5$ for $x+y$ and $-1$ for $x-y$.
3. Find the normal angular frequencies of $x^{\prime\prime}+5x-2y=0$, $y^{\prime\prime}+5y-2x=0$.
   **Final answer:** $\omega_{+}=\sqrt3$ and $\omega_{-}=\sqrt7$ in inverse-time units.
4. Solve $x^2y^{\prime\prime}-5xy^{\prime}+9y=0$ with $y(1)=2$, $y^{\prime}(1)=7$, and evaluate $y(2)$.
   **Final answer:** $y=x^3(2+\ln x)$; $y(2)=8(2+\ln2)=21.5452$.

The three solution residuals and all numerical values are verified in the [Unit II problem-check worksheet]({{ '/assets/maxima/bsc/sem-ii/unit-2/unit-2-problem-checks.mac' | relative_url }}).

## References

1. [Cauchy-Euler equation — Wikipedia](https://en.wikipedia.org/wiki/Cauchy%E2%80%93Euler_equation)
2. William E. Boyce, Richard C. DiPrima, and Douglas B. Meade, *Elementary Differential Equations and Boundary Value Problems*, 11th ed., chapters “Higher-Order Linear Equations” and “Systems of First-Order Linear Equations,” Wiley.
3. Erwin Kreyszig, *Advanced Engineering Mathematics*, 10th ed., chapters “Second-Order Linear ODEs” and “Systems of ODEs,” Wiley.
4. Mary L. Boas, *Mathematical Methods in the Physical Sciences*, 3rd ed., Chapter 8, “Ordinary Differential Equations,” Wiley.

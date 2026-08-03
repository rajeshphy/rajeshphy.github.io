---
title: "Trapezoidal, Simpson, and Gaussian Quadrature"
date: 2025-06-21 09:00:00 +0530
categories:
  - bsc-v
tags: [numerical-methods, quadrature, trapezoidal-rule, simpson-rule, gaussian-quadrature]
permalink: /bsc/sem-v/mj-9/trapezoid-simpson-gaussian-quadrature/
---

Numerical quadrature replaces

$$I=\int_a^b f(x)\,dx$$

by a weighted sum of sampled values. The weights follow by integrating an interpolating polynomial, rather than by guessing the area.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-9/quadrature-ode.png' | relative_url }}" alt="Trapezoidal approximation and one-step ODE geometry" loading="lazy" decoding="async">
</figure>

The construction is available as [editable TikZ]({{ '/assets/tikz/bsc/sem-v/mj-9/quadrature-ode.tex' | relative_url }}).

## Trapezoidal rule

On $[x_i,x_{i+1}]$, where $h=x_{i+1}-x_i$, the linear interpolant is

$$P_1(x)=f_i\frac{x_{i+1}-x}{h}
+f_{i+1}\frac{x-x_i}{h}.$$

Integrating both basis functions gives $h/2$, so

$$\int_{x_i}^{x_{i+1}}f(x)\,dx
\approx\frac h2(f_i+f_{i+1}).$$

For $n$ equal subintervals, $x_i=a+ih$ and $h=(b-a)/n$. Adding adjacent panels yields the composite rule

$$\boxed{I_T=\frac h2\left[
f_0+2\sum_{i=1}^{n-1}f_i+f_n\right]}.$$

For a sufficiently smooth function,

$$I-I_T=-\frac{b-a}{12}h^2 f^{\prime\prime}(\xi),$$

for some $\xi\in(a,b)$. Halving $h$ therefore reduces the leading error by about a factor of four.

## Simpson's one-third rule

Use three equally spaced nodes $x_0,x_1,x_2$, with $x_1-x_0=x_2-x_1=h$, and put $t=(x-x_1)/h$. The nodes become $-1,0,1$, whose Lagrange basis polynomials are

$$L_{-1}(t)=\frac{t(t-1)}2,\qquad
L_0(t)=1-t^2,\qquad
L_1(t)=\frac{t(t+1)}2.$$

Their integrals from $-1$ to $1$ are $1/3,4/3,1/3$. Since $dx=h\,dt$,

$$\int_{x_0}^{x_2}f(x)\,dx
\approx\frac h3(f_0+4f_1+f_2).$$

Adding pairs of panels gives, for even $n$,

$$\boxed{I_S=\frac h3\left[
f_0+f_n
+4\sum_{\substack{i=1\\i\ {\rm odd}}}^{n-1}f_i
+2\sum_{\substack{i=2\\i\ {\rm even}}}^{n-2}f_i
\right]}.$$

The composite error is

$$I-I_S=-\frac{b-a}{180}h^4f^{(4)}(\xi).$$

Simpson's rule is exact for every polynomial of degree at most three.

## Two-point Gaussian quadrature

On $[-1,1]$, seek a symmetric two-point rule

$$\int_{-1}^{1}f(t)\,dt\approx w[f(-c)+f(c)].$$

Exactness for $f(t)=1$ requires $2w=2$, so $w=1$. Exactness for $f(t)=t^2$ then requires

$$2c^2=\int_{-1}^{1}t^2\,dt=\frac23,$$

which gives $c=1/\sqrt3$. Odd moments vanish by symmetry. Hence

$$\boxed{\int_{-1}^{1}f(t)\,dt
\approx f\!\left(-\frac1{\sqrt3}\right)
+f\!\left(\frac1{\sqrt3}\right)}$$

is exact through degree three. To integrate over $[a,b]$, use

$$x=\frac{a+b}{2}+\frac{b-a}{2}t,\qquad
dx=\frac{b-a}{2}\,dt,$$

so

$$\boxed{\int_a^b f(x)\,dx\approx\frac{b-a}{2}
\left[
f\!\left(\frac{a+b}{2}-\frac{b-a}{2\sqrt3}\right)
+f\!\left(\frac{a+b}{2}+\frac{b-a}{2\sqrt3}\right)
\right]}.$$

## Exactness checks

For $f(x)=x^3-2x+4$ on $[0,2]$, Simpson's rule with $h=1$ gives

$$I_S=\frac13[f(0)+4f(1)+f(2)]
=\frac13(4+12+8)=8,$$

equal to the analytic integral. For $g(t)=t^2+2t+3$ on $[-1,1]$, the two-point Gaussian rule gives $20/3$, also exactly.

The [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/quadrature-ode-fit-checks.mac' | relative_url }}) displays

~~~text
simpson_residual = 0
gauss_residual   = 0
~~~

## Solved Problems

### 1. Composite trapezoidal rule for a convex function

Approximate

$$I=\int_0^1x^2\,dx$$

with four equal subintervals. Here $h=1/4$ and

$$f_0=0,\quad f_1=\frac1{16},\quad f_2=\frac14,
\quad f_3=\frac9{16},\quad f_4=1.$$

The composite trapezoidal rule gives

$$
\begin{aligned}
I_T&=\frac{1/4}{2}
\left[0+2\left(\frac1{16}+\frac14+\frac9{16}\right)+1\right]\\
&=\frac18\left(\frac{11}{4}\right)\\
&=\boxed{\frac{11}{32}=0.34375}.
\end{aligned}
$$

The exact integral is $1/3$, so

$$I_T-I=\frac{11}{32}-\frac13=\frac1{96}
\approx0.0104167.$$

The positive signed error is physically consistent with the chords lying above the convex curve $x^2$.

### 2. Two-point Gaussian quadrature on a general interval

Evaluate

$$I=\int_0^2(x^3+x^2+1)\,dx$$

with the two-point Gaussian rule. The map $x=1+t$ sends $[0,2]$ to $[-1,1]$ and has $dx=dt$. Therefore

$$I_G=f\!\left(1-\frac1{\sqrt3}\right)
+f\!\left(1+\frac1{\sqrt3}\right).$$

Put $u=1/\sqrt3$. By symmetry,

$$
\begin{aligned}
f(1-u)+f(1+u)
&=[(1-u)^3+(1+u)^3]\\
&\quad+[(1-u)^2+(1+u)^2]+2\\
&=(2+6u^2)+(2+2u^2)+2\\
&=6+8\left(\frac13\right)\\
&=\boxed{\frac{26}{3}}.
\end{aligned}
$$

Direct integration also gives $4+8/3+2=26/3$. Exact agreement is expected because the integrand is cubic.

## Descriptive Questions

1. Derive the trapezoidal rule by integrating a linear interpolant.
2. Derive Simpson's one-third weights and explain why the composite rule requires an even number of subintervals.
3. Derive the nodes and weights of two-point Gaussian quadrature from polynomial exactness.
4. Compare the degree of exactness and leading composite error of the trapezoidal and Simpson rules.

## Numerical Problems

1. Apply one Simpson panel to $\int_0^2x^4\,dx$ and compare with the exact result.
   **Answer:** $I_S=20/3\approx6.66667$; exact $I=32/5=6.4$; error $I_S-I=4/15\approx0.26667$.

2. Apply one trapezoidal panel to $\int_1^3(3x+2)\,dx$.
   **Answer:** $I_T=(2/2)[5+11]=16$, exactly.

3. On $[0,3]$ with step $h=0.5$, decide whether the composite Simpson one-third rule is admissible.
   **Answer:** $n=(3-0)/0.5=6$, which is even, so it is admissible.

4. Apply two-point Gaussian quadrature to $\int_{-1}^{1}t^4\,dt$ and find the signed error $I_G-I$.
   **Answer:** $I_G=2/9$, exact $I=2/5$, and $I_G-I=-8/45$.

The panel sums, mapped nodes, and exactness comparisons are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-ii-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Numerical integration — Wikipedia](https://en.wikipedia.org/wiki/Numerical_integration).
2. Richard L. Burden, J. Douglas Faires, and Annette M. Burden, *Numerical Analysis*, 10th ed., Chapter 4, “Numerical Differentiation and Integration.”
3. Steven C. Chapra and Raymond P. Canale, *Numerical Methods for Engineers*, 8th ed., Chapter 21, “Newton-Cotes Integration Formulas.”

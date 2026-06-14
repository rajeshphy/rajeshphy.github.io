---
title: "Calculus with Maxima"
summary: "Core Maxima commands for differentiation, integration, limits, series, sums, and differential equations."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - calculus
permalink: /calculus-in-maxima/
hidden: true
---
Maxima provides a compact, symbolic workflow for standard calculus operations—differentiation, integration, limits, summation/product manipulation, series expansion, algebraic equation solving, and differential equation solving—supporting both routine computation and physics-oriented analytical work.

## Differentiation and Physical Interpretation

Differentiation in Maxima is performed with **diff**, yielding first or higher derivatives with respect to a chosen variable. In applications, derivatives encode local change, slopes, and time-evolution quantities such as velocity and acceleration, and they appear centrally in higher-order differential models.

- First derivative: **diff(f, x);** computes $\frac{df}{dx}$.
- $n$th derivative: **diff(f, x, n);** computes $\frac{d^n f}{dx^n}$.

```python
diff(x^3 + sin(x), x);
diff(exp(x)*cos(x), x, 2);
```

## Defining dependent variables and partial derivatives is also straightforward:

```python
depends(y, x);
diff(y, x);
diff(y, x, 2);
```
## Assumptions of constants and variables

Here is a list of possible assumptions examples:

```python
assume(x > 0);
assume(n, integer);
assume(a, real);
```
## Kill command
The **kill** command is used to clear variables, functions, or assumptions from the Maxima environment. This is particularly useful for resetting the state of the session or removing specific definitions that are no longer needed.
- Clear a variable: **kill(x);** removes the definition of variable `x`.
- Clear a function: **kill(f);** removes the definition of function `f`.
- Clear all variables and functions: **kill(all);** resets the entire environment.

## Integration, Limits, and Discrete Operators

Integration via **integrate** supports both indefinite and definite forms, including improper integrals such as $\int_0^\infty f(x)\,dx$, which commonly arise in normalization and expectation-value calculations. Limits computed by **limit** are essential for testing continuity, diagnosing singular behavior, and extracting asymptotic structure. Discrete calculus and special-function manipulations frequently use finite sums and products.

- Indefinite integral: **integrate(f, x);** returns $\int f\,dx$.
- Definite integral: **integrate(f, x, a, b);** returns $\int_a^b f\,dx$.
- Limit: **limit(f, x, a);** returns $\lim_{x\to a} f(x)$.
- Summation: **sum(f, k, m, n);** returns $\sum_{k=m}^{n} f$.
- Product: **product(f, k, m, n);** returns $\prod_{k=m}^{n} f$.

```python
integrate(x^2, x);
integrate(exp(-x), x, 0, inf);
limit(sin(x)/x, x, 0);
sum(k^2, k, 1, n);
product(k, k, 1, n);
```

## Series Expansion and Algebraic Solving

Local approximation and perturbative analysis often rely on series expansions. Maxima computes Taylor expansions about a point $x=a$ up to a specified order. Algebraic solving with **solve** provides closed-form roots and symbolic conditions that are routinely used for stationary points and analytical parameter relations.

- Taylor series: **taylor(f, x, a, n);** expands $f$ about $x=a$ through order $n$.
- Algebraic solve: **solve(eq, x);** solves an algebraic equation for $x$.

```python
taylor(exp(x), x, 0, 5);
solve(x^2 - 5*x + 6 = 0, x);
```

## Differential Equations and a Minimal Working Session

Differential equations are solved symbolically with **ode2**, which is particularly useful for first-order models and canonical linear dynamics encountered in equations of motion, growth–decay systems, and wave or dynamical formulations.

- Differential equation solve: **ode2(eq, y(x));** solves for $y(x)$ under the given equation.

```python
ode2('diff(y,x) + y = 0, y, x);
```

A minimal working session that resets the environment and exercises common operations is:

```python
kill(all)$
diff(x^4, x);
integrate(x^2, x);
limit((sin(x))/x, x, 0);
sum(k, k, 1, 5);
taylor(log(1+x), x, 0, 4);
solve(x^2 - 1 = 0, x);
```
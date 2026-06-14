---
title: "Maxima Algebra Simplification"
summary: "Core commands for simplifying, factoring, expanding, and restructuring algebraic expressions in Maxima."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - algebra
permalink: /maxima-algebra-simplification/
hidden: true
---
Maxima provides a compact set of commands for rewriting algebraic expressions into cleaner equivalent forms, including rational simplification, polynomial factorization/expansion, fraction manipulation, and common trigonometric or exponential rewrites.

## Rational and Radical Simplification

For rational expressions, **ratsimp(expr)** performs standard rational simplification, while **fullratsimp(expr)** applies a more aggressive form of rational simplification when intermediate cancellations are nontrivial. For radicals, **radcan(expr)** attempts canonical simplification by reducing and combining radical components.

- **ratsimp(expr);** simplifies rational expressions.
- **fullratsimp(expr);** performs deeper rational simplification.
- **radcan(expr);** simplifies expressions involving radicals.

```python
ratsimp((x^2 - 1)/(x - 1));
fullratsimp((x^2 + 2*x + 1)/(x + 1));
radcan(sqrt(8) + sqrt(18));
```

## Polynomial Factorization, Expansion, and Term Collection

Polynomial structure is often made explicit by either factoring or expanding. When expressions involve multiple parameters and powers of a variable, **collectterms(expr, x)** organizes the result as a polynomial in $x$, which is useful for comparison, coefficient extraction, and symbolic matching.

- **factor(expr);** factors an algebraic expression.
- **expand(expr);** expands products and powers.
- **collectterms(expr, x);** collects terms in powers of $x$.

```python
factor(x^2 - 5*x + 6);
expand((x + 1)^3);
collectterms(a*x^2 + b*x + c + x^2, x);
factor(x^3 - 3*x^2 - 4*x + 12);
expand((x - 2)*(x + 2)*(x + 1));
```

## Fraction Restructuring and Partial Fractions

When an expression is presented as a sum of rational terms, **combine(expr)** merges it into a single rational form. For integration and decomposition tasks, **partfrac(expr, x)** produces a partial fraction decomposition with respect to $x$. The functions **num(expr)** and **denom(expr)** extract the numerator and denominator of a rational expression, supporting algebraic inspection and further transformations.

- **combine(expr);** combines terms into a single rational expression.
- **partfrac(expr, x);** gives partial fraction decomposition with respect to $x$.
- **num(expr);** extracts the numerator.
- **denom(expr);** extracts the denominator.

```python
combine(1/x + 1/(x+1));
partfrac((2*x+3)/(x^2+x), x);
num((x^2 - 1)/(x + 1));
denom((x^2 - 1)/(x + 1));
```

## Trigonometric and Exponential Rewrites

Maxima can simplify standard trigonometric identities and switch between trigonometric and exponential representations. **trigsimp(expr)** reduces trigonometric expressions using identities (e.g., $\sin^2 x + \cos^2 x = 1$). **exponentialize(expr)** rewrites trigonometric functions in exponential form, while **demoivre(expr)** applies De Moivre-style rewriting for complex exponentials.

- **trigsimp(expr);** simplifies trigonometric expressions.
- **exponentialize(expr);** converts trig functions to exponential form.
- **demoivre(expr);** rewrites complex exponentials using trigonometric form.

```python
trigsimp(sin(x)^2 + cos(x)^2);
exponentialize(sin(x));
demoivre(exp(%i*x));
```

```python
kill(all)$
expr1 : (x^2 - 1)/(x - 1)$
expr2 : (x + 1)^3$
expr3 : x^2 - 5*x + 6$
expr4 : 1/x + 1/(x+1)$

ratsimp(expr1);
expand(expr2);
factor(expr3);
combine(expr4);
```
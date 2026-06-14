---
title: "Classical Orthogonal Polynomials"
summary: "A concise reference to classical orthogonal polynomials and their standard reductions in Maxima."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - polynomials
permalink: /classical-orthogonal-polynomials/
hidden: true
---
Classical orthogonal polynomials occupy a central place in mathematical physics, approximation theory, and special functions. In Maxima, these families are available through direct symbolic commands, allowing compact access to their standard forms as well as to associated and generalized variants.

## Classical Families

The principal classical orthogonal polynomial families are represented in Maxima as follows:

```python
legendre_p(n, x);       /* Legendre polynomial P_n(x) */
chebyshev_t(n, x);      /* Chebyshev polynomial T_n(x) */
chebyshev_u(n, x);      /* Chebyshev polynomial U_n(x) */
hermite(n, x);          /* Hermite polynomial H_n(x) */
laguerre(n, x);         /* Laguerre polynomial L_n(x) */
jacobi_p(n, a, b, x);   /* Jacobi polynomial P_n^(a,b)(x) */
gegenbauer_p(n, a, x);  /* Gegenbauer polynomial C_n^(a)(x) */
```

These commands encode the standard notation:

$$
P_n(x),\quad T_n(x),\quad U_n(x),\quad H_n(x),\quad L_n(x),\quad P_n^{(a,b)}(x),\quad C_n^{(a)}(x)
$$

## Associated and Generalized Forms

Maxima also provides associated and generalized extensions of some classical families. These forms are especially useful in problems involving angular momentum, differential equations, and weighted orthogonal systems.

```python
assoc_legendre_p(n, m, x); /* Associated Legendre P_n^m(x) */
gen_laguerre(n, a, x);     /* Generalized/associated Laguerre L_n^(a)(x) */
```

Their conventional mathematical forms are

$$
P_n^m(x)
$$

and

$$
L_n^{(a)}(x)
$$

respectively.

## Standard Reductions

Several special cases reduce generalized families to simpler classical polynomials. These identities are directly reflected in Maxima:

```python
assoc_legendre_p(n, 0, x); /* = legendre_p(n, x) */
gen_laguerre(n, 0, x);     /* = laguerre(n, x) */
jacobi_p(n, 0, 0, x);      /* = legendre_p(n, x) */
```

The corresponding reductions are

$$
P_n^0(x)=P_n(x)
$$

$$
L_n^{(0)}(x)=L_n(x)
$$

$$
P_n^{(0,0)}(x)=P_n(x)
$$

These relations show that Legendre and Laguerre polynomials arise naturally as special parameter choices within broader polynomial families, reinforcing the unifying role of Jacobi and generalized Laguerre systems in the theory of special functions.
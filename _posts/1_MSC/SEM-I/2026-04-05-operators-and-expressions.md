---
title: "Operators and Expressions"
summary: "Arithmetic, comparison, logical operators, precedence, and expression building in Python."
date: 2026-04-05 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - operators
  - python
permalink: /msc/sem-i/operators-and-expressions/
hidden: true
---

Most formulas in physics become expressions in a program. An expression combines values, variables, and operators to produce a new value. For example, the formula for kinetic energy becomes a Python expression involving multiplication and powers.

The important point is that the computer follows definite rules of precedence. If the intended mathematical grouping is not obvious, parentheses should be used.

## Arithmetic operators

```python
a = 10
b = 3

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a**b)
```

The operator `**` is used for powers.

In physics programs, powers occur frequently in expressions such as $v^2$, $r^2$, and $x^3$. In Python these are written as `v**2`, `r**2`, and `x**3`.

## Comparison operators

Comparison operators produce `True` or `False`.

```python
x = 5

print(x > 0)
print(x == 5)
print(x != 3)
```

Use `==` for comparison and `=` for assignment.

## Logical operators

Logical operators combine conditions.

```python
temperature = 310
pressure = 1.2

safe = temperature < 350 and pressure < 2.0
print(safe)
```

Common logical operators are `and`, `or`, and `not`.

## Precedence

Python follows mathematical order of operations.

```python
value = 2 + 3 * 4
print(value)
```

Multiplication is done before addition. Use parentheses when the intended order should be made explicit.

```python
value = (2 + 3) * 4
```

## Physics example

```python
m = 1.5
v = 4.0
h = 2.0
g = 9.8

energy = 0.5 * m * v**2 + m * g * h
print(energy)
```

This expression computes kinetic plus gravitational potential energy.

## Displacement expression

For a particle moving with uniform acceleration, the displacement is

$$
s=ut+\frac12at^2.
$$

In Python this may be written as

```python
u = 2.0
a = 3.0
t = 4.0

s = u * t + 0.5 * a * t**2
print(s)
```

The value printed is `32.0`.

## Logical test

A result can be tested by combining comparison and logical operators.

```python
energy = -2.0
normalised = True

acceptable = energy < 0 and normalised
print(acceptable)
```

This gives `True` only when both conditions are satisfied.

## Practice questions

1. Distinguish between assignment `=` and comparison `==`.
2. Write a Python expression for $s=ut+\frac12at^2$.
3. What is the output of `2 + 3 * 4`? Explain the order of operations.
4. Give one example each of an arithmetic, comparison, and logical operator.
5. Write a logical expression that is true only when energy is negative and the state is normalized.

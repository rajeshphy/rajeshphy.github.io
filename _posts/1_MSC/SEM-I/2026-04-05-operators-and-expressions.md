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

An expression combines values, variables, and operators to produce a new value. Most computational formulas in physics are expressions.

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


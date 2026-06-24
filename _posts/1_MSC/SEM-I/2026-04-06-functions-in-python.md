---
title: "Functions in Python"
summary: "Defining functions, arguments, return values, scope, and reusable physics calculations."
date: 2026-04-06 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - functions
  - python
permalink: /msc/sem-i/functions-in-python/
hidden: true
---

A formula used once can be written directly as an expression. A formula used many times should be placed inside a function. A function is a named block of code that performs a definite task and returns a result.

In computational physics, functions are useful because the same expression may be evaluated for many values, plotted, differentiated numerically, or used inside an iterative method.

## Defining a function

```python
def square(x):
    return x * x

print(square(5))
```

The keyword `def` begins a function definition. The value after `return` is sent back to the caller.

The function body should express one clear idea. For example, a function named `kinetic_energy` should calculate kinetic energy and not also print unrelated information.

## Function arguments

Arguments carry data into the function.

```python
def kinetic_energy(mass, velocity):
    return 0.5 * mass * velocity**2

energy = kinetic_energy(2.0, 3.0)
print(energy)
```

## Multiple results

A function can return more than one value by returning a tuple.

```python
def motion(v0, a, t):
    v = v0 + a * t
    s = v0 * t + 0.5 * a * t**2
    return s, v

position, velocity = motion(0.0, 9.8, 2.0)
```

## Local variables

Variables created inside a function are local to that function.

```python
def potential_energy(m, g, h):
    energy = m * g * h
    return energy
```

The variable `energy` exists only inside the function body.

## Why functions matter

In computational physics, the same formula may be used many times. A function keeps that formula in one place.

```python
def force(k, x):
    return -k * x
```

This small function can later be used in loops, plots, or numerical integration.

## Pendulum period function

Write a function for the period of a simple pendulum for small oscillations:

$$
T=2\pi\sqrt{\frac{l}{g}}.
$$

```python
import math

def pendulum_period(length, g=9.8):
    return 2 * math.pi * math.sqrt(length / g)

T = pendulum_period(1.0)
print(T)
```

For $l=1$ m, the result is approximately

```text
2.007
```

The default value `g=9.8` is used unless another value is supplied.

## Answer points

- A function definition begins with `def`.
- Arguments are placed inside parentheses.
- `return` sends the result back to the calling statement.
- Local variables are not normally available outside the function.
- Functions make repeated calculations shorter and less error-prone.

## Practice questions

1. Define a function in Python to calculate kinetic energy.
2. What is the difference between an argument and a return value?
3. Write a function that returns both displacement and velocity for uniform acceleration.
4. Explain local variables with one example.
5. Write a function for the small-oscillation period of a simple pendulum.

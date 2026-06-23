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

A function is a named block of code that performs a task. Functions reduce repetition and make a program easier to test.

## Defining a function

```python
def square(x):
    return x * x

print(square(5))
```

The keyword `def` begins a function definition. The value after `return` is sent back to the caller.

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


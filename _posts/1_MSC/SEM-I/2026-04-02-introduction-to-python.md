---
title: "Introduction to Python"
summary: "Variables, statements, comments, input, output, and the structure of a simple Python program."
date: 2026-04-02 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - python
permalink: /msc/sem-i/introduction-to-python/
hidden: true
---

Python is an interpreted programming language. It is widely used in computational physics because numerical calculations, plotting, data handling, and symbolic work can be written in a short and readable form.

## Basic structure

A Python program is a sequence of statements. Each statement performs one action.

```python
x = 4
y = 5
z = x + y
print(z)
```

Here `x`, `y`, and `z` are variables. A variable stores a value and gives it a name.

## Comments

Comments are ignored by Python. They are used to explain the purpose of the code.

```python
# speed in metre per second
v = 12.5
```

Good comments explain the physical meaning, not the obvious syntax.

## Input and output

The function `print()` displays output.

```python
temperature = 300
print("Temperature =", temperature, "K")
```

The function `input()` reads text from the keyboard. It gives a string, so numerical input must be converted.

```python
radius = float(input("Enter radius: "))
area = 3.14159 * radius**2
print(area)
```

## Indentation

Python uses indentation to mark blocks of code. A block belongs to a function, conditional, or loop.

```python
if x > 0:
    print("positive")
```

The indented line runs only when the condition is true.

## Key points

- Python code is read from top to bottom.
- Variables are created when a value is assigned.
- Use meaningful names such as `mass`, `time`, and `energy`.
- Indentation is part of the syntax.


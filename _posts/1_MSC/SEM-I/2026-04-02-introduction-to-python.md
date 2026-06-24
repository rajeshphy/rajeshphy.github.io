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

Python is an interpreted programming language. A Python program is a set of instructions written for the computer, but in a form that remains close to ordinary mathematical thinking. It is widely used in computational physics because numerical calculations, plotting, data handling, and symbolic work can be written in a short and readable form.

The first principle is simple: a program stores values, performs operations on them, and displays or saves the result. Variables, expressions, input, output, and indentation are the basic tools for doing this.

## Basic structure

A Python program is a sequence of statements. Each statement performs one action.

```python
x = 4
y = 5
z = x + y
print(z)
```

Here `x`, `y`, and `z` are variables. A variable stores a value and gives it a name.

The equal sign in a program means assignment. The statement `x = 4` means "store the value 4 in the name `x`." It is not the same as a mathematical equation to be solved.

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

## First complete program

Write a program to calculate the kinetic energy of a body of mass $m$ moving with speed $v$.

The formula is

$$
K=\frac12mv^2.
$$

```python
mass = float(input("Enter mass in kg: "))
speed = float(input("Enter speed in m/s: "))

kinetic_energy = 0.5 * mass * speed**2

print("Kinetic energy =", kinetic_energy, "J")
```

If $m=2$ kg and $v=3$ m/s, the output is

```text
Kinetic energy = 9.0 J
```

This example shows the usual order of a simple program: input, calculation, and output.

## Key points

- Python code is read from top to bottom.
- Variables are created when a value is assigned.
- Use meaningful names such as `mass`, `time`, and `energy`.
- Indentation is part of the syntax.

## Practice questions

1. What is an interpreted programming language?
2. Write a Python statement to assign the value $3.0$ to a variable named `mass`.
3. Write a short program to calculate kinetic energy from mass and speed.
4. Why is indentation important in Python?
5. What is the difference between `input()` and `print()`?

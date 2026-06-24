---
title: "Control Flow: Conditionals and Loops"
summary: "If-else decisions, while loops, for loops, ranges, and repeated calculations in Python."
date: 2026-04-07 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - conditionals
  - loops
  - python
permalink: /msc/sem-i/conditionals-and-loops/
hidden: true
---

A program is not always a straight list of instructions. Sometimes it must choose between alternatives, and sometimes it must repeat a calculation many times. Control flow decides which statements run and how many times they run.

The two basic ideas are decision and repetition. Conditionals handle decisions. Loops handle repetition.

## Conditionals

A conditional executes code only when a condition is true.

```python
energy = -13.6

if energy < 0:
    print("bound state")
else:
    print("unbound state")
```

Use `elif` when several cases are possible.

```python
temperature = 300

if temperature < 273:
    print("below freezing")
elif temperature == 273:
    print("freezing point")
else:
    print("above freezing")
```

## While loops

A `while` loop repeats while a condition remains true.

```python
n = 1

while n <= 5:
    print(n)
    n = n + 1
```

The update step is important. Without it, the loop may never stop.

A `while` loop is natural when the stopping condition is based on convergence, such as repeating an iteration until the change becomes smaller than a chosen tolerance.

## For loops

A `for` loop is useful when the number of repetitions is known.

```python
for n in range(1, 6):
    print(n)
```

The command `range(1, 6)` gives `1, 2, 3, 4, 5`.

A `for` loop is also useful for processing each value in a list of readings.

## Looping over data

```python
measurements = [1.2, 1.4, 1.3, 1.5]

total = 0.0
for value in measurements:
    total = total + value

average = total / len(measurements)
print(average)
```

This is a typical pattern: initialize, loop, update, and then use the final result.

## Nested control flow

Conditionals can be placed inside loops.

```python
for n in range(1, 11):
    if n % 2 == 0:
        print(n, "even")
    else:
        print(n, "odd")
```

## Table of values

Print a table of $x$ and $x^2$ from $x=1$ to $x=5$.

```python
for x in range(1, 6):
    print(x, x**2)
```

The output is

```text
1 1
2 4
3 9
4 16
5 25
```

This is a standard use of a `for` loop: the number of repetitions is known in advance.

## Conditional example

Classify a number as positive, negative, or zero.

```python
x = -4

if x > 0:
    print("positive")
elif x < 0:
    print("negative")
else:
    print("zero")
```

The order of the tests matters. Python checks the conditions from top to bottom and runs the first matching block.

## Key points

- Use `if`, `elif`, and `else` for decisions.
- Use `while` when repetition depends on a condition.
- Use `for` when processing a known sequence.
- Keep loop bodies small and readable.

## Practice questions

1. Write an `if-else` program to test whether a number is positive or negative.
2. Distinguish between `while` and `for` loops.
3. Write a loop to print $x$ and $x^2$ for $x=1$ to $5$.
4. Find the average of values stored in a list using a loop.
5. Why must a `while` loop contain a proper update step?

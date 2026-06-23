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

Control flow decides which statements run and how many times they run. The main tools are conditionals and loops.

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

## For loops

A `for` loop is useful when the number of repetitions is known.

```python
for n in range(1, 6):
    print(n)
```

The command `range(1, 6)` gives `1, 2, 3, 4, 5`.

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

## Key points

- Use `if`, `elif`, and `else` for decisions.
- Use `while` when repetition depends on a condition.
- Use `for` when processing a known sequence.
- Keep loop bodies small and readable.


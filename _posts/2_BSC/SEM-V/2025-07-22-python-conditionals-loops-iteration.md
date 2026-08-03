---
title: "Python Conditionals, Loops, and Iteration"
date: 2025-07-22 09:00:00 +0530
categories:
  - bsc-v
tags: [python, control-structures, conditionals, loops, iteration]
permalink: /bsc/sem-v/mj-9/python-conditionals-loops-iteration/
---

Control structures decide which statements run and how often they run. Python uses indentation, rather than braces, to mark every conditional and loop body.

## Conditional statements

Comparisons produce the Boolean values `True` or `False`:

~~~python
x < y
x <= y
x == y
x != y
x >= y
x > y
~~~

The assignment operator `=` stores a value; the comparison operator `==` tests equality. Conditions can be combined with `and`, `or`, and `not`.

An `if` statement selects one branch:

~~~python
energy = -2.0

if energy < 0.0:
    print("bound state")
else:
    print("unbound state")
~~~

Several mutually exclusive cases use `elif`:

~~~python
x = -0.25

if x > 0.0:
    print("positive")
elif x < 0.0:
    print("negative")
else:
    print("zero")
~~~

Python tests from top to bottom and executes the first true branch.

## For loops

A `for` loop processes a known sequence. `range(start, stop, step)` generates integers up to, but not including, `stop`:

~~~python
for n in range(1, 6):
    print(n, n**2)
~~~

The output contains $n=1,2,3,4,5$. A loop can also process stored readings directly:

~~~python
readings = [1.2, 1.4, 1.3, 1.5]
total = 0.0

for value in readings:
    total = total + value

mean = total / len(readings)
print(mean)
~~~

After $k$ loop passes, `total` equals the sum of the first $k$ readings. This invariant explains why the final value is the complete sum.

## While loops and numerical convergence

A `while` loop repeats while its condition is true. It is natural when the required number of iterations is not known in advance.

For the fixed-point equation $x=\cos x$,

~~~python
import math

x_old = 0.5
tolerance = 1.0e-8
change = float("inf")

while change > tolerance:
    x_new = math.cos(x_old)
    change = abs(x_new - x_old)
    x_old = x_new

print(f"root = {x_old:.10f}")
~~~

The loop body computes a new approximation, measures the change, and updates the stored point. Omitting the update would make the condition remain true indefinitely.

When a numerical method also has an equation residual, both tests can appear in the condition:

~~~python
while change > x_tolerance or residual > f_tolerance:
    # compute the next approximation
    ...
~~~

The loop stops only when the change and residual are both within tolerance. A mathematical convergence condition must still be checked; a loop merely executes the chosen iteration.

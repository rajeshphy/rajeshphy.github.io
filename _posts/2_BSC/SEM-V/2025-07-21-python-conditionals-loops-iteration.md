---
title: "Python Conditionals, Loops, and Iteration"
date: 2025-07-21 09:00:00 +0530
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

The loop stops only when the change and residual are both within tolerance. A mathematical convergence condition must still be checked; a loop merely executes the chosen iteration. A finite `max_iterations` guard is also needed in a general program so that a divergent or stalled iteration terminates with an explicit failure rather than running indefinitely.

## Solved Problems

### 1. A complete conditional classification

For $ax^2+bx+c=0$, the discriminant

$$D=b^2-4ac$$

determines the real-root cases. A mutually exclusive program is

~~~python
D = b*b - 4.0*a*c
d_tolerance = 1.0e-12

if D > d_tolerance:
    kind = "two distinct real roots"
elif abs(D) <= d_tolerance:
    kind = "one repeated real root"
else:
    kind = "no real roots"
~~~

Here `d_tolerance` is chosen for the scale of the coefficients; it prevents round-off near a repeated root from being classified by an exact floating-point equality.

For $a=1$, $b=2$, and $c=5$,

$$D=2^2-4(1)(5)=-16<0,$$

so the third branch executes and reports

$$\boxed{\text{no real roots}}.$$

The tolerance bands are exhaustive: exactly one of $D>d_{\rm tolerance}$, $\lvert D\rvert\le d_{\rm tolerance}$, and $D<-d_{\rm tolerance}$ applies.

### 2. A terminating threshold loop

Find the smallest integer $k$ for which $2^k\ge1000$:

~~~python
k = 0
value = 1

while value < 1000:
    value = 2 * value
    k = k + 1
~~~

After each pass the invariant is `value == 2**k`. The values are

$$2,4,8,16,32,64,128,256,512,1024.$$

After ten passes, $k=10$ and `value = 1024`, so the condition becomes false. Since $2^9=512<1000$, this is the first admissible integer:

$$\boxed{k=10}.$$

## Descriptive Questions

1. Explain the evaluation order and mutual exclusivity of an `if`–`elif`–`else` chain.
2. Distinguish assignment from equality comparison and explain Boolean combinations with `and`, `or`, and `not`.
3. Explain the endpoint convention of `range(start, stop, step)` in a `for` loop.
4. State the initialization, update, convergence, and iteration-limit requirements of a safe numerical `while` loop.

## Numerical Problems

1. Find the sum produced by `for n in range(2, 11, 2): total += n`.
   **Answer:** $2+4+6+8+10=30$.

2. Which branch executes for `x = 0.0` in the article's positive–negative–zero chain?
   **Answer:** the final `else` branch; output `zero`.

3. Starting with `value = 1`, repeatedly replace it by `3*value` while it is below $100$. How many passes occur and what is the final value?
   **Answer:** five passes; values $3,9,27,81,243$; final value $243$.

4. Evaluate the condition `x > 0.0 and x < 1.0` at $x=1.0$.
   **Answer:** `False`, because the strict inequality $x<1$ fails.

The discriminant, finite sums, and threshold-loop outputs are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-iii-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Control flow — Wikipedia](https://en.wikipedia.org/wiki/Control_flow).
2. [Python tutorial: More Control Flow Tools](https://docs.python.org/3/tutorial/controlflow.html), Python Software Foundation, sections 4.1–4.5.
3. Allen B. Downey, *Think Python: How to Think Like a Computer Scientist*, 2nd ed., Chapters 5 and 7, “Conditionals and Recursion” and “Iteration.”

---
title: "Python Functions, Parameters, Scope, and Recursion"
date: 2025-07-23 09:00:00 +0530
categories:
  - bsc-v
tags: [python, functions, parameter-passing, scope, recursion]
permalink: /bsc/sem-v/mj-9/python-functions-parameters-scope-recursion/
---

A function is a named block that receives input through parameters and sends a result back with `return`. Functions separate a numerical method into testable operations and prevent the same formula from being copied into several places.

## Definition, call, and return value

~~~python
def kinetic_energy(mass, speed):
    energy = 0.5 * mass * speed**2
    return energy

result = kinetic_energy(2.0, 3.0)
print(result)           # 9.0
~~~

`mass` and `speed` are parameters in the definition. The values `2.0` and `3.0` are arguments in the call. Execution of `return` ends the function and supplies its value to the calling expression.

A function can return several results as one tuple:

~~~python
def uniform_motion(v0, acceleration, time):
    velocity = v0 + acceleration * time
    displacement = v0 * time + 0.5 * acceleration * time**2
    return displacement, velocity

s, v = uniform_motion(1.0, 2.0, 3.0)
~~~

A function with no explicit `return` returns `None`; it acts like a subroutine whose purpose is an action such as printing.

## Parameter passing

When a function is called, each parameter name is bound to the supplied object. Reassigning a scalar parameter changes only the local name:

~~~python
def doubled(value):
    value = 2.0 * value
    return value

x = 3.0
y = doubled(x)

print(x)                # 3.0
print(y)                # 6.0
~~~

A list is mutable, so changing one of its elements inside a function changes the same list seen by the caller:

~~~python
def replace_first(values):
    values[0] = 0.0

data = [4.0, 5.0]
replace_first(data)
print(data)             # [0.0, 5.0]
~~~

Returning a new result is usually clearer when the input data should remain unchanged.

## Scope

A name created inside a function has local scope:

~~~python
def square(x):
    result = x * x
    return result

value = square(4.0)
~~~

The local names `x` and `result` cease to be available after the call. A name created at the top level has global scope, but a function should normally receive needed values as parameters rather than depend on changing global data.

## A reusable numerical step

Euler's formula can be placed in a function:

~~~python
def euler_step(f, x, y, h):
    return y + h * f(x, y)

def rate(x, y):
    return x + y

y1 = euler_step(rate, 0.0, 1.0, 0.1)
print(y1)               # 1.1
~~~

Here the function `rate` is itself passed as an argument. The step routine can therefore solve different equations without changing its update formula.

## Recursion basics

A recursive function calls itself on a smaller instance of the same problem. It must have a base case that stops the calls. From

$$n!=n(n-1)!,\qquad 0!=1,$$

one obtains

~~~python
def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n - 1)

print(factorial(5))     # 120
~~~

The argument decreases at each call and eventually reaches the base case. Without that base case, recursion would not terminate. Recursion is useful when a problem is naturally defined in smaller copies; ordinary numerical iteration is usually clearer for long sequences of repeated updates. Each unresolved call occupies one stack frame, so the recursion depth must also remain finite.

## Solved Problems

### 1. Returning two statistics without changing the input

Define a function that returns the mean and range of a non-empty list:

~~~python
def mean_and_range(values):
    total = 0.0
    for value in values:
        total = total + value

    mean = total / len(values)
    spread = max(values) - min(values)
    return mean, spread
~~~

For `values = [2.0, 5.0, 4.0]`,

$$\text{mean}=\frac{2+5+4}{3}=\frac{11}{3},$$

$$\text{spread}=5-2=3.$$

Thus

~~~python
mean, spread = mean_and_range([2.0, 5.0, 4.0])
~~~

binds `mean` to $11/3$ and `spread` to $3$. The function reads but does not assign to a list element, so the caller's list is unchanged.

### 2. Recursive Euclidean algorithm

The identity

$$\gcd(a,b)=\gcd(b,a\bmod b)$$

with base case $\gcd(a,0)=a$ gives

~~~python
def gcd_recursive(a, b):
    if b == 0:
        return a
    return gcd_recursive(b, a % b)
~~~

For $(48,18)$, the calls are

$$\gcd(48,18)=\gcd(18,12)=\gcd(12,6)=\gcd(6,0).$$

The base case returns $6$, which then returns through every waiting call:

$$\boxed{\gcd(48,18)=6}.$$

Because $0\le a\bmod b<b$ for positive $b$, the second argument decreases and termination follows.

## Descriptive Questions

1. Distinguish a function definition, parameter, argument, call, and return value.
2. Explain how reassignment of a scalar parameter differs from mutation of a list parameter.
3. Distinguish local and global scope and explain why explicit parameters improve a numerical routine.
4. State the base-case and decreasing-argument requirements for a terminating recursive function.

## Numerical Problems

1. A function returns `a*a + b*b`. What does the call with arguments $3$ and $4$ return?
   **Answer:** $25$.

2. A scalar `x = 5` is passed to a function that executes `x = x + 1` and returns `x`. State the returned value and the caller's original `x`.
   **Answer:** returned value `6`; caller's `x` remains `5`.

3. A list `data = [1, 2]` is passed to a function that executes `data.append(3)`. State the caller's list afterward.
   **Answer:** `[1, 2, 3]`.

4. For the recursion $T(n)=n+T(n-1)$ with $T(0)=0$, find $T(5)$ and count calls including the base case.
   **Answer:** $T(5)=15$; six calls, for arguments $5,4,3,2,1,0$.

The returned statistics, greatest common divisor, and recursive sums are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-iii-problem-checks.mac' | relative_url }}); the mutation and scope examples were independently executed in Python, and every displayed Maxima residual is zero.

## References

1. [Function (computer programming) — Wikipedia](https://en.wikipedia.org/wiki/Subroutine).
2. [Python tutorial: Defining Functions](https://docs.python.org/3/tutorial/controlflow.html#defining-functions), Python Software Foundation, section 4.9.
3. Allen B. Downey, *Think Python: How to Think Like a Computer Scientist*, 2nd ed., Chapters 3 and 6, “Functions” and “Fruitful Functions.”

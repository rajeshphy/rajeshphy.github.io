---
title: "Python Functions, Parameters, Scope, and Recursion"
date: 2025-07-20 09:00:00 +0530
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

The argument decreases at each call and eventually reaches the base case. Without that base case, recursion would not terminate. Recursion is useful when a problem is naturally defined in smaller copies; ordinary numerical iteration is usually clearer for long sequences of repeated updates.

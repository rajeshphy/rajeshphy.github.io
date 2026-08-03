---
title: "Python Types, Arithmetic, Precision, and Input-Output"
date: 2025-07-20 09:00:00 +0530
categories:
  - bsc-v
tags: [python, data-types, arithmetic, typecasting, input-output]
permalink: /bsc/sem-v/mj-9/python-types-arithmetic-input-output/
---

Python attaches a type to every value. The type determines how a value is stored and which operations are meaningful. Numerical programs mainly use integers for exact counts and floating-point numbers for measured or calculated real quantities.

## Integer and floating-point values

An `int` represents a whole number:

~~~python
steps = 100
charge_number = -1
~~~

A `float` represents a real number with finite binary precision:

~~~python
step_size = 0.01
speed_of_light = 2.99792458e8
~~~

The notation `2.99792458e8` means $2.99792458\times10^8$. A numerical type can be inspected with `type(value)`.

The arithmetic operators are

| operation | Python | example |
|---|---|---|
| addition | `+` | `a + b` |
| subtraction | `-` | `a - b` |
| multiplication | `*` | `a * b` |
| real division | `/` | `a / b` |
| floor division | `//` | `a // b` |
| remainder | `%` | `a % b` |
| power | `**` | `a**2` |

Parentheses make mathematical grouping explicit:

~~~python
displacement = velocity * time + 0.5 * acceleration * time**2
~~~

## Typecasting

Typecasting creates a value of a requested type:

~~~python
n = int("12")          # string to integer
x = float("3.25")      # string to float
y = float(n)           # integer to float
k = int(3.9)           # 3: fractional part is discarded
~~~

The last operation truncates toward zero; it does not round to the nearest integer. Mixed arithmetic normally promotes an integer to a float:

~~~python
value = 3 + 0.5        # 3.5
~~~

## Floating-point precision

Most decimal fractions are not finite binary fractions. Consequently,

~~~python
print(0.1 + 0.2)
~~~

may display `0.30000000000000004`. This is representation round-off, not a failure of addition. Equality tests on calculated floats should use a tolerance:

~~~python
import math

result = 0.1 + 0.2
print(math.isclose(result, 0.3, rel_tol=1.0e-12, abs_tol=1.0e-15))
~~~

The comparison is true when

$$\lvert a-b\rvert\le\max(\varepsilon_{\rm rel}\max(\lvert a\rvert,\lvert b\rvert),
\varepsilon_{\rm abs}).$$

Subtraction of nearly equal floats can lose significant digits, and repeated operations can accumulate round-off. Units and justified precision should therefore be retained throughout a scientific calculation.

## Console input

`input()` reads a line from the console and returns text. Numerical input must be cast before arithmetic:

~~~python
mass = float(input("Mass in kg: "))
speed = float(input("Speed in m/s: "))

kinetic_energy = 0.5 * mass * speed**2
~~~

Without `float(...)`, the values would remain strings.

## Formatted output

Together, `input()` and `print()` provide console I/O. An f-string inserts values inside braces:

~~~python
print(f"Kinetic energy = {kinetic_energy} J")
~~~

Format specifications control presentation without changing the stored value:

~~~python
x = 12.3456789

print(f"{x:.3f}")       # 12.346: three digits after the decimal
print(f"{x:.4e}")       # 1.2346e+01: scientific notation
print(f"{x:10.3f}")     # field width 10, three decimal places
~~~

For tabulated output,

~~~python
print(f"{'x':>8} {'x squared':>12}")
for x in range(1, 4):
    print(f"{x:8d} {x**2:12d}")
~~~

the width and alignment specifications keep columns readable. Formatting rounds only the displayed text; subsequent calculations still use the original floating-point value.

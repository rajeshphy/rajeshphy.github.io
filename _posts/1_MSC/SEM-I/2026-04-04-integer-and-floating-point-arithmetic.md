---
title: "Integer and Floating Point Arithmetic"
summary: "Integer operations, floating point numbers, rounding, scientific notation, and numerical care."
date: 2026-04-04 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - arithmetic
  - python
permalink: /msc/sem-i/integer-and-floating-point-arithmetic/
hidden: true
---

Computers handle numbers in different forms. Integers are exact whole numbers, while floating point numbers represent real numbers approximately.

## Integers

Integer arithmetic is exact as long as the number can be stored.

```python
n = 12
m = 5

print(n + m)
print(n * m)
```

Integer division and remainder are useful in counting problems.

```python
print(12 // 5)
print(12 % 5)
```

Here `//` gives the quotient and `%` gives the remainder.

## Floating point numbers

Floating point numbers are used for decimal quantities.

```python
x = 0.1
y = 0.2
print(x + y)
```

The result may not appear exactly as `0.3` because floating point numbers are stored in binary approximation.

## Scientific notation

Large and small physical quantities are written using scientific notation.

```python
c = 3.0e8
hbar = 1.054e-34
```

The notation `3.0e8` means $3.0\times 10^8$.

## Round-off error

Round-off error occurs because only a finite number of digits can be stored.

```python
total = 0.0

for i in range(10):
    total = total + 0.1

print(total)
```

The printed value may be close to, but not exactly, `1.0`.

## Practical rules

- Use integers for counting.
- Use floats for measured and calculated physical quantities.
- Avoid testing two floating point numbers for exact equality.
- Keep units clear while writing numerical expressions.


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

Computers do not store numbers in the same way that we write them on paper. Counting numbers and decimal measurements need different representations. Integers are exact whole numbers, while floating point numbers represent real numbers approximately.

This distinction matters in computational physics. A loop counter should be exact, but a measured length, time, mass, or energy is usually represented by a floating point number.

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

The error is usually very small, but it becomes important when many operations are repeated or when two nearly equal numbers are subtracted.

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

## Integer and floating point examples

For integer division,

```python
n = 17
m = 5

print(n // m)
print(n % m)
```

The output is

```text
3
2
```

This means

$$
17=5(3)+2.
$$

For floating point arithmetic,

```python
x = 1.0 / 3.0
print(x)
print(3.0 * x)
```

The printed result is an approximation to the mathematical value because only a finite number of binary digits is stored.

## Practical rules

- Use integers for counting.
- Use floats for measured and calculated physical quantities.
- Avoid testing two floating point numbers for exact equality.
- Keep units clear while writing numerical expressions.

## Practice questions

1. Distinguish between integer and floating point arithmetic.
2. What are the outputs of `17 // 5` and `17 % 5`?
3. Explain round-off error with one example.
4. Why is `0.1 + 0.2` not always printed exactly as `0.3`?
5. Why should units be kept clear in numerical programs?

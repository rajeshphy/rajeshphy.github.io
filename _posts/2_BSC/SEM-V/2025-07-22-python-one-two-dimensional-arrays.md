---
title: "One- and Two-Dimensional Arrays in Python"
date: 2025-07-22 09:00:00 +0530
categories:
  - bsc-v
tags: [python, arrays, one-dimensional-arrays, two-dimensional-arrays]
permalink: /bsc/sem-v/mj-9/python-one-two-dimensional-arrays/
---

An array stores related values under one name and selects each element by an index. In introductory Python, lists provide the required one- and two-dimensional array structure without an additional library.

## One-dimensional arrays

A one-dimensional array represents a vector or a sequence of sampled data:

~~~python
positions = [0.0, 0.5, 1.0, 1.5]
~~~

Python indices begin at zero. Initialization, access, and update are therefore

~~~python
n = 5
values = [0.0] * n

values[0] = 2.5
values[3] = 7.0

print(values[0])
print(values[3])
~~~

The valid indices are $0,1,\ldots,n-1$. A loop processes every element:

~~~python
x = [0.0, 0.5, 1.0, 1.5]
y = [0.0] * len(x)

for i in range(len(x)):
    y[i] = x[i]**2
~~~

This stores the sampled values $y_i=x_i^2$.

## Numerical application: a dot product

For vectors $\mathbf a,\mathbf b\in\mathbb R^n$,

$$\mathbf a\cdot\mathbf b=\sum_{i=0}^{n-1}a_i b_i.$$

The formula translates directly:

~~~python
a = [1.0, 2.0, 3.0]
b = [4.0, 5.0, 6.0]

dot = 0.0
for i in range(len(a)):
    dot = dot + a[i] * b[i]

print(dot)             # 32.0
~~~

Both arrays must have the same length.

## Two-dimensional arrays

A two-dimensional array represents a table or matrix. A list of row lists gives

~~~python
A = [
    [4.0, 1.0, 1.0],
    [2.0, 5.0, 2.0],
    [1.0, 2.0, 4.0]
]

print(A[1][2])         # row 1, column 2: 2.0
A[0][0] = 5.0
~~~

An $m\times n$ zero matrix should be initialized with a separate row for each $i$:

~~~python
rows = 3
columns = 4

A = [[0.0 for j in range(columns)] for i in range(rows)]
~~~

Nested loops visit every entry:

~~~python
for i in range(rows):
    for j in range(columns):
        A[i][j] = i + j
~~~

## Numerical application: matrix-vector multiplication

For

$$y_i=\sum_{j=0}^{n-1}A_{ij}x_j,$$

use one outer loop for the output row and one inner loop for its sum:

~~~python
A = [
    [2.0, 1.0],
    [1.0, 2.0]
]
x = [1.0, -1.0]
y = [0.0] * len(A)

for i in range(len(A)):
    total = 0.0
    for j in range(len(x)):
        total = total + A[i][j] * x[j]
    y[i] = total

print(y)               # [1.0, -1.0]
~~~

The same indexing pattern appears in Gaussian elimination, Jacobi iteration, interpolation tables, and polynomial fitting. The dimensions of every array should be checked before such operations are performed.

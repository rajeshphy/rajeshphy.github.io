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

The row-by-row initialization shown above also avoids aliasing. In contrast,

~~~python
A = [[0.0] * columns] * rows
~~~

repeats references to one row object. Changing `A[0][1]` would then change column $1$ in every apparent row. A nested comprehension creates independent row lists and preserves the intended two-dimensional indexing.

## Solved Problems

### 1. Mean and deviations stored in one-dimensional arrays

For

~~~python
values = [2.0, 4.0, 5.0]
~~~

the mean is

$$\bar x=\frac{2+4+5}{3}=\frac{11}{3}.$$

A loop can form the deviations:

~~~python
mean = sum(values) / len(values)
deviation = [0.0] * len(values)

for i in range(len(values)):
    deviation[i] = values[i] - mean
~~~

Thus

$$\mathbf d=\left(-\frac53,\frac13,\frac43\right).$$

Their sum is

$$\sum_i d_i=-\frac53+\frac13+\frac43=0,$$

as required by the definition of the arithmetic mean.

### 2. Matrix multiplication with nested loops

Let

$$A=\begin{pmatrix}1&2\\3&4\end{pmatrix},\qquad
B=\begin{pmatrix}2&0\\1&2\end{pmatrix}.$$

The product entry is $C_{ij}=\sum_{k=0}^{1}A_{ik}B_{kj}$. Therefore

$$C_{00}=1(2)+2(1)=4,$$

$$C_{01}=1(0)+2(2)=4,$$

$$C_{10}=3(2)+4(1)=10,$$

$$C_{11}=3(0)+4(2)=8.$$

Hence

$$\boxed{C=AB=\begin{pmatrix}4&4\\10&8\end{pmatrix}}.$$

The inner dimensions are both $2$; without this agreement, the sum over $k$ would not be defined.

## Descriptive Questions

1. Explain zero-based indexing and state the valid indices of a one-dimensional array of length $n$.
2. Describe initialization, access, and update operations for one- and two-dimensional Python lists.
3. Translate the mathematical definitions of a dot product and matrix product into loop-index form.
4. Explain row aliasing in a repeated-list initialization and how a nested comprehension avoids it.

## Numerical Problems

1. For `values = [3, 6, 9, 12]`, state `values[0]` and `values[-1]`.
   **Answer:** `3` and `12`.

2. Use nested loops to sum all entries of $\begin{pmatrix}1&2&3\\4&5&6\end{pmatrix}$.
   **Answer:** $21$.

3. Compute $A\mathbf x$ for $A=\begin{pmatrix}1&-1\\2&3\end{pmatrix}$ and $\mathbf x=(4,2)^T$.
   **Answer:** $A\mathbf x=(2,14)^T$.

4. Execute `A = [[0]*3]*2` followed by `A[0][1] = 7`. What is `A`?
   **Answer:** `[[0, 7, 0], [0, 7, 0]]`, because both entries refer to the same row object.

The array sums, deviations, and matrix operations are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-iii-problem-checks.mac' | relative_url }}); the aliasing result was independently executed in Python, and every displayed Maxima residual is zero.

## References

1. [Array (data structure) — Wikipedia](https://en.wikipedia.org/wiki/Array_(data_structure)).
2. [Python tutorial: Data Structures](https://docs.python.org/3/tutorial/datastructures.html), Python Software Foundation, sections 5.1–5.6.
3. Allen B. Downey, *Think Python: How to Think Like a Computer Scientist*, 2nd ed., Chapter 10, “Lists.”

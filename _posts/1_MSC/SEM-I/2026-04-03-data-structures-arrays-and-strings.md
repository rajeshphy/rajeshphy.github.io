---
title: "Data Structures: Arrays and Strings"
summary: "Lists, strings, tuples, dictionaries, indexing, slicing, and simple array-like thinking in Python."
date: 2026-04-03 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - data-structures
  - python
permalink: /msc/sem-i/data-structures-arrays-and-strings/
hidden: true
---

A data structure stores many related values together. In computational physics, this may be a list of positions, times, velocities, measurements, or labels.

## Arrays

An array is an ordered collection of elements of the same general kind, usually stored so that each element can be accessed by its position or index. In numerical work, an array commonly represents a table of values such as time readings, measured temperatures, position coordinates, or sampled values of a function.

For example, the values

$$
x_0,\;x_1,\;x_2,\;\ldots,\;x_n
$$

may be stored as one array-like object and processed one element at a time.

```python
positions = [0.0, 0.5, 1.0, 1.5, 2.0]
print(positions[0])
print(positions[3])
```

In plain Python, a list is often used for introductory array-like work. For larger numerical calculations, NumPy arrays are preferred because they are faster and support mathematical operations directly.

## Lists

A list is an ordered collection. Its elements can be accessed by index.

```python
temperatures = [298, 300, 303, 305]

print(temperatures[0])
print(temperatures[2])
```

Python indexing starts from `0`. Therefore `temperatures[0]` is the first element.

## Updating a list

```python
temperatures[1] = 301
temperatures.append(307)
```

The method `append()` adds a new element at the end.

## Slicing

Slicing extracts part of a list.

```python
data = [2, 4, 6, 8, 10]
print(data[1:4])
```

The slice `data[1:4]` gives elements with indices `1`, `2`, and `3`.

## Strings

A string is a sequence of characters.

```python
name = "Hydrogen"
print(name[0])
print(name[0:5])
```

Strings support indexing and slicing, but individual characters cannot be changed directly.

## Tuples

A tuple is like a list, but it is immutable.

```python
point = (2.0, 3.0)
x = point[0]
y = point[1]
```

Tuples are useful when the grouped values should remain fixed.

## Dictionaries

A dictionary stores values using keys.

```python
constants = {
    "c": 3.0e8,
    "h": 6.626e-34
}

print(constants["c"])
```

## Array-like work

For basic programming, lists are enough. For serious numerical arrays, one usually uses NumPy, but the idea is the same: store many related values and process them systematically.

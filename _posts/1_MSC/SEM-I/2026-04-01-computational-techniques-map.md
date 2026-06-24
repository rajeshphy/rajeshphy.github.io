---
title: "Computational Techniques Syllabus Map"
summary: "A compact SEM-I map for programming topics from Python basics up to conditionals and loops."
date: 2026-04-01 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - computational-techniques
  - python
  - programming
permalink: /msc/sem-i/computational-techniques-map/
hidden: true
---

Computational techniques begin before typing code. A problem must first be translated into data, formulas, decisions, and repeated steps. Python is used here because its syntax is readable, so the main attention can remain on the physical or mathematical idea being computed.

A useful habit is to ask four questions before writing a program:

1. What quantities are known?
2. What quantity is required?
3. Which formula or rule connects them?
4. Does the calculation need selection, repetition, or stored data?

## Flow of ideas

1. **Python basics** introduce statements, variables, comments, and simple scripts.
2. **Data structures** organize values using lists, strings, tuples, and dictionaries.
3. **Integer and floating point arithmetic** explains exact and approximate numerical work.
4. **Operators and expressions** build calculations from numbers, variables, and logical conditions.
5. **Functions** package repeated calculations into reusable blocks.
6. **Conditionals** choose different actions depending on a test.
7. **Loops** repeat a calculation using `while` or `for`.

## A minimal calculation

```python
mass = 2.0
velocity = 3.0

kinetic_energy = 0.5 * mass * velocity**2
print(kinetic_energy)
```

## Recommended order

Study the notes in the sequence of their dates. The programming part is cumulative: loops become easier only when expressions, data types, and functions are already comfortable.

## Program-writing order

For a programming question, first identify the inputs, the formula or logic, and the output. Then write the code with meaningful variable names. If the question is numerical, give a small sample calculation or sample output.

Most short programs in this unit follow one of these patterns:

- read or assign numerical data;
- apply a formula;
- repeat a calculation using a loop;
- store values in a list;
- print the result in a readable form.

## Practice questions

1. Write a Python program to evaluate a physics formula.
2. Find the average of a set of readings stored in a list.
3. Use `if-else` to classify a numerical result.
4. Use a loop to print a table of values.
5. Define a function and call it for different inputs.

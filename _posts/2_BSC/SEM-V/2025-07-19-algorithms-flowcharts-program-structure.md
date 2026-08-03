---
title: "Algorithms, Flowcharts, and Program Structure"
date: 2025-07-19 09:00:00 +0530
categories:
  - bsc-v
tags: [python, programming-fundamentals, algorithms, flowcharts]
permalink: /bsc/sem-v/mj-9/algorithms-flowcharts-program-structure/
---

A scientific program begins with a method, not with Python syntax. The method is first stated as an algorithm, checked as a flowchart or pseudocode, and only then translated into executable statements.

## Algorithm

An algorithm is a finite, ordered sequence of unambiguous steps that transforms specified input into specified output. A usable numerical algorithm must state:

1. the input data and their allowed range;
2. the initialization of variables;
3. the order of calculations and decisions;
4. the condition that ends every repetition;
5. the output to be reported.

For example, the mean of $n>0$ readings $x_0,\ldots,x_{n-1}$ is

$$\bar x=\frac1n\sum_{i=0}^{n-1}x_i.$$

An algorithm that follows this definition is

~~~text
START
READ n and x[0], x[1], ..., x[n-1]
SET s = 0 and i = 0
WHILE i < n
    SET s = s + x[i]
    SET i = i + 1
SET mean = s / n
PRINT mean
STOP
~~~

The initialization $s=0$ supplies the additive identity, and $i=0$ selects the first stored element. When the loop ends, $s$ equals the required sum, so the final division implements the displayed formula.

## Flowchart

A flowchart represents the control path with standard symbols.

| symbol | purpose |
|---|---|
| oval | start or stop |
| parallelogram | input or output |
| rectangle | calculation or assignment |
| diamond | decision with labelled branches |
| arrow | direction of execution |

![Flowchart for the mean of a one-dimensional array]({{ '/assets/images/bsc/sem-v/mj-9/python-array-flowchart.png' | relative_url }})

The figure can be revised from its [editable TikZ source]({{ '/assets/tikz/bsc/sem-v/mj-9/python-array-flowchart.tex' | relative_url }}).

The decision $i<n$ has two exits. The yes branch updates the partial sum and index before returning to the decision. The no branch is the loop-termination condition and leads to the result.

## Program structure

A small scientific program is easiest to inspect when it follows the same order as the algorithm:

~~~text
description and assumptions
input
initialization
calculation and control flow
output
~~~

The mean algorithm translates directly to Python:

~~~python
# Input
n = int(input("Number of readings: "))
values = []

for i in range(n):
    value = float(input(f"x[{i}] = "))
    values.append(value)

# Calculation
total = 0.0
for value in values:
    total = total + value

mean = total / n

# Output
print(f"Mean = {mean:.6g}")
~~~

Each name has one clear role, indentation shows which statements belong to a loop, and the output precision is stated explicitly. Later programs may place repeated calculations inside functions, but the input-process-output structure remains the same.

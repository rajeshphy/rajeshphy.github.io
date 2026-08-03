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

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-9/python-array-flowchart.png' | relative_url }}" alt="Flowchart for the mean of a one-dimensional array" loading="lazy" decoding="async">
</figure>

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

Correctness can be stated without referring to a particular programming language. A **precondition** describes valid input, a **loop invariant** remains true after every pass, and a **postcondition** describes the required output. For the mean algorithm, $n>0$ is a precondition, $s=\sum_{j=0}^{i-1}x_j$ is the invariant, and $\text{mean}=n^{-1}\sum_{j=0}^{n-1}x_j$ is the postcondition.

## Solved Problems

### 1. Maximum of a finite list

For the readings $[3.2,-1.0,5.4,5.1]$, use the algorithm

~~~text
SET largest = first reading
FOR each remaining reading value
    IF value > largest
        SET largest = value
PRINT largest
~~~

The trace is

$$3.2\longrightarrow3.2\longrightarrow5.4\longrightarrow5.4.$$

After each comparison, `largest` equals the maximum of the values examined so far. This invariant is true initially for the one-element prefix, and the conditional preserves it when the next value is processed. After the last element, the prefix is the complete list, so

$$\boxed{\text{largest}=5.4}.$$

Initializing to zero would fail for an all-negative list; initializing to the first valid input avoids that hidden assumption.

### 2. Euclid's finite algorithm for a greatest common divisor

For positive integers $a\ge b$, repeated replacement

~~~text
WHILE b != 0
    SET r = a % b
    SET a = b
    SET b = r
PRINT a
~~~

preserves $\gcd(a,b)$ because $a=qb+r$ implies $\gcd(a,b)=\gcd(b,r)$. For $(252,105)$,

$$252=2(105)+42,$$

$$105=2(42)+21,$$

$$42=2(21)+0.$$

The non-negative remainder is smaller than the previous divisor, so the loop must terminate. The last non-zero divisor is

$$\boxed{\gcd(252,105)=21}.$$

## Descriptive Questions

1. Define an algorithm and explain finiteness, unambiguity, input, and output requirements.
2. Explain the roles of preconditions, loop invariants, and postconditions in establishing correctness.
3. Describe the standard flowchart symbols and the direction of control through a decision node.
4. Explain how input, calculation, control flow, and output form the structure of a scientific program.

## Numerical Problems

1. Dry-run the mean algorithm for the data $[2,4,7]$.
   **Answer:** successive sums $2,6,13$; mean $13/3\approx4.3333$.

2. In the maximum algorithm, count the assignments that replace `largest` after initialization for $[4,1,7,3,9]$.
   **Answer:** two replacements, at $7$ and $9$; final maximum $9$.

3. Design a loop that sums $i^2$ for $i=1,2,3,4$, and state its output.
   **Answer:** initialize `s = 0`, add `i*i` for `i = 1..4`; output $30$.

4. Dry-run Euclid's algorithm for $(144,55)$.
   **Answer:** remainders $34,21,13,8,5,3,2,1,0$; gcd $1$.

The traces, sums, maxima, and greatest-common-divisor results are checked in the [Unit III Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-9/unit-iii-problem-checks.mac' | relative_url }}); every displayed residual is zero.

## References

1. [Algorithm — Wikipedia](https://en.wikipedia.org/wiki/Algorithm).
2. [Python tutorial: More Control Flow Tools](https://docs.python.org/3/tutorial/controlflow.html), Python Software Foundation, sections 4.2–4.5.
3. V. Rajaraman, *Computer Oriented Numerical Methods*, 3rd ed., Chapter 1, “Computational Algorithms.”

---
title: "Basic Electronics: Boolean Algebra and Number Systems"
summary: "Boolean variables, basic laws, identities, decimal-binary conversion method, and exam-style answer points."
date: 2026-03-12 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iii
  - lecture
tags:
  - msc
  - semester-iii
  - open-elective
  - electronics
  - boolean-algebra
  - number-systems
permalink: /msc/sem-iii/boolean-algebra/
hidden: true
---

Digital electronics works with two stable states, usually represented by 0 and 1. Boolean algebra is the mathematical language used to describe operations on these two-state variables.

In circuits, 0 and 1 may represent low and high voltage levels. Boolean algebra therefore provides the bridge between logical statements and digital hardware.

## Boolean variable

A Boolean variable can have only two possible values:

$$
0 \quad \text{or} \quad 1.
$$

These values may also be interpreted as false/true, off/on, or low/high.

## Basic operations

Boolean algebra is based mainly on three operations:

| Operation | Symbol | Meaning |
|---|---|---|
| AND | $A\cdot B$ | Output is 1 only when both inputs are 1 |
| OR | $A+B$ | Output is 1 when at least one input is 1 |
| NOT | $\overline{A}$ | Output is the complement of input |

The physical implementation of these operations is done using logic gates.

## Addition laws

In Boolean algebra, addition means OR operation. The addition laws are:

$$
A+0=A,
$$

$$
A+1=1,
$$

$$
A+A=A,
$$

$$
A+\overline{A}=1.
$$

These laws are different from ordinary algebra because Boolean variables can take only the values 0 and 1.

## Multiplication laws

Boolean multiplication means AND operation. The multiplication laws are:

$$
A\cdot 1=A,
$$

$$
A\cdot 0=0,
$$

$$
A\cdot A=A,
$$

$$
A\cdot\overline{A}=0.
$$

## Other useful identities

Distributive laws:

$$
A(B+C)=AB+AC,
$$

$$
A+BC=(A+B)(A+C).
$$

Absorption laws:

$$
A+AB=A,
$$

$$
A(A+B)=A.
$$

De Morgan's theorems:

$$
\overline{A+B}=\overline{A}\cdot\overline{B},
$$

$$
\overline{AB}=\overline{A}+\overline{B}.
$$

## Decimal and binary numbers

The decimal system uses base 10 and digits 0 to 9. The binary system uses base 2 and digits 0 and 1. Binary numbers are used in digital electronics because circuits naturally work with two states.

Each place in a binary number represents a power of 2.

For example, the binary number

$$
(b_3b_2b_1b_0)_2
$$

represents

$$
b_3 2^3+b_2 2^2+b_1 2^1+b_0 2^0.
$$

## Decimal to binary method

To convert a decimal integer into binary:

1. divide the decimal number by 2;
2. record the remainder;
3. continue dividing the quotient by 2;
4. read the remainders from bottom to top.

This method is commonly asked in university examinations. The important part in an answer is to show the division steps neatly.

## Binary to decimal method

To convert a binary number into decimal:

1. write each binary digit with its place value;
2. multiply each digit by the corresponding power of 2;
3. add all non-zero contributions.

For fractional binary parts, use negative powers:

$$
2^{-1},\quad 2^{-2},\quad 2^{-3},\ldots
$$

## Small reference table

| Decimal | Binary |
|---|---|
| 0 | 0 |
| 1 | 1 |
| 2 | 10 |
| 3 | 11 |
| 4 | 100 |
| 5 | 101 |
| 6 | 110 |
| 7 | 111 |
| 8 | 1000 |

## University questions

The 2019 open elective paper asked:

1. "Explain addition laws in Boolean algebra."
2. "Convert 23 into binary number."
3. "Convert 1101.01 into decimal number."

For conversion questions, write the division or place-value steps clearly; the examiner gives credit for the method as well as the final representation.

Practice questions:

1. Define Boolean algebra.
2. Explain Boolean addition laws.
3. State De Morgan's theorems.
4. Why is the binary system used in digital electronics?
5. Explain the method of decimal-to-binary conversion.

## Answer points

- State that Boolean variables take only 0 and 1.
- Mention OR as Boolean addition and AND as Boolean multiplication.
- Write laws in symbolic form.
- For number conversion, explain the method before writing the result.
- Keep Boolean algebra separate from ordinary algebra.

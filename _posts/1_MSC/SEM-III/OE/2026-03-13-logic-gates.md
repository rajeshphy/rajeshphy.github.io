---
title: "Basic Electronics: Basic and Universal Logic Gates"
summary: "OR, AND, NOT, NAND, and NOR gates with truth tables, Boolean expressions, universal-gate idea, and exam-style questions."
date: 2026-03-13 09:00:00 +0530
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
  - logic-gates
  - nand
  - nor
permalink: /msc/sem-iii/logic-gates/
hidden: true
---

A logic gate is an electronic circuit that performs a Boolean operation. It accepts one or more binary inputs and produces one binary output. In digital electronics, logic gates are the building blocks of computers, calculators, counters, registers, and control circuits.

The open elective syllabus includes basic logic gates and universal logic gates.

## OR gate

An OR gate gives output 1 when at least one input is 1.

Boolean expression:

$$
Y=A+B.
$$

Truth table:

| A | B | Y=A+B |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## AND gate

An AND gate gives output 1 only when all inputs are 1.

Boolean expression:

$$
Y=A\cdot B.
$$

Truth table:

| A | B | Y=A\cdot B |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## NOT gate

A NOT gate has one input and one output. It gives the complement of the input.

Boolean expression:

$$
Y=\overline{A}.
$$

Truth table:

| A | Y=\overline{A} |
|---|---|
| 0 | 1 |
| 1 | 0 |

## NAND gate

A NAND gate is an AND gate followed by a NOT operation.

Boolean expression:

$$
Y=\overline{A\cdot B}.
$$

Truth table:

| A | B | Y=\overline{A\cdot B} |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## NOR gate

A NOR gate is an OR gate followed by a NOT operation.

Boolean expression:

$$
Y=\overline{A+B}.
$$

Truth table:

| A | B | Y=\overline{A+B} |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Universal gates

NAND and NOR gates are called universal gates because any basic logic operation can be made using only NAND gates or only NOR gates.

For example, using NAND gates:

- NOT operation: join both inputs of a NAND gate together;
- AND operation: NAND output followed by a NAND used as NOT;
- OR operation: use De Morgan's theorem.

Using NOR gates:

- NOT operation: join both inputs of a NOR gate together;
- OR operation: NOR output followed by a NOR used as NOT;
- AND operation: use De Morgan's theorem.

## Basic comparison

| Gate | Boolean expression | Output is 1 when |
|---|---|---|
| OR | $A+B$ | At least one input is 1 |
| AND | $A\cdot B$ | Both inputs are 1 |
| NOT | $\overline{A}$ | Input is 0 |
| NAND | $\overline{A\cdot B}$ | Not both inputs are 1 |
| NOR | $\overline{A+B}$ | Both inputs are 0 |

## University questions

The 2019 open elective paper asked: "Explain OR, AND and NOT gates with the help of truth table." This is a direct syllabus question and should be answered with symbols, Boolean expressions, and truth tables.

Practice questions:

1. Explain OR, AND and NOT gates with truth tables.
2. Why are NAND and NOR called universal gates?
3. Write the truth table of a NAND gate.
4. Write the truth table of a NOR gate.
5. Realize NOT operation using NAND or NOR gate.

## Answer points

- Start with the definition of logic gate.
- Write the Boolean expression before the truth table.
- Use 0 and 1 consistently.
- For universal gates, explicitly mention that NAND or NOR alone can produce NOT, AND, and OR operations.
- Draw symbols in the exam answer if asked.

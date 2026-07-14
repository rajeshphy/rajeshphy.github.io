---
layout: post
title: "Verification of Half Adder and Full Adder Circuits"
date: 2026-07-13 20:40:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, half-adder, full-adder, digital-electronics]
permalink: /practical/pg-ii/half-full-adder/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To construct and verify half-adder and full-adder circuits using basic logic gates.

## Apparatus

Digital trainer, XOR, AND, OR, and NAND ICs, regulated $5$ V supply, switches, LEDs, and patch cords.

## Experimental arrangement

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Half-adder and full-adder logic circuit"><figcaption>The input switches feed the sum and carry networks, whose outputs are observed on separate LED indicators.</figcaption></figure>

## Theory

Binary addition is performed column by column. Adding two one-bit numbers produces a sum bit and, when both input bits are one, a carry bit to the next column. Therefore a half-adder has the outputs $S=A\oplus B$ and $C=AB$. The exclusive-OR gives the sum because the sum is one when the inputs are unlike; the AND gives the carry because both inputs must be one.

A full adder must also add the carry received from the preceding column. It can be made from two half adders and an OR gate:

$$S=A\oplus B\oplus C_{in},$$
$$C_{out}=AB+C_{in}(A\oplus B).$$

## Observations

| $A$ | $B$ | $C_{in}$ | Sum $S$ | Carry $C_{out}$ |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Result

The observed outputs agree with the truth tables of the half adder and full adder.

## Viva Questions

1. **Why does a full adder need three inputs?** It adds two data bits and the carry from the preceding stage.
2. **What is the half-adder carry expression?** $C=AB$.
3. **How can a full adder be made from half adders?** Use two half adders followed by an OR gate for their carry outputs.

</div>

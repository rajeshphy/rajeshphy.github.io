---
layout: post
title: "Half Adder Using XOR and NAND Gates"
date: 2026-07-13 20:20:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, digital-electronics, half-adder]
permalink: /practical/ug-viii/half-adder/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To construct and verify a half adder using XOR and NAND gates.

## Apparatus

Digital trainer, XOR and NAND ICs, regulated $5\,\text{V}$ supply, patch cords, and LED indicators.

## Figure

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Half-adder XOR and AND gate circuit"><figcaption>The two input lines feed the XOR gate for the sum output and the AND gate for the carry output.</figcaption></figure>

## Theory

Adding two one-bit numbers produces a sum and a carry. The sum is one only when the inputs are unlike, so $S=A\oplus B$. The carry is one only when both inputs are one, so $C=AB$. The NAND gate is universal because $\overline{A\cdot A}=\overline A$ and combinations of NAND gates produce AND and OR operations.

## Truth table

| $A$ | $B$ | Sum $S$ | Carry $C$ |
|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## Result

The XOR output gives the sum and the NAND-derived AND output gives the carry for all four input combinations.

## Viva Questions

1. **Why is it called a half adder?** It adds two bits but has no carry-in input.
2. **What is the carry for $A=B=1$?** One.
3. **Why are LEDs connected at the outputs?** They indicate logic high and low directly.

</div>

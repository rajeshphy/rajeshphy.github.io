---
layout: post
title: "Verification of Logic Gates Using NAND Gates"
date: 2026-07-13 15:15:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, logic-gates, nand]
permalink: /practical/ug-iv/logic-gates-nand/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To verify AND, OR, NOT, and XOR functions using NAND gates.

## Apparatus

Digital logic trainer, IC 7400, regulated $5\,\text{V}$ supply, patch cords, and LED indicators.

## Theory

The NAND operation is $Y=\overline{AB}$. Since a NAND gate can be combined to produce the basic operations, it is called a universal gate. NOT is obtained by joining the two inputs of one NAND gate. Further combinations give AND, OR, and XOR functions.

## Observations

| $A$ | $B$ | AND | OR | XOR |
|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 1 |
| 1 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 | 0 |

NOT-gate observations: $A=0\Rightarrow Y=1$ and $A=1\Rightarrow Y=0$.

## Result

The truth tables of AND, OR, NOT, and XOR are verified using NAND gates.

## Precautions

1. Use only the specified supply voltage for the IC.
2. Connect the ground terminal before applying power.
3. Do not leave CMOS or TTL inputs floating.
4. Switch off power before changing patch cords.

## Viva Questions

1. **Why is NAND universal?** Any basic logic operation can be constructed from NAND gates alone.
2. **What is a floating input?** It is an unconnected logic input whose state is undefined.
3. **What is XOR output for equal inputs?** It is zero.
4. **Why are LEDs used?** They give a direct indication of the logic output state.

</div>


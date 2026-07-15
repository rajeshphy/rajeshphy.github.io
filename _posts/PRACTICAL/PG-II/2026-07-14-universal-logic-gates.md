---
layout: post
title: "Verification of Basic Logic Gates Using NAND and NOR Gates"
date: 2026-07-13 20:20:00 +0530
categories: [practical-pg-ii]
tags: [practical, pg-ii, logic-gates, universal-gates]
permalink: /practical/pg-ii/universal-logic-gates/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To verify the truth tables of AND, OR, NOT, NAND, NOR, and XOR gates and realise basic gates using universal gates.

## Apparatus

Digital logic trainer, IC 7400 or 7410, IC 7402, regulated $5$ V supply, patch cords, switches, and LED indicators.

## Experimental arrangement

<figure class="practical-figure practical-figure-wide"><img src="{{ '/assets/images/practical/pg-ii/universal-logic-gates/universal-gates-setup.png' | relative_url }}" alt="NOT AND and OR gates realised using NAND gates"><figcaption>NAND-only realisations of NOT, AND, and OR; the OR circuit follows directly from De Morgan's theorem.</figcaption></figure>

## Theory

Digital circuits assign ranges of voltage to the logical states 0 and 1. A gate implements a Boolean function: AND gives $AB$, OR gives $A+B$, and NOT gives $\overline A$. NAND and NOR add inversion to AND and OR, while XOR is one only when the inputs differ:

$$Y_{XOR}=A\oplus B=\overline AB+A\overline B.$$

A gate set is universal if every Boolean function can be built from that gate alone. Connecting both inputs of a NAND gate to $A$ gives

$$A\ \text{NAND}\ A=\overline{AA}=\overline A,$$

so NAND first supplies inversion. NAND followed by this inverter gives AND:

$$\overline{\overline{AB}}=AB.$$

De Morgan's theorem gives the NAND-only OR realisation:

$$A+B=\overline{\overline A\,\overline B}.$$

Similarly, NOR with its inputs joined gives NOT; inversion of a NOR output gives OR, and De Morgan's theorem then gives AND. The LED indicator must be connected through a resistor, and unused TTL inputs must be tied to a defined logic level.

## Observations

| $A$ | $B$ | AND | OR | NAND | NOR | XOR |
|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 |

## Verification

For $A=0$ and $B=1$,

$$\text{NAND}=\overline{0\cdot1}=1,\qquad \text{NOR}=\overline{0+1}=0,$$

and

$$\text{XOR}=\overline0(1)+0(\overline1)=1.$$

These values match the second observation row.

## Result

The truth tables are verified, and the basic gates are realised from NAND/NOR universal gates.

## Viva Questions

1. **Why is NAND universal?** NOT, AND, and OR can all be formed using NAND gates alone.
2. **What is XOR output for equal inputs?** Zero.
3. **Why must unused TTL inputs not be left floating?** Their logic state may become undefined and produce unreliable output.

## Maxima Code

[Download the PG-II electronics calculation file]({{ '/assets/tikz/practical/pg-ii/pg-ii-electronics.mac' | relative_url }}).

</div>

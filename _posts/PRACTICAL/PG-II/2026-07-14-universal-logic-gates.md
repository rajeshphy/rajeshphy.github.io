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

<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Universal logic gate trainer connection"><figcaption>Logic inputs are applied to the gate ICs and the output states are observed using LED indicators.</figcaption></figure>

## Theory

A digital gate maps input voltage levels representing 0 and 1 to an output level. The output of an AND gate is one only when both inputs are one, whereas OR gives one when at least one input is one. NAND and NOR are called universal gates because NOT, AND, and OR can be constructed from either one alone. Joining the inputs of a NAND gate gives NOT, and NANDing the result again gives AND.

## Observations

| $A$ | $B$ | AND | OR | NAND | NOR | XOR |
|---:|---:|---:|---:|---:|---:|---:|
| 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 0 | 0 |

## Result

The truth tables are verified, and the basic gates are realised from NAND/NOR universal gates.

## Viva Questions

1. **Why is NAND universal?** NOT, AND, and OR can all be formed using NAND gates alone.
2. **What is XOR output for equal inputs?** Zero.
3. **Why must unused TTL inputs not be left floating?** Their logic state may become undefined and produce unreliable output.

</div>

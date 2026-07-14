---
layout: post
title: "UG-VIII Digital and Operational Amplifier Practicals"
date: 2026-07-13 18:20:00 +0530
categories: [practical-ug-viii]
tags: [practical, ug-viii, digital-electronics, op-amp]
permalink: /practical/ug-viii/digital-opamp-practicals/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Scope of the practical

This post covers half and full adders using XOR and NAND gates, RS/JK/T/D flip-flops, an op-amp function generator, and a 12 V op-amp voltage regulator.

## Standard experiment titles used in this record

The common laboratory titles are: half adder using XOR and NAND gates; full adder using XOR and NAND gates; verification of RS, JK, T, and D flip-flops; op-amp square/triangular-wave function generator; and op-amp series voltage regulator designed for a nominal $12\,\text{V}$ output.

## Apparatus

Digital trainer, ICs, regulated supplies, CRO, op-amp IC, resistors, capacitors, and connecting leads.

## Essential relations

For a half adder, $S=A\oplus B$ and $C=AB$. A full adder has $S=A\oplus B\oplus C_{in}$. A flip-flop stores one bit. An op-amp relaxation oscillator uses threshold and charging relations to set frequency.

## Sample observations

| Practical | Sample result |
|---|---:|
| Half-adder truth table | sum and carry verified |
| JK flip-flop | toggles for $J=K=1$ |
| Function generator | $f=1.00\,\text{kHz}$ |
| 12 V regulator | $V_o=12.02\,\text{V}$ for $V_i=15$ to $20\,\text{V}$ |

## Result

The truth tables and storage actions are verified. The op-amp circuits generate the expected periodic waveform and maintain a nearly constant regulated output.

## Precautions

Use the specified IC supply, avoid floating inputs, observe op-amp pin configuration, and connect CRO ground correctly.

## Viva Questions

1. **What is a flip-flop?** A bistable circuit that stores one binary bit.
2. **Why is XOR used in an adder?** It gives the sum bit without carry for two inputs.
3. **What is regulation?** Maintaining nearly constant output despite input or load changes.
4. **Why is feedback used in an oscillator?** It sustains periodic operation.

</div>

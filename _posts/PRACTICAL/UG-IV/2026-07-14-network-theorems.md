---
layout: post
title: "Verification of Thevenin, Norton, Superposition and Maximum Power Transfer Theorems"
date: 2026-07-13 15:40:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, network-theorems]
permalink: /practical/ug-iv/network-theorems/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="DC network theorem test circuit">
  <figcaption>DC network test circuit with a source, series limiting resistance, network under test, and separate current and voltage readings.</figcaption>
</figure>

## Aim

To verify Thevenin's theorem, Norton's theorem, the superposition theorem, and the maximum power transfer theorem for a DC resistive network.

## Apparatus

DC power supplies, resistors, rheostat, voltmeter, ammeter, resistance box, key, and connecting wires.

## Theory

Thevenin's theorem replaces a linear two-terminal network by an equivalent voltage source $V_{th}$ in series with $R_{th}$. Norton's theorem replaces it by a current source $I_N$ in parallel with $R_N$, where $R_N=R_{th}$. In the superposition theorem, the response in a linear network is the algebraic sum of responses produced by individual sources acting separately. Maximum power is delivered to the load when

$$R_L=R_{th}.$$

## Observations

### Thevenin and Norton check

| Quantity | Direct network | Equivalent network |
|---|---:|---:|
| Open-circuit voltage $V_{th}$ | $6.02\,\text{V}$ | $6.00\,\text{V}$ |
| Short-circuit current $I_N$ | $12.0\,\text{mA}$ | $12.1\,\text{mA}$ |
| Equivalent resistance | $500\,\Omega$ | $495\,\Omega$ |

### Superposition check

| Response | Measured current |
|---|---:|
| Source $E_1$ alone | $4.0\,\text{mA}$ |
| Source $E_2$ alone | $2.0\,\text{mA}$ |
| Both sources together | $6.0\,\text{mA}$ |

### Maximum power transfer

| $R_L$ ($\Omega$) | Load power (mW) |
|---:|---:|
| 250 | 16.0 |
| 400 | 18.4 |
| 500 | 18.0 |
| 600 | 17.1 |
| 1000 | 12.0 |

## Result

The measured equivalent voltage, equivalent resistance, and source superposition agree with the corresponding theoretical values within experimental error. Maximum load power occurs close to $R_L=R_{th}$.

## Precautions

1. Switch off the supply while changing the circuit.
2. Check meter polarity and range before taking readings.
3. Replace an ideal voltage source by a short circuit only when finding equivalent resistance.
4. Use a low resistance range for continuity checks and never short a powered supply.

## Viva Questions

1. **When is Thevenin's theorem applicable?** To linear two-terminal networks.
2. **What is the relation between Norton and Thevenin resistance?** $R_N=R_{th}$.
3. **How is an inactive voltage source replaced?** By a short circuit.
4. **When is maximum power transferred?** When the load resistance equals the Thevenin resistance.
5. **Why is superposition not applied directly to power?** Power is proportional to the square of current or voltage and is therefore not a linear quantity.

</div>

---
layout: post
title: "Verification of Thevenin's and Norton's Theorems"
date: 2026-07-13 21:10:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, network-analysis, thevenin, norton]
permalink: /practical/pg-iv/thevenin-norton-network/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To verify Thevenin's and Norton's theorems for a linear DC resistive network.

## Apparatus
DC supply, resistors, load resistor, voltmeter, ammeter, potentiometer or decade resistance box, and connecting leads.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/electronics/electronics-arrangement.png' | relative_url }}" alt="Thevenin and Norton equivalent network setup"><figcaption>The original network is replaced by its equivalent source and resistance, and the load current is compared in all arrangements.</figcaption></figure>

## Theory
A linear resistive network responds to a load through the voltage and current available at its two output terminals. Thevenin's theorem replaces the complete network by a voltage source $V_{th}$ in series with $R_{th}$, where $V_{th}$ is the open-circuit voltage. Norton's theorem replaces it by a current source $I_N$ in parallel with $R_N$, where $I_N$ is the short-circuit current. The two forms satisfy $V_{th}=I_NR_N$ and $R_{th}=R_N$. For a load $R_L$,

$$I_L=\frac{V_{th}}{R_{th}+R_L}=I_N\frac{R_N}{R_N+R_L}.$$

## Observations

| Arrangement | Load resistance (ohm) | Load current (mA) |
|---|---:|---:|
| original network | 1000 | 3.96 |
| Thevenin equivalent | 1000 | 3.94 |
| Norton equivalent | 1000 | 3.95 |

## Result
The load currents in the original, Thevenin-equivalent, and Norton-equivalent circuits agree within experimental error.

## Viva Questions
1. **What is $V_{th}$?** The open-circuit voltage at the output terminals.
2. **How is $R_{th}$ found?** Deactivate independent sources and find the resistance seen from the terminals.
3. **What is the Norton current?** The short-circuit current at the output terminals.

## Maxima Code
[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).
</div>

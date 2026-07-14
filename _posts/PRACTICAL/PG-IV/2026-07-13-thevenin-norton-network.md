---
layout: post
title: "Verification of Thevenin's and Norton's Theorems"
date: 2026-06-13 21:10:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, network-analysis, thevenin, norton]
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
A linear resistive network responds to a load through the voltage and current available at its two output terminals. To find its Thevenin form, remove the load and measure the open-circuit terminal voltage $V_{th}$; then deactivate independent sources and measure the resistance seen from the terminals, $R_{th}$. Thevenin's theorem replaces the network by $V_{th}$ in series with $R_{th}$.

Norton's theorem follows from the same terminal relation. Measure the short-circuit current $I_N$, and place it in parallel with $R_N$. The two forms satisfy $V_{th}=I_NR_N$ and $R_{th}=R_N$. For a load $R_L$,

$$I_L=\frac{V_{th}}{R_{th}+R_L}=I_N\frac{R_N}{R_N+R_L}.$$

The theorem is verified when the load current obtained from the original and equivalent circuits agrees within the experimental error.

## Observations

| Arrangement | Load resistance (ohm) | Load current (mA) |
|---|---:|---:|
| original network | 1000 | 3.96 |
| Thevenin equivalent | 1000 | 3.94 |
| Norton equivalent | 1000 | 3.95 |

## Calculation

For the trial network take the measured Thevenin parameters as $V_{th}=5.00$ V and $R_{th}=260\,\Omega$. The predicted load current for $R_L=1000\,\Omega$ is

$$I_L=\frac{V_{th}}{R_{th}+R_L}=\frac{5.00}{260+1000}=3.968\times10^{-3}\,\text{A}=3.97\,\text{mA}.$$

The equivalent Norton current is

$$I_N=\frac{V_{th}}{R_{th}}=\frac{5.00}{260}=19.23\,\text{mA},\qquad R_N=R_{th}=260\,\Omega.$$

Using the Norton form gives

$$I_L=I_N\frac{R_N}{R_N+R_L}=19.23\frac{260}{1260}=3.97\,\text{mA}.$$

The observed currents, 3.96, 3.94, and 3.95 mA, differ from this ideal value by less than one percent.

## Result
The load currents in the original, Thevenin-equivalent, and Norton-equivalent circuits agree within experimental error.

## Viva Questions
1. **What is $V_{th}$?** The open-circuit voltage at the output terminals.
2. **How is $R_{th}$ found?** Deactivate independent sources and find the resistance seen from the terminals.
3. **What is the Norton current?** The short-circuit current at the output terminals.

## Maxima Code
[Download the Thevenin-Norton calculation]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).
</div>

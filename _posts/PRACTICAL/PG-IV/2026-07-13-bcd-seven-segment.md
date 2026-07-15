---
layout: post
title: "BCD-to-Seven-Segment Display Using IC 7447"
date: 2026-06-13 20:50:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, bcd, seven-segment, digital-electronics]
permalink: /practical/pg-iv/bcd-seven-segment/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To study the operation of a BCD-to-seven-segment decoder and display decimal digits from 0 to 9.

## Apparatus
Digital trainer, BCD switches, decoder IC 7447 or equivalent, common-anode seven-segment display, resistors, and regulated supply.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="BCD to seven-segment display circuit"><figcaption>Four BCD input switches feed the decoder, whose seven outputs drive the segments through current-limiting resistors.</figcaption></figure>

## Theory
A decimal digit has ten possible values, whereas four binary bits have sixteen possible combinations. Binary-coded decimal (BCD) uses only $0000$ through $1001$ to represent decimal 0 through 9. A seven-segment display contains LED segments labelled $a$ to $g$; a numeral is formed by illuminating a particular combination, for example $a,b,c,d,e,f$ for 0 and $b,c$ for 1.

The IC 7447 is a combinational BCD-to-seven-segment decoder/driver. Its four inputs have weights 1, 2, 4, and 8, and its seven outputs are determined solely by the present BCD word. It is designed to drive a **common-anode** display. All LED anodes are connected to $+V_{CC}$, while each 7447 output sinks current through a selected segment. Consequently, its segment outputs are active LOW: output 0 turns a segment on and output 1 turns it off.

The 7447 uses open-collector outputs, so each segment requires an external current-limiting resistor. If the supply is $V_{CC}$, the LED drop is $V_F$, and the desired current is $I_s$, a suitable value is approximately

$$R_s=\frac{V_{CC}-V_F-V_{OL}}{I_s}.$$

Inputs $1010$ to $1111$ are not valid BCD digits and need not produce decimal symbols. The lamp-test and blanking pins must be held at their inactive logic levels during the normal truth-table test.

## Observations

| Decimal digit | BCD input | Illuminated segments |
|---:|---:|---|
| 0 | 0000 | abcdef |
| 1 | 0001 | bc |
| 2 | 0010 | abdeg |
| 5 | 0101 | acdfg |
| 9 | 1001 | abcdfg |

## Calculation

For the observed digit 5, the BCD input is

$$0101_2=0(2^3)+1(2^2)+0(2^1)+1(2^0)=5_{10}.$$

The decoder therefore activates segments $a,c,d,f,g$, which gives the numeral 5. Because the display is common-anode and the 7447 outputs are active low, these five segment outputs are LOW while the unused outputs remain HIGH. The codes $1010_2$ to $1111_2$ are not used for decimal digits.

## Result
The decoder displays the correct decimal digit for each valid BCD input.

## Viva Questions
1. **Why are resistors connected to the segments?** To limit LED segment current.
2. **How many segments are used?** Seven, labelled $a$ through $g$.
3. **What is an invalid BCD code?** Any four-bit code from 1010 to 1111.

## Maxima Code

[Download the BCD verification file]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).
</div>

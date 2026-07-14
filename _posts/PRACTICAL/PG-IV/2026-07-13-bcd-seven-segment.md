---
layout: post
title: "BCD to Seven-Segment Display Decoder"
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
A digital circuit represents information using two voltage levels. The BCD code represents each decimal digit by four binary bits, but only the ten combinations 0000 to 1001 are valid. The decoder is a combinational circuit: its output depends only on the present four-bit input. It converts the code into seven output signals that illuminate segments $a$ to $g$.

For a common-anode display, the segment outputs of the 7447 are active low, so a LOW output completes the current path through the selected LED segment. The segment combination forms the required numeral. Codes from 1010 to 1111 are invalid BCD inputs and are normally blanked or treated as don't-care states. The resistors limit the current in each illuminated segment.

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

## Maxima Code

[Download the BCD verification file]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).

## Result
The decoder displays the correct decimal digit for each valid BCD input.

## Viva Questions
1. **Why are resistors connected to the segments?** To limit LED segment current.
2. **How many segments are used?** Seven, labelled $a$ through $g$.
3. **What is an invalid BCD code?** Any four-bit code from 1010 to 1111.
</div>

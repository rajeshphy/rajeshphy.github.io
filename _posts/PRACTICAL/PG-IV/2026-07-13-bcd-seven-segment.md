---
layout: post
title: "BCD to Seven-Segment Display Decoder"
date: 2026-07-13 20:50:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, bcd, seven-segment, digital-electronics]
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
A digital circuit represents information using two voltage levels. The BCD code represents each decimal digit by four binary bits, but only the ten combinations 0000 to 1001 are valid. The decoder converts this four-bit code into seven output signals that illuminate segments $a$ to $g$. The segment combination forms the required numeral. Codes from 1010 to 1111 are invalid BCD inputs and are normally blanked or treated as don't-care states.

## Observations

| Decimal digit | BCD input | Illuminated segments |
|---:|---:|---|
| 0 | 0000 | abcdef |
| 1 | 0001 | bc |
| 2 | 0010 | abdeg |
| 5 | 0101 | acdfg |
| 9 | 1001 | abcdfg |

## Result
The decoder displays the correct decimal digit for each valid BCD input.

## Viva Questions
1. **Why are resistors connected to the segments?** To limit LED segment current.
2. **How many segments are used?** Seven, labelled $a$ through $g$.
3. **What is an invalid BCD code?** Any four-bit code from 1010 to 1111.
</div>

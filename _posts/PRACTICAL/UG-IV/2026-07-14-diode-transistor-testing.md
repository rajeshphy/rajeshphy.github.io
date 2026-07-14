---
layout: post
title: "Testing Diodes and Transistors Using a Multimeter"
date: 2026-07-13 15:05:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, multimeter, diode, transistor]
permalink: /practical/ug-iv/diode-transistor-testing/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To identify semiconductor devices and test the condition of diodes and transistor junctions using a digital multimeter.

## Apparatus

Digital multimeter, silicon diode, LED, NPN transistor, PNP transistor, and connecting leads.

## Theory

A diode conducts strongly in forward bias and offers high resistance in reverse bias. A transistor contains two PN junctions. For an NPN transistor, the base-emitter and base-collector junctions conduct when the positive probe is connected to the base; for a PNP transistor the polarity is reversed.

## Observations

| Device/test | Forward reading | Reverse reading | Inference |
|---|---:|---:|---|
| Silicon diode | $0.68\,\text{V}$ | OL | Good diode |
| LED | $1.86\,\text{V}$ | OL | Good LED |
| NPN, base-emitter | $0.69\,\text{V}$ | OL | Junction good |
| NPN, base-collector | $0.66\,\text{V}$ | OL | Junction good |
| NPN, collector-emitter | OL | OL | No short circuit |

## Result

The tested silicon diode, LED, and NPN transistor are in working condition. The transistor is identified as NPN from the polarity of its two conducting junctions.

## Precautions

1. Remove the device from the circuit before testing it.
2. Do not test a charged capacitor on the resistance range.
3. Use the diode-test range for junction-voltage readings.
4. Do not exceed the current limit of the multimeter.

## Viva Questions

1. **What does OL indicate?** It indicates that the measured resistance is beyond the selected range or the junction is reverse biased.
2. **Why does an LED show a larger forward voltage?** Its semiconductor material has a larger effective band gap.
3. **How are transistor terminals identified?** By testing the two junctions and comparing their conducting polarities.
4. **Why must power be removed?** External circuit paths can give false readings and may damage the meter.

</div>


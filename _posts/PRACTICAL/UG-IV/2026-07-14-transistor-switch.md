---
layout: post
title: "Transistor as a Switch and NOT Gate"
date: 2026-07-13 15:10:00 +0530
categories: [practical-ug-iv]
tags: [practical, ug-iv, electronics, transistor, switch, not-gate]
permalink: /practical/ug-iv/transistor-switch/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Experimental arrangement

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/common/experimental-arrangement/experimental-arrangement.png' | relative_url }}" alt="Labelled general experimental arrangement">
  <figcaption>Labelled arrangement showing the source, sample under test, detector, and measured response.</figcaption>
</figure>

## Aim

To study the switching action of an NPN transistor and verify its use as a NOT gate.

## Apparatus

NPN transistor, DC supply, collector resistor, LED with current-limiting resistor, signal switch, breadboard, and multimeter.

## Theory

In the cutoff region the base current is zero and the transistor behaves as an open switch. In saturation, both junctions are forward biased and the transistor behaves approximately as a closed switch. With the collector connected to the output node, a low input produces a high output and a high input produces a low output.

## Observations

| Input $V_{in}$ | Transistor state | Output $V_{out}$ | LED state |
|---:|---|---:|---|
| $0\,\text{V}$ | Cutoff | $4.82\,\text{V}$ | OFF |
| $5\,\text{V}$ | Saturation | $0.18\,\text{V}$ | ON |

## Truth table

| Input $A$ | Output $Y=\overline{A}$ |
|---:|---:|
| 0 | 1 |
| 1 | 0 |

## Result

The transistor operates as a switch and gives the NOT-gate relation $Y=\overline{A}$.

## Precautions

1. Use a base resistor to limit base current.
2. Observe the transistor pin configuration before wiring.
3. Use a current-limiting resistor with the LED.
4. Switch off the supply before changing connections.

## Viva Questions

1. **What are the switching regions?** Cutoff and saturation.
2. **Why is the collector output inverted?** An increase in collector current produces a larger voltage drop across the collector resistor.
3. **What is saturation voltage?** It is the small collector-emitter voltage when the transistor is fully ON.
4. **Why is a resistor connected to the base?** It prevents excessive base current.

</div>

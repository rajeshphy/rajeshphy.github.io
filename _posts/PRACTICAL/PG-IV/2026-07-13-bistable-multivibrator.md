---
layout: post
title: "Bistable Multivibrator: Set and Reset Waveforms"
date: 2026-07-13 20:40:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, bistable, flip-flop]
permalink: /practical/pg-iv/bistable-multivibrator/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To study the set, reset, and complementary output waveforms of a bistable multivibrator using an oscilloscope.

## Apparatus
Bistable multivibrator or JK/SR flip-flop trainer, DC supply, pulse generator, CRO, and patch cords.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/common/digital/digital-arrangement.png' | relative_url }}" alt="Bistable multivibrator CRO arrangement"><figcaption>Set and reset triggers are applied to the bistable circuit while the two complementary outputs are monitored.</figcaption></figure>

## Theory
Two cross-coupled inverting stages provide positive feedback: when one output is high, feedback drives the other low, and this condition reinforces itself. There are two self-consistent stable states. A set pulse disturbs the balance and drives the circuit to one state; a reset pulse drives it to the other. The circuit therefore stores one binary bit as long as the supply remains connected. The two outputs are complementary, $Q$ and $\overline Q$.

## Observations

| Trigger applied | $Q$ | $\overline Q$ | State |
|---|---:|---:|---|
| none, initial | 0 | 1 | reset |
| set | 1 | 0 | set |
| none | 1 | 0 | stored set |
| reset | 0 | 1 | reset |

## Result
The bistable circuit has two stable output states and retains the last state until the opposite trigger is applied.

## Viva Questions
1. **What does a bistable store?** One binary bit.
2. **What are the two outputs?** $Q$ and its complement $\overline Q$.
3. **What is the role of the set pulse?** It drives the circuit to the set state.
</div>

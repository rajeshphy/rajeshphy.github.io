---
layout: post
title: "Bistable Multivibrator: Set and Reset Waveforms"
date: 2026-06-13 20:40:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, electronics, bistable, flip-flop]
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
Two cross-coupled inverting stages provide positive feedback: when one output is high, feedback drives the other low, and this condition reinforces itself. There are two self-consistent stable states, $(Q,\overline Q)=(1,0)$ and $(0,1)$. A set pulse disturbs the balance and drives the circuit to the first state; a reset pulse drives it to the second. The circuit therefore stores one binary bit as long as the supply remains connected.

The output changes only when an allowed trigger is applied, so the bistable is a memory element rather than an oscillator. In an SR implementation, the set and reset inputs must not be asserted together because that condition can make the final state indeterminate. The two outputs are complementary, $Q$ and $\overline Q$.

## Observations

| Trigger applied | $Q$ | $\overline Q$ | State |
|---|---:|---:|---|
| none, initial | 0 | 1 | reset |
| set | 1 | 0 | set |
| none | 1 | 0 | stored set |
| reset | 0 | 1 | reset |

## Calculation

For a valid bistable output, the complementary relation is

$$Q+\overline Q=1.$$

After the set trigger, $Q=1$, so $\overline Q=1-Q=0$ and the stored state is $(1,0)$. After the reset trigger, $Q=0$, so $\overline Q=1$ and the state is $(0,1)$. The unchanged output in the intervening ``none'' reading shows that the circuit stores the state after the trigger is removed.

## Maxima Code

[Download the bistable-state check]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).

## Result
The bistable circuit has two stable output states and retains the last state until the opposite trigger is applied.

## Viva Questions
1. **What does a bistable store?** One binary bit.
2. **What are the two outputs?** $Q$ and its complement $\overline Q$.
3. **What is the role of the set pulse?** It drives the circuit to the set state.
</div>

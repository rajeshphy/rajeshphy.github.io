---
layout: post
title: "SR Bistable Multivibrator: Set, Reset, and Memory States"
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
A bistable multivibrator is formed by cross-coupling two inverting stages so that the output of each controls the input of the other. This regenerative positive feedback permits only two self-consistent stable conditions: $(Q,\overline Q)=(1,0)$ and $(0,1)$. Once either state has been established, feedback maintains it after the trigger disappears. The circuit therefore stores one binary bit and does not oscillate by itself.

For the common cross-coupled NOR implementation, the logical relations are

$$Q=\overline{R+\overline Q},\qquad
\overline Q=\overline{S+Q}.$$

With $S=R=0$, these equations preserve the previous output and define the memory condition. A HIGH pulse at $S$ drives $Q$ HIGH after the feedback settles; a HIGH pulse at $R$ drives $Q$ LOW. Since the two outputs normally have opposite levels, observing both CRO channels provides a direct check of regeneration.

Applying $S=R=1$ to a NOR latch forces both outputs LOW and violates the complementary-output requirement. When both inputs return to zero together, unequal gate delays may decide the final state, so this input is forbidden. A NAND latch follows the same physical principle but uses active-LOW set and reset inputs. In either form, propagation delay means the output transition occurs shortly after the trigger edge, not instantaneously.

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

## Result
The bistable circuit has two stable output states and retains the last state until the opposite trigger is applied.

## Viva Questions
1. **What does a bistable store?** One binary bit.
2. **What are the two outputs?** $Q$ and its complement $\overline Q$.
3. **What is the role of the set pulse?** It drives the circuit to the set state.

## Maxima Code

[Download the bistable-state check]({{ '/assets/tikz/practical/pg-iv/pg-iv-electronics.mac' | relative_url }}).
</div>

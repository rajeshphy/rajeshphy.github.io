---
title: "Basic Electronics: BJT and FET"
summary: "BJT, CE configuration, transistor action, amplifier use, FET channels, output characteristics, and applications."
date: 2026-03-09 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iii
  - lecture
tags:
  - msc
  - semester-iii
  - open-elective
  - electronics
  - bjt
  - fet
permalink: /msc/sem-iii/bjt-fet-applications/
hidden: true
---

Transistors are semiconductor devices used for amplification and switching. In the open elective syllabus, two important transistor families are included: the bipolar junction transistor (BJT) and the field effect transistor (FET).

A BJT is current controlled, while an FET is voltage controlled. This distinction is often asked in short-answer form.

## Bipolar junction transistor

A BJT is formed by joining three alternately doped semiconductor regions. It has three terminals:

- emitter,
- base,
- collector.

There are two types:

| Type | Structure | Majority carriers |
|---|---|---|
| NPN | n-p-n | Electrons |
| PNP | p-n-p | Holes |

The base is very thin and lightly doped. The emitter is heavily doped, and the collector is moderately doped and physically larger.

## Transistor action

In active operation, the emitter-base junction is forward biased and the collector-base junction is reverse biased.

For an NPN transistor:

1. electrons are injected from emitter into base;
2. only a small fraction recombines in the thin base;
3. most electrons are swept into the collector by the reverse-biased collector junction;
4. a small base current controls a much larger collector current.

This is the basic reason a transistor can act as an amplifier.

## Common emitter configuration

In the common emitter (CE) configuration, the emitter terminal is common to input and output circuits. The input is applied between base and emitter, and the output is taken between collector and emitter.

The CE configuration is widely used because it gives both current gain and voltage gain.

Important features:

- input current is base current $I_B$;
- output current is collector current $I_C$;
- output voltage is collector-emitter voltage $V_{CE}$;
- a small change in base current produces a large change in collector current.

## CE characteristics

The CE output characteristic is a graph of collector current $I_C$ versus collector-emitter voltage $V_{CE}$ for different fixed base currents.

It has three regions:

| Region | Meaning | Use |
|---|---|---|
| Cut-off | Very small collector current | Switch OFF |
| Active region | Collector current controlled by base current | Amplifier |
| Saturation | Collector current cannot increase much further | Switch ON |

## BJT as amplifier

In an amplifier, the transistor is biased in the active region. A small alternating input signal at the base causes a larger variation in collector current. This produces an amplified voltage variation across the collector load.

For an exam answer, write:

- transistor is biased in active region;
- input signal is applied at base-emitter junction;
- small base current variation controls large collector current variation;
- output is taken across collector load;
- amplification is obtained due to transistor action.

## Field effect transistor

An FET is a voltage-controlled semiconductor device. Its current is controlled by an electric field produced by the gate voltage.

The three terminals are:

- source,
- drain,
- gate.

The current flows through a channel between source and drain. The gate voltage controls the width of this channel.

## N-channel and P-channel FET

| Type | Main carriers | Conventional current direction |
|---|---|---|
| N-channel FET | Electrons | Drain to source |
| P-channel FET | Holes | Source to drain |

In an N-channel FET, electrons are the majority carriers. In a P-channel FET, holes are the majority carriers.

## Output characteristic of N-channel FET

The output characteristic is a graph of drain current $I_D$ versus drain-source voltage $V_{DS}$ for different gate-source voltages $V_{GS}$.

The main regions are:

- ohmic region: FET behaves like a voltage-controlled resistor;
- saturation or pinch-off region: drain current becomes nearly constant;
- cut-off region: channel is closed and current is nearly zero.

As the reverse gate voltage increases in magnitude, the channel becomes narrower and the drain current decreases.

## Applications

BJT applications:

- amplifier circuits;
- switching circuits;
- oscillator circuits;
- signal processing.

FET applications:

- voltage-controlled resistor;
- amplifier with high input impedance;
- switching circuits;
- buffer circuits;
- low-noise input stages.

## University questions

The 2019 open elective paper asked two direct questions from this block:

1. "Draw characteristic of N-P-N transistor in CE mode. Explain how it can be used as an amplifier."
2. "What are N-channel and P-channel FET? Draw output characteristics of N-channel FET."

Practice questions:

1. Explain the construction and action of an NPN transistor.
2. Draw and explain CE output characteristics.
3. Explain how a transistor works as an amplifier.
4. Distinguish BJT and FET.
5. Explain N-channel and P-channel FET.

## Answer points

- For BJT, mention emitter, base, collector, and active biasing.
- For CE amplifier, write small base current controls large collector current.
- For FET, mention source, drain, gate, and channel control.
- For N-channel FET characteristic, explain ohmic, saturation, and cut-off regions.

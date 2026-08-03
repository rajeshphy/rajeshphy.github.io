---
title: "BJT Configurations, Characteristics, and Current Gains"
summary: "CB, CE, and CC characteristics with dc and incremental current-gain relations."
date: 2025-07-28 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, transistor-characteristics, current-gain]
permalink: /bsc/sem-iv/mj-7/bjt-configurations-characteristics-and-current-gains/
hidden: true
---

The word *common* identifies the terminal shared by input and output circuits. A transistor characteristic must also state which third quantity is held constant.

## Common-base configuration

The base is common. The input characteristic is $I_E$ versus $V_{BE}$ at fixed $V_{CB}$; it resembles a forward-biased diode and has low incremental input resistance. The output characteristic is $I_C$ versus $V_{CB}$ at fixed $I_E$. In forward active operation it is nearly horizontal because most injected emitter carriers reach the collector.

The dc and small-signal current gains are

$$
\alpha_{dc}=\frac{I_C}{I_E},
\qquad
\alpha=\left.\frac{\partial I_C}{\partial I_E}\right|_{V_{CB}},
$$

both slightly below unity when leakage is negligible. The output resistance is high in the active region.

## Common-emitter configuration

The emitter is common. The input characteristic is $I_B$ versus $V_{BE}$ at fixed $V_{CE}$. The output characteristic is $I_C$ versus $V_{CE}$ at fixed $I_B$ and contains three main regions:

- near $V_{CE}=0$, both junctions are forward biased and the device is saturated;
- beyond the knee, $I_C$ is approximately $\beta I_B$ and depends only weakly on $V_{CE}$ in the active region;
- for $I_B\simeq0$, the device is in cutoff apart from leakage.

The slight active-region slope is the Early effect and gives a finite output resistance. The gains are

$$
\beta_{dc}=\frac{I_C}{I_B},
\qquad
\beta=\left.\frac{\partial I_C}{\partial I_B}\right|_{V_{CE}}.
$$

CE offers current and voltage gain and reverses the phase of a small collector-voltage signal relative to the base drive.

## Common-collector configuration

The collector is common and the output is taken from the emitter, so the circuit is an emitter follower. Using signed terminal voltages, the input characteristic is $I_B$ versus $V_{BC}$ at fixed $V_{EC}$; the identity $V_{BE}=V_{BC}-V_{EC}$ explains its forward-junction shape. The output characteristic is $I_E$ versus $V_{EC}$ at fixed $I_B$. Textbooks often plot the positive magnitudes $\lvert V_{BC}\rvert$ and $\lvert V_{EC}\rvert$ for an npn device, but the held voltage must still be stated. The CC current gain is large, its voltage gain is slightly below unity, its input resistance is high, and its output resistance is low.

Defining the common-collector current gain by positive magnitudes,

$$\gamma_{dc}=\frac{I_E}{I_B}.$$

## Gain relations

From $I_E=I_C+I_B$, with leakage neglected,

$$
\boxed{\alpha=\frac{\beta}{\beta+1}},
\qquad
\boxed{\beta=\frac{\alpha}{1-\alpha}},
\qquad
\boxed{\gamma=\beta+1=\frac1{1-\alpha}}.
$$

The same algebra applies either to dc ratios or to small increments only when all gains use the same bias point and consistent held voltages. The identities are verified in [transistor-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/transistor-check.mac' | relative_url }}); every displayed gain residual is zero.

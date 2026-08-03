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

The collector is common and the output is taken from the emitter, so the circuit is an emitter follower. Using signed terminal voltages, each **input** curve is $I_B$ versus $V_{BC}$ while the output voltage $V_{EC}$ is held fixed; the identity $V_{BE}=V_{BC}-V_{EC}$ explains its forward-junction shape. Each **output** curve is $I_E$ versus $V_{EC}$ while $I_B$ is held fixed. The active part of an output curve is comparatively flat, whereas its low-$\lvert V_{EC}\rvert$ knee marks saturation. Textbooks often plot the positive magnitudes $\lvert V_{BC}\rvert$ and $\lvert V_{EC}\rvert$ for an npn device, but the held quantity must still be stated. The CC current gain is large, its voltage gain is slightly below unity, its input resistance is high, and its output resistance is low.

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

The same algebra applies either to dc ratios or to small increments only when all gains use the same bias point and consistent held voltages.

## Solved Problems

### 1. Common-collector buffering of a high-resistance source

A $1.00\,\mathrm V$ Thevenin source with $R_s=100\,\mathrm{k\Omega}$ must drive a $1.00\,\mathrm{k\Omega}$ load. Compare direct connection with a common-collector buffer having input resistance $1.00\,\mathrm{M\Omega}$, small-signal voltage gain $0.980$, and negligible output resistance relative to the load.

Direct connection gives severe voltage division:

$$
V_{L,\mathrm{direct}}
=1.00\frac{1.00\,\mathrm{k\Omega}}{100\,\mathrm{k\Omega}+1.00\,\mathrm{k\Omega}}
=9.901\,\mathrm{mV}.
$$

With the emitter follower, the base receives

$$
V_B=1.00\frac{1.00\,\mathrm{M\Omega}}{100\,\mathrm{k\Omega}+1.00\,\mathrm{M\Omega}}
=0.9091\,\mathrm V,
$$

and therefore

$$V_L=(0.980)(0.9091)=0.8909\,\mathrm V.$$

The buffer raises the load-voltage magnitude by a factor $0.8909/0.009901=90.0$. This quantifies why the high-input, low-output resistance of the CC connection is useful even though its voltage gain is slightly below unity.

### 2. Voltage and power gain of a common-base stage

A CB input characteristic has local resistance $r_{in}=50.0\,\Omega$. An emitter-current signal of $0.200\,\mathrm{mA}$ is applied, the incremental current gain is $\alpha=0.980$, and the collector drives $R_L=5.00\,\mathrm{k\Omega}$. Neglect transistor output loading and find the input voltage, output-voltage magnitude, voltage gain, and power gain.

The input and collector-current changes are

$$
\Delta V_{in}=r_{in}\Delta I_E=(50.0)(0.200\,\mathrm{mA})=10.0\,\mathrm{mV},
$$

$$\Delta I_C=\alpha\Delta I_E=(0.980)(0.200\,\mathrm{mA})=0.196\,\mathrm{mA}.$$

Thus

$$
\lvert\Delta V_o\rvert=(0.196\,\mathrm{mA})(5.00\,\mathrm{k\Omega})=0.980\,\mathrm V,
\qquad
\lvert A_v\rvert=98.0.
$$

The power gain is

$$
G_P=\frac{(\Delta I_C)^2R_L}{(\Delta I_E)^2r_{in}}
=\alpha^2\frac{R_L}{r_{in}}=96.04.
$$

The CB current gain remains below unity, but the resistance transformation produces substantial voltage and power gain.

## Descriptive Questions

1. Define the input and output characteristics of CB, CE, and CC configurations, stating the quantity held constant for each curve family.
2. Compare the current gain, voltage gain, input resistance, output resistance, and phase relation of CB, CE, and CC connections.
3. Explain the physical origin of the knee and the small active-region slope in a CE output characteristic.
4. Distinguish dc current gain from incremental current gain and state when the familiar gain identities may be applied to each.

## Numerical Problems

1. In a CE stage, a $+12.0\,\mathrm{mV}$ small-signal change in $V_{BE}$ produces a $-1.44\,\mathrm V$ change in collector voltage. Find the signed voltage gain and state the phase relation.

   **Final answer:** $A_v=\Delta V_C/\Delta V_{BE}=-1.44/0.0120=-120$; the negative sign represents a $180^\circ$ phase reversal.

2. At fixed base current, a CE output characteristic gives $I_C=2.00\,\mathrm{mA}$ at $V_{CE}=2.00\,\mathrm V$ and $I_C=2.16\,\mathrm{mA}$ at $V_{CE}=10.0\,\mathrm V$. Fit $I_C=I_0(1+V_{CE}/V_A)$ and extract the Early voltage $V_A$.

   **Final answer:** $(2.16/2.00)=(V_A+10.0)/(V_A+2.00)$ gives $V_A=98.0\,\mathrm V$.

3. At a CE operating point, $I_B=30.0\,\mu\mathrm A$ and $I_C=2.40\,\mathrm{mA}$. A small change $\Delta I_B=5.00\,\mu\mathrm A$ produces $\Delta I_C=0.550\,\mathrm{mA}$ at fixed $V_{CE}$. Find $\beta_{dc}$ and the incremental $\beta$, and quantify their percentage difference relative to $\beta_{dc}$.

   **Final answer:** $\beta_{dc}=I_C/I_B=80.0$, whereas $\beta=\Delta I_C/\Delta I_B=110$; the incremental gain is $37.5\%$ larger, so the two gains must not be interchanged.

4. In a CE input curve, $\Delta V_{BE}=12.0\,\mathrm{mV}$ produces $\Delta I_B=10.0\,\mu\mathrm A$. On an output curve at fixed $I_B$, $\Delta V_{CE}=4.00\,\mathrm V$ changes $I_C$ by $0.0800\,\mathrm{mA}$. Find the incremental input and output resistances.

   **Final answer:** $r_{in}=1.20\,\mathrm{k\Omega}$ and $r_o=50.0\,\mathrm{k\Omega}$; the much larger output resistance matches the nearly horizontal active-region curve.

The gain transformations, voltage identity, and all numerical values are reproducible in [bjt-configurations-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/bjt-configurations-check.mac' | relative_url }}); every printed residual is zero.

## References

1. [Wikipedia, “Common base”](https://en.wikipedia.org/wiki/Common_base).
2. [NPTEL, IIT Guwahati, Transistor Characteristics in Common-Base Configuration](https://archive.nptel.ac.in/content/storage2/courses/122103010/md07_experiment/module12/lectures/lect3/slides/slide1.htm).
3. [MIT OpenCourseWare 6.012, Lecture 18: The Bipolar Junction Transistor](https://ocw.mit.edu/courses/6-012-microelectronic-devices-and-circuits-spring-2009/resources/mit6_012s09_lec18/).

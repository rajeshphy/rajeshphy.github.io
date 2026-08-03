---
title: "BJT Operation, Current Flow, and Regions"
summary: "npn and pnp transistor structure, carrier transport, terminal currents, and active, cutoff, and saturation regions."
date: 2025-07-27 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, bjt, transistor-operation]
permalink: /bsc/sem-iv/mj-7/bjt-operation-current-flow-and-regions/
hidden: true
---

A bipolar junction transistor has two p-n junctions sharing a thin base. In an npn device the emitter is heavily doped n-type, the base is thin and lightly doped p-type, and the collector is moderately doped n-type with a larger area for voltage and heat handling. A pnp device reverses every semiconductor type and operating polarity.

## Forward-active npn transport

Define

$$V_{BE}=V_B-V_E,
\qquad
V_{BC}=V_B-V_C.$$

Forward-active operation has the emitter-base junction forward biased, $V_{BE}>0$, and the base-collector junction reverse biased, $V_{BC}<0$. The precise forward voltage is current- and temperature-dependent; $0.6$--$0.8\,\mathrm V$ is only a common silicon range, not a mathematical boundary.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iv/mj-7/bjt-operation.png' | relative_url }}" alt="Carrier transport through a forward-active npn bipolar junction transistor">
  <figcaption>Forward-active npn transport. A heavily doped emitter injects electrons through the thin base; most reach the reverse-biased collector junction and only a small fraction recombines in the base.</figcaption>
</figure>

The editable source is [bjt-operation.tex]({{ '/assets/tikz/bsc/sem-iv/mj-7/bjt-operation.tex' | relative_url }}).

Electrons injected from the emitter become minority carriers in the base. Because the neutral base width is much smaller than their diffusion length, most diffuse to the collector depletion layer and are swept into the collector. The smaller recombination fraction must be replaced through the base terminal and forms base current. Hole injection from base to emitter is kept small by the emitter's much heavier doping.

For an npn transistor, conventional $I_C$ and $I_B$ enter collector and base while $I_E$ leaves the emitter. Using positive current magnitudes,

$$\boxed{I_E=I_C+I_B}.$$

The common-base transport factor is

$$
\alpha_F=\frac{I_C}{I_E},
\qquad 0<\alpha_F<1,
$$

when leakage is neglected. Efficient emitter injection and little base recombination make $\alpha_F$ close to unity. The corresponding common-emitter gain is

$$
I_C\simeq\beta_F I_B,
\qquad
\beta_F=\frac{\alpha_F}{1-\alpha_F}.
$$

These are operating-point parameters, not universal material constants.

## Operating regions

The junction biases determine the region for an npn transistor:

| Region | Emitter-base junction | Base-collector junction | Behaviour |
|---|---|---|---|
| Cutoff | reverse or not appreciably forward biased | reverse biased | $I_B\simeq0$ and $I_C$ is leakage-scale |
| Forward active | forward biased | reverse biased | $I_C\simeq\beta_FI_B$; amplification region |
| Saturation | forward biased | forward biased | both junctions inject; $I_C$ is circuit-limited |
| Reverse active | reverse biased | forward biased | emitter and collector exchange roles; gain is usually lower |

In saturation, increasing $I_B$ no longer produces the active-region value $\beta_FI_B$ because the external collector circuit limits current. $V_{CE}$ then approaches a small positive $V_{CE(sat)}$ for npn operation rather than becoming exactly zero.

For a pnp transistor, holes are the principal injected carriers. Conventional currents and all voltage polarities reverse: forward-active operation requires $V_{BE}<0$ and $V_{BC}>0$. The same magnitude relations $I_E=I_C+I_B$ and $0<\alpha_F<1$ apply.

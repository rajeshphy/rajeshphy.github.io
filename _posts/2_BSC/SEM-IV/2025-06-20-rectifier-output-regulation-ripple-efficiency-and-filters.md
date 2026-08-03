---
title: "Rectifier Output, Regulation, Ripple, Efficiency, and Filters"
summary: "Average and RMS output, ripple factor, efficiency, voltage regulation, and basic smoothing filters."
date: 2025-06-20 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-7, semiconductor-devices, rectifier-output, filters]
permalink: /bsc/sem-iv/mj-7/rectifier-output-regulation-ripple-efficiency-and-filters/
hidden: true
---

For a periodic output of period $T_o$, the dc and RMS values are

$$
V_{dc}=\frac1{T_o}\int_0^{T_o}v_o(t)\,dt,
\qquad
V_{rms}=\sqrt{\frac1{T_o}\int_0^{T_o}v_o^2(t)\,dt}.
$$

For an ideal diode, no filter, and a purely resistive load $R_L$, direct integration gives:

| Rectifier | $V_{dc}$ | $V_{rms}$ | $I_{dc}$ | $I_{rms}$ |
|---|---:|---:|---:|---:|
| Half wave | $V_m/\pi$ | $V_m/2$ | $V_m/(\pi R_L)$ | $V_m/(2R_L)$ |
| Full wave | $2V_m/\pi$ | $V_m/\sqrt2$ | $2V_m/(\pi R_L)$ | $V_m/(\sqrt2R_L)$ |

The full-wave $V_m$ is the peak presented to the load: one half-secondary peak for a center-tapped circuit and the complete-secondary peak for a bridge. Constant diode drops reduce all output values and change the conduction interval, so the table is not exact for a real diode.

## Ripple factor and rectification efficiency

The RMS value contains dc and ac components:

$$V_{rms}^2=V_{dc}^2+V_{ac,rms}^2.$$

Hence the ripple factor is

$$
\boxed{r=\frac{V_{ac,rms}}{V_{dc}}
=\sqrt{\left(\frac{V_{rms}}{V_{dc}}\right)^2-1}}.
$$

For the unfiltered ideal waveforms,

$$
r_{\rm half}=\sqrt{\frac{\pi^2}{4}-1}=1.211,
\qquad
r_{\rm full}=\sqrt{\frac{\pi^2}{8}-1}=0.483.
$$

Rectification efficiency is the dc load power divided by the ac power entering the rectifying path:

$$\eta_r=\frac{P_{dc}}{P_{ac}}.$$

If diode resistance and transformer losses are neglected,

$$
\boxed{\eta_{r,\rm half}=\frac4{\pi^2}=0.406},
\qquad
\boxed{\eta_{r,\rm full}=\frac8{\pi^2}=0.812}.
$$

These are limiting values, not percentages of voltage converted.

The exact integrals and identities are checked in [rectifier-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/rectifier-check.mac' | relative_url }}); every displayed residual is zero.

## Voltage regulation

Rectifier output falls when load current increases because of transformer, diode, and source resistances. A standard measure is

$$
\boxed{\%\text{ regulation}
=\frac{V_{NL}-V_{FL}}{V_{FL}}\times100},
$$

where $V_{NL}$ and $V_{FL}$ are the no-load and specified full-load dc voltages. Smaller positive regulation is better. This quantity describes load dependence; it is distinct from the operation of a voltage-regulator circuit.

## Filters

A shunt capacitor charges near each rectified peak and discharges through $R_L$ between peaks. If the ripple is small, load current is approximately constant, and diode conduction time is short,

$$
V_{r,pp}\simeq\frac{I_L}{f_rC},
\qquad
V_{r,rms}\simeq\frac{V_{r,pp}}{2\sqrt3},
$$

where $f_r=f$ for half-wave and $f_r=2f$ for full-wave rectification. With $I_L\simeq V_{dc}/R_L$,

$$
\boxed{r\simeq\frac1{2\sqrt3\,f_rR_LC}}.
$$

$R_LC$ has units seconds, so the expression is dimensionless. The approximation fails for large ripple, rapidly changing load, or significant source resistance.

A series inductor has reactance $X_L=2\pi f_rL$: it passes dc but opposes ripple current. A shunt capacitor has $X_C=1/(2\pi f_rC)$ and bypasses ripple across the load. LC and $\pi$ filters combine these actions; their useful smoothing requires $X_L$ large and $X_C$ small at the ripple frequency while dc voltage and component current ratings remain adequate.

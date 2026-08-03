---
title: "Rectifier Output, Regulation, Ripple, Efficiency, and Filters"
summary: "Average and RMS output, ripple factor, efficiency, voltage regulation, and basic smoothing filters."
date: 2025-06-28 09:00:00 +0530
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
\boxed{\eta_{r,\rm half}=\frac4{\pi^2}=0.405},
\qquad
\boxed{\eta_{r,\rm full}=\frac8{\pi^2}=0.811}.
$$

These are limiting values, not percentages of voltage converted.

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

## Solved Problems

### 1. Complete ideal full-wave output calculation

An ideal full-wave rectifier supplies $R_L=500\,\Omega$ from a sinusoidal load peak $V_m=18.0\,\mathrm V$.

$$
V_{dc}=\frac{2V_m}{\pi}=\frac{36.0}{\pi}=11.46\,\mathrm V,
\qquad
V_{rms}=\frac{18.0}{\sqrt2}=12.73\,\mathrm V.
$$

Therefore

$$
I_{dc}=22.92\,\mathrm{mA},
\qquad
I_{rms}=25.46\,\mathrm{mA}.
$$

The output powers are

$$
P_{dc}=\frac{V_{dc}^2}{R_L}=0.2626\,\mathrm W,
\qquad
P_{ac}=\frac{V_{rms}^2}{R_L}=0.3240\,\mathrm W.
$$

Hence $\eta_r=P_{dc}/P_{ac}=8/\pi^2=0.8106$ exactly within the stated ideal model. Units and the inequality $P_{dc}<P_{ac}$ provide useful checks.

### 2. Capacitor-filter ripple

A full-wave rectifier operates from $50.0\,\mathrm{Hz}$ mains, so $f_r=100\,\mathrm{Hz}$. With $I_L=40.0\,\mathrm{mA}$ and $C=1000\,\mu\mathrm F$,

$$
V_{r,pp}\simeq\frac{0.0400}{(100)(1000\times10^{-6})}=0.400\,\mathrm V,
$$

$$
V_{r,rms}\simeq\frac{0.400}{2\sqrt3}=0.1155\,\mathrm V.
$$

If $V_{dc}=12.0\,\mathrm V$, then $r=0.1155/12.0=0.00962$, or $0.962\%$. The small ratio supports the approximation used.

### 3. Load regulation

A supply gives $V_{NL}=13.2\,\mathrm V$ with no load and $V_{FL}=12.0\,\mathrm V$ at rated current. Thus

$$
\%\text{ regulation}
=\frac{13.2-12.0}{12.0}\times100=10.0\%.
$$

The positive sign means the terminal voltage falls as load is applied; a smaller value would indicate a stiffer source.

## Descriptive Questions

1. Derive the average and RMS output values of ideal half-wave and full-wave rectifiers.
2. Derive ripple factor from the separation of dc and ac RMS components.
3. Define rectification efficiency and voltage regulation, explaining why they measure different properties.
4. Explain the operation and design conditions of capacitor, inductor, LC, and $\pi$ filters.

## Numerical Problems

1. A rectifier supply reads $15.0\,\mathrm V$ at no load and $13.5\,\mathrm V$ while delivering $0.300\,\mathrm A$. Model its droop by a constant series resistance. Infer that resistance, predict the output at $0.200\,\mathrm A$, and find the load regulation at the new operating point.

   **Final answer:** $R_{int}=(15.0-13.5)/0.300=5.00\,\Omega$. At $0.200\,\mathrm A$, $V_o=15.0-(0.200)(5.00)=14.0\,\mathrm V$, giving regulation $[(15.0-14.0)/14.0]\times100=7.143\%$.

2. A rectifier output has dc component $V_{dc}=12.0\,\mathrm V$ and ripple factor $r=4.00\%$ across $R_L=600\,\Omega$. Without assuming a half-wave or full-wave shape, find the RMS ripple voltage, total RMS output voltage, dc load power, and ac ripple power.

   **Final answer:** $V_{ac,rms}=rV_{dc}=0.480\,\mathrm V$, $V_{rms}=\sqrt{V_{dc}^2+V_{ac,rms}^2}=12.010\,\mathrm V$, $P_{dc}=V_{dc}^2/R_L=0.240\,\mathrm W$, and $P_{ac}=V_{ac,rms}^2/R_L=0.384\,\mathrm{mW}$.

3. A capacitor-input supply operates from $50.0\,\mathrm{Hz}$ mains and gives $V_{dc}=12.0\,\mathrm V$ across $R_L=600\,\Omega$. With $C=1000\,\mu\mathrm F$, the measured peak-to-peak ripple is $0.200\,\mathrm V$. Use the small-ripple model to infer the ripple frequency, identify whether the rectification is half-wave or full-wave, and find the ripple factor.

   **Final answer:** $I_L=V_{dc}/R_L=20.0\,\mathrm{mA}$ and $f_r=I_L/(CV_{r,pp})=100\,\mathrm{Hz}$, so the circuit is full-wave. Also $V_{r,rms}=0.200/(2\sqrt3)=57.7\,\mathrm{mV}$ and $r=V_{r,rms}/V_{dc}=0.00481$, or $0.481\%$.

4. At $f_r=100\,\mathrm{Hz}$, find $X_L$ for $L=2.00\,\mathrm H$ and $X_C$ for $C=47.0\,\mu\mathrm F$.

   **Final answer:** $X_L=2\pi f_rL=1.257\,\mathrm{k\Omega}$ and $X_C=1/(2\pi f_rC)=33.86\,\Omega$, giving large series and small shunt ripple impedances.

The waveform integrals, ripple and efficiency identities, filter estimates, and all numerical values are reproducible in [rectifier-output-filter-check.mac]({{ '/assets/maxima/bsc/sem-iv/mj-7/rectifier-output-filter-check.mac' | relative_url }}); every printed residual is zero.

## References

1. [Wikipedia, “Capacitor-input filter”](https://en.wikipedia.org/wiki/Capacitor-input_filter).
2. [NPTEL, IIT Bombay, Basic Electronics: Rectifiers and Filters](https://onlinecourses-archive.nptel.ac.in/noc18_ee10/preview).
3. [MIT OpenCourseWare 6.002, Circuits and Electronics](https://ocw.mit.edu/courses/6-002-circuits-and-electronics-spring-2007/).

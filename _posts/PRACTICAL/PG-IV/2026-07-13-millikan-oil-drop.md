---
layout: post
title: "Determination of the Elementary Charge by Millikan's Oil-Drop Experiment"
date: 2026-07-13 20:25:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, millikan, elementary-charge, charge-quantisation]
permalink: /practical/pg-iv/millikan-oil-drop/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the elementary charge $e$ by measuring the terminal motion of charged oil drops and to verify that the charge on every observed drop is an integral multiple of $e$.

## Apparatus
Millikan oil-drop apparatus with parallel plates and microscope scale, atomiser and non-volatile oil, lamp, regulated high-voltage supply, voltmeter, stopwatch, thermometer, and barometer.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iv/millikan-oil-drop/millikan-setup.png' | relative_url }}" alt="Labelled Millikan oil-drop chamber showing plates, microscope, illumination, electric field, and forces on a charged drop"><figcaption>Figure 1. Millikan chamber and force balance. The microscope observes a charged drop moving through a measured distance between horizontal plates.</figcaption></figure>

## Theory
An atomised oil drop carries a small electric charge and moves through air between two horizontal plates. Three physical effects must be considered. Gravity pulls the drop downward, air supplies an upward buoyant force equal to the weight of displaced air, and slow motion through air produces the Stokes drag $6\pi\eta rv$. Therefore, the effective downward weight of a spherical drop of radius $r$ is

$$W'=\frac{4}{3}\pi r^3(\rho_o-\rho_a)g.$$

First the electric field is switched off. When the drop reaches terminal falling speed $v_f$, its acceleration is zero and

$$\frac{4}{3}\pi r^3(\rho_o-\rho_a)g=6\pi\eta r v_f.$$

Consequently,

$$r=\left[\frac{9\eta v_f}{2g(\rho_o-\rho_a)}\right]^{1/2}.$$

If the potential difference $V$ is then applied across plates separated by $d$, the field is $E=V/d$. With the polarity chosen so that the drop rises at terminal speed $v_r$, the upward electrical force balances both the effective weight and the downward viscous drag:

$$qE=W'+6\pi\eta r v_r.$$

Using the field-off balance to replace $W'$ gives the working formula

$$\boxed{q=\frac{6\pi\eta rd}{V}(v_f+v_r)}.$$

Charges obtained for different drops are not identical, because a drop may carry one or several electrons. Their values should, however, be $q=ne$, where $n$ is an integer. For drops whose radius is comparable with the mean free path of air molecules, the corrected viscosity or Cunningham correction supplied with the apparatus should be used.

## Procedure
1. Level the apparatus, clean the plates, measure their separation $d$, and focus the microscope on the illuminated region between them.
2. Spray a fine mist above the upper plate. Select one slowly falling, sharply visible drop.
3. With the field off, measure the time $t_f$ for the drop to fall through a microscope-scale distance $s$.
4. Apply the voltage with correct polarity and measure the time $t_r$ for the same drop to rise through $s$.
5. Repeat the timings, then select several drops and repeat the complete observation.
6. Calculate $v_f=s/t_f$, $v_r=s/t_r$, $r$, and $q$. Divide each $q$ by the nearest integer to estimate $e$.

## Observations

Plate separation $d=5.00\ \text{mm}$; potential difference $V=500\ \text{V}$; scale distance $s=0.500\ \text{mm}$; oil density $\rho_o=860\ \text{kg m}^{-3}$; air density $\rho_a=1.2\ \text{kg m}^{-3}$; air viscosity $\eta=1.82\times10^{-5}\ \text{Pa s}$.

| Drop | Fall time $t_f$ (s) | Rise time $t_r$ (s) | Radius $r$ ($10^{-7}$ m) | Charge $q$ ($10^{-19}$ C) | Integer $n$ | $q/n$ ($10^{-19}$ C) |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 12.40 | 14.59 | 6.261 | 1.602 | 1 | 1.602 |
| 2 | 15.10 | 3.80 | 5.674 | 3.207 | 2 | 1.604 |
| 3 | 19.00 | 2.00 | 5.058 | 4.797 | 3 | 1.599 |
| 4 | 22.60 | 1.31 | 4.638 | 6.420 | 4 | 1.605 |

## Calculation
For the first drop,

$$v_f=\frac{0.500\times10^{-3}}{12.40}=4.032\times10^{-5}\ \text{m s}^{-1},$$

$$v_r=\frac{0.500\times10^{-3}}{14.59}=3.427\times10^{-5}\ \text{m s}^{-1}.$$

Its radius is

$$r=\left[\frac{9(1.82\times10^{-5})(4.032\times10^{-5})}{2(9.81)(860-1.2)}\right]^{1/2}
=6.261\times10^{-7}\ \text{m}.$$

Hence,

$$q=\frac{6\pi(1.82\times10^{-5})(6.261\times10^{-7})(5.00\times10^{-3})}{500}
\left(4.032\times10^{-5}+3.427\times10^{-5}\right),$$

$$q=1.602\times10^{-19}\ \text{C}.$$

The mean elementary charge obtained from all four drops is

$$e=\frac{1.602+1.604+1.599+1.605}{4}\times10^{-19}
=1.603\times10^{-19}\ \text{C}.$$

Percentage difference from $1.6022\times10^{-19}\ \text{C}$ is approximately $0.05\%$.

## Result
The elementary charge is

$$\boxed{e=(1.603\pm0.006)\times10^{-19}\ \text{C}}.$$

The measured drop charges are approximately $e$, $2e$, $3e$, and $4e$; therefore, the observations support the quantisation of electric charge.

## Precautions
1. Select a small drop that remains in focus and has a steady terminal speed.
2. Keep the plates horizontal and use a stable voltage; reverse polarity only after switching the supply off.
3. Measure rise and fall times for the same drop and over the same scale distance.
4. Avoid convection by closing the chamber and allowing its temperature to stabilise.
5. Apply the slip correction specified for the apparatus when the drop radius is very small.

## Viva Questions
1. **Why does the experiment determine $e$ and not $e/m$?** It measures the force $qE$ on a drop and obtains the charge $q$ from its motion; the electron mass does not enter the working formula.
2. **Why does the drop attain terminal speed?** Viscous drag increases with speed until the net force becomes zero, after which acceleration ceases.
3. **Why is buoyancy included?** The drop displaces air, which exerts an upward force equal to the weight of the displaced air.
4. **Why are several drops observed?** Different drops carry different integral numbers of electronic charges; their common divisor gives the elementary charge.
5. **What is the purpose of the Cunningham correction?** It corrects Stokes' drag when the drop size is comparable with the molecular mean free path of air.

## Maxima Code
[Download the Maxima calculation for the Millikan oil-drop data]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

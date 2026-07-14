---
layout: post
title: "Determination of e/m by the Helical Method"
date: 2026-07-13 20:30:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, electron, helical-method]
permalink: /practical/pg-iv/em-helical-method/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To determine the specific charge of the electron by observing the helical path of an electron beam in a magnetic field.

## Apparatus
Electron-beam tube, Helmholtz coils, DC supplies, voltmeters, ammeters, and measuring scale.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iv/em-helical-method/apparatus.jpg' | relative_url }}" alt="Visible electron beam and measuring scale in an e/m experiment"><figcaption>The luminous electron beam forms a circular path inside the tube, and its diameter is read against the graduated scale. The Helmholtz coils surrounding the tube provide the magnetic field.</figcaption></figure>

<p class="figure-source">Apparatus photograph: <a href="https://commons.wikimedia.org/wiki/File:Electron_charge-mass_relation_experiment.jpg">Wikimedia Commons</a>.</p>

## Theory
Electrons are emitted inside the electron-beam tube and accelerated through the potential difference $V$. The electrical work becomes kinetic energy,

$$eV=\frac{1}{2}mv^2.$$

The beam then enters the nearly uniform magnetic field produced by the Helmholtz coils. For coils of radius $R$ separated by $R$, the field near the midpoint is approximately

$$B=\left(\frac{4}{5}\right)^{3/2}\frac{\mu_0NI_c}{R},$$

where $I_c$ is the coil current. The magnetic force on the electron is

$$\mathbf F=-e(\mathbf v\times\mathbf B).$$

It is always perpendicular to the instantaneous velocity, so it changes the direction of motion but not the speed. If the beam enters at an angle $\alpha$ to the field, its velocity has components $v_\perp=v\sin\alpha$ and $v_\parallel=v\cos\alpha$. The perpendicular component produces circular motion of radius $r$, while the parallel component carries the electron forward. The combined path is a helix.

For the circular part, $ev_\perp B=mv_\perp^2/r$, so $r=mv_\perp/(eB)$. One complete turn takes $T=2\pi m/(eB)$ and the distance advanced in one turn is the pitch

$$p=v_\parallel T=\frac{2\pi m v_\parallel}{eB}.$$

Since $v^2=v_\perp^2+v_\parallel^2$, elimination of the velocity gives the working relation

$$\boxed{\frac{e}{m}=\frac{2V}{B^2\left[r^2+\left(\frac{p}{2\pi}\right)^2\right]}}.$$

For a circular beam $p=0$, this reduces to $e/m=2V/(B^2r^2)$.

## Observations

| Accelerating voltage $V$ (V) | Diameter $2r$ (cm) | Pitch $p$ (cm) | Field $B$ (mT) |
|---:|---:|---:|---:|
| 180 | 5.8 | 2.4 | 1.555 |
| 220 | 6.4 | 2.7 | 1.555 |
| 260 | 6.9 | 3.0 | 1.555 |
| 300 | 7.4 | 3.2 | 1.555 |

## Calculation

For the first reading, $r=2.9$ cm, $p=2.4$ cm, and $B=1.555$ mT. On converting centimetres and millitesla into SI units,

$$\frac{e}{m}=\frac{2(180)}{(1.555\times10^{-3})^2\left[(0.029)^2+\left(\frac{0.024}{2\pi}\right)^2\right]}=1.74\times10^{11}\ \mathrm{C\,kg^{-1}}.$$

The same calculation is repeated for every reading. The mean of the four values is $1.76\times10^{11}\ \mathrm{C\,kg^{-1}}$.

## Result
The calculated mean value of the specific charge is

$$\boxed{\frac{e}{m}=1.76\times10^{11}\ \mathrm{C\,kg^{-1}}}.$$

## Viva Questions
1. **Why are Helmholtz coils used?** They provide a nearly uniform magnetic field near the centre.
2. **Why is the path helical?** The velocity has both perpendicular and parallel components relative to the field.
3. **What happens if the beam velocity is perpendicular to the field?** The path becomes circular.

## Maxima Code

[Download the PG-IV calculation file]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).
</div>

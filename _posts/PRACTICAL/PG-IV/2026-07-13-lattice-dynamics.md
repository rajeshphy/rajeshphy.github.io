---
layout: post
title: "Dispersion Relation and Cut-off Frequency of Monoatomic and Diatomic Lattices Using an LC Ladder Network"
date: 2026-07-13 20:20:00 +0530
categories: [practical-pg-iv]
tags: [practical, pg-iv, cmp, lattice-dynamics, dispersion, lc-ladder]
permalink: /practical/pg-iv/lattice-dynamics/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim
To obtain the dispersion relation and cut-off frequency of a one-dimensional monoatomic lattice and to identify the acoustic and optical branches of a diatomic lattice using their electrical LC-ladder analogues.

## Apparatus
Lattice-dynamics LC network containing identical inductors and selectable shunt capacitors, sine-wave oscillator, dual-channel CRO, frequency counter, AC voltmeter, and patch cords.

## Experimental arrangement
<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iv/lattice-dynamics/lc-lattice-setup.png' | relative_url }}" alt="Labelled monoatomic and diatomic LC ladder networks for studying lattice dispersion"><figcaption>Figure 1. Electrical analogues of monoatomic and diatomic chains. Node voltage represents atomic displacement, capacitance represents mass, and inverse inductance represents the force constant.</figcaption></figure>

## Theory
In a one-dimensional monoatomic crystal, identical atoms of mass $m$ are separated by equilibrium distance $a$ and coupled to nearest neighbours by an effective force constant $\beta$. If $u_n$ is the displacement of the $n$th atom, Newton's second law gives

$$m\ddot u_n=\beta(u_{n+1}+u_{n-1}-2u_n).$$

Substitution of the travelling-wave solution $u_n=u_0e^{i(nqa-\omega t)}$ yields

$$\omega^2=\frac{4\beta}{m}\sin^2\frac{qa}{2}.$$

Thus $\omega$ is not proportional to wave number throughout the Brillouin zone. It becomes linear only near $q=0$ and reaches a maximum at $qa=\pi$.

The same equation follows from Kirchhoff's laws for a ladder of series inductors $L$ and identical shunt capacitors $C$. For node voltage $V_n$,

$$\omega^2=\frac{2}{LC}(1-\cos\theta)
=\frac{4}{LC}\sin^2\frac{\theta}{2},$$

where $\theta$ is the phase change per cell. The correspondence is $m\leftrightarrow C$ and $\beta\leftrightarrow1/L$. At $\theta=\pi$,

$$\omega_c=\frac{2}{\sqrt{LC}},\qquad
f_c=\frac{1}{\pi\sqrt{LC}}.$$

For a diatomic ladder, capacitors $C_1$ and $C_2$ alternate. The two coupled node equations give

$$\omega^2=\frac{1}{L}\left(\frac1{C_1}+\frac1{C_2}\right)
\pm\frac{1}{L}\sqrt{\left(\frac1{C_1}+\frac1{C_2}\right)^2-
\frac{4}{C_1C_2}\sin^2\frac{qa}{2}}.$$

The minus sign gives the acoustic branch, in which neighbouring cells move mainly in phase at long wavelength. The plus sign gives the optical branch, in which the two sublattices move oppositely. Unequal effective masses separate the branches by a forbidden frequency gap.

## Procedure
1. Connect the monoatomic LC ladder and apply a low-amplitude sinusoidal signal to its input.
2. Display the input and successive node voltages on the CRO. Change frequency until the required phase difference per cell is obtained.
3. Record frequency for phase changes from $0^\circ$ to $180^\circ$ and note the cut-off beyond which propagation becomes negligible.
4. Replace alternate shunt capacitors to form the diatomic ladder.
5. Sweep the frequency and record the acoustic and optical solutions for the same phase changes.
6. Plot normalised angular frequency against phase change per cell and compare the observed end points with theory.

## Observations

For the monoatomic ladder, $L=10.0\ \text{mH}$ and $C=0.0100\ \mu\text{F}$.

| Phase $qa$ (degree) | Monoatomic $\omega/\sqrt{1/LC}$ | Diatomic acoustic branch | Diatomic optical branch |
|---:|---:|---:|---:|
| 0 | 0.000 | 0.000 | 1.732 |
| 30 | 0.518 | 0.218 | 1.718 |
| 60 | 1.000 | 0.423 | 1.682 |
| 90 | 1.414 | 0.612 | 1.620 |
| 120 | 1.732 | 0.796 | 1.540 |
| 150 | 1.932 | 0.938 | 1.456 |
| 180 | 2.000 | 1.000 | 1.414 |

## Graph
<figure class="practical-figure"><img src="{{ '/assets/images/practical/pg-iv/lattice-dynamics/lattice-dispersion.png' | relative_url }}" alt="Dispersion graph showing monoatomic, diatomic acoustic, and diatomic optical branches"><figcaption>Figure 2. Dispersion curves. The monoatomic branch terminates at its cut-off, while the diatomic network gives distinct acoustic and optical branches.</figcaption></figure>

## Calculation
The theoretical monoatomic cut-off is

$$f_c=\frac{1}{\pi\sqrt{LC}}
=\frac{1}{\pi\sqrt{(10.0\times10^{-3})(0.0100\times10^{-6})}}
=31.83\ \text{kHz}.$$

At a phase change of $60^\circ$,

$$f=f_c\sin\frac{60^\circ}{2}
=(31.83)(0.5)=15.92\ \text{kHz}.$$

The tabulated normalised value is $\omega/\sqrt{1/LC}=1.000$, which gives the same frequency because $\sqrt{1/LC}/(2\pi)=15.92\ \text{kHz}$. The separation between the diatomic acoustic and optical end-point values confirms the frequency gap produced by alternating capacitances.

## Result
The monoatomic LC lattice follows

$$\omega=\frac{2}{\sqrt{LC}}\left|\sin\frac{qa}{2}\right|,$$

with theoretical cut-off frequency $31.83\ \text{kHz}$. The diatomic network displays separate acoustic and optical branches with a forbidden gap between them.

## Precautions
1. Keep the oscillator amplitude low so that the network remains in its linear range.
2. Use the same reference channel while comparing phase at successive nodes.
3. Record a branch only after both amplitude and phase have stabilised.
4. Avoid lead capacitance by using short patch cords and the specified CRO probes.
5. Take closely spaced readings near cut-off and near the edges of the diatomic frequency gap.

## Viva Questions
1. **Why is an LC network an analogue of a mechanical lattice?** Kirchhoff's node equation has the same mathematical form as the equation of motion, with $C$ corresponding to mass and $1/L$ to the force constant.
2. **What is a dispersion relation?** It is the relation between angular frequency and wave vector or phase change per lattice cell.
3. **Why is the long-wavelength monoatomic branch called acoustic?** Near $q=0$, neighbouring atoms move almost in phase and the wave behaves like sound.
4. **Why does a diatomic lattice have two branches?** Two inequivalent particles occur in each primitive cell, giving two coupled normal-mode solutions for every allowed wave vector.
5. **What produces the forbidden frequency gap?** The difference between the two effective masses, represented by unequal alternating capacitances, separates the acoustic and optical solutions.

## Maxima Code
[Download the Maxima calculation for the lattice-dispersion data]({{ '/assets/tikz/practical/pg-iv/pg-iv-advanced.mac' | relative_url }}).

</div>

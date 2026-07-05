---
title: "Two Coupled Quantum Oscillators III: Quench and Steady-State Approximation"
date: 2026-06-06 22:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - coupled-harmonic-oscillators
  - quantum-quench
  - steady-state-approximation
  - ermakov-equation
  - gaussian-states
permalink: "/coupled-oscillator-quench-steady-state/"
---

This is Part III of the coupled-oscillator series. In [Part I]({{ '/coupled-oscillator-hamiltonian-formulation/' | relative_url }}), we rewrote the Hamiltonian in a rotating frame. In [Part II]({{ '/coupled-oscillator-time-dependent-wavefunction/' | relative_url }}), we derived the Gaussian wavefunction using the Ermakov scaling functions.

This post explains the next section of the paper: the **quench and steady-state approximation**. The purpose of this section is to simplify the time-dependent Gaussian formulas so that synchronization, mutual information, and circuit depth can be studied more directly.

## 1. What Is a Quench?

A **quench** means a sudden change in the parameters of a system.

For a harmonic oscillator, the parameter may be its frequency. For two coupled oscillators, the parameters may include

| Parameter | Meaning |
|---|---|
| $\omega_1,\omega_2$ | local oscillator frequencies |
| $g$ | coupling strength |
| $\omega_c$ | magnetic-field scale |
| $\theta$ or $\phi(t)$ | mixing angle in the rotating frame |

Before the quench, the system is prepared in a simple initial state, usually the ground state of an initial Hamiltonian. At $t=0$, the Hamiltonian parameters are changed suddenly. After that moment, the state evolves with a different Hamiltonian.

The important point is this: the wavefunction cannot instantly become the ground state of the new Hamiltonian. It begins as the old ground state, but it is then forced to evolve under the new parameters. This mismatch produces oscillations, squeezing, correlations, and non-equilibrium dynamics.

## 2. The Quench Protocol

The paper uses a global quench:

$$
\omega_j=
\begin{cases}
\omega_{ij}, & t=0,\\
\omega_{fj}, & t>0,
\end{cases}
\qquad
g=
\begin{cases}
0, & t=0,\\
g, & t>0.
\end{cases}
$$

Here $j=1,2$. The notation means:

| Symbol | Meaning |
|---|---|
| $\omega_{ij}$ | initial frequency of oscillator $j$ |
| $\omega_{fj}$ | final frequency of oscillator $j$ |
| $g=0$ at $t=0$ | oscillators start uncoupled |
| $g\neq0$ for $t>0$ | coupling is suddenly switched on |

Physically, this models an experiment where the trap frequencies or the coupling between modes are rapidly changed. In trapped-ion systems this can be done by changing laser intensities or trapping potentials. In superconducting circuits it can be done with tunable couplers or flux controls.

## 3. Why the Quench Creates Dynamics

To see why a quench creates nontrivial motion, first consider a single oscillator.

Before the quench, suppose the frequency is $\Omega_i$. Its ground-state wavefunction has the form

$$
\psi_i(X)
=
\left(\frac{\Omega_i}{\pi}\right)^{1/4}
\exp\left(-\frac{1}{2}\Omega_iX^2\right).
$$

After the quench, the oscillator frequency becomes $\Omega_f$. If the oscillator were already in the new ground state, the wavefunction would be

$$
\psi_f(X)
=
\left(\frac{\Omega_f}{\pi}\right)^{1/4}
\exp\left(-\frac{1}{2}\Omega_fX^2\right).
$$

But the state does not instantly change from $\psi_i$ to $\psi_f$. The old Gaussian is now evolved by the new Hamiltonian. Therefore its width begins to oscillate. This is exactly what the Ermakov function $h(t)$ describes.

## 4. Ermakov Equation After a Sudden Quench

From Part II, the scaling function satisfies

$$
\ddot h+\Omega^2(t)h=\frac{\Omega_i^2}{h^3},
\qquad
h(0)=1,\qquad \dot h(0)=0.
$$

After the quench, the frequency is constant:

$$
\Omega(t)=\Omega_f,\qquad t>0.
$$

So the Ermakov equation becomes

$$
\ddot h+\Omega_f^2h=\frac{\Omega_i^2}{h^3}.
$$

The exact solution can be written most simply for $h^2(t)$:

$$
h^2(t)=
\frac{\Omega_f^2-\Omega_i^2}{2\Omega_f^2}\cos(2\Omega_ft)
+
\frac{\Omega_f^2+\Omega_i^2}{2\Omega_f^2}.
$$

This formula has two parts:

| Term | Meaning |
|---|---|
| constant part | average width after the quench |
| $\cos(2\Omega_ft)$ part | breathing oscillation of the Gaussian width |

Check the initial condition:

$$
h^2(0)
=
\frac{\Omega_f^2-\Omega_i^2}{2\Omega_f^2}
+
\frac{\Omega_f^2+\Omega_i^2}{2\Omega_f^2}
=1.
$$

So $h(0)=1$, as required.

<div class="note-box" markdown="1">

**Why the oscillation frequency is $2\Omega_f$.** The wavefunction width depends on $X^2$, not on $X$. A harmonic oscillator coordinate oscillates with frequency $\Omega_f$, but quadratic quantities such as $X^2$, width, and variance oscillate with frequency $2\Omega_f$.

</div>

For the two modes, the paper writes

$$
h_1^2(t)
=
\frac{\Omega_{f1}^2-\Omega_{i1}^2}{2\Omega_{f1}^2}
\cos(2\Omega_{f1}t)
+
\frac{\Omega_{f1}^2+\Omega_{i1}^2}{2\Omega_{f1}^2},
$$

and

$$
h_2^2(t)
=
\frac{\Omega_{f2}^2-\Omega_{i2}^2}{2\Omega_{f2}^2}
\cos(2\Omega_{f2}t)
+
\frac{\Omega_{f2}^2+\Omega_{i2}^2}{2\Omega_{f2}^2}.
$$

Here $\Omega_{ij}$ and $\Omega_{fj}$ are the initial and final effective mode frequencies.

## 5. Interpretation of the Quench Solution

The quench solution tells us how strongly the post-quench state breathes.

If there is no quench, then

$$
\Omega_f=\Omega_i.
$$

In that case,

$$
h^2(t)=1,
$$

so the width does not oscillate. The state is already adapted to the Hamiltonian.

If $\Omega_f\neq\Omega_i$, then the cosine term is nonzero. The larger the difference between $\Omega_f$ and $\Omega_i$, the stronger the oscillation in $h^2(t)$. This oscillating width enters the Gaussian coefficients through terms such as

$$
\frac{\Omega_j(0)}{h_j^2(t)},
\qquad
\frac{\dot h_j(t)}{h_j(t)}.
$$

Therefore the quench directly affects the time-dependent coefficients

$$
A_1(t),\qquad A_2(t),\qquad A_{12}(t).
$$

These coefficients then determine the later quantities studied in the paper: synchronization, mutual information, and circuit complexity.

## 6. What Is the Steady-State Approximation?

The exact quench solution contains oscillatory functions. These can make the later formulas long and difficult to interpret. The steady-state approximation is a way to keep the main long-time structure while suppressing fast transient details.

In this approximation, one assumes that the relevant Gaussian parameters can be treated as effectively time-independent. Instead of tracking the full breathing motion in $h_j(t)$ and $\dot h_j(t)$, one works with simplified effective frequencies and a fixed mixing angle.

The paper writes the wavefunction again in Gaussian form:

$$
\Psi(x_1,x_2;t)
=
\mathcal N
\exp\left[
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right)
\right],
$$

but now the coefficients are approximated as time-independent:

$$
A_1=\Omega_1\cos^2\theta+\Omega_2\sin^2\theta,
$$

$$
A_2=\Omega_2\cos^2\theta+\Omega_1\sin^2\theta,
$$

and

$$
A_{12}=(\Omega_1-\Omega_2)\sin\theta\cos\theta.
$$

The effective frequencies are

$$
\Omega_1
=
\sqrt{
\omega_1^2\cos^2\theta
+\omega_2^2\sin^2\theta
+\omega_c^2
+g\sin2\theta
},
$$

and

$$
\Omega_2
=
\sqrt{
\omega_1^2\sin^2\theta
+\omega_2^2\cos^2\theta
+\omega_c^2
-g\sin2\theta
}.
$$

The normalization becomes

$$
\mathcal N=
\left(\frac{\Omega_1\Omega_2}{\pi^2}\right)^{1/4}.
$$

This is the ground-state normalization for two effective harmonic modes.

## 7. Why This Approximation Helps

The exact post-quench Gaussian is time dependent:

$$
A_j=A_j(t).
$$

That means synchronization, mutual information, and complexity also become time dependent. This is physically rich, but algebraically heavy.

The steady-state approximation replaces this by a simpler static Gaussian:

$$
A_j(t)\longrightarrow A_j.
$$

This lets one study how the quantities scale with control parameters such as

$$
g,\qquad \omega_c,\qquad \omega_1-\omega_2.
$$

In particular, it makes it easier to see how a magnetic field changes the effective frequencies through $\omega_c^2$ and the mixing angle $\theta$.

## 8. When Is the Approximation Reasonable?

The approximation is useful when the fast transient oscillations are not the main object of study. This can happen when:

| Condition | Meaning |
|---|---|
| weak residual breathing | $h_j(t)$ does not oscillate strongly |
| coarse-grained observation | measurements average over fast oscillations |
| stable mixing angle | $\theta$ can be treated as effectively fixed |
| focus on scaling | one wants dependence on $g$ or $\omega_c$, not exact time traces |

It is less reliable when the terms

$$
\frac{\dot h_j(t)}{h_j(t)}
$$

are large, because these terms contribute imaginary quadratic phases to the Gaussian. Such phases can strongly affect dynamical quantities.

<div class="note-box" markdown="1">

**Important clarification.** In a perfectly closed harmonic system, the Ermakov solution does not truly decay to a constant; it keeps oscillating. Therefore "steady-state" here should be read as an effective or coarse-grained approximation, not as literal dissipative relaxation.

</div>

## 9. Equal-Frequency Limit

The paper notes that when

$$
\omega_1=\omega_2,
$$

the mixing angle simplifies to

$$
\theta=\frac{\pi}{4}.
$$

This means the two original coordinates are mixed equally. Since

$$
\sin\theta=\cos\theta=\frac{1}{\sqrt2},
$$

the coefficients become

$$
A_1=A_2=\frac{\Omega_1+\Omega_2}{2},
$$

and

$$
A_{12}=\frac{\Omega_1-\Omega_2}{2}.
$$

So in the symmetric case, the local widths are equal, while the cross-correlation is controlled by the splitting between the two effective frequencies.

## 10. Compact Picture

The logic of this section is:

| Step | Idea |
|---|---|
| Prepare initial ground state | start with simple Gaussian |
| Quench parameters at $t=0$ | frequencies/coupling suddenly change |
| Evolve with final Hamiltonian | Gaussian width breathes through $h_j(t)$ |
| Use Ermakov solution | obtain explicit $h_j^2(t)$ |
| Apply steady-state approximation | replace oscillatory coefficients by effective constants |
| Analyze correlations | use simplified $A_1,A_2,A_{12}$ in later metrics |

Thus the quench section bridges the exact Gaussian wavefunction and the later analysis of quantum correlations. It explains how non-equilibrium dynamics are produced, and why the paper later uses a simpler steady-state Gaussian to study synchronization, mutual information, and computational complexity.

The continuation is [Part IV: Synchronization-Information Contrast]({{ '/coupled-oscillator-synchronization-information/' | relative_url }}), where the two correlation measures are developed and compared.

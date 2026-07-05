---
title: "Information Dynamics in Quantum Harmonic Systems II: Time-Dependent Wavefunction"
date: 2026-06-05 22:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - coupled-harmonic-oscillators
  - time-dependent-wavefunction
  - ermakov-equation
  - gaussian-states
  - magnetic-field
permalink: "/coupled-oscillator-time-dependent-wavefunction/"
---

This is a continuation of [Part I]({{ '/coupled-oscillator-hamiltonian-formulation/' | relative_url }}), where the Hamiltonian of two coupled oscillators in a magnetic field was rewritten in a rotating frame. The result was a Hamiltonian of the form

$$
H'=
\frac{1}{2}\sum_{j=1}^{2}
\left[P_j^2+\Omega_j^2(t)X_j^2\right]
+\Omega_{12}^2(t)X_1X_2.
$$

The aim of this post is to explain, from first principles, why the wavefunction remains Gaussian and how the coefficients

$$
A_1(t),\qquad A_2(t),\qquad A_{12}(t)
$$

appear in the time-dependent wavefunction

$$
\Psi(x_1,x_2;t)
=\mathcal N(t)
\exp\left[
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right)
\right].
$$

The guiding idea is simple: a quadratic Hamiltonian sends Gaussian states to Gaussian states. The work is to find how the width, phase, and correlation of that Gaussian change with time.

## 1. What Has To Be Explained

The paper states that the time-dependent wavefunction keeps the Gaussian form

$$
\Psi(x_1,x_2;t)
=\mathcal N(t)
\exp\left[
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right)
\right].
$$

This expression contains three different ideas packed into one line:

| Piece | Meaning |
|---|---|
| $\mathcal N(t)$ | time-dependent normalization and global phase |
| $A_1(t),A_2(t)$ | time-dependent widths of the two coordinates |
| $A_{12}(t)$ | time-dependent correlation between $x_1$ and $x_2$ |

The main question is: why should the answer have exactly this form?

The answer comes from the structure of the Hamiltonian. Part I showed that after the rotating-frame transformation, the Hamiltonian is quadratic in the coordinates and momenta. A quadratic Hamiltonian can stretch, rotate, and correlate a Gaussian, but it does not turn it into a non-Gaussian function. Therefore the time evolution can be tracked by following the Gaussian coefficients.

The derivation below proceeds in four steps:

1. solve one time-dependent harmonic oscillator,
2. write the result using the Ermakov scaling function,
3. build the two-mode product wavefunction in rotated coordinates,
4. rotate back to the original coordinates and read off $A_1,A_2,A_{12}$.

## 2. The Decoupled Time-Dependent Oscillator

The time-dependent Schrodinger equation is

$$
i\frac{\partial \psi}{\partial t}
=
\left[
-\frac{1}{2}\frac{\partial^2}{\partial X^2}
+\frac{1}{2}\Omega^2(t)X^2
\right]\psi.
$$

Here we use units $\hbar=1$ and mass $m=1$, matching the convention used in Part I.

Because the Hamiltonian is quadratic in $X$ and $P$, we try a Gaussian ansatz:

$$
\psi(X,t)=N(t)\exp\left[-\frac{1}{2}B(t)X^2\right].
$$

The coefficient $B(t)$ is allowed to be complex. Its real part controls the width of the Gaussian, while its imaginary part controls a quadratic phase.

Differentiate the ansatz with respect to $X$:

$$
\frac{\partial \psi}{\partial X}
=-B X\psi,
$$

and

$$
\frac{\partial^2\psi}{\partial X^2}
=\left(B^2X^2-B\right)\psi.
$$

Therefore

$$
H(t)\psi
=
\left[
\frac{1}{2}B
+\frac{1}{2}\left(\Omega^2(t)-B^2\right)X^2
\right]\psi.
$$

Now differentiate the ansatz with respect to time:

$$
\frac{\partial\psi}{\partial t}
=
\left[
\frac{\dot N}{N}
-\frac{1}{2}\dot B X^2
\right]\psi.
$$

Substitute both expressions into the Schrodinger equation and compare the constant term and the coefficient of $X^2$ separately:

$$
i\frac{\dot N}{N}=\frac{1}{2}B,
$$

and

$$
i\dot B=B^2-\Omega^2(t).
$$

The second equation is a Riccati equation. It is nonlinear, but it can be solved by introducing a real scaling function $h(t)$.

## 3. The Scaling Function and Ermakov Equation

At this point the problem has been reduced to the Riccati equation

$$
i\dot B=B^2-\Omega^2(t).
$$

This equation is correct, but it is not yet very transparent. The coefficient $B(t)$ is complex, so it contains two different physical effects at the same time:

1. the **real part** tells how narrow or broad the Gaussian is,
2. the **imaginary part** tells whether the wavefunction has acquired a position-dependent phase.

To see why a new function is useful, compare a fixed oscillator with a time-dependent one.

For a fixed oscillator of frequency $\Omega(0)$, the ground-state wavefunction is

$$
\psi_0(X)
=
\left(\frac{\Omega(0)}{\pi}\right)^{1/4}
\exp\left[-\frac{1}{2}\Omega(0)X^2\right].
$$

The Gaussian coefficient is simply

$$
B(0)=\Omega(0).
$$

When the frequency changes with time, the wavefunction does not remain with the same width. It breathes: sometimes it becomes wider, sometimes narrower. We describe this breathing by a real scaling function $h(t)$:

| Value of $h(t)$ | Meaning |
|---|---|
| $h(t)=1$ | original ground-state width |
| $h(t)>1$ | Gaussian is wider |
| $h(t)<1$ | Gaussian is narrower |

Since the width is scaled by $h(t)$, the inverse width scales as $1/h^2(t)$. Therefore the real part of $B(t)$ should be

$$
\operatorname{Re}B(t)=\frac{\Omega(0)}{h^2(t)}.
$$

But a changing width also produces a phase. If the packet is spreading or squeezing, the wavefunction must contain a quadratic phase proportional to $X^2$. The rate of this breathing is measured by $\dot h(t)/h(t)$. Hence the imaginary part is chosen as

$$
\operatorname{Im}B(t)=-\frac{\dot h(t)}{h(t)}.
$$

Combining these two pieces, we write

$$
B(t)=\frac{\Omega(0)}{h^2(t)}-i\frac{\dot h(t)}{h(t)}.
$$

This is not an extra assumption about the physics. It is a change of variables that replaces the complex coefficient $B(t)$ by one real scaling function $h(t)$. The advantage is that $h(t)$ has a direct physical meaning: it is the breathing scale of the Gaussian.

The form above separates the width and the phase:

| Part of $B(t)$ | Meaning |
|---|---|
| $\frac{\Omega(0)}{h^2(t)}$ | instantaneous inverse width |
| $-\frac{\dot h(t)}{h(t)}$ | quadratic phase generated by changing width |

Now substitute this expression into the Riccati equation

$$
i\dot B=B^2-\Omega^2(t).
$$

The imaginary part is automatically satisfied, while the real part gives

$$
\ddot h+\Omega^2(t)h=\frac{\Omega^2(0)}{h^3}.
$$

This is the **Ermakov equation**. The standard initial conditions are

$$
h(0)=1,\qquad \dot h(0)=0.
$$

They mean that at $t=0$ the wavefunction begins as the ground state of an oscillator with frequency $\Omega(0)$.

<div class="note-box" markdown="1">

**Note on conventions.** With the Ermakov equation

$$
\ddot h+\Omega^2(t)h=\frac{\Omega^2(0)}{h^3},
$$

the Gaussian coefficient is

$$
B(t)=\frac{\Omega(0)}{h^2(t)}-i\frac{\dot h(t)}{h(t)}.
$$

Some sources write the real part as $\Omega(0)/h(t)$. In that notation, their $h(t)$ is effectively a width-squared variable, or the Ermakov equation must be written in a different convention. The derivation here uses the standard scaling convention.

</div>

The normalization equation is

$$
i\frac{\dot N}{N}=\frac{1}{2}B.
$$

The real part of $B$ fixes the magnitude of $N$, and the imaginary part fixes its phase. The normalized solution is

$$
\psi(X,t)
=
\left(\frac{\Omega(0)}{\pi h^2(t)}\right)^{1/4}
\exp\left[
-\frac{i}{2}\Omega(0)\int_0^t\frac{dt'}{h^2(t')}
\right]
\exp\left[
-\frac{1}{2}
\left(
\frac{\Omega(0)}{h^2(t)}
-i\frac{\dot h(t)}{h(t)}
\right)X^2
\right].
$$

This is the first-principles result for one time-dependent oscillator.

## 4. Two Independent Time-Dependent Modes

Now apply this result to the two rotated coordinates $X_1$ and $X_2$. When the coupling term $\Omega_{12}^2(t)X_1X_2$ is absent, or when we study the instant at which it vanishes, the Hamiltonian becomes

$$
H_{\mathrm{dec}}(t)
=
\frac{1}{2}\sum_{j=1}^{2}
\left[P_j^2+\Omega_j^2(t)X_j^2\right].
$$

This is just the sum of two independent time-dependent oscillators. Therefore the wavefunction in the rotated coordinates is a product:

$$
\Psi_X(X_1,X_2;t)=\psi_1(X_1,t)\psi_2(X_2,t).
$$

<div class="note-box" markdown="1">

**Note:** If $\Omega_{12}^2(t)$ is not zero, the state is still Gaussian because the Hamiltonian is still quadratic. However, the two-mode Gaussian must then be evolved using a coupled matrix Riccati equation. The compact formulas below correspond to the decoupled or instantaneously decoupled mode description used in the paper.

</div>

For each mode,

$$
B_j(t)=
\frac{\Omega_j(0)}{h_j^2(t)}
-i\frac{\dot h_j(t)}{h_j(t)},
$$

where $h_j(t)$ satisfies

$$
\ddot h_j+\Omega_j^2(t)h_j
=
\frac{\Omega_j^2(0)}{h_j^3},
\qquad
h_j(0)=1,\qquad \dot h_j(0)=0.
$$

Thus

$$
\Psi_X(X_1,X_2;t)
=
\mathcal N_X(t)
\exp\left[
-\frac{1}{2}
\left(B_1X_1^2+B_2X_2^2\right)
\right],
$$

where

$$
\mathcal N_X(t)
=
\left[
\frac{\Omega_1(0)\Omega_2(0)}
{\pi^2h_1^2(t)h_2^2(t)}
\right]^{1/4}
\exp\left[
-\frac{i}{2}
\left(
\Omega_1(0)\int_0^t\frac{dt'}{h_1^2(t')}
+\Omega_2(0)\int_0^t\frac{dt'}{h_2^2(t')}
\right)
\right].
$$

The two functions $h_1(t)$ and $h_2(t)$ are the time-dependent scale factors of the two modes.

## 5. Returning to the Original Coordinates

Part I used the rotation

$$
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}
=
\begin{pmatrix}
\cos\phi & \sin\phi\\
-\sin\phi & \cos\phi
\end{pmatrix}
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix}.
$$

Therefore

$$
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix}
=
\begin{pmatrix}
\cos\phi & -\sin\phi\\
\sin\phi & \cos\phi
\end{pmatrix}
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}.
$$

So

$$
X_1=x_1\cos\phi-x_2\sin\phi,
\qquad
X_2=x_1\sin\phi+x_2\cos\phi.
$$

Let

$$
c=\cos\phi(t),
\qquad
s=\sin\phi(t).
$$

Then

$$
X_1=cx_1-sx_2,
\qquad
X_2=sx_1+cx_2.
$$

The exponent in the rotated coordinates is

$$
B_1X_1^2+B_2X_2^2.
$$

Substitute $X_1$ and $X_2$:

$$
B_1(c x_1-s x_2)^2+B_2(s x_1+c x_2)^2.
$$

Expand each square:

$$
B_1(c^2x_1^2-2csx_1x_2+s^2x_2^2)
+B_2(s^2x_1^2+2csx_1x_2+c^2x_2^2).
$$

Now collect powers of $x_1$ and $x_2$:

$$
B_1X_1^2+B_2X_2^2
=
(B_1c^2+B_2s^2)x_1^2
+(B_1s^2+B_2c^2)x_2^2
+2cs(B_2-B_1)x_1x_2.
$$

We want to write the wavefunction as

$$
\Psi(x_1,x_2;t)
=\mathcal N(t)
\exp\left[
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right)
\right].
$$

Comparing coefficients gives

$$
A_1=B_1\cos^2\phi+B_2\sin^2\phi,
$$

$$
A_2=B_1\sin^2\phi+B_2\cos^2\phi,
$$

and

$$
A_{12}=2(B_1-B_2)\sin\phi\cos\phi.
$$

These are the Gaussian coefficients in the original coordinates.

<div class="note-box" markdown="1">

**Note on the factor of 2.** The above formula assumes the exponent is written as

$$
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right).
$$

If a paper instead defines the cross term through

$$
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-2A_{12}^{\mathrm{paper}}x_1x_2\right),
$$

then

$$
A_{12}^{\mathrm{paper}}=(B_1-B_2)\sin\phi\cos\phi.
$$

So the apparent factor of 2 is a notation issue, not a physical difference.

</div>

## 6. Explicit Coefficients

Now substitute

$$
B_j(t)=
\frac{\Omega_j(0)}{h_j^2(t)}
-i\frac{\dot h_j(t)}{h_j(t)}.
$$

Then

$$
A_1=
\left(
\frac{\Omega_1(0)}{h_1^2}
-i\frac{\dot h_1}{h_1}
\right)\cos^2\phi
+
\left(
\frac{\Omega_2(0)}{h_2^2}
-i\frac{\dot h_2}{h_2}
\right)\sin^2\phi,
$$

$$
A_2=
\left(
\frac{\Omega_1(0)}{h_1^2}
-i\frac{\dot h_1}{h_1}
\right)\sin^2\phi
+
\left(
\frac{\Omega_2(0)}{h_2^2}
-i\frac{\dot h_2}{h_2}
\right)\cos^2\phi,
$$

and

$$
A_{12}
=
2\left[
\frac{\Omega_1(0)}{h_1^2}
-\frac{\Omega_2(0)}{h_2^2}
-i\left(
\frac{\dot h_1}{h_1}
-\frac{\dot h_2}{h_2}
\right)
\right]\sin\phi\cos\phi.
$$

All functions are evaluated at time $t$ unless explicitly written otherwise.

The final wavefunction is therefore

$$
\Psi(x_1,x_2;t)
=\mathcal N(t)
\exp\left[
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-A_{12}x_1x_2\right)
\right],
$$

with

$$
\mathcal N(t)
=
\left[
\frac{\Omega_1(0)\Omega_2(0)}
{\pi^2h_1^2(t)h_2^2(t)}
\right]^{1/4}
\exp\left[
-\frac{i}{2}
\left(
\Omega_1(0)\int_0^t\frac{dt'}{h_1^2(t')}
+\Omega_2(0)\int_0^t\frac{dt'}{h_2^2(t')}
\right)
\right].
$$

This is the Gaussian solution built from the scaling functions $h_1(t)$ and $h_2(t)$.

## 7. Physical Meaning of the Coefficients

The Gaussian coefficients carry the physics:

| Quantity | Physical meaning |
|---|---|
| $\operatorname{Re}A_1$ | inverse width of oscillator 1 |
| $\operatorname{Re}A_2$ | inverse width of oscillator 2 |
| $\operatorname{Re}A_{12}$ | spatial correlation between the two oscillators |
| $\operatorname{Im}A_1,\operatorname{Im}A_2$ | local quadratic phases, related to squeezing |
| $\operatorname{Im}A_{12}$ | correlated phase between the two oscillators |

If $A_{12}=0$, the Gaussian separates into a product of two single-variable Gaussians:

$$
\Psi(x_1,x_2;t)=\psi_1(x_1,t)\psi_2(x_2,t).
$$

If $A_{12}\neq0$, the exponent contains a mixed term $x_1x_2$. This mixed term is the mathematical signal that the two coordinates are correlated. In quantum-information language, this is the starting point for computing synchronization measures, mutual information, entanglement indicators, and circuit complexity.

## 8. Consistency Checks

The formula becomes easier to trust if we check a few limiting cases.

### Check 1: no time dependence

If the frequency is constant, then the Ermakov equation has the simple solution

$$
h_j(t)=1,\qquad \dot h_j(t)=0.
$$

Then

$$
B_j(t)=\Omega_j(0),
$$

and the wavefunction reduces to the ordinary ground-state Gaussian of two harmonic modes. The only remaining time dependence is the usual phase factor.

### Check 2: no rotation

If

$$
\phi(t)=0,
$$

then

$$
\sin\phi=0,\qquad \cos\phi=1.
$$

Hence

$$
A_1=B_1,\qquad A_2=B_2,\qquad A_{12}=0.
$$

The original coordinates and rotated coordinates are the same, so no cross term appears.

### Check 3: equal mode widths

If

$$
B_1(t)=B_2(t),
$$

then

$$
A_{12}=2(B_1-B_2)\sin\phi\cos\phi=0.
$$

This means that a rotation alone does not create a visible mixed term when both Gaussian widths are identical. The cross term appears because the two modes have different time-dependent widths or phases.

### Check 4: relation with the paper's compact notation

Many papers write the final coefficients schematically as

$$
A_1=B_1\cos^2\phi+B_2\sin^2\phi,
\qquad
A_2=B_2\cos^2\phi+B_1\sin^2\phi,
$$

and

$$
A_{12}^{\mathrm{paper}}=(B_1-B_2)\sin\phi\cos\phi.
$$

This is the same result if the exponent is written with the convention

$$
-\frac{1}{2}
\left(A_1x_1^2+A_2x_2^2-2A_{12}^{\mathrm{paper}}x_1x_2\right).
$$

So whenever comparing formulas, first check how the cross term is defined inside the exponent.

## 9. Compact Flow

The construction can be summarized as:

| Step | Result |
|---|---|
| Start from a quadratic Hamiltonian | Gaussian form is preserved |
| Solve one time-dependent oscillator | obtain $B_j(t)$ through $h_j(t)$ |
| Demand consistency with Schrodinger equation | get the Ermakov equation |
| Build the two-mode product state | $\Psi_X\propto e^{-(B_1X_1^2+B_2X_2^2)/2}$ |
| Rotate back to $(x_1,x_2)$ | mixed Gaussian coefficient $A_{12}$ appears |

Thus the time-dependent wavefunction is not guessed. It follows from three facts: the Hamiltonian is quadratic, the one-dimensional time-dependent oscillator has an Ermakov scaling solution, and the rotating-frame coordinates are related to the original coordinates by an ordinary rotation.


The continuation is [Part III: Quench and Steady-State Approximation]({{ '/coupled-oscillator-quench-steady-state/' | relative_url }}), where the sudden parameter change and the simplified steady-state Gaussian are developed.

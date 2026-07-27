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

We have obtained the Riccati equation

$$
i\dot B=B^2-\Omega^2(t).
$$

This equation tells us how the Gaussian coefficient $B(t)$ evolves, but it does not immediately tell us what the real and imaginary parts of $B(t)$ mean. To understand that, we should go back to the form of the wavefunction.

For a Gaussian state we write

$$
\psi(X,t)=N(t)\exp\left[-\frac{1}{2}B(t)X^2\right],
$$

where $B(t)$ is allowed to be complex. Let

$$
B(t)=B_R(t)+iB_I(t),
$$

where $B_R(t)$ and $B_I(t)$ are real functions. Substituting this into the wavefunction gives

$$
\psi(X,t)
=
N(t)
\exp\left[-\frac{1}{2}B_R(t)X^2\right]
\exp\left[-\frac{i}{2}B_I(t)X^2\right].
$$

Now the meaning is clear.

The factor

$$
\exp\left[-\frac{1}{2}B_R(t)X^2\right]
$$

controls the size of the wavefunction. Therefore $B_R(t)=\operatorname{Re}B(t)$ controls the width of the Gaussian. A larger $B_R(t)$ makes the Gaussian decay faster and hence makes the wavepacket narrower. A smaller $B_R(t)$ makes the Gaussian wider.

The factor

$$
\exp\left[-\frac{i}{2}B_I(t)X^2\right]
$$

does not change the magnitude of the wavefunction. It only changes the phase. Since this phase depends on $X^2$, the imaginary part $B_I(t)=\operatorname{Im}B(t)$ represents a position-dependent quadratic phase.




Thus the interpretation of the two parts of $B(t)$ does not come directly from the Riccati equation. It comes from the Gaussian wavefunction itself:

$$
\operatorname{Re}B(t)
\quad \longrightarrow \quad
\text{width of the Gaussian},
$$

and

$$
\operatorname{Im}B(t)
\quad \longrightarrow \quad
\text{quadratic phase of the Gaussian}.
$$

Now we introduce a real scaling function $h(t)$ to describe the changing width. The initial ground-state wavefunction has coefficient

$$
B(0)=\Omega(0).
$$


If the wavefunction width is scaled by a factor $h(t)$, then the variance scales as $h^2(t)$. Since the Gaussian coefficient is inversely proportional to the variance, the real part of $B(t)$ must scale as

$$
\operatorname{Re}B(t)
=
\frac{\Omega(0)}{h^2(t)}.
$$

This is the reason for the first part of the substitution.

The imaginary part is fixed by the fact that a changing width produces a quadratic phase. If $h(t)$ changes with time, the wavepacket is either expanding or contracting. The natural measure of this breathing rate is the fractional rate

$$
\frac{\dot h(t)}{h(t)}.
$$

Therefore the imaginary part must be proportional to this quantity. With the standard Gaussian convention used here, one writes

$$
\operatorname{Im}B(t)
=
-\frac{\dot h(t)}{h(t)}.
$$

Hence the complex coefficient $B(t)$ is written as

$$
B(t)
=
\frac{\Omega(0)}{h^2(t)}
-
i\frac{\dot h(t)}{h(t)}.
$$

This substitution is not guessed from the Riccati equation alone. Its logic is:

1. the wavefunction shows that $\operatorname{Re}B(t)$ controls the Gaussian width;
2. the scaling function $h(t)$ measures the change of that width;
3. therefore $\operatorname{Re}B(t)=\Omega(0)/h^2(t)$;
4. a time-dependent width creates a quadratic phase;
5. the breathing rate is $\dot h(t)/h(t)$;
6. therefore $\operatorname{Im}B(t)=-\dot h(t)/h(t)$.

So the role of $h(t)$ is to separate the two physical meanings hidden inside the complex function $B(t)$: the width and the breathing-induced phase.

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


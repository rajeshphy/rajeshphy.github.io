---
title: "Information Dynamics in Quantum Harmonic Systems IV: Synchronization-Information Contrast"
date: 2026-06-07 22:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - coupled-harmonic-oscillators
  - synchronization
  - mutual-information
  - gaussian-states
  - quantum-correlations
permalink: "/coupled-oscillator-synchronization-information/"
---

This is Part IV of the coupled-oscillator series. The previous posts developed the Hamiltonian, the Gaussian wavefunction, and the quench/steady-state approximation. We now move to the first correlation section of the paper: **the synchronization-information contrast**.

The central question is:

> If two quantum oscillators share information, must they also synchronize?

The answer is no. Synchronization and mutual information are related, but they are not the same physical idea. This section explains why.

## 1. Two Different Meanings of Correlation

Two oscillators may be called correlated in different senses.

They may be **dynamically coordinated**: their positions and momenta move together in phase space. This is the idea behind synchronization.

They may also be **informationally correlated**: knowing one oscillator reduces uncertainty about the other. This is the idea behind mutual information.

These are not identical statements.

| Question | Measure |
|---|---|
| Do the two oscillators move together? | synchronization |
| How much total information is shared? | mutual information |
| Are both classical and quantum correlations included? | mutual information |
| Are only low-order phase-space differences measured? | synchronization |

The paper emphasizes that the two measures can move in opposite directions.

## 2. Synchronization Measure

For continuous-variable systems, the natural phase-space variables are position and momentum:

$$
\hat x_1,\hat p_1,
\qquad
\hat x_2,\hat p_2.
$$

If the two oscillators synchronize, then their relative position and relative momentum should both become small:

$$
\hat x_1-\hat x_2\approx0,
\qquad
\hat p_1-\hat p_2\approx0.
$$

The paper uses the synchronization measure

$$
S_c=
\frac{1}
{
\left\langle(\hat p_1-\hat p_2)^2\right\rangle
+
\left\langle(\hat x_1-\hat x_2)^2\right\rangle
}.
$$

This formula is easy to read:

| Part | Meaning |
|---|---|
| $\left\langle(\hat x_1-\hat x_2)^2\right\rangle$ | spread in relative position |
| $\left\langle(\hat p_1-\hat p_2)^2\right\rangle$ | spread in relative momentum |
| denominator small | strong phase-space locking |
| $S_c$ large | stronger synchronization |

The inverse is important. If the relative fluctuations are small, the denominator is small and $S_c$ becomes large. If the two oscillators are poorly coordinated, the denominator grows and $S_c$ decreases.

## 3. Synchronization in Terms of Covariances

The expectation value

$$
\left\langle(\hat x_1-\hat x_2)^2\right\rangle
$$

can be expanded as

$$
\left\langle\hat x_1^2\right\rangle
+
\left\langle\hat x_2^2\right\rangle
-2\left\langle\hat x_1\hat x_2\right\rangle.
$$

Similarly,

$$
\left\langle(\hat p_1-\hat p_2)^2\right\rangle
=
\left\langle\hat p_1^2\right\rangle
+
\left\langle\hat p_2^2\right\rangle
-2\left\langle\hat p_1\hat p_2\right\rangle.
$$

Thus synchronization depends only on second-order moments:

$$
\left\langle x_ix_j\right\rangle,
\qquad
\left\langle p_ip_j\right\rangle.
$$

For a Gaussian state, these second-order moments are entries of the covariance matrix. This is why synchronization is especially natural for Gaussian oscillator systems.

<div class="note-box" markdown="1">

**Key point:** Synchronization is a phase-space measure. It asks whether two oscillators are close in relative position and relative momentum. It does not directly count every possible kind of correlation in the quantum state.

</div>

## 4. Mutual Information

Mutual information measures total correlation between two subsystems. It is defined as

$$
I_{AB}=S(\rho_A)+S(\rho_B)-S(\rho_{AB}).
$$

Here

$$
S(\rho)=-\operatorname{Tr}(\rho\log\rho)
$$

is the von Neumann entropy.

The density matrices are:

| Symbol | Meaning |
|---|---|
| $\rho_{AB}$ | full density matrix of the two-oscillator system |
| $\rho_A=Tr_B(\rho_{AB})$ | reduced state of oscillator $A$ |
| $\rho_B=Tr_A(\rho_{AB})$ | reduced state of oscillator $B$ |

The formula says:

$$
\text{shared information}
=
\text{uncertainty of }A
+
\text{uncertainty of }B
-
\text{uncertainty of }AB.
$$

If the two systems are completely uncorrelated, then

$$
\rho_{AB}=\rho_A\otimes\rho_B,
$$

and

$$
S(\rho_{AB})=S(\rho_A)+S(\rho_B).
$$

Therefore

$$
I_{AB}=0.
$$

If correlations are present, then the total entropy is smaller than the sum of the separate entropies, and $I_{AB}$ becomes positive.

## 5. What Mutual Information Sees

Mutual information is broader than synchronization. It includes:

1. classical correlations,
2. quantum correlations,
3. correlations visible in the covariance matrix,
4. correlations hidden in higher-order moments.

For Gaussian states, the covariance matrix fully determines the state. Therefore synchronization and mutual information are both controlled by covariance data. This is why they can appear related in purely Gaussian regimes.

But if nonlinear dynamics create non-Gaussian features, then higher-order correlations appear. Mutual information can detect these total correlations, while the synchronization measure $S_c$ still looks only at second-order relative fluctuations.

This is the beginning of the contrast.

## 6. Why the Two Measures Can Diverge

Suppose coupling becomes stronger. One might expect stronger coupling to always mean stronger synchronization. But the paper points out that this intuition can fail.

Stronger coupling can increase total shared information:

$$
I_{AB}\uparrow.
$$

At the same time, it can disturb phase-space coordination and increase relative fluctuations:

$$
\left\langle(\hat x_1-\hat x_2)^2\right\rangle
+
\left\langle(\hat p_1-\hat p_2)^2\right\rangle
\uparrow.
$$

Since $S_c$ is the inverse of this relative fluctuation, synchronization can decrease:

$$
S_c\downarrow.
$$

So stronger interaction may produce more correlation, but less clean coordination.

## 7. Effect of Coupling Strength

The paper describes the effect of increasing the coupling strength $g$:

| Increasing $g$ | Effect |
|---|---|
| mutual information | increases and broadens |
| synchronization | weakens and narrows |
| physical interpretation | more shared information, but less precise coordinated motion |

This is a useful distinction. Coupling can make the oscillators more entangled or statistically dependent, but the same coupling can also produce complicated motion that spoils simple synchronization.

In everyday language:

> The oscillators may know more about each other, but they do not necessarily march together.

## 8. Effect of Magnetic Field

The magnetic field enters the Hamiltonian through the cyclotron frequency $\omega_c$. In Part I, it appeared in the rotational mixing term and in the shifted effective frequencies. After transformation, its influence remains through $\phi(t)=\omega_ct+\theta$ and through the effective frequency matrix.

The paper reports that a stronger magnetic field can:

| Increasing $\omega_c$ | Effect |
|---|---|
| mutual information | develops stronger oscillatory behavior |
| synchronization | overall level decreases |
| long-time balance | averages of the two measures separate |

The magnetic field therefore acts as a control parameter. It does not merely increase or decrease all correlations together. Instead, it can separate the informational picture from the dynamical picture.

## 9. Static View and Time-Resolved View

The paper compares two ways of looking at the system.

### Static or Steady-State View

In the steady-state approximation, one studies how the measures change with parameters such as

$$
g,\qquad \omega_c.
$$

This gives a parameter-space picture:

| Parameter change | Observed contrast |
|---|---|
| stronger coupling | mutual information rises, synchronization can fall |
| stronger magnetic field | synchronization suppressed, mutual information oscillatory/enhanced |

### Time-Resolved View

After a quench, the measures become functions of time:

$$
S_c=S_c(t),
\qquad
I_{AB}=I_{AB}(t).
$$

The paper reports that different coupling strengths can produce different oscillatory traces while leaving similar long-time averages. A stronger magnetic field, however, can change the averages themselves: it suppresses time-averaged synchronization while sustaining or enhancing time-averaged mutual information.

## 10. Why This Matters

Some previous studies found that mutual information can behave like a proxy for synchronization. This can happen in systems where the same covariance data controls both quantities in a simple way.

The paper argues that this relationship is system-dependent. In the present coupled-oscillator model, magnetic-field effects and nonlinear dynamics can split the two measures.

The lesson is:

$$
\text{mutual information}\neq\text{synchronization}
$$

in general.

They answer different questions:

| Measure | Question answered |
|---|---|
| $S_c$ | Are the oscillators dynamically coordinated in phase space? |
| $I_{AB}$ | How much total information is shared between the two subsystems? |

Both are needed for a complete picture.

## 11. Compact Picture

The contrast can be summarized as follows:

| Idea | Synchronization | Mutual information |
|---|---|---|
| Basic object | relative quadrature fluctuations | entropy of reduced density matrices |
| Formula | $S_c=\left[\langle(\Delta p)^2\rangle+\langle(\Delta x)^2\rangle\right]^{-1}$ | $I_{AB}=S(\rho_A)+S(\rho_B)-S(\rho_{AB})$ |
| Sensitive to | phase-space alignment | total correlations |
| Gaussian regime | covariance-controlled | covariance-controlled |
| non-Gaussian/nonlinear regime | may miss higher-order correlations | captures total correlations |
| strong coupling | may decrease | may increase |
| magnetic field | often suppressed | can remain large or oscillatory |

Thus the synchronization-information contrast is not a contradiction. It is a sign that the system contains more than one kind of correlation: coordinated motion and shared information are related, but they are not interchangeable.

The continuation is [Part V: Circuit Depth as Quantum Complexity]({{ '/coupled-oscillator-circuit-depth-complexity/' | relative_url }}), where the operational cost of preparing the correlated Gaussian state is developed.

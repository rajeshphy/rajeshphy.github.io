---
title: "Hamilton-Jacobi Equation and Harmonic Oscillator"
summary: "Hamilton-Jacobi equation, principal function, characteristic function, and harmonic oscillator example."
date: 2026-05-06 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - hamilton-jacobi
  - action
permalink: /msc/sem-i/hamilton-jacobi-equation/
hidden: true
---

The Hamilton-Jacobi method rewrites mechanics in terms of one function $S$, called Hamilton's principal function. It is a compact bridge between Hamiltonian mechanics, canonical transformations, and action methods.

## Principal function

Along the true path,

$$
dS=\sum_i p_i\,dq_i-H\,dt.
$$

Comparing with

$$
dS=\sum_i\frac{\partial S}{\partial q_i}dq_i+\frac{\partial S}{\partial t}dt,
$$

gives

$$
p_i=\frac{\partial S}{\partial q_i},
\qquad
\frac{\partial S}{\partial t}=-H.
$$

Therefore

$$
\boxed{
H\left(q_i,\frac{\partial S}{\partial q_i},t\right)
+\frac{\partial S}{\partial t}=0.
}
$$

This is the Hamilton-Jacobi equation.

## Time-independent case

If $H$ is independent of time, write

$$
S(q_i,t)=W(q_i)-Et.
$$

Then

$$
\boxed{
H\left(q_i,\frac{\partial W}{\partial q_i}\right)=E.
}
$$

Here $W$ is Hamilton's characteristic function.

## Constants of integration

A complete integral for $n$ degrees of freedom contains $n$ constants $\alpha_i$:

$$
S=S(q_i,\alpha_i,t).
$$

The remaining constants are obtained from

$$
\boxed{
\frac{\partial S}{\partial\alpha_i}=\beta_i.
}
$$

The constants $\alpha_i$ and $\beta_i$ determine the motion.

## Example: harmonic oscillator

For

$$
H=\frac{p^2}{2m}+\frac12m\omega^2q^2,
$$

the time-independent Hamilton-Jacobi equation is

$$
\frac{1}{2m}\left(\frac{dW}{dq}\right)^2
+\frac12m\omega^2q^2=E.
$$

Thus

$$
\frac{dW}{dq}=\sqrt{2mE-m^2\omega^2q^2}.
$$

The characteristic function is

$$
W(q,E)=\int\sqrt{2mE-m^2\omega^2q^2}\,dq.
$$

Using

$$
\frac{\partial S}{\partial E}=\frac{\partial W}{\partial E}-t=\beta,
$$

one obtains the familiar oscillator motion

$$
q=A\sin(\omega t+\phi),
$$

where

$$
A=\sqrt{\frac{2E}{m\omega^2}}.
$$

## Main points

- $S$ generates momenta through $p_i=\partial S/\partial q_i$.
- The Hamilton-Jacobi equation is first order in $S$.
- For time-independent systems, $S=W-Et$.
- A complete integral gives constants of motion.
- The harmonic oscillator is recovered from the HJ equation.

## Practice questions

1. Derive the Hamilton-Jacobi equation from $dS=p\,dq-H\,dt$.
2. Distinguish $S$ and $W$.
3. Solve the Hamilton-Jacobi equation for a free particle.
4. Set up the HJ equation for the harmonic oscillator.
5. Explain the role of $\partial S/\partial\alpha_i=\beta_i$.

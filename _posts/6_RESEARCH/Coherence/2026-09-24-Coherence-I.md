---
title: "I: Coherence Intro"
date: 2026-09-24 09:00:00 +0530
categories: research
tags:
  - Coherence
permalink: "/coherence-01/"
---

## Main differences b/w Classical & Quantum:
1. Determinism
2. Effect of measurement
3. Equation of motion
4. Duality
5. Superposition Principle

## Coherence

A real, physical source consists of infinitely many emitters all of which emit in a statistically independent manner. As a result the total field emitted by the source becomes random. In the case of random fields, interference occurs to the extent that the fields at two diﬀerent space-time points are mutually correlated. **The nature and the degree** of this correlation is described through what is known as a coherence function, and the equation that dictates the dynamics of a coherence function is known as the **Wolf equation**.

Two interfering field-amplitudes in the classical theory and the two interfering wave-functions in the quantum theory need to be mutually coherent for the interference to take place. Within quantum theory the concept of coherence can also be cast in terms of indistinguishability arguments which say that if a photon in two separate alternatives remain indistinguishable, that is, **if there is no way of figuring out which particular interfering alternative a photon took then the two alternatives are mutually coherent** and therefore interference will take place.

Coherence is the order in a random field. Within classical description, randomness is in principle removable if complete information about the system becomes available. But it is not always possible to obtain the complete information about a system, and this is why one studies random fields through correlation functions. On the other hand, in quantum description, the randomness in not removable even in principle. So, the only concrete quantity that can be studied within quantum theory is anyway the correlation function.


For two random variables $x_1$ and $x_2$ the simplest
correlation function that can be defined is:  

$$
\left< x_{1} x_{2} \right>=\int x_{1} x_{2} p ( x_{1} , x_{2} ) d x_{1} d x_{2} .
$$

We note that if $x_{1}=x_{2}$ , it becomes the second moment $\langle x_{2}^{2} \rangle$ of random variable $x_{2}$ . Therefore it is clear that $\langle x_{1} x_{2} \rangle$ contains more information than just $\langle x_{1}^{2} \rangle$ or $\langle x_{2}^{2} \rangle$ . In general a whole hierarchy of correlation functions can be defined for two random variables. For example,

$$
\langle x_{1}^{m} x_{2}^{n} \rangle=\int x_{1}^{m} x_{2}^{n} p ( x_{1} , x_{2} ) d x_{1} d x_{2} .
$$


is the correlation function with $m^{\mathrm{t h}}$ moment for $x_{1}$ and $n^{\mathrm{t h}}$ moment for $x_{2}$ . By adding time arguments the above correlation function definitions can be made even more general. For example, $\langle x_{1} ( t_{1} ) x_{2} ( t_{2} )\rangle$ is the two-time correlation function of two random variable $x_{1} ( t_{1} )$ and $x_{2} ( t_{2} )$ 

Two complex time correlation function $\langle z_{1}^{\*} ( t_{1} ) z_{2} ( t_{2} ) \rangle$ is called the mutual correlation function of random variables $z_{1} ( t_{1} )$ and $z_{2} ( t_{2} )$. In situation in which $z_{1} = z_{2} = z ,$, the correlation function $\langle z^{*} ( t_{1} ) z ( t_{2} ) \rangle$ is referred to as the auto-correlation function.

## Complex Analytic Signal Representation

Let $x( t )$ be a real function of a real variable $t$. Let us also assume that the Fourier transform of $x( t )$ exists such that


$$
\begin{aligned}
x(t) &= \int_{-\infty}^{\infty} \tilde{x}(\omega) e^{-i \omega t} d\omega \\
&= \int_{-\infty}^{0} \tilde{x}(\omega) e^{-i \omega t} d\omega + \int_{0}^{\infty} \tilde{x}(\omega) e^{-i \omega t} d\omega \\
&= z^*(t) + z(t)
\end{aligned}
$$

Here, $z ( t )$ is the complex analytic signal associated with the real random variable $x ( t )$ .We can write $z ( t )$ as a Fourier transform:

$$
z ( t )=\int_{-\infty}^{\infty} \tilde{z} ( \omega) e^{-i \omega t} d \omega
$$

where

$$
\begin{aligned}
\tilde{z}(\omega) &= \tilde{x}(\omega) \quad \text{when } \omega \geq 0 \\
&= 0 \quad\quad \text{when } \omega < 0
\end{aligned}
$$


We note that $z ( t )$ is a complex analytic signal and therefore it is single valued and has continuous derivatives. Moreover, $x^{*}(t)$ can be written as

$$
\begin{aligned}
x^{*}(t) &= \int_{-\infty}^{\infty} \tilde{x}^{*}(\omega) e^{+i \omega t} d\omega \\
&= \int_{\infty}^{-\infty} \tilde{x}^{*}(-\omega) e^{-i \omega t} d(-\omega) \quad \text{(By substituting } \omega \text{ with } -\omega\text{)} \\
&= \int_{-\infty}^{\infty} \tilde{x}^{*}(-\omega) e^{-i \omega t} d\omega
\end{aligned}
$$

This simply implies that $\tilde{x}^{*}(-\omega) = \tilde{x}(\omega)$, and therefore the positive frequency part of the signal contains as much information as the negative frequency part. 

It is known that for a complex analytic signal $z(t)$, the real part is exactly $\frac{1}{2}x(t)$. Let us denote its imaginary part by $\frac{1}{2}y(t)$, so that $z(t) = \frac{1}{2}[x(t) + iy(t)]$. The real signals $x(t)$ and $y(t)$ then form a Hilbert transform pair:

$$
\begin{aligned}
y(t) &= \frac{1}{\pi} P \int_{-\infty}^{\infty} \frac{x(t')}{t' - t} dt' \\
x(t) &= -\frac{1}{\pi} P \int_{-\infty}^{\infty} \frac{y(t')}{t' - t} dt'
\end{aligned}
$$

where the Cauchy's principle value is defined as

$$
P \int_{-\infty}^{\infty} \frac{x(t')}{t' - t} dt' = \lim_{\delta \to 0} \left[ \int_{-\infty}^{t-\delta} \frac{x(t')}{t' - t} dt' + \int_{t+\delta}^{\infty} \frac{x(t')}{t' - t} dt' \right]
$$


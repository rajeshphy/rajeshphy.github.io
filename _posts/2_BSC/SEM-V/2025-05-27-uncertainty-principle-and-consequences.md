---
title: "Heisenberg Uncertainty Principle and Its Consequences"
date: 2025-05-27 09:00:00 +0530
categories:
  - bsc-v
tags: [uncertainty-principle, zero-point-energy, atomic-size, nuclear-confinement]
permalink: /bsc/sem-v/mj-11/uncertainty-principle-consequences/
---

For a normalized state and a Hermitian observable $\hat A$, define the centred operator and standard deviation by

$$
\delta\hat A=\hat A-\langle A\rangle,
\qquad
(\Delta A)^2=\langle(\delta\hat A)^2\rangle.
$$

Apply the Cauchy-Schwarz inequality to the vectors $\delta\hat A\lvert\psi\rangle$ and $\delta\hat B\lvert\psi\rangle$:

$$
(\Delta A)^2(\Delta B)^2
\geq\left\lvert\langle\delta\hat A\,\delta\hat B\rangle\right\rvert^2.
$$

Split the product into Hermitian and anti-Hermitian parts,

$$
\delta\hat A\,\delta\hat B
=\frac12\{\delta\hat A,\delta\hat B\}
+\frac12[\hat A,\hat B].
$$

The expectation of the anticommutator is real, while the expectation of the commutator is purely imaginary. Therefore the squared modulus is at least the square of its imaginary part:

$$
(\Delta A)^2(\Delta B)^2
\geq\frac14\left\lvert\langle[\hat A,\hat B]\rangle\right\rvert^2.
$$

Taking the non-negative square root gives Robertson's relation,

$$
\boxed{\Delta A\,\Delta B
\geq\frac12\left\lvert\langle[\hat A,\hat B]\rangle\right\rvert}.
$$

Since $[\hat x,\hat p_x]=i\hbar$,

$$
\boxed{\Delta x\,\Delta p_x\geq\frac{\hbar}{2}}.
$$

Both sides have units of action: $\mathrm{m\,kg\,m\,s^{-1}}=\mathrm{J\,s}$. This spread is a property of identically prepared states, not merely a disturbance caused by an imperfect measuring instrument.

## The path of an object

A classical path requires a definite position and momentum at every instant. If $\Delta x\to0$, the uncertainty relation requires $\Delta p_x\to\infty$; if $\Delta p_x\to0$, it requires $\Delta x\to\infty$. Thus an exact microscopic trajectory cannot be assigned. A wave-packet centre can approximate a classical path only when $\Delta x$ and $\Delta p$ are both negligible compared with the macroscopic length and momentum scales of the motion.

## Zero-point energy

For the one-dimensional oscillator,

$$
\hat H=\frac{\hat p^2}{2m}+\frac12m\omega^2\hat x^2.
$$

The minimum-energy state is centred at the equilibrium point with $\langle x\rangle=\langle p\rangle=0$. Hence

$$
\langle H\rangle
=\frac{(\Delta p)^2}{2m}+\frac12m\omega^2(\Delta x)^2.
$$

Using $\Delta p\geq\hbar/(2\Delta x)$ gives the lower bound

$$
E\geq\frac{\hbar^2}{8m(\Delta x)^2}
+\frac12m\omega^2(\Delta x)^2.
$$

Differentiate the right-hand side with respect to the positive width $\Delta x$:

$$
-\frac{\hbar^2}{4m(\Delta x)^3}
+m\omega^2\Delta x=0,
$$

so

$$
(\Delta x)^2=\frac{\hbar}{2m\omega},\qquad
(\Delta p)^2=\frac{m\hbar\omega}{2}.
$$

Substitution yields

$$
\boxed{E_{\min}=\frac12\hbar\omega}.
$$

The two positive terms each contribute $\hbar\omega/4$. The oscillator therefore cannot have both $x=0$ and $p=0$, even at its lowest energy.

## Size of an atom

Localizing the electron in hydrogen to a scale $r$ implies a momentum scale $\Delta p\sim\hbar/r$. This order-of-magnitude estimate deliberately suppresses numerical factors that depend on the three-dimensional trial state. The competing kinetic and Coulomb energies are

$$
E(r)\sim
\frac{\hbar^2}{2m_er^2}
-\frac{e^2}{4\pi\varepsilon_0r}.
$$

The kinetic term is positive and varies as $r^{-2}$; the attractive potential is negative and varies as $r^{-1}$. Setting $dE/dr=0$ gives

$$
-\frac{\hbar^2}{m_er^3}
+\frac{e^2}{4\pi\varepsilon_0r^2}=0,
$$

and hence the atomic length scale

$$
\boxed{r\sim a_0
=\frac{4\pi\varepsilon_0\hbar^2}{m_e e^2}}.
$$

The expression has units of length, and its value is $a_0\simeq5.29\times10^{-11}\,\mathrm m$. As $r\to0$, the $r^{-2}$ localization energy dominates the $-r^{-1}$ attraction, preventing classical collapse into the proton.

## Existence of an electron inside the nucleus

If an electron were confined inside a nucleus of radius $R$, then

$$
\Delta p\gtrsim\frac{\hbar}{2R},\qquad
pc\gtrsim\frac{\hbar c}{2R}.
$$

Because $\hbar c\simeq197.3\,\mathrm{MeV\,fm}$, confinement to $R=1\,\mathrm{fm}$ requires $pc\gtrsim98.7\,\mathrm{MeV}$. This is far larger than the electron rest energy $m_ec^2=0.511\,\mathrm{MeV}$, so the non-relativistic expression $p^2/(2m_e)$ is invalid. The relativistic kinetic energy is

$$
K=\sqrt{p^2c^2+m_e^2c^4}-m_ec^2
\gtrsim98\,\mathrm{MeV}.
$$

Such an energy is incompatible with a low-energy electron pre-existing inside an ordinary nucleus. Electrons emitted in beta decay are created in the decay process rather than released from nuclear confinement.

The stationary-width, zero-point-energy, and atomic-scale substitutions are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/uncertainty-checks.mac' | relative_url }}).

## Solved Problems

### 1. Minimum velocity spread caused by electron localization

An electron is prepared with position uncertainty $\Delta x=0.100\ \mathrm{nm}$. Find the minimum momentum spread, the corresponding velocity spread, and the minimum kinetic-energy contribution.

**Solution.** Standard deviations are non-negative, and equality gives the smallest allowed spread:

$$
\Delta p_{\min}=\frac{\hbar}{2\Delta x}
=\frac{1.05457\times10^{-34}}
{2(1.00\times10^{-10})}
=5.273\times10^{-25}\ \mathrm{kg\,m\,s^{-1}}.
$$

No sign is assigned to a spread: momentum components occur on both sides of the mean. Since the result is non-relativistic,

$$
\Delta v_{\min}=\frac{\Delta p_{\min}}{m_e}
=\boxed{5.79\times10^5\ \mathrm{m\,s^{-1}}}.
$$

For a state with zero mean momentum, the least kinetic contribution compatible with this spread is

$$
K_{\min}=\frac{(\Delta p_{\min})^2}{2m_e}
=\boxed{0.952\ \mathrm{eV}}.
$$

The product $\Delta x\,\Delta p$ has units $\mathrm{J\,s}$, matching $\hbar$, and $\Delta v/c=1.93\times10^{-3}$ validates the non-relativistic step. As $\Delta x\to\infty$, both lower bounds approach zero; as $\Delta x\to0$, they diverge, which prevents simultaneous sharp position and momentum.

### 2. Diffraction spread and the loss of a sharp microscopic path

A beam of $100\ \mathrm{eV}$ electrons passes through a slit of width $b=1.00\ \mathrm{nm}$. Estimate the minimum angular spread of the emerging beam.

**Solution.** Take the transverse position uncertainty as $\Delta y\simeq b/2$. The uncertainty principle then gives

$$
\Delta p_y\gtrsim\frac{\hbar}{2\Delta y}
=\frac{\hbar}{b}.
$$

The incident longitudinal momentum is positive in the beam direction:

$$
p_x=\sqrt{2m_eK}.
$$

For a small diffraction angle, $\Delta\theta\simeq\Delta p_y/p_x$, so

$$
\begin{aligned}
\Delta\theta_{\min}
&\simeq\frac{\hbar}{b\sqrt{2m_eK}}\\
&=0.01952\ \mathrm{rad}
=\boxed{1.118^\circ}.
\end{aligned}
$$

The quotient is dimensionless because both numerator and denominator reduce to angular momentum. The spread occurs to both sides of the forward direction, not at a signed deflection of only $+1.118^\circ$. For $b\to\infty$ the lower bound tends to zero, while narrowing the slit broadens the angular distribution and destroys the notion of one exact path.

## Descriptive Questions

1. Why is the uncertainty principle a statement about a quantum state rather than only about disturbance by a measuring device?
2. How does position-momentum uncertainty prevent an exact microscopic trajectory while still allowing a classical path approximation for macroscopic bodies?
3. Explain why localization energy prevents atomic collapse and why its radial dependence dominates the Coulomb attraction at small radius.
4. Why must a nuclear-confinement estimate for an electron be treated relativistically?

## Numerical Problems

1. A state lasts for $2.00\ \mathrm{ns}$. Using the textbook lifetime--linewidth estimate $\Delta E\,\Delta t\geq\hbar/2$, where $\Delta t$ is the characteristic lifetime rather than an operator uncertainty, find the lower-bound energy linewidth.<br>
   **Final answer:** $\boxed{\Delta E_{\min}=1.65\times10^{-7}\ \mathrm{eV}}$.
2. Find the uncertainty-principle zero-point energy of an oscillator with $\omega=5.00\times10^{14}\ \mathrm{rad\,s^{-1}}$.<br>
   **Final answer:** $\boxed{E_0=0.1646\ \mathrm{eV}}$.
3. Evaluate $4\pi\varepsilon_0\hbar^2/(m_e e^2)$, the atomic length scale obtained from the uncertainty estimate.<br>
   **Final answer:** $\boxed{a_0=0.0529\ \mathrm{nm}}$.

Every added uncertainty product, bound, and numerical value is checked in the [MJ-11 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-11/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Wikipedia: Uncertainty principle](https://en.wikipedia.org/wiki/Uncertainty_principle)
2. [OpenStax, *University Physics Volume 3*, Section 7.2: The Heisenberg Uncertainty Principle](https://openstax.org/books/university-physics-volume-3/pages/7-2-the-heisenberg-uncertainty-principle)
3. [The Feynman Lectures on Physics, Vol. III, Chapter 2: The Relation of Wave and Particle Viewpoints](https://www.feynmanlectures.caltech.edu/III_02.html)

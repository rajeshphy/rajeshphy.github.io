---
title: "Magnetic Properties of Solids"
summary: "Diamagnetism, classical and quantum paramagnetism, Curie and Weiss laws, ferro- and ferrimagnetic domains, and hysteresis loss."
date: 2025-07-30 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, solid-state-physics, magnetism, curie-law, hysteresis]
permalink: /bsc/sem-vi/solid-state/magnetic-properties/
hidden: true
---

Magnetization $\mathbf M$ is magnetic dipole moment per unit volume, with unit $\mathrm{A\,m^{-1}}$. In an isotropic linear material,

$$
\mathbf M=\chi_m\mathbf H,
\qquad
\mathbf B=\mu_0(\mathbf H+\mathbf M)
=\mu_0(1+\chi_m)\mathbf H.
$$

Diamagnets have $\chi_m<0$; paramagnets have small $\chi_m>0$; ferro- and ferrimagnets can retain a large magnetization after the applied field is removed.

## Classical Langevin diamagnetism

An applied field $\mathbf B=B\hat z$ adds a Larmor angular velocity of magnitude $\omega_L=eB/(2m)$ to a bound electron orbit. The associated current change for one electron is

$$
\Delta I=-\frac{e\omega_L}{2\pi}.
$$

For an orbit of projected area $\pi r_\perp^2$, the induced moment is

$$
\Delta\mu_z=\Delta I\,\pi r_\perp^2
=-\frac{e^2Br_\perp^2}{4m}.
$$

The minus sign expresses Lenz's law. For an isotropic atom,

$$
\langle r_\perp^2\rangle
=\langle x^2+y^2\rangle=\frac23\langle r^2\rangle.
$$

If $N$ is the number of contributing electrons per unit volume and $B\simeq\mu_0H$ for weak response,

$$
M=-\frac{Ne^2\langle r^2\rangle}{6m}B,
$$

so

$$
\boxed{\chi_{\rm dia}=-\frac{\mu_0Ne^2\langle r^2\rangle}{6m}}.
$$

It is negative and approximately temperature independent.

## Classical Langevin paramagnetism and Curie's law

For permanent moments of magnitude $\mu$ in field $H$, the orientational energy is

$$
U=-\mu B\cos\theta\simeq-\mu\mu_0H\cos\theta.
$$

With $x=\mu\mu_0H/(k_BT)$, the Boltzmann average gives

$$
\langle\cos\theta\rangle=\coth x-\frac1x=L(x),
$$

and

$$
\boxed{M=N\mu L(x)}.
$$

For $x\ll1$, $L(x)\simeq x/3$, hence

$$
M=\frac{N\mu^2\mu_0}{3k_BT}H,
$$

and

$$
\boxed{\chi_{\rm para}=\frac{C}{T}},
\qquad
\boxed{C=\frac{\mu_0N\mu^2}{3k_B}}.
$$

This is Curie's law. Thermal disorder produces the inverse-temperature dependence.

## Quantum paramagnetism

For total angular momentum $J$, the magnetic levels are

$$
E_{m_J}=-g\mu_Bm_JB,
\qquad m_J=-J,-J+1,\ldots,J.
$$

Summing their Boltzmann weights gives

$$
M=Ng\mu_BJ\,B_J(y),
\qquad
y=\frac{g\mu_BJ\mu_0H}{k_BT},
$$

where

$$
B_J(y)=\frac{2J+1}{2J}\coth\frac{(2J+1)y}{2J}
-\frac1{2J}\coth\frac{y}{2J}.
$$

For $y\ll1$,

$$
B_J(y)\simeq\frac{J+1}{3J}y,
$$

so

$$
\boxed{
\chi=\frac{\mu_0N(g\mu_B)^2J(J+1)}{3k_BT}
}.
$$

The quantum result replaces the classical squared moment by $(g\mu_B)^2J(J+1)$.

## Ferromagnetism, ferrimagnetism, and domains

Exchange interaction favours parallel moments in a ferromagnet, producing spontaneous magnetization below its Curie temperature. A macroscopic specimen divides into domains to reduce stray-field energy; moments are nearly parallel within each domain but different domains need not point alike. An applied field moves domain walls and rotates domain magnetizations.

In an antiferromagnet, neighbouring sublattices are antiparallel and equal, so the net moment vanishes. In a ferrimagnet they are antiparallel but unequal, leaving a nonzero net magnetization.

Weiss represents cooperative alignment by a molecular field

$$
H_{\rm eff}=H+\lambda M.
$$

Applying the Curie response to this field gives

$$
M=\frac{C}{T}(H+\lambda M).
$$

Therefore

$$
M\left(1-\frac{C\lambda}{T}\right)=\frac{C}{T}H,
$$

and

$$
\boxed{\chi=\frac{M}{H}=\frac{C}{T-\Theta}},
\qquad
\boxed{\Theta=C\lambda}.
$$

This is the Curie-Weiss law above the ordering temperature. At $T=\Theta$, the linearized zero-field solution becomes unstable, signalling spontaneous order in the mean-field model.

## B-H curve, hysteresis, and energy loss

Starting from a demagnetized specimen, increasing $H$ aligns domains until $B$ approaches saturation. On reducing $H$ to zero, a remanent flux density $B_r$ remains. A reverse coercive field $H_c$ is required to make $B=0$. Cycling the field traces a hysteresis loop because domain-wall motion is partly irreversible.

For a clean equation-generated sketch, the two branches may be parameterized by

$$
M_\uparrow(H)=M_s\tanh\frac{H-H_c}{H_0},
\qquad
M_\downarrow(H)=M_s\tanh\frac{H+H_c}{H_0},
$$

with $B=\mu_0(H+M)$. This is a schematic loop, not a universal constitutive law.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/solid-state/unit-3/magnetic-hysteresis.png' | relative_url }}" alt="Ferromagnetic domain alignment and equation-generated B-H hysteresis loop with remanence and coercivity">
  </div>
  <figcaption>Field-driven domain growth produces saturation and a history-dependent return path. The plotted branches use the displayed hyperbolic-tangent parameterization; the enclosed area represents dissipated energy per cycle.</figcaption>
</figure>

The magnetic work supplied per unit volume is $dW=H\,dB$. Over one complete cycle,

$$
\boxed{W_{\rm loss}=\oint H\,dB},
$$

which equals the loop area in the $B$-$H$ plane and has unit $\mathrm{J\,m^{-3}}$. Narrow loops reduce transformer-core loss; wide loops provide stable remanence in permanent magnets.

## Solved Problems

### 1. Susceptibility of a dilute Curie paramagnet

A solid contains $N=8.00\times10^{28}\ \mathrm{m^{-3}}$ independent moments, each of magnitude $\mu_B$. Find its classical Curie susceptibility at $T=300\ \mathrm{K}$ and its magnetization in $H=1.00\times10^3\ \mathrm{A\,m^{-1}}$.

In SI units,

$$
\chi=\frac{\mu_0N\mu^2}{3k_BT}.
$$

Taking $\mu=\mu_B=9.2740\times10^{-24}\ \mathrm{A\,m^2}$,

$$
\begin{aligned}
\chi
&=\frac{(4\pi\times10^{-7})(8.00\times10^{28})
(9.2740\times10^{-24})^2}
{3(1.380649\times10^{-23})(300)}\\
&=6.96\times10^{-4}.
\end{aligned}
$$

The magnetization is

$$
M=\chi H=(6.96\times10^{-4})(1.00\times10^3)
=0.696\ \mathrm{A\,m^{-1}}.
$$

Thus

$$
\boxed{\chi=6.96\times10^{-4}},
\qquad
\boxed{M=0.696\ \mathrm{A\,m^{-1}}}.
$$

$\chi$ is dimensionless and positive. The weak-field parameter $\mu_B\mu_0H/(k_BT)$ is much smaller than unity here. As $T\to\infty$, both $\chi$ and $M$ tend to zero; the independent-moment formula is not valid through an ordering transition.

### 2. Curie--Weiss response above the ordering temperature

A ferromagnet in its paramagnetic phase has Curie constant $C=0.500\ \mathrm{K}$ and Weiss temperature $\Theta=100\ \mathrm{K}$. Find $\chi$ and $M$ at $T=300\ \mathrm{K}$ when $H=2.00\times10^3\ \mathrm{A\,m^{-1}}$.

Because $T>\Theta$, use the linear Curie--Weiss law:

$$
\chi=\frac{C}{T-\Theta}
=\frac{0.500}{300-100}
=2.50\times10^{-3}.
$$

Then

$$
M=\chi H=(2.50\times10^{-3})(2.00\times10^3)
=5.00\ \mathrm{A\,m^{-1}}.
$$

Hence

$$
\boxed{\chi=2.50\times10^{-3}},
\qquad
\boxed{M=5.00\ \mathrm{A\,m^{-1}}}.
$$

The kelvin units in $C/(T-\Theta)$ cancel. The positive $\Theta$ enhances the response relative to the noninteracting Curie value $C/T$; setting $\Theta\to0$ recovers Curie's law.

### 3. Hysteresis energy and power loss

A nearly rectangular $B$-$H$ loop has remanent magnitude $B_r=0.800\ \mathrm{T}$ and coercive field magnitude $H_c=1.20\times10^3\ \mathrm{A\,m^{-1}}$. Estimate the energy lost per unit volume per cycle and the power density at $50.0\ \mathrm{Hz}$.

For the rectangular approximation, the loop width is $2H_c$ and its height is $2B_r$. Its positive enclosed area is therefore

$$
W_{\rm loss}=4B_rH_c.
$$

Numerically,

$$
W_{\rm loss}=4(0.800)(1.20\times10^3)
=3.84\times10^3\ \mathrm{J\,m^{-3}\,cycle^{-1}}.
$$

At frequency $f$,

$$
\frac{P}{V}=fW_{\rm loss}
=(50.0)(3.84\times10^3)
=1.92\times10^5\ \mathrm{W\,m^{-3}}.
$$

Thus

$$
\boxed{W_{\rm loss}=3.84\times10^3\ \mathrm{J\,m^{-3}}},
\qquad
\boxed{P/V=1.92\times10^5\ \mathrm{W\,m^{-3}}}.
$$

The product $BH$ has unit $\mathrm{J\,m^{-3}}$. Reversing the traversal direction changes the sign of $\oint H\,dB$, but the dissipated energy is its positive magnitude. A vanishing loop area gives zero hysteretic loss.

## Descriptive Questions

1. Derive Langevin diamagnetism for an isotropic bound-electron distribution and explain its sign and approximate temperature independence.
2. Obtain classical Curie's law from the Langevin function, then compare it with the weak-field quantum result for general $J$.
3. Derive the Curie--Weiss law from the Weiss molecular field and discuss the meaning and limitation of its divergence at $T=\Theta$.
4. Explain domain formation, remanence, coercivity, and saturation, and distinguish ferro-, antiferro-, and ferrimagnetic order.

## Numerical Problems

1. Estimate the Langevin diamagnetic susceptibility for $N=5.00\times10^{28}\ \mathrm{m^{-3}}$ contributing electrons with $\langle r^2\rangle=1.00\times10^{-20}\ \mathrm{m^2}$.

   **Answer:** $\chi_{\rm dia}=-\mu_0Ne^2\langle r^2\rangle/(6m_e)=-2.95\times10^{-6}$.

2. Find the effective moment $g\sqrt{J(J+1)}\mu_B$ for an ion with $J=5/2$ and $g=2.00$.

   **Answer:** $\mu_{\rm eff}=5.92\mu_B$.

3. A system has $N=1.00\times10^{28}\ \mathrm{m^{-3}}$ moments of magnitude $2\mu_B$. Find its saturation magnetization.

   **Answer:** $M_s=N(2\mu_B)=1.85\times10^5\ \mathrm{A\,m^{-1}}$.

4. A ferrimagnet has antiparallel sublattice moments $4.0\mu_B$ and $2.5\mu_B$ per formula unit, with $6.00\times10^{27}$ formula units per cubic metre. Find the net magnetization.

   **Answer:** $M=(4.0-2.5)\mu_BN=8.35\times10^4\ \mathrm{A\,m^{-1}}$ toward the larger sublattice.

5. Find $B$ in a linear magnetic material with $\chi_m=0.0200$ when $H=4.00\times10^4\ \mathrm{A\,m^{-1}}$.

   **Answer:** $B=\mu_0(1+\chi_m)H=5.13\times10^{-2}\ \mathrm{T}$.

6. For $J=1/2$, $g=2.00$, and $B=1.50\ \mathrm{T}$, find the Zeeman separation between the $m_J=+1/2$ and $m_J=-1/2$ levels.

   **Answer:** $\Delta E=g\mu_BB=2.78\times10^{-23}\ \mathrm{J}=0.174\ \mathrm{meV}$.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/solid-state/unit-3/magnetic-properties.mac' | relative_url }})

## References

1. [Magnetism, Wikipedia](https://en.wikipedia.org/wiki/Magnetism)
2. Charles Kittel, *Introduction to Solid State Physics*, 8th ed., Chapters 11--12: “Diamagnetism and Paramagnetism” and “Ferromagnetism and Antiferromagnetism.”
3. Stephen Blundell, *Magnetism in Condensed Matter*, Oxford University Press, 2001, Chapters 2--6.
4. [MIT OpenCourseWare, 3.024 Electronic, Optical and Magnetic Properties of Materials, Lectures 24--26](https://ocw.mit.edu/courses/3-024-electronic-optical-and-magnetic-properties-of-materials-spring-2013/pages/lecture-notes/)

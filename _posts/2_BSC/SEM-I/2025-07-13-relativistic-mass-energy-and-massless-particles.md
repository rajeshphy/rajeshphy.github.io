---
title: "Relativistic Mass, Mass–Energy Equivalence, and Massless Particles"
summary: "Momentum-based derivation of velocity-dependent relativistic mass, total energy, rest energy, and the massless energy-momentum relation."
date: 2025-07-13 09:00:00 +0530
categories:
  - bsc-i
tags:
  - bsc
  - semester-i
  - special-relativity
  - relativistic-mass
  - mass-energy-equivalence
  - massless-particles
permalink: /bsc/sem-i/relativistic-mass-energy-and-massless-particles/
---

Let $m_0$ denote invariant rest mass. For a massive particle with $\lvert v\rvert<c$, relativistic momentum is

$$
\boxed{\mathbf p=\gamma m_0\mathbf v},
\qquad
\gamma=\frac{1}{\sqrt{1-v^2/c^2}}.
$$

In the older velocity-dependent terminology, the **relativistic mass** is

$$
\boxed{m(v)=\gamma m_0
=\frac{m_0}{\sqrt{1-v^2/c^2}}},
$$

so $\mathbf p=m(v)\mathbf v$. It equals $m_0$ at rest and increases without bound as $v\to c$. Modern usage normally reserves “mass” for the invariant $m_0$ and puts the velocity dependence in energy and momentum.

## Work and total energy

For one-dimensional motion, $dW=F\,dx$ and $F=dp/dt$, hence

$$
dW=\frac{dp}{dt}\,dx=v\,dp.
$$

Now $p=\gamma m_0v$. Differentiate $\gamma$:

$$
\frac{d\gamma}{dv}
=\frac{d}{dv}(1-v^2/c^2)^{-1/2}
=\frac{v}{c^2}(1-v^2/c^2)^{-3/2}
=\frac{\gamma^3v}{c^2}.
$$

Therefore

$$
\begin{aligned}
\frac{dp}{dv}
&=m_0\left(\gamma+v\frac{d\gamma}{dv}\right)\\
&=m_0\left(\gamma+\frac{\gamma^3v^2}{c^2}\right)\\
&=m_0\gamma^3,
\end{aligned}
$$

because $\gamma+\gamma^3\beta^2=\gamma^3[\gamma^{-2}+\beta^2]=\gamma^3$. Thus

$$
dW=m_0\gamma^3v\,dv.
$$

Since $d\gamma=\gamma^3v\,dv/c^2$,

$$
K=\int_0^v dW
=m_0c^2\int_1^\gamma d\gamma
=\boxed{(\gamma-1)m_0c^2}.
$$

Adding the rest energy $E_0=m_0c^2$ gives

$$
\boxed{E=\gamma m_0c^2=m(v)c^2},
\qquad
\boxed{E_0=m_0c^2}.
$$

This is mass–energy equivalence: rest mass is a form of energy, and a change $\Delta m_0$ of a system's rest mass corresponds to

$$
\boxed{\Delta E_0=\Delta m_0c^2}.
$$

## Energy–momentum relation

Using $E=\gamma m_0c^2$ and $p=\gamma m_0v$, where $p=\lvert\mathbf p\rvert$,

$$
\begin{aligned}
E^2-p^2c^2
&=\gamma^2m_0^2c^4-\gamma^2m_0^2v^2c^2\\
&=\gamma^2m_0^2c^4(1-v^2/c^2)\\
&=m_0^2c^4.
\end{aligned}
$$

Hence

$$
\boxed{E^2=p^2c^2+m_0^2c^4}.
$$

<figure class="diagram-figure">
  <div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable energy–momentum diagram">
    <img src="{{ '/assets/images/bsc/sem-i/unit-3/energy-momentum.png' | relative_url }}" alt="Equation-generated relativistic energy curves for a massive particle and a massless particle" loading="lazy">
  </div>
  <figcaption>Using a massive particle's rest energy as the plotting scale, its energy curve begins at $m_0c^2$, while the massless relation is the exact line $E=pc$.</figcaption>
</figure>

For a **massless particle**, $m_0=0$. For positive energy, the energy-momentum relation becomes

$$
\boxed{E=pc}.
$$

It cannot have a rest frame: putting $p=0$ would also give $E=0$, not a nonzero-energy particle. Its dispersion relation $E(p)=pc$ gives the propagation speed in vacuum,

$$
\boxed{v=\frac{dE}{dp}=c}.
$$

In the older mass convention, a massless particle can still have the nonzero relativistic mass $m_{\rm rel}=E/c^2=p/c$; it is its **rest mass** that is zero. Conversely, a massive particle cannot reach $c$ because $\gamma$, $E$, and $p$ diverge as $v\to c$.

## Solved Problems

### 1. Energy and momentum of a relativistic proton

A proton moves at $v=+0.800c$ in the laboratory. Given $m_pc^2=938.272\ \mathrm{MeV}$, calculate its relativistic mass ratio, total energy, kinetic energy, and momentum, then verify the energy–momentum relation.

At $\beta=0.800$,

$$
\gamma=\frac{1}{\sqrt{1-0.800^2}}=\frac53.
$$

The older velocity-dependent mass ratio is therefore

$$
\frac{m(v)}{m_p}=\gamma=\boxed{1.6667}.
$$

The total and kinetic energies are

$$
E=\gamma m_pc^2
=\frac53(938.272)
=\boxed{1563.79\ \mathrm{MeV}},
$$

$$
K=(\gamma-1)m_pc^2
=\frac23(938.272)
=\boxed{625.515\ \mathrm{MeV}}.
$$

Because the motion is along $+x$, the momentum is positive:

$$
p_xc=\gamma\beta m_pc^2
=\frac53(0.800)(938.272)
=1251.03\ \mathrm{MeV},
$$

or

$$
\boxed{p_x=1251.03\ \mathrm{MeV}/c}.
$$

Finally,

$$
E^2-(p_xc)^2
=(1563.79)^2-(1251.03)^2
\simeq(938.272)^2\ \mathrm{MeV^2},
$$

which recovers the invariant rest energy within rounding. As $v\to0$, $E\to m_pc^2$, $K\to0$, and $p_x\to0$; as $v\to c$, all three velocity-dependent quantities diverge.

### 2. Energy, momentum, and mass convention for a photon

A photon propagates along $-x$ with wavelength $\lambda=500\ \mathrm{nm}$ in vacuum. Find its energy, signed momentum, and velocity-dependent mass $E/c^2$. Use $h=6.62607015\times10^{-34}\ \mathrm{J\,s}$ and $c=2.99792458\times10^8\ \mathrm{m\,s^{-1}}$.

For a massless particle, $E=pc$ in magnitude and $E=h\nu=hc/\lambda$. Thus

$$
E=\frac{hc}{\lambda}
=\boxed{3.97289\times10^{-19}\ \mathrm J}
=\boxed{2.47968\ \mathrm{eV}}.
$$

The propagation direction fixes the momentum sign:

$$
p_x=-\frac Ec=-\frac h\lambda
=\boxed{-1.32521\times10^{-27}\ \mathrm{kg\,m\,s^{-1}}}.
$$

In the older convention,

$$
m_{\rm rel}=\frac{E}{c^2}
=\boxed{4.42044\times10^{-36}\ \mathrm{kg}},
$$

but the invariant rest mass remains exactly zero. Indeed,

$$
E^2-p_x^2c^2=0.
$$

The negative momentum records direction; energy and $m_{\rm rel}$ are positive. No rest-frame limit exists for the photon, while increasing $\lambda$ makes $E$, $\lvert p_x\rvert$, and $m_{\rm rel}$ tend to zero.

## Descriptive Questions

1. Starting from relativistic momentum and the work integral, derive $K=(\gamma-1)m_0c^2$.
2. Explain the distinction between invariant rest mass and the older velocity-dependent relativistic mass.
3. Derive $E^2=p^2c^2+m_0^2c^4$ from the definitions of relativistic energy and momentum.
4. Use the energy–momentum relation to explain why a massless particle has no rest frame and propagates at $c$.

## Numerical Problems

1. Find the ratio $m(v)/m_0$ for a particle moving at $0.600c$. **Answer:** $m(v)/m_0=\gamma=1.25$.
2. A massive particle has momentum $p=(3/4)m_0c$. Use the energy–momentum relation to find its total energy, kinetic energy, and speed. **Answer:** $E=(5/4)m_0c^2$, $K=(1/4)m_0c^2$, and $v=(3/5)c=0.600c$.
3. A particle has total energy $E=2m_0c^2$. Find its speed. **Answer:** $v=(\sqrt3/2)c\simeq0.866c$.
4. A particle has total energy $5.00\ \mathrm{GeV}$ and rest energy $3.00\ \mathrm{GeV}$. Find its momentum. **Answer:** $p=4.00\ \mathrm{GeV}/c$.
5. A system loses $1.00\ \mathrm{mg}$ of rest mass. Find the released energy using $c=3.00\times10^8\ \mathrm{m\,s^{-1}}$. **Answer:** $\Delta E=9.00\times10^{10}\ \mathrm J$.
6. A massless particle has momentum components $p_x=3.00\ \mathrm{MeV}/c$ and $p_y=4.00\ \mathrm{MeV}/c$. Find its momentum magnitude, energy, and velocity components. **Answer:** $p=5.00\ \mathrm{MeV}/c$, $E=5.00\ \mathrm{MeV}$, $v_x=0.600c$, and $v_y=0.800c$.

The derivations and all problem values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/relativistic-energy.mac' | relative_url }}); every printed residual is zero.

## References

1. [“Mass–energy equivalence,” Wikipedia](https://en.wikipedia.org/wiki/Mass%E2%80%93energy_equivalence).
2. A. P. French, *Special Relativity*, 1st ed., MIT Introductory Physics Series, W. W. Norton, 1968, Chapter 7, “More about Relativistic Dynamics.”
3. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017, Chapter 12, §12.2, “Relativistic Mechanics.”

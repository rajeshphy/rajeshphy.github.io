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
  <img src="{{ '/assets/images/bsc/sem-i/unit-3/energy-momentum.png' | relative_url }}" alt="Equation-generated relativistic energy curves for a massive particle and a massless particle" loading="lazy">
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

The momentum derivative, work-energy relation, energy-momentum invariant, and massless limit are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-3/relativistic-energy.mac' | relative_url }}); every printed residual is zero.

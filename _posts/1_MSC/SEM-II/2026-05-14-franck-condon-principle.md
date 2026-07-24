---
title: "Franck–Condon Principle"
summary: "Fixed-nuclear-coordinate electronic transitions and the vibrational overlap factors that shape a molecular band system."
date: 2026-05-14 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - franck-condon-principle
  - vibrational-overlap
  - electronic-transitions
permalink: /msc/sem-ii/molecular-spectra/franck-condon-principle/
hidden: true
---

Electrons move on a much shorter time scale than nuclei. During an electronic
absorption or emission event, the electronic distribution can change while
the internuclear separation $R$ has essentially no time to change. This is the
Franck–Condon principle:

> An electronic transition occurs at fixed nuclear coordinates.

In a potential-energy diagram whose horizontal axis is $R$, such a transition
is drawn vertically. “Vertical” means constant $R$; it does not mean that the
nuclei move vertically or that energy is unconstrained.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/franck-condon-potentials.png' | relative_url }}" alt="Two displaced analytic harmonic molecular potential curves with vibrational levels and exactly vertical fixed-internuclear-distance transitions from the lower-state ground level" loading="lazy">
  <figcaption>When the two electronic states have different equilibrium bond lengths, a vertical transition from \(v''=0\) can overlap most strongly with an excited vibrational level \(v'>0\).</figcaption>
</figure>

## Quantum-mechanical factorization

In the Born–Oppenheimer approximation, neglecting rotation for the moment,

$$
\Psi_i(\mathbf r,R)
=\phi_i(\mathbf r;R)\chi_{v''}(R),
\qquad
\Psi_f(\mathbf r,R)
=\phi_f(\mathbf r;R)\chi_{v'}(R).
$$

The electric-dipole transition amplitude is

$$
\mathbf M_{fi}
=\int dR\int d\mathbf r\,
\chi_{v'}^*(R)\phi_f^*(\mathbf r;R)
\widehat{\boldsymbol\mu}
\phi_i(\mathbf r;R)\chi_{v''}(R).
$$

Perform the electronic integral first:

$$
\mathbf M_{\mathrm e}(R)
=\int
\phi_f^*(\mathbf r;R)
\widehat{\boldsymbol\mu}
\phi_i(\mathbf r;R)\,d\mathbf r.
$$

Then

$$
\mathbf M_{fi}
=\int
\chi_{v'}^*(R)\,
\mathbf M_{\mathrm e}(R)\,
\chi_{v''}(R)\,dR.
$$

The Condon approximation assumes that the electronic transition moment changes
slowly over the range in which the vibrational wavefunctions are appreciable:

$$
\mathbf M_{\mathrm e}(R)\simeq\mathbf M_{\mathrm e}(R_0).
$$

Here $R_0$ is a representative internuclear separation within that overlap
region; it is not a new dynamical coordinate.

It may therefore be taken outside the nuclear integral:

$$
\mathbf M_{fi}
\simeq
\mathbf M_{\mathrm e}(R_0)
\left\langle\chi_{v'}\middle|\chi_{v''}\right\rangle.
$$

The Franck–Condon factor is

$$
\boxed{
q_{v'v''}
=\left|
\int\chi_{v'}^*(R)\chi_{v''}(R)\,dR
\right|^2.
}
$$

It is a probability-like overlap factor, not an additional energy-selection
rule. Energy conservation still fixes the photon frequency.

## Exactly displaced harmonic potentials

The origin of a vibrational progression can be seen analytically. Suppose the
lower and upper potentials have the same curvature, but their equilibrium
positions differ by $d$. Put

$$
\mu_{\mathrm r}=\frac{m_1m_2}{m_1+m_2},
\qquad
\alpha=\frac{\mu_{\mathrm r}\omega}{\hbar},
\qquad x=R-R_e''.
$$

Here $\mu_{\mathrm r}$ is the nuclear reduced mass and $\omega$ is the common
angular vibrational frequency of the two harmonic potentials.

Take the lower state to be $v''=0$. The normalized functions are

$$
\chi_0''(x)
=\left(\frac{\alpha}{\pi}\right)^{1/4}
e^{-\alpha x^2/2},
$$

and

$$
\chi_n'(x)
=\left(\frac{\alpha}{\pi}\right)^{1/4}
\frac{H_n\!\left(\sqrt\alpha(x-d)\right)}
{\sqrt{2^n n!}}\,
e^{-\alpha(x-d)^2/2}.
$$

Let $z=\sqrt\alpha x$ and $\delta=\sqrt\alpha d$. To evaluate the overlaps,
use the Hermite generating function

$$
\sum_{n=0}^{\infty}\frac{H_n(z-\delta)}{n!}t^n
=e^{2(z-\delta)t-t^2}.
$$

The Gaussian integral that generates the unnormalized overlap is

$$
\begin{aligned}
K(t)
&=\frac1{\sqrt\pi}\int_{-\infty}^{\infty}
e^{-[z^2+(z-\delta)^2]/2}
e^{2(z-\delta)t-t^2}\,dz\\
&=\frac1{\sqrt\pi}
e^{-\delta^2/2-2\delta t-t^2}
\int_{-\infty}^{\infty}
e^{-z^2+(\delta+2t)z}\,dz.
\end{aligned}
$$

Completing the square,

$$
\int_{-\infty}^{\infty}e^{-z^2+bz}\,dz
=\sqrt\pi\,e^{b^2/4}.
$$

With $b=\delta+2t$,

$$
\begin{aligned}
K(t)
&=e^{-\delta^2/2-2\delta t-t^2}
e^{(\delta+2t)^2/4}\\
&=e^{-\delta^2/4}e^{-\delta t}.
\end{aligned}
$$

Comparing equal powers of $t$ and restoring the normalization
$1/\sqrt{2^n n!}$ gives

$$
\left\langle\chi_n'\middle|\chi_0''\right\rangle
=e^{-\delta^2/4}
\frac{(-\delta)^n}{\sqrt{2^n n!}}.
$$

Define the dimensionless displacement

$$
S=\frac{\delta^2}{2}
=\frac{\mu_{\mathrm r}\omega d^2}{2\hbar}.
$$

The overlap amplitude and factor become

$$
\left\langle\chi_n'\middle|\chi_0''\right\rangle
=e^{-S/2}\frac{(-\sqrt S)^n}{\sqrt{n!}},
$$

$$
\boxed{
q_{n0}=e^{-S}\frac{S^n}{n!}.
}
$$

The factors are normalized:

$$
\sum_{n=0}^{\infty}q_{n0}
=e^{-S}\sum_{n=0}^{\infty}\frac{S^n}{n!}
=e^{-S}e^S=1.
$$

If $d=0$, then $S=0$ and only $q_{00}=1$. If the minima are displaced, the
largest factor occurs near $n\simeq S$, so the strongest band need not end at
$v'=0$. For unequal curvatures, the overlaps are no longer this simple
Poisson distribution, but the defining integral remains valid.

## What determines a measured band intensity

The Franck–Condon factor is only the vibrational part. A measured line or band
intensity also contains

$$
I_{v'v''J'J''}
\propto
N_{v''J''}\,
\mathcal F(\nu)\,
\left|\mathbf M_{\mathrm e}\right|^2
q_{v'v''}\,
S_{J'J''}.
$$

Here $N_{v''J''}$ is the initial population, $\mathcal F(\nu)$ is the
frequency-dependent radiation factor appropriate to absorption or emission,
and $S_{J'J''}$ is the rotational line-strength factor. Thus the
Franck–Condon principle explains the vibrational envelope only after the
electronic transition is allowed; it does not by itself determine the full
observed intensity.

The Gaussian completion, Poisson recurrence, normalization, and
zero-displacement limit are checked in the
[Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-2/franck-condon-factors.mac' | relative_url }}).

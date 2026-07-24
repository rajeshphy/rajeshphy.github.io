---
title: "Alpha-Particle and Rutherford Scattering"
summary: "Coulomb orbit of an alpha particle, impact parameter, closest approach, Rutherford cross section, and laboratory-frame conversion."
date: 2026-07-07 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - quantum-mechanics
  - scattering
  - alpha-scattering
  - rutherford-scattering
  - coulomb-potential
permalink: /msc/sem-ii/alpha-particle-and-rutherford-scattering/
hidden: true
---

An alpha particle has charge $Z_1e=2e$. A nucleus of charge
$Z_2e=Ze$ repels it through

$$
V(r)=\frac{\kappa}{r},
\qquad
\kappa=\frac{Z_1Z_2e^2}{4\pi\varepsilon_0}>0.
$$

In the centre-of-mass frame, use the reduced mass $\mu$, asymptotic speed $v$, energy $E=\tfrac12\mu v^2$, and angular momentum
$L=\mu vb$.

## Repulsive Coulomb orbit

The radial equation of motion and angular-momentum conservation are

$$
\mu(\ddot r-r\dot\phi^2)=\frac{\kappa}{r^2},
\qquad
L=\mu r^2\dot\phi.
$$

Set $u=1/r$ and let a prime denote $d/d\phi$. Since

$$
\dot\phi=\frac{L}{\mu}u^2,
$$

the chain rule gives

$$
\dot r
=\frac{d(1/u)}{d\phi}\dot\phi
=-\frac{u'}{u^2}\frac{L}{\mu}u^2
=-\frac{L}{\mu}u',
$$

and

$$
\ddot r
=-\frac{L}{\mu}u''\dot\phi
=-\frac{L^2}{\mu^2}u^2u''.
$$

The angular term is

$$
r\dot\phi^2
=\frac1u\left(\frac{L}{\mu}u^2\right)^2
=\frac{L^2}{\mu^2}u^3.
$$

Substitution in the radial equation, followed by multiplication by
$\mu/(L^2u^2)$, produces

$$
\frac{d^2u}{d\phi^2}+u=-\frac{\mu\kappa}{L^2}
=-\frac1p,
\qquad
p=\frac{L^2}{\mu\kappa}.
$$

The homogeneous solutions are $\cos\phi$ and $\sin\phi$, while
$-1/p$ is a particular solution. Combining the sine and cosine into one shifted cosine,

$$
u=\frac1p\left[e\cos(\phi-\phi_0)-1\right],
$$

and therefore

$$
\boxed{
r(\phi)=\frac{p}{e\cos(\phi-\phi_0)-1}.
}
$$

The energy relation follows directly from

$$
\dot r=-\frac{L}{\mu}\frac{du}{d\phi},
\qquad
E=\frac{L^2}{2\mu}
\left[
\left(\frac{du}{d\phi}\right)^2+u^2
\right]+\kappa u.
$$

Write $\chi=\phi-\phi_0$. Since

$$
u=\frac{e\cos\chi-1}{p},
\qquad
u'=-\frac{e\sin\chi}{p},
$$

and $1/p=\mu\kappa/L^2$, the dimensionless numerator inside the energy is

$$
\begin{aligned}
&e^2\sin^2\chi+(e\cos\chi-1)^2
 +2(e\cos\chi-1)\\
&\hspace{3em}=e^2-1.
\end{aligned}
$$

Therefore

$$
E=\frac{\mu\kappa^2}{2L^2}(e^2-1).
$$

Thus

$$
e^2=1+\frac{2EL^2}{\mu\kappa^2}.
$$

With $L=\mu vb$, $2E=\mu v^2$, and

$$
a=\frac{\kappa}{2E},
$$

this becomes

$$
\boxed{
e=\sqrt{1+\frac{b^2}{a^2}},
\qquad
p=\frac{b^2}{a}.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/rutherford-trajectory.png' | relative_url }}" alt="Exact repulsive Coulomb hyperbola with consistent incoming and outgoing asymptotes, impact parameter, scattering angle, and periapsis" loading="lazy">
  <figcaption>The curve is generated from the displayed Coulomb orbit, not a schematic Bézier. Its asymptotes, impact parameter, deflection angle, and perpendicular periapsis tangent use the same \(a\) and \(b\).</figcaption>
</figure>

The denominator vanishes on the two asymptotes. Choose the incoming asymptote at $\phi=\pi$ and the outgoing one at $\phi=\theta$. Symmetry about the periapsis fixes

$$
\phi_0=\frac{\pi+\theta}{2}.
$$

At either asymptote,

$$
\frac1e
=\cos\frac{\pi-\theta}{2}
=\sin\frac{\theta}{2}.
$$

Combining $e^2=\csc^2(\theta/2)$ with
$e^2=1+b^2/a^2$,

$$
\cot^2\frac{\theta}{2}=\frac{b^2}{a^2},
$$

so the positive impact parameter is

$$
\boxed{
b=a\cot\frac{\theta}{2}
=\frac{\kappa}{2E}\cot\frac{\theta}{2}.
}
$$

At the periapsis $\phi=\phi_0$, $dr/d\phi=0$. Its distance from the nucleus is

$$
r_{\min}=\frac{p}{e-1}
=\frac{a(e^2-1)}{e-1}
=a(e+1),
$$

or

$$
\boxed{
r_{\min}=a+\sqrt{a^2+b^2}.
}
$$

For a head-on collision, $b=0$ and $r_{\min}=\kappa/E$.

## Rutherford differential cross section

Differentiate the deflection law:

$$
\frac{db}{d\theta}
=-\frac{a}{2}\csc^2\frac{\theta}{2}.
$$

Using
$\sin\theta=2\sin(\theta/2)\cos(\theta/2)$ in
$d\sigma/d\Omega=(b/\sin\theta)|db/d\theta|$,

$$
\begin{aligned}
\frac{d\sigma}{d\Omega}
&=\frac{
a\cot(\theta/2)
}{
2\sin(\theta/2)\cos(\theta/2)
}
\frac{a}{2}\csc^2\frac{\theta}{2}\\
&=\frac{a^2}{4}\csc^4\frac{\theta}{2}.
\end{aligned}
$$

Therefore

$$
\boxed{
\frac{d\sigma}{d\Omega}
=\left(\frac{\kappa}{4E}\right)^2
\csc^4\frac{\theta}{2}.
}
$$

The forward divergence makes the ideal Coulomb total cross section infinite. With a lower acceptance angle $\theta_{\min}$,

$$
\begin{aligned}
\sigma(\theta\geq\theta_{\min})
&=2\pi\int_{\theta_{\min}}^\pi
\frac{a^2}{4}\csc^4\frac{\theta}{2}
\sin\theta\,d\theta\\
&=2\pi a^2
\int_{\theta_{\min}/2}^{\pi/2}
\frac{\cos x}{\sin^3x}\,dx.
\end{aligned}
$$

Here $x=\theta/2$, and

$$
\int\frac{\cos x}{\sin^3x}\,dx
=-\frac{1}{2\sin^2x}.
$$

Evaluation at the limits produces

$$
\boxed{
\sigma(\theta\geq\theta_{\min})
=\pi a^2\cot^2\frac{\theta_{\min}}{2}.
}
$$

These formulas use $E=E_{\mathrm{cm}}$. For a target initially at rest,

$$
E_{\mathrm{cm}}
=\frac{m_2}{m_1+m_2}E_{\mathrm{lab}}.
$$

For a non-heavy target, the measured angle also requires

$$
\tan\theta_{\mathrm{lab}}
=\frac{\sin\theta_{\mathrm{cm}}}
{\cos\theta_{\mathrm{cm}}+m_1/m_2},
$$

and the laboratory cross section is obtained with the corresponding solid-angle Jacobian. The common heavy-nucleus approximation
$m_2\gg m_1$ makes both corrections small.

The orbit equation, asymptotes, periapsis, deflection law, and cross sections are verified in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/unit-2/alpha-particle-rutherford-scattering.mac' | relative_url }}).

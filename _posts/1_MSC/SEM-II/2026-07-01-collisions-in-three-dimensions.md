---
title: "Collisions in Three Dimensions"
summary: "Two-body collision kinematics, relative motion, impact parameter, scattering angle, and the geometrical meaning of a cross section."
date: 2026-07-01 09:00:00 +0530
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
  - collision-kinematics
  - impact-parameter
  - reduced-mass
permalink: /msc/sem-ii/collisions-in-three-dimensions/
hidden: true
---

Consider a projectile of mass $m_1$ and a target of mass $m_2$, with positions $\mathbf r_1$ and $\mathbf r_2$. If their interaction depends only on their separation,

$$
V=V\!\left(\lvert\mathbf r_1-\mathbf r_2\rvert\right),
$$

the translational motion of the pair can be separated from the collision itself.

## Centre-of-mass and relative motion

Define

$$
\mathbf R=\frac{m_1\mathbf r_1+m_2\mathbf r_2}{M},
\qquad
\mathbf r=\mathbf r_1-\mathbf r_2,
\qquad
M=m_1+m_2.
$$

The inverse transformation is

$$
\mathbf r_1=\mathbf R+\frac{m_2}{M}\mathbf r,
\qquad
\mathbf r_2=\mathbf R-\frac{m_1}{M}\mathbf r.
$$

Differentiating and substituting into the kinetic energy,

$$
\begin{aligned}
T
&=\frac12m_1\dot{\mathbf r}_1^{\,2}
 +\frac12m_2\dot{\mathbf r}_2^{\,2}\\
&=\frac12m_1
\left(\dot{\mathbf R}+\frac{m_2}{M}\dot{\mathbf r}\right)^2
 +\frac12m_2
\left(\dot{\mathbf R}-\frac{m_1}{M}\dot{\mathbf r}\right)^2.
\end{aligned}
$$

The two cross terms cancel. The coefficients of
$\dot{\mathbf R}^{\,2}$ and $\dot{\mathbf r}^{\,2}$ reduce to
$M$ and

$$
\mu=\frac{m_1m_2}{m_1+m_2},
$$

respectively. Therefore

$$
T=\frac12M\dot{\mathbf R}^{\,2}
 +\frac12\mu\dot{\mathbf r}^{\,2},
$$

and the Hamiltonian separates:

$$
\boxed{
H=\frac{P^2}{2M}
 +\left[\frac{p^2}{2\mu}+V(r)\right].
}
$$

Here $\mathbf P=M\dot{\mathbf R}$ is the conserved total momentum and
$\mathbf p=\mu\dot{\mathbf r}$ is the relative momentum. The bracketed term is the complete collision problem: one effective particle of mass $\mu$ scatters from $V(r)$.

## Three-dimensional collision geometry

Far from the interaction region, the incoming relative momentum
$\mathbf p_i$ defines the beam direction. The perpendicular displacement of its asymptote from the force centre is the impact-parameter vector $\mathbf b$. The outgoing asymptotic momentum $\mathbf p_f$ is described by a polar scattering angle $\theta$ and an azimuth $\phi$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-2/collision-geometry.png' | relative_url }}" alt="Kinematic collision geometry showing incident and outgoing asymptotic momenta, impact parameter, interaction region, and scattering plane" loading="lazy">
  <figcaption>This is an asymptotic kinematic construction, not a potential-specific orbit. The vectors \(\mathbf p_i\) and \(\mathbf b\) select the scattering plane for a central interaction.</figcaption>
</figure>

For a central potential,

$$
\dot{\mathbf L}
=\frac{d}{dt}(\mathbf r\times\mathbf p)
=\dot{\mathbf r}\times\mathbf p
 +\mathbf r\times\dot{\mathbf p}.
$$

Since $\mathbf p=\mu\dot{\mathbf r}$ and
$\dot{\mathbf p}=\mathbf F$,

$$
\dot{\mathbf L}
=\mu\dot{\mathbf r}\times\dot{\mathbf r}
 +\mathbf r\times\mathbf F=0,
$$

because $\mathbf F$ is parallel to $\mathbf r$. Hence each orbit remains in a plane perpendicular to the conserved $\mathbf L$. The experiment is nevertheless three-dimensional because different incident particles can emerge into different elements of solid angle.

In an elastic collision, the relative energy is conserved:

$$
\frac{p_i^2}{2\mu}
=\frac{p_f^2}{2\mu}.
$$

Thus $p_i=p_f=p$, and in quantum mechanics $p=\hbar k$. Only the momentum direction changes.

## Geometrical definition of cross section

Particles with impact parameters in $[b,b+db]$ and azimuths in
$[\varphi,\varphi+d\varphi]$ occupy the incident area

$$
d\sigma=b\,db\,d\varphi.
$$

If the incident flux is $\mathcal F$, the corresponding particle rate is

$$
d\dot N=\mathcal F\,d\sigma.
$$

For axial symmetry, integration over $\varphi$ produces

$$
d\dot N=\mathcal F\,2\pi b\,db.
$$

The same rate emerges between $\theta$ and $\theta+d\theta$, where

$$
d\Omega=2\pi\sin\theta\,d\theta.
$$

Equating it to
$\mathcal F(d\sigma/d\Omega)d\Omega$ and cancelling $\mathcal F$,

$$
\boxed{
\frac{d\sigma}{d\Omega}
=\frac{b}{\sin\theta}
\left\lvert\frac{db}{d\theta}\right\rvert.
}
$$

This form assumes one monotonic impact-parameter branch. If several
$b_i$ reach the same $\theta$, their incident annuli add:

$$
\boxed{
\frac{d\sigma}{d\Omega}
=\sum_i\frac{b_i}{\sin\theta}
\left\lvert\frac{db_i}{d\theta}\right\rvert.
}
$$

The differential cross section has dimensions of area per steradian. The dynamics enters through the deflection function; the geometrical relation itself is independent of the particular central potential.

The coordinate transformation, kinetic-energy separation, and cross-section identity are verified in the [Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/unit-2/collisions-in-three-dimensions.mac' | relative_url }}).

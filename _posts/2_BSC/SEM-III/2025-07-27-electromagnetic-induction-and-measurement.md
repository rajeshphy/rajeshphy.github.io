---
title: "Electromagnetic Induction and Magnetic Measurement"
summary: "Faraday-Lenz induction, self and mutual inductance, reciprocity, magnetic energy, displacement current, current-loop torque, and ballistic galvanometers."
date: 2025-07-27 09:00:00 +0530
categories:
  - bsc-iii
tags: [electricity-and-magnetism, electromagnetic-induction, inductance, displacement-current, ballistic-galvanometer]
permalink: /bsc/sem-iii/electromagnetic-induction-and-measurement/
hidden: true
---

Choose the positive direction around a loop by the right-hand rule from its oriented area. The magnetic flux is

$$
\Phi_B=\int_S\mathbf B\cdot\mathrm d\mathbf a.
$$

Faraday's law for a fixed loop is

$$
\boxed{\mathcal E=\oint_C\mathbf E\cdot\mathrm d\mathbf l
=-\frac{\mathrm d\Phi_B}{\mathrm dt}}.
$$

The minus sign is Lenz's law: the induced current produces a magnetic effect that opposes the change of flux, not the flux itself. For a coil of $N$ tightly coupled turns, the flux linkage is $\Lambda=N\Phi_B$, and

$$
\boxed{\mathcal E=-\frac{\mathrm d\Lambda}{\mathrm dt}}.
$$

For a fixed spanning surface, Stokes's theorem gives

$$
\int_S(\boldsymbol\nabla\times\mathbf E)\cdot\mathrm d\mathbf a
=-\int_S\frac{\partial\mathbf B}{\partial t}\cdot\mathrm d\mathbf a.
$$

Since this holds for every surface,

$$
\boxed{\boldsymbol\nabla\times\mathbf E
=-\frac{\partial\mathbf B}{\partial t}}.
$$

Unlike an electrostatic field, an induced electric field generally has nonzero circulation.

## Self-inductance

For a fixed circuit in a linear magnetic medium, its flux linkage is proportional to its current:

$$
\boxed{\Lambda=LI}.
$$

The constant $L$ is the self-inductance, measured in henrys:

$$
1\ \mathrm H=1\ \mathrm{Wb\,A^{-1}}=1\ \mathrm{V\,s\,A^{-1}}.
$$

If $L$ is constant,

$$
\boxed{\mathcal E_L=-L\frac{\mathrm dI}{\mathrm dt}}.
$$

The induced emf opposes an increase or decrease of the current that created the linkage.

## Mutual inductance and reciprocity

For two fixed coils in a linear reciprocal medium,

$$
\Lambda_1=L_1I_1+M_{12}I_2,
\qquad
\Lambda_2=M_{21}I_1+L_2I_2.
$$

Thus a changing $I_1$ produces

$$
\mathcal E_2=-M_{21}\frac{\mathrm dI_1}{\mathrm dt},
$$

and similarly with $1$ and $2$ interchanged.

Neglecting resistance while the currents are established quasistatically, the source work entering the magnetic field is

$$
\mathrm dW=I_1\,\mathrm d\Lambda_1+I_2\,\mathrm d\Lambda_2.
$$

Use

$$
\mathrm d\Lambda_1=L_1\,\mathrm dI_1+M_{12}\,\mathrm dI_2,
$$

$$
\mathrm d\Lambda_2=M_{21}\,\mathrm dI_1+L_2\,\mathrm dI_2.
$$

Then

$$
\mathrm dW
=\left(L_1I_1+M_{21}I_2\right)\mathrm dI_1
+\left(M_{12}I_1+L_2I_2\right)\mathrm dI_2.
$$

Because $W(I_1,I_2)$ is a state function, its mixed derivatives are equal:

$$
\frac{\partial}{\partial I_2}
\left(L_1I_1+M_{21}I_2\right)
=
\frac{\partial}{\partial I_1}
\left(M_{12}I_1+L_2I_2\right).
$$

Therefore

$$
\boxed{M_{12}=M_{21}\equiv M}.
$$

This is the reciprocity theorem. Integrating the exact differential from zero currents gives

$$
\boxed{
W=\frac12L_1I_1^2+MI_1I_2+\frac12L_2I_2^2}.
$$

## Energy stored in a magnetic field

For one inductor, the source must supply the opposing voltage $L\,\mathrm dI/\mathrm dt$. Its power is

$$
P=I L\frac{\mathrm dI}{\mathrm dt}.
$$

Hence

$$
W=\int_0^I LI'\,\mathrm dI'
=\boxed{\frac12LI^2}.
$$

For a long solenoid of length $\ell$, area $A$, turn density $n$, and linear permeability $\mu$,

$$
H=nI,\qquad B=\mu H,\qquad L=\mu n^2A\ell.
$$

Therefore

$$
\frac12LI^2
=\frac12\mu n^2I^2A\ell
=\frac12BH(A\ell).
$$

This identifies the magnetic energy density in a linear medium:

$$
\boxed{u_B=\frac12\mathbf B\cdot\mathbf H},
\qquad
\boxed{W=\frac12\int_V\mathbf B\cdot\mathbf H\,\mathrm d\tau}.
$$

In vacuum, $u_B=B^2/(2\mu_0)$.

## Charge conservation and displacement current

Local conservation of free charge is

$$
\boxed{\boldsymbol\nabla\cdot\mathbf J_f
+\frac{\partial\rho_f}{\partial t}=0}.
$$

The magnetostatic equation $\boldsymbol\nabla\times\mathbf H=\mathbf J_f$ cannot hold unchanged when charge accumulates, because the divergence of a curl is zero. Gauss's law in matter gives

$$
\rho_f=\boldsymbol\nabla\cdot\mathbf D.
$$

Differentiate it and use the continuity equation:

$$
\boldsymbol\nabla\cdot
\left(\mathbf J_f+\frac{\partial\mathbf D}{\partial t}\right)=0.
$$

Maxwell's correction is therefore

$$
\boxed{\boldsymbol\nabla\times\mathbf H
=\mathbf J_f+\frac{\partial\mathbf D}{\partial t}}.
$$

The displacement-current density is

$$
\boxed{\mathbf J_d=\frac{\partial\mathbf D}{\partial t}},
$$

with the same SI unit $\mathrm{A\,m^{-2}}$ as conduction-current density. Its integral form is

$$
\boxed{\oint_C\mathbf H\cdot\mathrm d\mathbf l
=I_{f,\mathrm{enc}}
+\frac{\mathrm d}{\mathrm dt}\int_S\mathbf D\cdot\mathrm d\mathbf a}.
$$

For a charging capacitor, $\int_S\mathbf D\cdot\mathrm d\mathbf a=Q_f$, so the displacement current between its plates is $\mathrm dQ_f/\mathrm dt$, equal to the wire current.

## Torque on a current loop

For a planar $N$-turn loop carrying current $I$, define

$$
\boldsymbol\mu=NI\mathbf A,
$$

where $\mathbf A=A\hat{\mathbf n}$ follows the current by the right-hand rule. Opposite sides of a rectangular loop in a uniform field experience equal and opposite forces $I\,\mathrm d\mathbf l\times\mathbf B$; their net force is zero but their moments form a couple. If $\theta$ is the angle between $\boldsymbol\mu$ and $\mathbf B$,

$$
\tau=NIAB\sin\theta.
$$

In vector form,

$$
\boxed{\boldsymbol\tau=\boldsymbol\mu\times\mathbf B}.
$$

Since $\tau_\theta=-\mathrm dU/\mathrm d\theta$,

$$
\frac{\mathrm dU}{\mathrm d\theta}=NIAB\sin\theta.
$$

Choosing $U=0$ at $\theta=\pi/2$,

$$
\boxed{U=-\boldsymbol\mu\cdot\mathbf B}.
$$

## Ballistic galvanometer

Let a moving coil have $N$ turns, area $A$, radial field $B$, moment of inertia $J$, torsion constant $\kappa$, and total damping coefficient $c$. Define its torque constant

$$
\boxed{G=NAB}.
$$

For small angular displacement,

$$
\boxed{J\ddot\theta+c\dot\theta+\kappa\theta=G\,i(t)}.
$$

### Current sensitivity

For steady current, $\dot\theta=\ddot\theta=0$. Thus

$$
\kappa\theta=GI
$$

and the current sensitivity is

$$
\boxed{S_I=\frac{\theta}{I}
=\frac{G}{\kappa}
=\frac{NAB}{\kappa}}.
$$

A small $\kappa$, large $NAB$, and a stable radial field increase current sensitivity.

### Charge sensitivity and first throw

Suppose a charge pulse

$$
q=\int i(t)\,\mathrm dt
$$

passes in a time $t_p$ much shorter than the galvanometer period. During the pulse, $\theta$ remains negligible, so the damping and restoring impulses may be neglected. Integrating the equation of motion across the pulse gives

$$
J\dot\theta(0^+)=Gq.
$$

Write

$$
\beta=\frac{c}{2J},\qquad
\omega_0=\sqrt{\frac{\kappa}{J}},\qquad
\omega_d=\sqrt{\omega_0^2-\beta^2}.
$$

For underdamping $(\beta<\omega_0)$, the subsequent free motion with $\theta(0)=0$ is

$$
\boxed{
\theta(t)=\frac{Gq}{J\omega_d}
e^{-\beta t}\sin\omega_dt}.
$$

At the first maximum $t_1$,

$$
\frac{\mathrm d\theta}{\mathrm dt}=0
\quad\Longrightarrow\quad
\tan(\omega_dt_1)=\frac{\omega_d}{\beta}.
$$

Let

$$
\eta=\frac{\beta}{\omega_d},
\qquad
\alpha=\tan^{-1}\!\left(\frac{1}{\eta}\right),
\qquad
t_1=\frac{\alpha}{\omega_d}.
$$

Because $\sin\alpha=\omega_d/\omega_0$, the observed first throw $\theta_1$ is

$$
\theta_1
=\frac{Gq}{J\omega_0}
e^{-\eta\alpha}.
$$

With $T_0=2\pi/\omega_0$ and $J\omega_0=\kappa T_0/(2\pi)$,

$$
\boxed{
q=\frac{\kappa T_0}{2\pi G}\,
\theta_1
\exp\!\left[
\eta\tan^{-1}\!\left(\frac1\eta\right)
\right]}.
$$

Therefore the exact charge sensitivity in the underdamped model is

$$
\boxed{
S_q=\frac{\theta_1}{q}
=\frac{2\pi G}{\kappa T_0}
\exp\!\left[
-\eta\tan^{-1}\!\left(\frac1\eta\right)
\right]}.
$$

In the negligible-damping limit,

$$
\boxed{q=\frac{\kappa T_0}{2\pi NAB}\theta_1},
\qquad
\boxed{S_q=\frac{2\pi NAB}{\kappa T_0}}.
$$

The ballistic condition is $t_p\ll T_d=2\pi/\omega_d$, and the motion must remain within the linear angular range.

### Electromagnetic damping

Motion of the coil generates the back emf

$$
e_b=G\dot\theta.
$$

If the total closed-circuit resistance is $R_t$, the induced current opposes the motion:

$$
i_b=-\frac{G}{R_t}\dot\theta.
$$

Its torque is

$$
\tau_{\mathrm{em}}=Gi_b
=-\frac{G^2}{R_t}\dot\theta.
$$

Thus

$$
\boxed{c_{\mathrm{em}}=\frac{G^2}{R_t}},
\qquad
c=c_{\mathrm{mechanical}}+c_{\mathrm{em}}.
$$

Lower circuit resistance produces stronger electromagnetic damping. Ballistic operation requires an underdamped coil; critical damping occurs at $c=2\sqrt{J\kappa}$.

### Logarithmic decrement and damping correction

Let $A_n$ and $A_{n+1}$ be successive maxima on the **same side**, separated by $T_d$. Since the envelope is $e^{-\beta t}$,

$$
\boxed{\delta_s=\ln\frac{A_n}{A_{n+1}}
=\beta T_d
=\frac{2\pi\beta}{\omega_d}
=2\pi\eta}.
$$

If successive absolute throws on alternating sides are used instead, their decrement is

$$
\boxed{\delta_a=\frac{\delta_s}{2}=\pi\eta}.
$$

For weak damping,

$$
\eta\tan^{-1}(1/\eta)
=\frac{\delta_s}{4}+O(\delta_s^2)
=\frac{\delta_a}{2}+O(\delta_a^2).
$$

Hence

$$
\boxed{
q\simeq\frac{\kappa T_0}{2\pi G}\theta_1
\left(1+\frac{\delta_s}{4}\right)}
$$

or, equivalently,

$$
\boxed{
q\simeq\frac{\kappa T_0}{2\pi G}\theta_1
\left(1+\frac{\delta_a}{2}\right)}.
$$

The factor is $1+\delta_s/4$, not $1+\delta_s/2$, when the logarithmic decrement is defined from same-side maxima.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable induction-and-torque diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-3/induction-torque.png' | relative_url }}" alt="Coupled-coil mutual-induction schematic and torque on a current loop in a uniform magnetic field" loading="lazy">
  </div>
  <figcaption>The coupled flux fixes the induced-emf sign, while the loop panel shows the angle used in $\boldsymbol\tau=\boldsymbol\mu\times\mathbf B$.</figcaption>
</figure>

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable ballistic-galvanometer diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-3/ballistic-galvanometer.png' | relative_url }}" alt="Moving-coil ballistic galvanometer, its governing relations, and equation-generated damped first-throw curve" loading="lazy">
  </div>
  <figcaption>The response is generated from $e^{-\beta t}\sin\omega_dt$; successive same-side maxima are separated by $T_d$ and determine $\delta_s$.</figcaption>
</figure>

The reciprocity, magnetic-energy, displacement-current, torque, exact damped-motion, first-throw, electromagnetic-damping, and decrement relations are verified with exact zero residuals in the [Unit III induction and galvanometer worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-3/unit-3/induction-galvanometer.mac' | relative_url }}).

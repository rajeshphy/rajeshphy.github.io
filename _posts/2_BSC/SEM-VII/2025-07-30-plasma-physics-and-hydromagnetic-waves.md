---
title: "Plasma Physics and Hydromagnetic Waves"
summary: "Kinetic moments, plasma oscillations, Debye shielding, magnetic confinement, magnetoplasma equations, and Alfvén and magnetosonic waves."
date: 2025-07-30 09:00:00 +0530
categories:
  - bsc-vii
tags: [mj-16, plasma-physics, debye-shielding, plasma-confinement, alfven-waves, magnetosonic-waves]
permalink: /bsc/sem-vii/plasma-physics-and-hydromagnetic-waves/
hidden: true
---

A plasma is an ionized many-particle medium in which collective electric and
magnetic forces are important. On scales much larger than its shielding
length it is approximately quasineutral,

$$
\sum_s q_sn_s\simeq0,
$$

although small charge separations produce plasma oscillations and shielding.

## Moments of the Boltzmann equation

For species $s$, let $f_s(\mathbf r,\mathbf v,t)$ be the number-density
distribution in phase space. Its kinetic equation is

$$
\frac{\partial f_s}{\partial t}
+\mathbf v\cdot\nabla f_s
+\frac{q_s}{m_s}(\mathbf E+\mathbf v\times\mathbf B)
\cdot\nabla_{\mathbf v}f_s=C_s[f].
$$

Define the density, mean velocity, pressure tensor, and heat flux by

$$
n_s=\int f_s\,d^3v,
\qquad
n_s\mathbf u_s=\int\mathbf v f_s\,d^3v,
$$

$$
\mathsf P_s=m_s\int
(\mathbf v-\mathbf u_s)(\mathbf v-\mathbf u_s)f_s\,d^3v,
$$

$$
\mathbf q_s=\frac{m_s}{2}\int
\lvert\mathbf v-\mathbf u_s\rvert^2(\mathbf v-\mathbf u_s)f_s\,d^3v.
$$

Assume $f_s$ decreases fast enough as $\lvert\mathbf v\rvert\to\infty$ that all
velocity-space surface terms vanish.

Integrating the kinetic equation over velocity gives

$$
\frac{\partial n_s}{\partial t}
+\nabla\cdot(n_s\mathbf u_s)
=\int C_s\,d^3v.
$$

Number-conserving collisions make the right side zero, so

$$
\boxed{
\partial_t n_s+\nabla\cdot(n_s\mathbf u_s)=0.
}
$$

For the first moment, multiply by $m_sv_i$ and integrate. The second velocity
moment separates as

$$
m_s\int v_iv_jf_s\,d^3v
=m_sn_su_{si}u_{sj}+P_{s,ij}.
$$

Integration by parts in velocity gives

$$
q_s\int v_i(\mathbf E+\mathbf v\times\mathbf B)_j
\frac{\partial f_s}{\partial v_j}\,d^3v
=-q_sn_s[\mathbf E+\mathbf u_s\times\mathbf B]_i.
$$

Moving this term to the right and using the continuity equation yields

$$
\boxed{
m_sn_s(\partial_t+\mathbf u_s\cdot\nabla)\mathbf u_s
=q_sn_s(\mathbf E+\mathbf u_s\times\mathbf B)
-\nabla\cdot\mathsf P_s+\mathbf R_s,
}
$$

where $\mathbf R_s=m_s\int\mathbf vC_s\,d^3v$ is collisional momentum
transfer.

Multiplication by $m_sv^2/2$ gives the energy moment. For isotropic pressure
$\mathsf P_s=p_s\mathsf I$ and internal-energy density
$\varepsilon_s=3p_s/2$,

$$
\boxed{
\partial_t\!\left(\frac12m_sn_su_s^2+\varepsilon_s\right)
+\nabla\cdot\!\left[
\left(\frac12m_sn_su_s^2+\varepsilon_s+p_s\right)\mathbf u_s
+\mathbf q_s\right]
=q_sn_s\mathbf E\cdot\mathbf u_s+Q_s.
}
$$

The magnetic force does no work because
$\mathbf u_s\cdot(\mathbf u_s\times\mathbf B)=0$.

## Plasma oscillation

Consider cold electrons of equilibrium density $n_0$ displaced by $\xi$
relative to stationary ions. The two exposed charge sheets produce

$$
E=\frac{en_0}{\epsilon_0}\xi
$$

directed from the ion sheet to the electron sheet. The electron force is
$-eE$, hence

$$
m_e\ddot\xi=-\frac{n_0e^2}{\epsilon_0}\xi.
$$

Therefore

$$
\boxed{
\ddot\xi+\omega_{pe}^2\xi=0,
\qquad
\omega_{pe}=\sqrt{\frac{n_0e^2}{m_e\epsilon_0}}.
}
$$

$\omega_{pe}$ is in radians per second. Ion motion was neglected because
$m_i\gg m_e$, and thermal pressure was neglected in this cold-plasma limit.

## Debye shielding

Place a test charge $Q$ at the origin in an electron plasma with fixed ion
background. Thermal equilibrium gives the electron density

$$
n_e=n_0\exp\!\left(\frac{e\phi}{k_BT_e}\right)
\simeq n_0\left(1+\frac{e\phi}{k_BT_e}\right),
$$

where the linearization requires $\lvert e\phi\rvert\ll k_BT_e$. Thus, away from the
test charge,

$$
\rho=e(n_i-n_e)\simeq-\frac{n_0e^2}{k_BT_e}\phi.
$$

Including the point source in Poisson's equation gives

$$
\nabla^2\phi-\frac{\phi}{\lambda_D^2}
=-\frac{Q}{\epsilon_0}\delta^3(\mathbf r),
\qquad
\boxed{\lambda_D=\sqrt{\frac{\epsilon_0k_BT_e}{n_0e^2}}}.
$$

For $r>0$, spherical symmetry gives

$$
\frac1{r^2}\frac d{dr}\left(r^2\frac{d\phi}{dr}\right)
-\frac{\phi}{\lambda_D^2}=0.
$$

Writing $u=r\phi$ reduces this to $u''-u/\lambda_D^2=0$. The boundary
condition $\phi\to0$ at infinity removes the growing exponential. Integrating
Poisson's equation over a vanishing sphere fixes
$-4\pi r^2\epsilon_0\phi'(r)\to Q$, so

$$
\boxed{
\phi(r)=\frac{Q}{4\pi\epsilon_0r}e^{-r/\lambda_D}.
}
$$

Shielding is collective when a Debye sphere contains many particles,
$N_D=(4\pi/3)n_0\lambda_D^3\gg1$.

## Magnetic confinement and magnetoplasma motion

For a uniform field $\mathbf B=B_0\hat{\mathbf z}$ and no electric field,

$$
m_s\dot{\mathbf v}=q_s\mathbf v\times\mathbf B
$$

gives

$$
\dot v_x=\Omega_sv_y,
\qquad
\dot v_y=-\Omega_sv_x,
\qquad
\dot v_z=0,
\qquad
\Omega_s=\frac{q_sB_0}{m_s}.
$$

Hence $v_x^2+v_y^2$ is constant and the orbit is circular with

$$
\boxed{
\omega_{cs}=\frac{\lvert q_s\rvert B_0}{m_s},
\qquad
r_{Ls}=\frac{v_\perp}{\omega_{cs}}.
}
$$

The sign of $q_s$ fixes the sense of rotation. A uniform magnetic field
confines perpendicular motion but not motion parallel to the field. In a
slowly varying field, $r_L\ll B/\lvert\nabla B\rvert$, the magnetic moment

$$
\mu_m=\frac{m_sv_\perp^2}{2B}
$$

is approximately conserved. With total kinetic energy also constant, a
particle entering a stronger field is reflected when its parallel velocity
reaches zero. If $B_0$ and pitch angle $\alpha_0$ are specified at entry and
$B_m$ at the mirror,

$$
\boxed{\sin^2\alpha_0\ge\frac{B_0}{B_m}}
$$

is the mirror-confinement condition.

## Fundamental magnetohydrodynamic equations

On scales long compared with kinetic lengths, a conducting plasma may be
described by mass density $\rho_m$, bulk velocity $\mathbf u$, pressure $p$,
and magnetic field $\mathbf B$. Ideal magnetohydrodynamics uses

$$
\partial_t\rho_m+\nabla\cdot(\rho_m\mathbf u)=0,
$$

$$
\rho_m(\partial_t+\mathbf u\cdot\nabla)\mathbf u
=-\nabla p+\frac1{\mu_0}(\nabla\times\mathbf B)\times\mathbf B,
$$

$$
\partial_t\mathbf B=\nabla\times(\mathbf u\times\mathbf B),
\qquad \nabla\cdot\mathbf B=0,
$$

$$
\mathbf E+\mathbf u\times\mathbf B=0,
\qquad
(\partial_t+\mathbf u\cdot\nabla)
\left(\frac{p}{\rho_m^{\Gamma}}\right)=0.
$$

These equations assume high conductivity, negligible displacement current,
and a fluid scale much larger than particle gyro-radii.

## Alfvén and magnetosonic waves

Linearize about a uniform static state
$(\rho_0,p_0,\mathbf u_0=0,\mathbf B_0)$ and take every perturbation
proportional to $e^{i(\mathbf k\cdot\mathbf r-\omega t)}$. Put

$$
v_A=\frac{B_0}{\sqrt{\mu_0\rho_0}},
\qquad
c_s=\sqrt{\frac{\Gamma p_0}{\rho_0}},
\qquad
\cos\theta=\frac{\mathbf k\cdot\mathbf B_0}{kB_0}.
$$

The linearized continuity and pressure equations give

$$
\rho_1=\frac{\rho_0}{\omega}\mathbf k\cdot\mathbf u_1,
\qquad
p_1=c_s^2\rho_1.
$$

The induction equation gives

$$
\mathbf B_1=-\frac1\omega
\mathbf k\times(\mathbf u_1\times\mathbf B_0)
=\frac1\omega
[\mathbf B_0(\mathbf k\cdot\mathbf u_1)
-\mathbf u_1(\mathbf k\cdot\mathbf B_0)].
$$

Choose $\mathbf B_0=B_0\hat{\mathbf z}$ and put $\mathbf k$ in the $xz$-
plane. The $y$ component decouples from compression. The linearized momentum
equation becomes

$$
(\omega^2-k^2v_A^2\cos^2\theta)u_y=0,
$$

so the shear Alfvén wave has

$$
\boxed{\omega^2=k^2v_A^2\cos^2\theta.}
$$

The coupled $x,z$ components are

$$
\begin{pmatrix}
\omega^2-k^2v_A^2-k^2c_s^2\sin^2\theta
&-k^2c_s^2\sin\theta\cos\theta\\
-k^2c_s^2\sin\theta\cos\theta
&\omega^2-k^2c_s^2\cos^2\theta
\end{pmatrix}
\begin{pmatrix}u_x\\u_z\end{pmatrix}=0.
$$

A nonzero displacement requires the determinant to vanish:

$$
\boxed{
\omega^4-k^2(v_A^2+c_s^2)\omega^2
+k^4v_A^2c_s^2\cos^2\theta=0.
}
$$

The fast and slow magnetosonic phase speeds are therefore

$$
\boxed{
v_{f,s}^2=\frac12\left[
v_A^2+c_s^2
\pm\sqrt{(v_A^2+c_s^2)^2-4v_A^2c_s^2\cos^2\theta}
\right].
}
$$

For propagation parallel to $\mathbf B_0$, the two compressive speeds reduce
to $v_A$ and $c_s$, while the shear Alfvén speed is $v_A$. For perpendicular
propagation, the fast speed is $\sqrt{v_A^2+c_s^2}$; both the slow and shear
Alfvén frequencies vanish in ideal MHD.

<figure class="diagram-figure">
  <div class="diagram-pan">
  <img src="{{ '/assets/images/bsc/sem-vii/mj-16/unit-3/mhd-wave-speeds.png' | relative_url }}" alt="Equation-generated angular phase speeds of fast and slow magnetosonic waves and the shear Alfven wave" loading="lazy">
  </div>
  <figcaption>The plotted branches use \(c_s=0.6v_A\) and the exact dispersion relations above, from parallel to perpendicular propagation.</figcaption>
</figure>

The plasma-frequency relation, shielding equation, gyro-speed conservation,
mirror condition, and MHD dispersion determinant are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-vii/mj-16/unit-3/plasma-hydromagnetic-waves.mac' | relative_url }}); every printed residual is zero.

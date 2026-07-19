---
title: "Three-Dimensional Lattice Dynamics"
summary: "Force-constant and dynamical matrices, acoustic sum rule, polarization vectors, long-wavelength elasticity, and cubic-crystal examples."
date: 2026-05-14 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - lattice-dynamics
  - dynamical-matrix
  - acoustic-sum-rule
  - phonon-polarization
  - elastic-waves
  - cubic-crystals
permalink: /msc/sem-iv/three-dimensional-lattice-dynamics/
hidden: true
---

Three-dimensional lattice dynamics differs from a one-dimensional chain in two essential respects. Each atom has three displacement components, and a primitive cell may contain several atoms. At every wavevector the normal-mode problem is therefore a matrix eigenvalue problem whose eigenvalues are squared phonon frequencies and whose eigenvectors specify the atomic polarization pattern.

## Harmonic equations of motion

Let the equilibrium position of atom $\kappa$ in cell $l$ be

$$
\mathbf r_{l\kappa}^{\,0}
=\mathbf R_l+\boldsymbol\tau_\kappa,
$$

where $\mathbf R_l$ is a Bravais-lattice vector and $\boldsymbol\tau_\kappa$ is a basis vector. If $u_{l\kappa\alpha}$ is the Cartesian displacement, the potential energy through second order is

$$
U=U_0+\frac12
\sum_{l\kappa\alpha}
\sum_{l'\kappa'\beta}
u_{l\kappa\alpha}
\Phi_{l\kappa\alpha,l'\kappa'\beta}
u_{l'\kappa'\beta}.
$$

The force constants are

$$
\Phi_{l\kappa\alpha,l'\kappa'\beta}
=
\left.
\frac{\partial^2U}
{\partial u_{l\kappa\alpha}
 \partial u_{l'\kappa'\beta}}
\right\rvert_{\mathrm{eq}}.
$$

Equality of mixed derivatives gives

$$
\Phi_{l\kappa\alpha,l'\kappa'\beta}
=\Phi_{l'\kappa'\beta,l\kappa\alpha}.
$$

Crystal translational symmetry implies that the force constants depend on cell differences:

$$
\Phi_{l\kappa\alpha,l'\kappa'\beta}
=\Phi_{0\kappa\alpha,(l'-l)\kappa'\beta}.
$$

Newton's equations are

$$
M_\kappa\ddot u_{l\kappa\alpha}
=-\sum_{l'\kappa'\beta}
\Phi_{l\kappa\alpha,l'\kappa'\beta}
u_{l'\kappa'\beta}.
$$

## Bloch form and the dynamical matrix

Use the mass-weighted Bloch trial solution

$$
u_{l\kappa\alpha}(t)
=\frac{1}{\sqrt{M_\kappa}}
e_{\kappa\alpha}(\mathbf q,s)
e^{i(\mathbf q\cdot\mathbf R_l-\omega t)}.
$$

Substitution gives

$$
\sum_{\kappa'\beta}
D_{\kappa\alpha,\kappa'\beta}(\mathbf q)
e_{\kappa'\beta}(\mathbf q,s)
=\omega_{\mathbf q s}^{\,2}
e_{\kappa\alpha}(\mathbf q,s),
$$

with

$$
\boxed{
D_{\kappa\alpha,\kappa'\beta}(\mathbf q)
=\frac{1}{\sqrt{M_\kappa M_{\kappa'}}}
\sum_{l'}
\Phi_{0\kappa\alpha,l'\kappa'\beta}
e^{i\mathbf q\cdot(\mathbf R_{l'}-\mathbf R_0)}.
}
$$

The phase convention may instead include the basis-vector difference
$\boldsymbol\tau_{\kappa'}-\boldsymbol\tau_\kappa$ in the exponential. This changes the phases assigned to polarization vectors but not the phonon frequencies or physical displacements.

For conservative forces,

$$
D^\dagger(\mathbf q)=D(\mathbf q),
$$

so $\omega_{\mathbf q s}^{\,2}$ is real and eigenvectors belonging to distinct eigenvalues are orthogonal. A stable harmonic crystal requires every eigenvalue to be non-negative. A negative eigenvalue is conventionally reported as an imaginary phonon frequency and signals instability of the assumed structure.

For $r$ atoms in a primitive cell, $D(\mathbf q)$ has dimension $3r$. Hence there are $3r$ branches: three acoustic branches and, when $r>1$, $3r-3$ optical branches.

## Polarization vectors

The mass-weighted eigenvectors can be normalized by

$$
\sum_{\kappa\alpha}
e_{\kappa\alpha}^{*}(\mathbf q,s)
e_{\kappa\alpha}(\mathbf q,s')
=\delta_{ss'}.
$$

Completeness at fixed $\mathbf q$ gives

$$
\sum_s
e_{\kappa\alpha}(\mathbf q,s)
e_{\kappa'\beta}^{*}(\mathbf q,s)
=\delta_{\kappa\kappa'}\delta_{\alpha\beta}.
$$

For a monatomic isotropic medium, a mode is called longitudinal when

$$
\mathbf e(\mathbf q,s)\parallel\mathbf q,
$$

and transverse when

$$
\mathbf e(\mathbf q,s)\perp\mathbf q.
$$

In a general anisotropic crystal away from symmetry directions, polarization need not be exactly parallel or perpendicular to $\mathbf q$. The modes are then described as quasi-longitudinal and quasi-transverse. Their group velocity

$$
\mathbf v_g=\nabla_{\mathbf q}\omega_{\mathbf q s}
$$

need not be parallel to $\mathbf q$, so the direction of energy transport can differ from the direction normal to the wavefront.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-1/three-dimensional-phonons.png' | relative_url }}" alt="Wavevector with longitudinal and two mutually perpendicular transverse polarizations, and the Hermitian dynamical-matrix eigenproblem">
  <figcaption>A three-dimensional monatomic crystal has one longitudinal and two transverse acoustic polarizations in the isotropic limit. The Hermitian dynamical matrix gives real $\omega^2$; dynamical stability additionally requires every eigenvalue to be non-negative.</figcaption>
</figure>

## Acoustic sum rule

A uniform displacement of the entire crystal cannot change its energy. Put

$$
u_{l'\kappa'\beta}=c_\beta
$$

for every $l'$ and $\kappa'$. The force on each coordinate must vanish, which requires

$$
\boxed{
\sum_{l'\kappa'}
\Phi_{0\kappa\alpha,l'\kappa'\beta}=0
}
$$

for every $\kappa,\alpha,\beta$. This is the **acoustic sum rule**.

At $\mathbf q=0$, the three rigid translations have polarization vectors

$$
e_{\kappa\alpha}^{(\lambda)}(0)
=\sqrt{\frac{M_\kappa}{M_{\mathrm{cell}}}}\,
\xi_\alpha^{(\lambda)},
$$

where

$$
M_{\mathrm{cell}}=\sum_\kappa M_\kappa
$$

and the three unit vectors $\boldsymbol\xi^{(\lambda)}$ span ordinary space. The factor $\sqrt{M_\kappa}$ ensures that the physical displacement
$e_{\kappa\alpha}/\sqrt{M_\kappa}$ is the same for every atom. The sum rule then gives

$$
\boxed{\omega_{\mathbf 0,\lambda}=0,
\qquad \lambda=1,2,3.}
$$

Close to the zone centre, stable acoustic branches are normally linear:

$$
\omega_{\mathbf q\lambda}
=v_\lambda(\widehat{\mathbf q})q+O(q^2).
$$

Numerically fitted or first-principles force constants that violate the acoustic sum rule produce spurious non-zero acoustic frequencies at $\Gamma$. Enforcing the rule restores invariance under rigid translation.

## Long-wavelength elastic limit

For wavelengths much larger than the lattice spacing, discrete displacements become a continuum field $u_i(\mathbf r,t)$. The elastic energy density is

$$
\mathcal U
=\frac12 C_{ijkl}\epsilon_{ij}\epsilon_{kl},
\qquad
\epsilon_{ij}
=\frac12\left(
\frac{\partial u_i}{\partial x_j}
+\frac{\partial u_j}{\partial x_i}
\right),
$$

where $C_{ijkl}$ is the elastic-stiffness tensor. The equation of motion in a homogeneous crystal is

$$
\rho\ddot u_i=C_{ijkl}
\frac{\partial^2u_k}{\partial x_j\partial x_l}.
$$

For

$$
\mathbf u=\mathbf e\,
e^{i(\mathbf q\cdot\mathbf r-\omega t)},
\qquad
\mathbf q=q\mathbf n,
$$

one obtains the Christoffel equation

$$
\boxed{
\Gamma_{ik}(\mathbf n)e_k
=\rho v^2 e_i,
\qquad
\Gamma_{ik}=C_{ijkl}n_jn_l,
\qquad
v=\frac{\omega}{q}.
}
$$

The three eigenvalues of the Christoffel matrix are $\rho v_\lambda^2$. This continuum eigenproblem is the leading small-$q$ form of the acoustic part of the microscopic dynamical matrix.

For an isotropic solid with Lamé coefficients $\lambda$ and $\mu$,

$$
v_L=\sqrt{\frac{\lambda+2\mu}{\rho}},
\qquad
v_T=\sqrt{\frac{\mu}{\rho}},
$$

and the transverse speed is doubly degenerate.

## Sound velocities in a cubic crystal

A cubic crystal has three independent elastic constants $C_{11}$, $C_{12}$ and $C_{44}$. Along $[100]$,

$$
\boxed{
v_L[100]=\sqrt{\frac{C_{11}}{\rho}},
\qquad
v_{T1}[100]=v_{T2}[100]
=\sqrt{\frac{C_{44}}{\rho}}.
}
$$

Along $[110]$, the three polarizations can be chosen along
$[110]$, $[1\bar10]$ and $[001]$. Their speeds are

$$
\boxed{
v_L[110]
=\sqrt{\frac{C_{11}+C_{12}+2C_{44}}{2\rho}},
}
$$

$$
\boxed{
v_{T,[1\bar10]}[110]
=\sqrt{\frac{C_{11}-C_{12}}{2\rho}},
\qquad
v_{T,[001]}[110]
=\sqrt{\frac{C_{44}}{\rho}}.
}
$$

Along $[111]$,

$$
v_L[111]
=\sqrt{\frac{C_{11}+2C_{12}+4C_{44}}{3\rho}},
$$

$$
v_T[111]
=\sqrt{\frac{C_{11}-C_{12}+C_{44}}{3\rho}},
$$

where the transverse mode is doubly degenerate. Mechanical stability of a cubic crystal requires

$$
C_{44}>0,\qquad
C_{11}-C_{12}>0,\qquad
C_{11}+2C_{12}>0.
$$

## Example: a monatomic simple-cubic lattice

Take one atom of mass $M$ at each site of a simple-cubic lattice of constant $a$. For each bond parallel to a Cartesian unit vector $\widehat{\boldsymbol\delta}$, use the harmonic bond energy

$$
U_{\mathrm{bond}}
=\frac12K_L
\left(\Delta\mathbf u\cdot
\widehat{\boldsymbol\delta}\right)^2
+\frac12K_T
\left[
\Delta\mathbf u^{\,2}
-\left(\Delta\mathbf u\cdot
\widehat{\boldsymbol\delta}\right)^2
\right].
$$

$K_L$ and $K_T$ are effective longitudinal and transverse bond force constants. Summing over the six nearest neighbours gives a diagonal dynamical matrix:

$$
D_{xx}(\mathbf q)
=\frac4M\left[
K_L\sin^2\frac{q_xa}{2}
+K_T\sin^2\frac{q_ya}{2}
+K_T\sin^2\frac{q_za}{2}
\right],
$$

with $D_{yy}$ and $D_{zz}$ obtained by cyclic permutation, and
$D_{\alpha\beta}=0$ for $\alpha\ne\beta$. Therefore

$$
\omega_x^2(\mathbf q)=D_{xx}(\mathbf q),
\qquad
\omega_y^2(\mathbf q)=D_{yy}(\mathbf q),
\qquad
\omega_z^2(\mathbf q)=D_{zz}(\mathbf q).
$$

At $\mathbf q=0$, every matrix element vanishes, explicitly demonstrating the acoustic sum rule. Along $\mathbf q=(q,0,0)$,

$$
\omega_L(q)
=2\sqrt{\frac{K_L}{M}}
\left\lvert\sin\frac{qa}{2}\right\rvert,
$$

$$
\omega_T(q)
=2\sqrt{\frac{K_T}{M}}
\left\lvert\sin\frac{qa}{2}\right\rvert,
$$

with two degenerate transverse modes. For $qa\ll1$,

$$
v_L=a\sqrt{\frac{K_L}{M}},
\qquad
v_T=a\sqrt{\frac{K_T}{M}}.
$$

If a pure central nearest-neighbour spring is used at an unstressed equilibrium separation, then $K_T=0$. The model consequently predicts zero-frequency shear modes along $[100]$. This is not a general property of cubic crystals; it shows that such a restricted force model lacks shear rigidity and must be supplemented by angular, further-neighbour or effective transverse forces.

## Worked elastic example

Take a cubic solid with

$$
\rho=2330\,\mathrm{kg\,m^{-3}},\quad
C_{11}=165.7\,\mathrm{GPa},\quad
C_{12}=63.9\,\mathrm{GPa},\quad
C_{44}=79.6\,\mathrm{GPa}.
$$

Along $[100]$,

$$
v_L=8.43\,\mathrm{km\,s^{-1}},
\qquad
v_T=5.85\,\mathrm{km\,s^{-1}}.
$$

Along $[110]$,

$$
v_L=9.13\,\mathrm{km\,s^{-1}},
$$

$$
v_{T,[1\bar10]}=4.67\,\mathrm{km\,s^{-1}},
\qquad
v_{T,[001]}=5.85\,\mathrm{km\,s^{-1}}.
$$

The splitting of the transverse speeds along $[110]$ is an elastic manifestation of cubic anisotropy. The three stability combinations are

$$
C_{44}=79.6\,\mathrm{GPa}>0,
$$

$$
C_{11}-C_{12}=101.8\,\mathrm{GPa}>0,
\qquad
C_{11}+2C_{12}=293.5\,\mathrm{GPa}>0.
$$

## Preparation questions

1. Derive the $3r\times3r$ dynamical-matrix eigenvalue equation for a crystal containing $r$ atoms per primitive cell.
2. Prove that the dynamical matrix is Hermitian and state the consequences for its eigenvalues and polarization vectors.
3. Derive the acoustic sum rule from invariance under a uniform translation and obtain the three zero-frequency eigenvectors at $\mathbf q=0$.
4. Starting from continuum elasticity, derive the Christoffel equation for sound propagation in an anisotropic solid.
5. Obtain the longitudinal and transverse sound velocities along $[100]$, $[110]$ and $[111]$ in a cubic crystal.
6. Construct the dynamical matrix of the nearest-neighbour simple-cubic model with longitudinal and transverse bond constants and derive its branches along $[100]$.
7. Why does a central nearest-neighbour simple-cubic model with $K_T=0$ fail to resist some shear deformations?
8. Explain why the group velocity and wavevector need not be parallel in an anisotropic crystal.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-1/three-dimensional-lattice-dynamics.mac' | relative_url }})

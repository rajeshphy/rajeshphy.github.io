---
title: "Electric Flux, Gauss's Law, and Electrostatic Field Equations"
summary: "Electric flux, integral and differential Gauss laws, symmetric applications, electrostatic potential, Poisson and Laplace equations, and uniqueness."
date: 2025-05-26 09:00:00 +0530
categories:
  - bsc-iii
tags: [electricity-and-magnetism, electrostatics, gauss-law, poisson-equation, laplace-equation]
permalink: /bsc/sem-iii/electric-flux-gauss-law-field-equations/
hidden: true
---

Electric flux measures the component of an electric field that crosses an oriented surface. For

$$
\mathrm d\mathbf a=\hat{\mathbf n}\,\mathrm da,
$$

the flux element and total flux are

$$
\mathrm d\Phi_E=\mathbf E\cdot\mathrm d\mathbf a,
\qquad
\Phi_E=\int_S\mathbf E\cdot\mathrm d\mathbf a.
$$

In SI, $\mathbf E$ is measured in $\mathrm{N\,C^{-1}}$ and $\Phi_E$ in $\mathrm{N\,m^2\,C^{-1}}$.

## Gauss's law

For a point charge $q$, Coulomb's law gives

$$
\mathbf E(\mathbf r)=\frac{q}{4\pi\epsilon_0r^2}\hat{\mathbf r}.
$$

At the charge, a surface element $\mathrm d\mathbf a$ subtends the signed solid angle

$$
\mathrm d\Omega
=\frac{\hat{\mathbf r}\cdot\mathrm d\mathbf a}{r^2}.
$$

Therefore

$$
\mathbf E\cdot\mathrm d\mathbf a
=\frac{q}{4\pi\epsilon_0}\,\mathrm d\Omega.
$$

A closed surface enclosing the charge subtends $4\pi$; one not enclosing it subtends zero net solid angle. Superposition over all charges, followed by the continuum limit, gives the integral law

$$
\boxed{\oint_S\mathbf E\cdot\mathrm d\mathbf a
=\frac{Q_{\mathrm{enc}}}{\epsilon_0}},
\qquad
Q_{\mathrm{enc}}=\int_V\rho\,\mathrm d\tau .
$$

Apply the divergence theorem:

$$
\oint_S\mathbf E\cdot\mathrm d\mathbf a
=\int_V\boldsymbol\nabla\cdot\mathbf E\,\mathrm d\tau
=\frac{1}{\epsilon_0}\int_V\rho\,\mathrm d\tau .
$$

Because the last equality holds for every volume,

$$
\boxed{\boldsymbol\nabla\cdot\mathbf E=\frac{\rho}{\epsilon_0}}.
$$

The integral form relates a field to enclosed charge; the differential form is the corresponding local statement.

<figure class="diagram-figure">
  <div class="diagram-pan" role="region" aria-label="Scrollable Gauss-law diagram" tabindex="0">
    <img src="{{ '/assets/images/bsc/sem-iii/mj-3/unit-1/gauss-law-surfaces.png' | relative_url }}" alt="Gaussian cylinder, pillbox, and sphere adapted to line, sheet, and spherical charge distributions" loading="lazy">
  </div>
  <figcaption>Useful Gaussian surfaces follow the symmetry: cylinder for a line, pillbox for a sheet, and concentric sphere for spherical charge.</figcaption>
</figure>

## Symmetric applications

### Infinite line charge

For line density $\lambda$, choose a coaxial cylinder of radius $s$ and length $\ell$. Cylindrical symmetry makes $\mathbf E=E(s)\hat{\mathbf s}$. The end-cap flux is zero and the curved-area flux is $E(2\pi s\ell)$. Thus

$$
E(2\pi s\ell)=\frac{\lambda\ell}{\epsilon_0}
\quad\Longrightarrow\quad
\boxed{\mathbf E=\frac{\lambda}{2\pi\epsilon_0s}\hat{\mathbf s}}.
$$

### Infinite plane sheet

For surface density $\sigma$, reflection symmetry makes the fields on the two sides equal in magnitude and opposite in direction. A pillbox of face area $A$ gives

$$
2EA=\frac{\sigma A}{\epsilon_0}
\quad\Longrightarrow\quad
\boxed{\mathbf E_{\pm}=\pm\frac{\sigma}{2\epsilon_0}\hat{\mathbf n}},
$$

where $\hat{\mathbf n}$ points from the sheet toward the $+$ side.

### Uniformly charged solid sphere

Let the sphere have radius $R$ and constant volume density $\rho$. A concentric Gaussian sphere of radius $r$ gives

$$
E(r)\,4\pi r^2
=\frac{1}{\epsilon_0}
\begin{cases}
\rho\,4\pi r^3/3,&r<R,\\[2pt]
\rho\,4\pi R^3/3,&r\ge R.
\end{cases}
$$

Hence

$$
\boxed{\mathbf E(r)=
\begin{cases}
\dfrac{\rho r}{3\epsilon_0}\hat{\mathbf r},&r<R,\\[6pt]
\dfrac{\rho R^3}{3\epsilon_0r^2}\hat{\mathbf r},&r\ge R.
\end{cases}}
$$

The two expressions agree at $r=R$, as they must because there is no separate surface charge there.

## Conservative electrostatic field and potential

For stationary charges, Coulomb forces are conservative:

$$
\oint_C\mathbf E\cdot\mathrm d\mathbf l=0.
$$

Stokes's theorem then gives

$$
\int_S(\boldsymbol\nabla\times\mathbf E)\cdot\mathrm d\mathbf a=0
\quad\Longrightarrow\quad
\boxed{\boldsymbol\nabla\times\mathbf E=0}.
$$

Thus a single-valued scalar potential exists:

$$
V(B)-V(A)=-\int_A^B\mathbf E\cdot\mathrm d\mathbf l,
\qquad
\boxed{\mathbf E=-\boldsymbol\nabla V}.
$$

Substitution into the differential Gauss law yields

$$
-\nabla^2V=\frac{\rho}{\epsilon_0},
\qquad
\boxed{\nabla^2V=-\frac{\rho}{\epsilon_0}}
$$

(Poisson's equation). In a charge-free region,

$$
\boxed{\nabla^2V=0}
$$

(Laplace's equation). Charge may still lie outside that region or on its boundary.

## Uniqueness theorem

Suppose $V_1$ and $V_2$ satisfy the same Poisson equation in a volume and the same prescribed potential on its boundary. Their difference $U=V_1-V_2$ satisfies

$$
\nabla^2U=0,
\qquad
\left.U\right\rvert_S=0.
$$

Green's first identity gives

$$
\int_V\lvert\boldsymbol\nabla U\rvert^2\,\mathrm d\tau
=\oint_S U\frac{\partial U}{\partial n}\,\mathrm da
-\int_VU\nabla^2U\,\mathrm d\tau=0.
$$

Both terms on the right vanish. Since the integrand on the left is non-negative, $\boldsymbol\nabla U=0$, so $U$ is constant. Its boundary value makes that constant zero. Therefore

$$
\boxed{V_1=V_2}.
$$

This Dirichlet theorem is why a correctly constructed image-charge potential is the physical solution. If instead the normal derivative is specified everywhere, the electric field is unique and the potential is unique up to an additive constant, provided the total-flux compatibility condition is satisfied.

## Solved Problems

### 1. Field of a uniformly charged thick spherical shell

A nonconducting shell occupies $a<r<b$ and carries uniform volume charge density $\rho$. Find $\mathbf E$ everywhere.

**Solution.** Spherical symmetry gives $\mathbf E=E(r)\hat{\mathbf r}$. Gauss's law on a sphere of radius $r$ is

$$
E(r)4\pi r^2=\frac{Q_{\mathrm{enc}}(r)}{\epsilon_0}.
$$

For $r<a$, no charge is enclosed, so $E=0$. For $a<r<b$,

$$
Q_{\mathrm{enc}}=\rho\frac{4\pi}{3}(r^3-a^3),
$$

while for $r>b$ the enclosed charge is $\rho 4\pi(b^3-a^3)/3$. Therefore

$$
\boxed{\mathbf E(r)=
\begin{cases}
0,&r<a,\\[3pt]
\dfrac{\rho(r^3-a^3)}{3\epsilon_0r^2}\hat{\mathbf r},&a<r<b,\\[7pt]
\dfrac{\rho(b^3-a^3)}{3\epsilon_0r^2}\hat{\mathbf r},&r>b.
\end{cases}}
$$

The inner and middle fields agree at $r=a$, and the middle and outer fields agree at $r=b$; no separate surface charge was specified.

### 2. Spherical solution of Laplace's equation between two equipotentials

Concentric spherical surfaces $r=a$ and $r=b$ are held at $V_a$ and $V_b$, with no charge between them. Find $V(r)$ for $a<r<b$.

**Solution.** Spherical symmetry reduces Laplace's equation to

$$
\frac{1}{r^2}\frac{\mathrm d}{\mathrm dr}
\left(r^2\frac{\mathrm dV}{\mathrm dr}\right)=0.
$$

Integrating twice gives $V=A+B/r$. The two boundary equations are

$$
V_a=A+\frac{B}{a},\qquad V_b=A+\frac{B}{b}.
$$

Solving them,

$$
A=\frac{bV_b-aV_a}{b-a},\qquad
B=\frac{ab(V_a-V_b)}{b-a}.
$$

Hence

$$
\boxed{V(r)=\frac{bV_b-aV_a}{b-a}
+\frac{ab(V_a-V_b)}{(b-a)r}}.
$$

Direct substitution gives $V(a)=V_a$, $V(b)=V_b$, and $\nabla^2V=0$ throughout the annulus.

## Descriptive Questions

1. Why does zero net flux through a closed surface not imply that the electric field vanishes at every point on it?
2. What symmetry conditions are required before Gauss's law can determine an electric field directly?
3. How does the conservative nature of an electrostatic field lead to a scalar potential?
4. What boundary data are required by the Dirichlet uniqueness theorem?

## Numerical Problems

### 1. Infinite line charge

An infinite line carries $\lambda=3.00\,\mathrm{nC\,m^{-1}}$. Find the field at perpendicular distance $s=0.200\,\mathrm m$.

**Answer:** $E=2.70\times10^2\,\mathrm{N\,C^{-1}}$, directed radially outward.

### 2. Infinite plane sheet

Find the field on either side of an infinite sheet with $\sigma=6.00\,\mathrm{nC\,m^{-2}}$.

**Answer:** $E=3.39\times10^2\,\mathrm{N\,C^{-1}}$, normal to the sheet.

### 3. Uniformly charged solid sphere

A solid sphere has $\rho=4.00\,\mathrm{\mu C\,m^{-3}}$. Find the field at $r=2.00\,\mathrm{cm}$, where $r$ lies inside the sphere.

**Answer:** $E=3.01\times10^3\,\mathrm{N\,C^{-1}}$, radially outward.

The symbolic solutions and all printed numerical answers are verified in the [Unit I field-equations worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-3/unit-1/gauss-field-equations.mac' | relative_url }}).

## References

1. [Gauss's law: Wikipedia](https://en.wikipedia.org/wiki/Gauss%27s_law)
2. David J. Griffiths, *Introduction to Electrodynamics*, 4th ed., Cambridge University Press, 2017.
3. Edward M. Purcell and David J. Morin, *Electricity and Magnetism*, 3rd ed., Cambridge University Press, 2013.
4. John R. Reitz, Frederick J. Milford, and Robert W. Christy, *Foundations of Electromagnetic Theory*, 4th ed., Addison-Wesley, 1993.

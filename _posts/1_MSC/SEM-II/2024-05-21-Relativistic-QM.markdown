---
title: "Relativistic Quantum Mechanics"
summary: "Klein-Gordon and Dirac equations, relativistic probability current, spin, magnetic moment, and negative-energy states."
date: 2024-05-21 18:47:26 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - klein-gordon-equation
  - dirac-equation
permalink: /msc/sem-ii/relativistic-quantum-mechanics/
hidden: true
---

Below is the outline of the lecture on Relativistic Quantum Mechanics, covering the Klein–Gordon equation, Dirac equation, probabilities and current densities, magnetic moment and spin of the electron, and free particle solutions of the Dirac equation.

# Outline

```
Relativistic QM: Klein – Gordon equation and its merit and demerit, Dirac equation,
probabilities and current densities, Magnetic moment and spin of electron, free particle
solution of Dirac equation and interpretation of negative energy states. 15 Lectures  
```

# The Klein–Gordon Equation

The Klein–Gordon equation is a relativistic wave equation for spin-zero particles. It is given by:

$$ \left( \Box + \frac{m^2 c^2}{\hbar^2} \right) \psi = 0 $$

where:

- $$\Box $$ (the d'Alembertian operator) is defined as:
  $$
  \Box = \nabla^2 - \frac{1}{c^2} \frac{\partial^2}{\partial t^2}
  $$

- $$ \nabla^2 $$ is the Laplace operator, which in three spatial dimensions is:
  
  $$\nabla^2 = \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} + \frac{\partial^2}{\partial z^2} $$

- $$ m $$ is the mass of the particle.
- $$ c $$ is the speed of light.
- $$ \hbar $$ (h-bar) is the reduced Planck constant:
  
  $$\hbar = \frac{h}{2\pi}$$
  where $$ h $$ is the Planck constant.
- $$ \psi $$ is the wave function of the particle.

## Derivation and Background

The Klein–Gordon equation arises from the relativistic energy-momentum relation:

$$
E^2 = p^2 c^2 + m^2 c^2
$$

By substituting the quantum mechanical operators for energy $$ E $$ and momentum $$ p $$:

$$
E \rightarrow i\hbar \frac{\partial}{\partial t}, \quad \mathbf{p} \rightarrow -i\hbar \nabla
$$

into the energy-momentum relation, we get:

$$
\left( i\hbar \frac{\partial}{\partial t} \right)^2 = \left( -i\hbar \nabla \right)^2 c^2 + m^2 c^4
$$

Simplifying this yields:

$$
-\hbar^2 \frac{\partial^2}{\partial t^2} = -\hbar^2 c^2 \nabla^2 + m^2 c^4
$$

Dividing through by $$-\hbar^2$$:

$$
\frac{\partial^2}{\partial t^2} - c^2 \nabla^2 + \frac{m^2 c^4}{\hbar^2} = 0
$$

Rewriting in a more compact form using the d'Alembertian operator:

$$
\left( \Box + \frac{m^2 c^2}{\hbar^2} \right) \psi = 0
$$

## Applications and Significance

- **Quantum Field Theory:** The Klein–Gordon equation is fundamental in quantum field theory for describing scalar fields and spin-zero particles such as pi-mesons (pions).
- **Prediction of Antiparticles:** The equation predicts the existence of antiparticles, as solutions can have both positive and negative energy.
- **Historical Context:** Independently discovered by Oskar Klein and Walter Gordon in 1926, the Klein–Gordon equation was one of the earliest attempts to formulate a relativistic wave equation.

## Limitations
1. **Negative Probability Density:**
   - The probability density derived from the Klein-Gordon equation is not always positive-definite, complicating its interpretation as a physical probability distribution.

2. **Inclusion of Negative Energy States:**
   - The equation admits solutions with negative energy, which challenges the straightforward interpretation of these solutions within a single-particle framework.

3. **Inadequate for Particles with Spin:**
   - The Klein-Gordon equation does not account for spin, making it unsuitable for describing fermions, such as electrons, which have non-zero spin.

4. **Unbounded Hamiltonian:**
   - The Hamiltonian associated with the Klein-Gordon equation is not bounded from below, leading to stability issues and necessitating reinterpretation within the framework of quantum field theory.

# Dirac Equation


The Dirac equation was formulated to address the limitations of the Klein-Gordon equation, specifically to describe spin-1/2 particles and to ensure positive-definite probability densities.

#### Linearizing the Klein-Gordon Equation
The Klein-Gordon equation is given by:
$$ \left( \frac{\partial^2}{\partial t^2} - \nabla^2 + m^2 \right) \psi = 0 $$

To derive the Dirac equation, we seek a first-order differential equation in both space and time that would still be consistent with the principles of special relativity. We start with the assumption that the equation should be linear in the first derivatives:

$$\color{red}{ i \hbar \frac{\partial \psi}{\partial t} = \left( \alpha \cdot \mathbf{p} + \beta m \right) \psi }$$

Here, $$ \alpha $$ and $$ \beta $$ are matrices, and $$ \mathbf{p} = -i \hbar \nabla $$ is the momentum operator.

#### Requirements for Matrices
To ensure consistency with special relativity and the correct energy-momentum relation, we require that:

$$ E^2 = \mathbf{p}^2 c^2 + m^2 c^4 $$

Square both sides of our proposed equation and taking $$c=\hbar=1$$(natural units):

$$ \left( i \frac{\partial}{\partial t} \right)^2 \psi = \left( \alpha \cdot \mathbf{p} + \beta m \right)^2 \psi $$


One common representation of dirac matrices $$\alpha,\;\beta$$ is the Dirac-Pauli representation:

$$ \beta = \gamma^0 = \begin{pmatrix} I & 0 \\ 0 & -I \end{pmatrix} $$

$$ \alpha_i = \gamma^0 \gamma^i $$

where $$ \gamma^i $$ are the Dirac gamma matrices.


```Highlighted section below can be skipped, its just for verification```
<div style="background-color: #f0f0f0; padding: 10px;">
Expanding the right-hand side, we get:

$$ - \hbar^2 \frac{\partial^2 \psi}{\partial t^2} = \left( \alpha_i p_i \alpha_j p_j + \alpha_i p_i \beta m + \beta m \alpha_j p_j + \beta^2 m^2 \right) \psi $$

Using the commutation relations of the matrices \( \alpha \) and \( \beta\)

$$ \alpha_i \alpha_j + \alpha_j \alpha_i = 2 \delta_{ij} I $$

$$ \alpha_i \beta + \beta \alpha_i = 0 $$

$$ \beta^2 = I $$

Substituting these back, we get:

$$ \left(  \frac{\partial^2}{\partial t^2} -  \nabla^2 + m^2 \right) \psi = 0 $$

This reduces to the Klein-Gordon equation, showing that our linear equation is consistent.
</div>


#### The Dirac Equation
Combining all these and in natural units ($$ \hbar = c = 1 $$), we get the Dirac equation in the form:

$$ i \frac{\partial \psi}{\partial t} = \left( \boldsymbol{\alpha} \cdot \mathbf{p} + \beta m \right) \psi $$


Rearranging the equation we get

$$\left[i \frac{\partial }{\partial t} - \left( \boldsymbol{\alpha} \cdot \mathbf{p} + \beta m \right) \right]\psi=0 $$

Multiplying both sides by $$\beta$$ and using the relation $$\beta^2=I$$ and $$\mathbf{p=-i\nabla}$$ we get

$$\left[i \beta \frac{\partial }{\partial t} + \beta  i\boldsymbol{\alpha} \cdot \mathbf{\nabla} - \beta^2 m  \right]\psi=0 $$

Replacing $$\beta^2$$ by $$I$$ and expanding $$\mathbf{\alpha\cdot\nabla}$$ we get

$$\left[i \beta \frac{\partial }{\partial t} + i\beta \left(\alpha_x \frac{\partial}{\partial_x}+\alpha_y \frac{\partial}{\partial_y}+\alpha_z \frac{\partial}{\partial_z}\right) - m  \right]\psi=0 $$

To express the Dirac equation in a covariant form, we introduce the gamma matrices $$ \gamma^\mu $$, where $$ \mu = 0, 1, 2, 3 $$. 


In this notation, $$ \gamma^0 = \beta $$ and $$ \gamma^j = \beta \alpha^j $$ for $$ j = 1, 2, 3 $$.

$$\begin{align*}\left[i \gamma^0\partial_0 + i \gamma^1\partial_1+i\gamma^2\partial_2+i\gamma^3\partial_3 - m  \right]\psi&=0\end{align*} $$


The Dirac equation then can be written in a compact form, which is invariant under Lorentz transformations as:

$$ (i \gamma^\mu \partial_\mu - m) \psi = 0 $$


where:
- $$ \partial_\mu = \frac{\partial}{\partial x^\mu} $$ is the four-gradient, with $$ \partial_0 = \frac{\partial}{\partial t} $$ and $$ \partial_i = \frac{\partial}{\partial x^i} $$ for spatial coordinates.
- $$ \gamma^\mu $$ are the gamma matrices, which ensure that the equation transforms correctly under Lorentz transformations.

This is the Dirac equation, describing spin-1/2 particles in relativistic quantum mechanics.

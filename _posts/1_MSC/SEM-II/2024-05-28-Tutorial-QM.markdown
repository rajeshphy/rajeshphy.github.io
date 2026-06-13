---
title: "Tutorial: Relativistic Quantum Mechanics"
summary: "Worked tutorial problems on Klein-Gordon and Dirac equations in relativistic quantum mechanics."
date: 2024-05-28 18:47:26 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - tutorial
  - relativistic-quantum-mechanics
  - klein-gordon-equation
  - dirac-equation
permalink: /msc/sem-ii/tutorial-relativistic-quantum-mechanics/
hidden: true
---

This tutorial covers Klein-Gordon and Dirac equations in quantum mechanics.

## Klein-Gordon Equation

### Introduction
The Klein-Gordon equation is a relativistic wave equation for spin-0 particles. It is given by:
$$ (\Box + m^2) \psi = 0 $$
where $$\Box$$ is the d'Alembertian operator:
$$ \Box = \frac{\partial^2}{\partial t^2} - \nabla^2 $$
and $$m$$ is the mass of the particle.


#### Question 1: Derive the Klein-Gordon equation from the relativistic energy-momentum relation.


**Solution:**
Start with the relativistic energy-momentum relation:
$$ E^2 = p^2c^2 + m^2c^4 $$

Replace $$E$$ with $$i\hbar \frac{\partial}{\partial t}$$ and $$\vec{p}$$ with $$-i\hbar \nabla$$

$$ (i\hbar \frac{\partial}{\partial t})^2 = (-i\hbar \nabla)^2 c^2 + m^2 c^4 $$
$$ -\hbar^2 \frac{\partial^2}{\partial t^2} = -\hbar^2 c^2 \nabla^2 + m^2 c^4 $$

Divide by $$-\hbar^2$$

$$ \frac{\partial^2}{\partial t^2} - c^2 \nabla^2 = \frac{m^2 c^4}{\hbar^2} $$

Set $$c = 1$$ (natural units)

$$ \frac{\partial^2}{\partial t^2} - \nabla^2 = m^2 $$

This is the Klein-Gordon equation:
$$ (\Box + m^2) \psi = 0 $$

#### Question 2: Find the plane wave solution to the Klein-Gordon equation and verify it satisfies the dispersion equation, $$ \omega^2 = k^2 + m^2 $$.


**Solution:**
Assume a plane wave solution of the form:
$$ \psi = e^{i(\vec{k} \cdot \vec{x} - \omega t)} $$

Compute the second time derivative:
$$ \frac{\partial^2 \psi}{\partial t^2} = -\omega^2 e^{i(\vec{k} \cdot \vec{x} - \omega t)} $$

Compute the Laplacian:
$$ \nabla^2 \psi = -k^2 e^{i(\vec{k} \cdot \vec{x} - \omega t)} $$

Substitute into the Klein-Gordon equation:
$$ (\frac{\partial^2}{\partial t^2} - \nabla^2 + m^2) \psi = 0 $$
$$ (-\omega^2 + k^2 + m^2) e^{i(\vec{k} \cdot \vec{x} - \omega t)} = 0 $$

Thus, the dispersion relation is:
$$ \omega^2 = k^2 + m^2 $$


#### Question 3: Given $$m = 1 \, \text{GeV}/c^2$$, $$k = 0.5 \, \text{GeV}/c$$, find $$\omega$$. Use the dispersion relation $$\omega^2 = k^2 + m^2$$.


**Solution:**
Use the dispersion relation $$\omega^2 = k^2 + m^2$$:
$$ \omega = \sqrt{k^2 + m^2} $$

Given $$m = 1 \, \text{GeV}/c^2$$, $$k = 0.5 \, \text{GeV}/c$$.

$$ \omega = \sqrt{(0.5 \, \text{GeV}/c)^2 + (1 \, \text{GeV}/c^2)^2} $$
$$ \omega = \sqrt{0.25 + 1} \, \text{GeV} $$
$$ \omega = \sqrt{1.25} \, \text{GeV} $$
$$ \omega \approx 1.118 \, \text{GeV} $$

## Dirac Equation

### Introduction
The Dirac equation is a relativistic wave equation for spin-1/2 particles, such as electrons. It is given by:
$$ (i\gamma^\mu \partial_\mu - m) \psi = 0 $$
where $$\gamma^\mu$$ are the gamma matrices.


#### Question 4: Derive the Dirac equation from the linearization of the Klein-Gordon equation.


**Solution:**

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

#### Question 5: Find the plane wave solution to the Dirac equation and verify it satisfies the equation.

**Solution:**
Assume a plane wave solution of the form:
$$ \psi = u(p) e^{i(p \cdot x)} $$
Substitute into the Dirac equation:
$$ (i\gamma^\mu \partial_\mu - m) \psi = 0 $$
$$ (i\gamma^\mu p_\mu - m) u(p) e^{i(p \cdot x)} = 0 $$
This simplifies to:
$$ (\gamma^\mu p_\mu - m) u(p) = 0 $$
Thus, $$u(p)$$ is a spinor satisfying the Dirac equation:
$$ (\gamma^\mu p_\mu - m) u(p) = 0 $$
#### Question 6: Given $$m = 0.511 \, \text{MeV}/c^2$$ (electron mass), $$p = (E, 0, 0, p_z)$$, find the energy $$E$$ for $$p_z = 0.3 \, \text{MeV}/c$$.

<!--
**Solution:**
Use the energy-momentum relation for the Dirac equation:
$$ E^2 = p_z^2 + m^2 $$
Given $$m = 0.511 \, \text{MeV}/c^2$$, $$p_z = 0.3 \, \text{MeV}/c$$:
$$ E = \sqrt{p_z^2 + m^2} $$
$$ E = \sqrt{(0.3 \, \text{MeV}/c)^2 + (0.511 \, \text{MeV}/c^2)^2} $$
$$ E = \sqrt{0.09 + 0.261121} \, \text{MeV} $$
$$ E = \sqrt{0.351121} \, \text{MeV} $$
$$ E \approx 0.593 \, \text{MeV} $$
-->

#### Question 7: Explain the physical interpretation of negative energy solutions in the context of the Dirac equation and how it led to the prediction of antimatter.
<!--
**Solution:**
The Dirac equation is:
$$ (i\gamma^\mu \partial_\mu - m) \psi = 0 $$

When solving this equation for a free particle, we obtain energy solutions of the form:
$$ E = \pm \sqrt{p^2 + m^2} $$

The positive energy solutions ($$E = +\sqrt{p^2 + m^2}$$) correspond to particles, but the negative energy solutions ($$E = -\sqrt{p^2 + m^2}$$) initially posed a problem, as they seemed to imply the existence of states with negative energy.

Dirac proposed that all negative energy states are filled in what he called the "Dirac sea." According to this model, the Pauli exclusion principle prevents an electron from transitioning into a negative energy state because these states are already occupied. A "hole" in this sea of negative energy states would appear as a particle with positive charge and positive energy, which Dirac identified as the positron, the antiparticle of the electron.

This interpretation led to the prediction of antimatter:
- **Antiparticles:** For every particle, there exists a corresponding antiparticle with the same mass but opposite charge.
- **Vacuum State:** The vacuum is the state in which all negative energy states are filled.
- **Particle-Hole Theory:** A hole in the Dirac sea behaves like a particle with opposite charge, which is interpreted as an antiparticle.

The discovery of the positron in 1932 by Carl Anderson confirmed Dirac's theory and the existence of antimatter.
-->

#### Question 8: Consider an electron with mass $$m = 0.511 \, \text{MeV}/c^2$$. Calculate the energy for $$p = 0.5 \, \text{MeV}/c$$ and discuss both the positive and negative energy solutions.

<!--
**Solution:**
The energy solutions for a particle with momentum $$p$$ are given by:
$$ E = \pm \sqrt{p^2 + m^2} $$

Given:
- Mass of the electron, $$m = 0.511 \, \text{MeV}/c^2$$
- Momentum, $$p = 0.5 \, \text{MeV}/c$$

Calculate the energy:
$$ E = \pm \sqrt{(0.5 \, \text{MeV}/c)^2 + (0.511 \, \text{MeV}/c^2)^2} $$
$$ E = \pm \sqrt{0.25 + 0.261121} \, \text{MeV} $$
$$ E = \pm \sqrt{0.511121} \, \text{MeV} $$
$$ E \approx \pm 0.715 \, \text{MeV} $$

- **Positive Energy Solution ($$+0.715 \, \text{MeV}$$)**: This corresponds to the usual electron with positive energy, moving with a momentum of $$0.5 \, \text{MeV}/c$$.

- **Negative Energy Solution ($$-0.715 \, \text{MeV}$$)**: In the context of the Dirac equation, this would correspond to a state in the Dirac sea. The physical interpretation, according to Dirac, is that this negative energy state is normally occupied. If this state is vacant, it appears as a positron with energy $$+0.715 \, \text{MeV}$$ and opposite charge to the electron.
-->

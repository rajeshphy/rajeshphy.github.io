---
title: "Lagrange’s Equation"
summary: "D'Alembert's principle, generalized coordinates, and the derivation and use of Lagrange's equation."
date: 2025-05-18 07:47:26 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - lagrange-equation
  - dalembert-principle
permalink: /msc/sem-i/lagrange-equation/
hidden: true
---

D'Alembert's principle is a fundamental concept in classical mechanics that provides an alternative formulation of Newton's second law by incorporating the concept of virtual work. It states that the sum of the differences between the applied forces and the inertial forces (also called the generalized forces) acting on a system in equilibrium is zero when projected along any virtual displacement.

##### 1.1 Mathematical Formulation

Consider a system of $$ N $$ particles, where each particle has mass $$ m_i $$, position vector $$ \mathbf{r}_i $$, and is subject to an external force $$ \mathbf{F}_i $$. Newton’s second law states:

$$ m_i \ddot{\mathbf{r}}_i = \mathbf{F}_i $$

D'Alembert’s principle introduces the concept of **inertial force**:

$$ \mathbf{F}_i - m_i \ddot{\mathbf{r}}_i = 0 $$

For an infinitesimal virtual displacement $$ \delta \mathbf{r}_i $$, the principle states:

$$ \sum_{i=1}^{N} (\mathbf{F}_i - m_i \ddot{\mathbf{r}}_i) \cdot \delta \mathbf{r}_i = 0 $$

Since the constraint forces do no virtual work (ideal constraints), we are left with only generalized forces:

$$ \sum_{i=1}^{N} (\mathbf{F}_i^{(a)} - m_i \ddot{\mathbf{r}}_i) \cdot \delta \mathbf{r}_i = 0 $$

where $$ \mathbf{F}_i^{(a)} $$ represents the applied forces excluding constraint forces.

#### 2. Lagrange’s Equation

Lagrange’s equation is derived using D'Alembert’s principle and is particularly useful in dealing with systems having constraints.

##### 2.1 Generalized Coordinates

A system with $$ N $$ particles and $$ k $$ constraint equations can be described using a reduced set of **generalized coordinates**:

$$ q_1, q_2, \dots, q_n, \quad n = 3N - k $$

The relationship between Cartesian coordinates and generalized coordinates is given by:

$$ \mathbf{r}_i = \mathbf{r}_i(q_1, q_2, ..., q_n, t) $$

The virtual displacement then transforms as:

$$ \delta \mathbf{r}_i = \sum_{j=1}^{n} \frac{\partial \mathbf{r}_i}{\partial q_j} \delta q_j $$

Using these transformations, D’Alembert’s principle can be rewritten in terms of generalized coordinates.

##### 2.2 Derivation of Lagrange’s Equation

<div style="text-align: center;">
  <a href="{{ '/assets/pdf/msc/sem-i/Lagrange.pdf' | relative_url }}" target="_blank">
    <button style="padding: 6px 12px; background-color: #007BFF; color: white; border: none; border-radius: 4px; cursor: pointer;">
      📄 Click here for derivation
    </button>
  </a>
</div>
<br>


We now derive Lagrange’s equation directly from D’Alembert’s principle. For a system of $N$ particles, D’Alembert’s principle is

$$
\sum_{i=1}^{N}\left(\mathbf{F}_i^{(a)}-m_i\ddot{\mathbf{r}}_i\right)\cdot \delta \mathbf{r}_i=0
$$

where $\mathbf{F}_i^{(a)}$ represents the applied force on the $i$-th particle and $\delta \mathbf{r}_i$ is the virtual displacement compatible with the constraints.

Let the position vector of the $i$-th particle be expressed in terms of generalized coordinates as

$$
\mathbf{r}_i=\mathbf{r}_i(q_1,q_2,\dots,q_n,t)
$$

The virtual displacement is therefore

$$
\delta \mathbf{r}_i=\sum_{j=1}^{n}\frac{\partial \mathbf{r}_i}{\partial q_j}\delta q_j
$$

Substituting this into D’Alembert’s principle gives

$$
\sum_{i=1}^{N}\left(\mathbf{F}_i^{(a)}-m_i\ddot{\mathbf{r}}_i\right)\cdot
\sum_{j=1}^{n}\frac{\partial \mathbf{r}_i}{\partial q_j}\delta q_j=0
$$

Interchanging the order of summation,

$$
\sum_{j=1}^{n}
\left[
\sum_{i=1}^{N}\mathbf{F}_i^{(a)}\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
-
\sum_{i=1}^{N}m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
\right]\delta q_j=0
$$

Define the generalized force $Q_j$ by

$$
Q_j=\sum_{i=1}^{N}\mathbf{F}_i^{(a)}\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
$$

Thus,

$$
\sum_{j=1}^{n}
\left[
Q_j-
\sum_{i=1}^{N}m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
\right]\delta q_j=0
$$

The main task is now to rewrite the inertial term

$$
\sum_{i=1}^{N}m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
$$

in terms of kinetic energy.

The velocity of the $i$-th particle is

$$
\dot{\mathbf{r}}_i
=
\sum_{j=1}^{n}\frac{\partial \mathbf{r}_i}{\partial q_j}\dot{q}_j
+
\frac{\partial \mathbf{r}_i}{\partial t}
$$

From this expression,

$$
\frac{\partial \dot{\mathbf{r}}_i}{\partial \dot{q}_j}
=
\frac{\partial \mathbf{r}_i}{\partial q_j}
$$

Now consider

$$
\frac{d}{dt}\left(m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}\right)
$$

Using the product rule,

$$
\frac{d}{dt}\left(m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}\right)
=
m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
+
m_i\dot{\mathbf{r}}_i\cdot \frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
$$

Therefore,

$$
m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
=
\frac{d}{dt}\left(m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}\right)
-
m_i\dot{\mathbf{r}}_i\cdot \frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
$$

Using

$$
\frac{\partial \dot{\mathbf{r}}_i}{\partial \dot{q}_j}
=
\frac{\partial \mathbf{r}_i}{\partial q_j}
$$

we write

$$
m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
=
m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \dot{\mathbf{r}}_i}{\partial \dot{q}_j}
$$

The kinetic energy of the system is

$$
T=\frac{1}{2}\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i^2
$$

Hence,

$$
\frac{\partial T}{\partial \dot{q}_j}
=
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot
\frac{\partial \dot{\mathbf{r}}_i}{\partial \dot{q}_j}
$$

Therefore,

$$
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
=
\frac{\partial T}{\partial \dot{q}_j}
$$

Now consider the second term,

$$
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot \frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
$$

Since

$$
\frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
=
\frac{\partial \dot{\mathbf{r}}_i}{\partial q_j}
$$

we get

$$
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot \frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
=
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot \frac{\partial \dot{\mathbf{r}}_i}{\partial q_j}
$$

But from the definition of kinetic energy,

$$
\frac{\partial T}{\partial q_j}
=
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot
\frac{\partial \dot{\mathbf{r}}_i}{\partial q_j}
$$

Thus,

$$
\sum_{i=1}^{N}m_i\dot{\mathbf{r}}_i\cdot \frac{d}{dt}\left(\frac{\partial \mathbf{r}_i}{\partial q_j}\right)
=
\frac{\partial T}{\partial q_j}
$$

Combining these results,

$$
\sum_{i=1}^{N}m_i\ddot{\mathbf{r}}_i\cdot \frac{\partial \mathbf{r}_i}{\partial q_j}
=
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
-
\frac{\partial T}{\partial q_j}
$$

Substitute this into D’Alembert’s principle:

$$
\sum_{j=1}^{n}
\left[
Q_j-
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
+
\frac{\partial T}{\partial q_j}
\right]\delta q_j=0
$$

Since the generalized virtual displacements $\delta q_j$ are independent and arbitrary, each coefficient must vanish:

$$
Q_j-
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
+
\frac{\partial T}{\partial q_j}=0
$$

Therefore,

$$
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
-
\frac{\partial T}{\partial q_j}
=
Q_j
$$

This is the general form of Lagrange’s equation in terms of kinetic energy and generalized force.

If the applied forces are conservative, then there exists a potential energy $V(q_1,q_2,\dots,q_n,t)$ such that

$$
Q_j=-\frac{\partial V}{\partial q_j}
$$

Hence,

$$
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
-
\frac{\partial T}{\partial q_j}
=
-\frac{\partial V}{\partial q_j}
$$

Rearranging,

$$
\frac{d}{dt}\left(\frac{\partial T}{\partial \dot{q}_j}\right)
-
\frac{\partial T}{\partial q_j}
+
\frac{\partial V}{\partial q_j}=0
$$

Define the Lagrangian as

$$
L=T-V
$$

If $V$ does not depend on generalized velocities, then

$$
\frac{\partial L}{\partial \dot{q}_j}
=
\frac{\partial T}{\partial \dot{q}_j}
$$

and

$$
\frac{\partial L}{\partial q_j}
=
\frac{\partial T}{\partial q_j}
-
\frac{\partial V}{\partial q_j}
$$

Therefore,

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}_j}\right)
-
\frac{\partial L}{\partial q_j}=0
$$

Hence, the final form of Lagrange’s equation is

$$
\boxed{
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}_j}\right)
-
\frac{\partial L}{\partial q_j}=0
}
\qquad j=1,2,\dots,n
$$

This equation replaces Newton’s vector equation by a coordinate-independent scalar equation. Its main advantage is that constraint forces need not be calculated explicitly, provided the constraints are already built into the generalized coordinates.

#### 3. Simple Applications of Lagrange’s Equations

##### 3.1 Simple Pendulum

A simple pendulum consists of a mass $$ m $$ attached to a string of length $$ l $$. The generalized coordinate is the angular displacement $$ \theta $$.

<div style="text-align: center;">
  <img src="{{ '/assets/images/msc/sem-i/pendulum.png' | relative_url }}" 
       alt="Scattering" 
       class="my-custom-class" 
       style="width:40%; height:auto;">
</div>


##### 🔹 Coordinates
Use angle $$ \theta $$ as generalized coordinate.

- Position: $$ x = \ell \sin \theta, \quad y = -\ell \cos \theta $$
- Velocity: $$ v^2 = \ell^2 \dot{\theta}^2 $$

##### 🔹 Energy


- Kinetic Energy:
  $$ T = \frac{1}{2} m (l^2 \dot{\theta}^2) $$

- Potential Energy:
  $$ V = -mgl \cos \theta $$


##### 🔹 Lagrangian

$$
L = T - V = \frac{1}{2} m \ell^2 \dot{\theta}^2 - m g \ell (1 - \cos \theta)
$$

Apply Lagrange’s equation:

$$
\frac{d}{dt} \left( \frac{\partial L}{\partial \dot{\theta}} \right) 
- \frac{\partial L}{\partial \theta} = 0
$$

$$
\Rightarrow \frac{d}{dt} (m \ell^2 \dot{\theta}) + m g \ell \sin \theta = 0
\Rightarrow \boxed{ \ddot{\theta} + \frac{g}{\ell} \sin \theta = 0 }
$$

##### 3.2 Bead on a Rotating Hoop

A bead of mass $$ m $$ moves on a hoop of radius $$ R $$ that rotates with a constant angular velocity $$ \omega $$.

<div style="text-align: center;">
  <img src="{{ '/assets/images/msc/sem-i/rotating-hoop.png' | relative_url }}" 
       alt="Scattering" 
       class="my-custom-class" 
       style="width:40%; height:auto;">
</div>

- Generalized coordinate: $$ \theta $$ (angle of displacement on the hoop)
- Kinetic Energy:
  $$ T = \frac{1}{2} m (R^2 \dot{\theta}^2 + \omega^2 R^2 \sin^2 \theta) $$

- Potential Energy:
  $$ V = -mgR \cos \theta $$

- Lagrangian:
  $$ L = \frac{1}{2} m (R^2 \dot{\theta}^2 + \omega^2 R^2 \sin^2 \theta) + mgR \cos \theta $$

Applying Lagrange’s equation:

$$ \frac{d}{dt} \left( \frac{\partial L}{\partial \dot{\theta}} \right) - \frac{\partial L}{\partial \theta} = 0 $$

$$ mR^2 \ddot{\theta} - m R^2 \omega^2 \sin \theta \cos \theta + mgR \sin \theta = 0 $$

which governs the motion of the bead on the rotating hoop.


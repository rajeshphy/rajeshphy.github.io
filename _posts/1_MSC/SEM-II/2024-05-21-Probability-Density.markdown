---
title: "Current Density Conservation Equation"
summary: "Derivation of the Dirac current density conservation equation from the Dirac equation and its conjugate."
date: 2024-07-03 18:47:26 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - dirac-equation
  - current-density
  - conservation-equation
permalink: /msc/sem-ii/current-density-conservation-equation/
hidden: true
---

The Dirac equation for a free particle is given by:

$$ (i \gamma^\mu \partial_\mu - m) \psi = 0 $$

where $$ \psi $$ is the Dirac spinor, $$ \gamma^\mu $$ are the gamma matrices, $$ \partial_\mu $$ denotes the four-gradient, and $$ m $$ is the mass of the particle. The conjugate of the Dirac spinor $$ \psi $$ is denoted by $$ \bar{\psi} = \psi^\dagger \gamma^0 $$.

## Step-by-Step Derivation

1. **Start with the Dirac Equation:**

   $$ (i \gamma^\mu \partial_\mu - m) \psi = 0 $$

2. **Multiply from the left by $$ \bar{\psi} $$:**

   $$ \bar{\psi} (i \gamma^\mu \partial_\mu - m) \psi = 0 $$

   This expands to:

   $$ i \bar{\psi} \gamma^\mu \partial_\mu \psi - m \bar{\psi} \psi = 0 $$

3. **Take the Dirac conjugate of the Dirac equation:**

   The Dirac conjugate of the Dirac equation is:

   $$ \psi^{\dagger} ( -i \overleftarrow{\partial_\mu} \gamma^{\mu\;\dagger} - m) = 0 $$

   Here, $$ \overleftarrow{\partial_\mu} $$ indicates that the derivative acts to the left. Multiplying both sides by $$\gamma^0$$ on R.H.S we get
   
   $$ \psi^{\dagger} ( -i \overleftarrow{\partial_t} \gamma^{0\;\dagger} -i \overleftarrow{\partial_k} \gamma^{k\;\dagger} - m)\gamma^0 = 0 $$

   and using the property $$\gamma^{k \dagger}=-\gamma^{k}$$ and $$\gamma^0 \gamma^k=\gamma^k\gamma^0$$ and $k\neq0$ we get
   
   $$ \psi^{\dagger} ( -i \overleftarrow{\partial_t} \gamma^{0}\gamma^0 -i \overleftarrow{\partial_k} \gamma^0\gamma^{k} - m\gamma^0) = 0 $$
   
   Now using $$\psi^{\dagger}\overleftarrow{\partial_t} \gamma^0=\partial_t\bar{\psi}$$ we get

   $$ -i \partial_t\bar{\psi} \gamma^0 -i \partial_k\bar{\psi} \gamma^k - m\bar{\psi}  = 0 $$

   In einstein summation form we get

   $$ -i \partial_\mu\bar{\psi} \;\gamma^\mu - m\bar{\psi}  = 0 $$
   
   Multiplying by $$\psi$$ on R.H.S and cancelling negative sign we get

   $$ i \partial_\mu\bar{\psi} \;\gamma^\mu\psi + m\bar{\psi}\psi  = 0 $$

4. **Combine the results:**

   From steps 2 and 3, we have:

   $$ i \bar{\psi} \gamma^\mu \partial_\mu \psi = m \bar{\psi} \psi $$

   And:

   $$ i\partial_\mu \bar{\psi} \gamma^\mu \psi = - m \bar{\psi} \psi $$

6. **Add the conjugate equation from the original:**

   $$ i \bar{\psi} \gamma^\mu \partial_\mu \psi + \partial_\mu \bar{\psi} \gamma^\mu \psi = 0 $$

   This simplifies to:

   $$ i \partial_\mu (\bar{\psi} \gamma^\mu \psi) = 0 $$

7. **Define the current density $$ j^\mu $$:**

   The current density $$ j^\mu $$ is defined as:

   $$ j^\mu = \bar{\psi} \gamma^\mu \psi $$

   Hence, the above equation becomes:

   $$ \partial_\mu j^\mu = 0 $$

## Conclusion

The current density conservation equation derived from the Dirac equation is:

$$ \partial_\mu j^\mu = 0 $$

This equation expresses the conservation of probability current in relativistic quantum mechanics. The four-current $$ j^\mu = \bar{\psi} \gamma^\mu \psi $$ is conserved, indicating that the total probability (or charge) is conserved in the system.

---

# Plane Wave Solution of Dirac Equation

Sure, let's start with the plane wave given by 

$$ \psi(x^\mu) = \begin{pmatrix} u_A \\ u_B \end{pmatrix} e^{-i p_\mu x^\mu} $$

   where $$\begin{pmatrix} u_A \\ u_B \end{pmatrix}$$ is a spinor, and $$p_\mu x^\mu = p^0 x^0 - \mathbf{p} \cdot \mathbf{x}$$.

and use Dirac equation to solve for the spinors $$u_A$$, $$u_B$$ and Energy $$E$$. Here is step by step solution:

1. **Substitute the Plane Wave Solution**:

   Substitute $$\psi(x)$$ into the Dirac equation:

   $$ (i \gamma^\mu \partial_\mu - m) \psi(x) = 0 $$

   Applying the derivative $$\partial_\mu$$:

   $$ \color{red}{\partial_\mu \psi(x) = -ip_\mu \begin{pmatrix} u_A \\ u_B \end{pmatrix} e^{-i p_\mu x^\mu}} $$

   Thus, the Dirac equation becomes:

   $$ \left[i \gamma^\mu (-ip_\mu) - m\right] \begin{pmatrix} u_A \\ u_B \end{pmatrix} e^{-i p_\mu x^\mu} = 0 $$

   Simplifying, we get:

   $$ (\gamma^\mu p_\mu - m) \begin{pmatrix} u_A \\ u_B \end{pmatrix} = 0 $$
   
   which is a Dirac equation in momentum space.


2. **Writing the Dirac Equation in Matrix Form**:

   The Dirac equation becomes:

   $$ \left( \gamma^0 p^0 - \gamma^i p^i - m \right) \begin{pmatrix} u_A \\ u_B \end{pmatrix} = 0 $$

   Expanding the terms, we have:

   $$\color{red}{ \left[ \begin{pmatrix}
   I & 0 \\
   0 & -I
   \end{pmatrix} p^0 - \begin{pmatrix}
   0 & \sigma^i \\
   -\sigma^i & 0
   \end{pmatrix} p^i - m \right] \begin{pmatrix} u_A \\ u_B \end{pmatrix} = 0 }$$

   where the gamma matrices are expanded with the form given by:

   $$ \gamma^0 = \begin{pmatrix}
   I & 0 \\
   0 & -I
   \end{pmatrix}, \quad \gamma^i = \begin{pmatrix}
   0 & \sigma^i \\
   -\sigma^i & 0
   \end{pmatrix} $$

   where $$I$$ is the $$2 \times 2$$ identity matrix, and $$\sigma^i$$ (with $$i = 1, 2, 3$$) are the Pauli matrices:

   $$ \sigma^1 = \begin{pmatrix}
   0 & 1 \\
   1 & 0
   \end{pmatrix}, \quad \sigma^2 = \begin{pmatrix}
   0 & -i \\
   i & 0
   \end{pmatrix}, \quad \sigma^3 = \begin{pmatrix}
   1 & 0 \\
   0 & -1
   \end{pmatrix} $$

3. **Substitute the Pauli spin matrices and Simplify**:

   On simplifying the above matrix we get: 

   $$ \begin{pmatrix}
    I(p^0-m) & -\sigma^i p^i \\
   \sigma^i p^i & - I(p^0+m)
   \end{pmatrix}  \begin{pmatrix} u_A \\ u_B \end{pmatrix}  = 0 $$

   Or,

   $$ \begin{pmatrix}
    I(E-m) & -\sigma^i p^i \\
   \sigma^i p^i & - I(E+m)
   \end{pmatrix}  \begin{pmatrix} u_A \\ u_B \end{pmatrix}  = 0 $$

   Or,

   $$ \begin{pmatrix}
   E-m & 0 & -p_z & -(p_x-ip_y) \\
   0 & E-m & -(p_x+ip_y) & p_z\\
   p_z & (p_x-ip_y)&-(E+m)&0\\
   (p_x+ip_y) & -p_z &0 &-(E+m)
   \end{pmatrix}  \begin{pmatrix} u_A \\ u_B \end{pmatrix}  = 0 $$

Here, the spinor $$\begin{pmatrix} u_A \\ u_B \end{pmatrix}$$ can take four possible form; two for positive energy $$E=\sqrt{p^2+m^2}$$ and two for negative energy $$E=-\sqrt{p^2+m^2}$$ as:

1. For Positive energy:

   $$u_1=N_1\begin{pmatrix} 1\\0 \\ A_1\\B_1 \end{pmatrix}\qquad u_2=N_2\begin{pmatrix} 0\\1 \\ A_2\\B_2 \end{pmatrix}$$

   where, $$(A_1,\;B_1)$$ and $$(A_2,\;B_2)$$ are $$(\frac{p_z}{E+m} , \frac{p_x+i p_y}{E+m})$$ and $$(\frac{p_x-i p_y}{E+m} , \frac{-p_z}{E+m})$$ respectively. $$N_i$$ are normalization constant.


2. For Negative energy:

   $$u_3=N_3\begin{pmatrix} A_3\\B_3 \\ 1\\0 \end{pmatrix}\qquad u_4=N_4\begin{pmatrix} A_4\\B_4 \\ 0\\1  \end{pmatrix}$$

   where, $$(A_3,\;B_3)$$ and $$(A_4,\;B_4)$$ are $$(\frac{p_z}{E-m} , \frac{p_x+i p_y}{E-m})$$ and $$(\frac{p_x-i p_y}{E-m} , \frac{-p_z}{E-m})$$ respectively.

Therefore the eigenfunctions corresponding to positive energy states are:

$$\psi_1(x^\mu)=u_1e^{-ip_\mu x^\mu}\qquad \psi_2(x^\mu)=u_2e^{-ip_\mu x^\mu}$$

and for negative energy state the eigenfunctions are:

$$\psi_3(x^\mu)=u_3e^{ip_\mu x^\mu}\qquad \psi_4(x^\mu)=u_4e^{ip_\mu x^\mu}$$


## Interpretation of negative energy states

To be continued ...
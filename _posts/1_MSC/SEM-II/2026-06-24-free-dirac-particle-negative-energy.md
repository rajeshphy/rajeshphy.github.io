---
title: "Free Dirac Particle and Negative-Energy States"
summary: "Free-particle Dirac spinors, positive and negative frequency branches, and their antiparticle interpretation."
date: 2026-06-24 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - relativistic-quantum-mechanics
  - dirac-spinors
  - free-particle
  - antiparticles
permalink: /msc/sem-ii/free-dirac-particle-negative-energy/
hidden: true
---

For a free particle it is convenient to use natural units $\hbar=c=1$ and take $p^0=E>0$. The Dirac equation admits two kinds of plane-wave modes:

$$
\psi^{(+)}_s(x)=u_s(\mathbf p)e^{-ip\cdot x},
\qquad
\psi^{(-)}_s(x)=v_s(\mathbf p)e^{+ip\cdot x}.
$$

For the first mode,

$$
\partial_\mu
\left(u_se^{-ip\cdot x}\right)
=-ip_\mu u_se^{-ip\cdot x}.
$$

Substitution into $(i\gamma^\mu\partial_\mu-m)\psi=0$ gives

$$
\left(\gamma^\mu p_\mu-m\right)u_s=0.
$$

For the second mode,

$$
\partial_\mu
\left(v_se^{+ip\cdot x}\right)
=+ip_\mu v_se^{+ip\cdot x},
$$

so the Dirac equation gives

$$
\left(-\gamma^\mu p_\mu-m\right)v_s=0.
$$

After multiplying this equation by $-1$, the two momentum-space equations are

$$
\boxed{(\not\!p-m)u_s(\mathbf p)=0},
\qquad
\boxed{(\not\!p+m)v_s(\mathbf p)=0},
$$

where $\not\!p=\gamma^\mu p_\mu$. For example, multiply the $u_s$ equation by $\not\!p+m$:

$$
(\not\!p+m)(\not\!p-m)u_s
=\left(\not\!p\,\not\!p-m^2\right)u_s=0.
$$

Since $p_\mu p_\nu$ is symmetric,

$$
\begin{aligned}
\not\!p\,\not\!p
&=\gamma^\mu\gamma^\nu p_\mu p_\nu\\
&=\frac{1}{2}\{\gamma^\mu,\gamma^\nu\}p_\mu p_\nu\\
&=g^{\mu\nu}p_\mu p_\nu I_4
=p^\mu p_\mu I_4.
\end{aligned}
$$

A nonzero spinor therefore requires

$$
p^\mu p_\mu=m^2,
\qquad
E=\sqrt{\mathbf p^2+m^2}.
$$

The opposite signs in the exponential are frequency labels. Both $u_s$ and $v_s$ are written using the positive number $E$, which avoids mixing a negative Hamiltonian eigenvalue with a positive-energy four-momentum.

## Explicit free spinors

In the Dirac–Pauli representation,

$$
\not\!p
=
\begin{pmatrix}
EI_2&-\boldsymbol\sigma\cdot\mathbf p\\
\boldsymbol\sigma\cdot\mathbf p&-EI_2
\end{pmatrix}.
$$

Write $u_s=(\phi_s,\chi_s)^{\mathsf T}$, where each entry is a two-component spinor. The equation $(\not\!p-m)u_s=0$ becomes the pair

$$
(E-m)\phi_s
-(\boldsymbol\sigma\cdot\mathbf p)\chi_s=0,
$$

$$
(\boldsymbol\sigma\cdot\mathbf p)\phi_s
-(E+m)\chi_s=0.
$$

The second equation gives

$$
\chi_s
=\frac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\phi_s.
$$

Substitute it into the first:

$$
\left[
(E-m)
-\frac{(\boldsymbol\sigma\cdot\mathbf p)^2}{E+m}
\right]\phi_s=0.
$$

For commuting free-momentum components, the Pauli product
$\sigma_i\sigma_j=\delta_{ij}I_2+i\epsilon_{ijk}\sigma_k$ gives

$$
\begin{aligned}
(\boldsymbol\sigma\cdot\mathbf p)^2
&=\sigma_i\sigma_jp_ip_j\\
&=\delta_{ij}p_ip_jI_2
+i\epsilon_{ijk}\sigma_kp_ip_j\\
&=p^2I_2.
\end{aligned}
$$

The last term vanishes because $\epsilon_{ijk}$ is antisymmetric while $p_ip_j$ is symmetric. Hence

$$
\frac{E^2-m^2-p^2}{E+m}\phi_s=0,
$$

which vanishes because $E^2=p^2+m^2$. If $\xi_s$ is a normalized basis spinor, the positive-frequency solution is therefore

$$
u_s(\mathbf p)
=N
\begin{pmatrix}
\xi_s\\[2mm]
\dfrac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\xi_s
\end{pmatrix}.
$$

For $v_s=(\zeta_s,\eta_s)^{\mathsf T}$, choose
$\eta_s^\dagger\eta_s=1$. The equation $(\not\!p+m)v_s=0$ gives

$$
(E+m)\zeta_s
-(\boldsymbol\sigma\cdot\mathbf p)\eta_s=0,
$$

$$
(\boldsymbol\sigma\cdot\mathbf p)\zeta_s
-(E-m)\eta_s=0.
$$

The first equation gives

$$
\zeta_s
=\frac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\eta_s.
$$

Substitution into the second again leaves

$$
\frac{p^2-(E^2-m^2)}{E+m}\eta_s=0.
$$

Thus

$$
v_s(\mathbf p)
=N
\begin{pmatrix}
\dfrac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\eta_s\\[2mm]
\eta_s
\end{pmatrix}.
$$

## Normalization and the rest limit

Let $\xi_s^\dagger\xi_s=1$. Since $\boldsymbol\sigma\cdot\mathbf p$ is Hermitian,

$$
\begin{aligned}
u_s^\dagger u_s
&=N^2\left[
1+\frac{
\xi_s^\dagger(\boldsymbol\sigma\cdot\mathbf p)^2\xi_s
}{(E+m)^2}
\right]\\
&=N^2\left(1+\frac{p^2}{(E+m)^2}\right).
\end{aligned}
$$

Use $p^2=E^2-m^2=(E-m)(E+m)$:

$$
\begin{aligned}
1+\frac{p^2}{(E+m)^2}
&=
\frac{(E+m)^2+(E-m)(E+m)}{(E+m)^2}\\
&=\frac{2E}{E+m}.
\end{aligned}
$$

The choice $u_s^\dagger u_s=1$ therefore fixes

$$
N=\sqrt{\frac{E+m}{2E}}.
$$

The same calculation applies to $v_s$. The normalized spinors are

$$
u_s(\mathbf p)
=
\sqrt{\frac{E+m}{2E}}
\begin{pmatrix}
\xi_s\\[2mm]
\dfrac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\xi_s
\end{pmatrix},
$$

and

$$
v_s(\mathbf p)
=
\sqrt{\frac{E+m}{2E}}
\begin{pmatrix}
\dfrac{\boldsymbol\sigma\cdot\mathbf p}{E+m}\eta_s\\[2mm]
\eta_s
\end{pmatrix}.
$$

At rest, $E=m$ and $\mathbf p=0$, so

$$
u_s(\mathbf 0)=
\begin{pmatrix}\xi_s\\0\end{pmatrix},
\qquad
v_s(\mathbf 0)=
\begin{pmatrix}0\\\eta_s\end{pmatrix}.
$$

Momentum mixes the upper and lower two-component sectors, but each branch retains two independent spin polarizations.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/unit-3/relativistic-energy-branches.png' | relative_url }}" alt="Positive and negative relativistic energy branches separated by the rest-energy gap" loading="lazy">
  <figcaption>The free Dirac spectrum contains positive- and negative-frequency branches. At zero momentum their separation is $2mc^2$; after field quantization the negative-frequency modes are associated with antiparticles of positive physical energy.</figcaption>
</figure>

## Meaning of the negative-energy branch

For a free momentum eigenstate,

$$
H_D^2=(p^2c^2+m^2c^4)I_4.
$$

If $H_Dw=\mathcal Ew$, applying $H_D$ once more gives

$$
H_D^2w=\mathcal E^2w
=(p^2c^2+m^2c^4)w.
$$

Hence the first-quantized Hamiltonian has the two eigenvalue branches

$$
\mathcal E_\pm=\pm\sqrt{p^2c^2+m^2c^4}.
$$

At fixed $\mathbf p$, the factor $e^{-ip\cdot x}$ contains $e^{-iEt}$ and belongs to $+\mathcal E$. The factor $e^{+ip\cdot x}$ contains $e^{+iEt}=e^{-i(-E)t}$ and therefore appears as the $-\mathcal E$ branch in a one-particle wave equation. That lower branch seems to make an electron unstable because states of ever more negative energy are available. Dirac’s historical resolution was to regard all negative-energy electron states as filled; a missing electron in that sea behaves as a positively charged hole.

In quantum field theory the complete mode expansion has the structure

$$
\widehat\psi(x)
=
\sum_s\int d^3p\,
\left[
a_s(\mathbf p)u_s(\mathbf p)e^{-ip\cdot x}
+b_s^\dagger(\mathbf p)v_s(\mathbf p)e^{+ip\cdot x}
\right],
$$

apart from the conventional momentum normalization factor. The operator $a_s$ annihilates an electron. The coefficient of the negative-frequency mode is not another electron annihilation operator: $b_s^\dagger$ creates a positron. When the field Hamiltonian is expressed in these operators, both $a_s^\dagger a_s$ and $b_s^\dagger b_s$ carry the positive energy $E$. The two excitations have equal mass and opposite electric charge. Thus negative-frequency solutions remain essential to the relativistic field, but observable particles do not carry unbounded negative energy.

[Maxima verification of the Pauli identity and free spinors]({{ '/assets/maxima/msc/sem-ii/unit-3/dirac-spinors-and-spin.mac' | relative_url }})

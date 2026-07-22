---
title: "V: Survival Curvature Beyond the Linear Covariance Response"
date: 2026-06-08 09:00:00 +0530
categories: research
tags:
  - survival probability
  - energy variance
  - exceptional Hermite states
  - non-Gaussian dynamics
  - covariance limitations
permalink: "/survival-curvature/"
---

When all first-order cross-covariance rates vanish, it is tempting to call the post-quench state stationary. That inference is false. The survival probability probes the state vector directly and reveals an exact quadratic response that covariance symmetry can miss.


## Fixed-confinement quench and domain assumption

We retain the conventions

$$
\hbar=2M=1,
\qquad
\omega_c=\frac{q_{\mathrm{el}}B}{2Mc},
$$

with signed $\omega_c$. The preparation coordinates define the bipartition

$$
A\equiv +,\qquad B\equiv -.
$$

A real, definite-parity product eigenstate is prepared exactly,

$$
\lvert\Psi_0\rangle
=\lvert m_+,\ell_+\rangle_A
\otimes\lvert m_-,\ell_-\rangle_B,
$$

under the additive Hamiltonian $H_{\mathrm{sep}}^{\mathrm{RE}}$. At $t=0$, only the angular coupling is activated:

$$
H_f=H_{\mathrm{sep}}^{\mathrm{RE}}-\omega_cL_z,
\qquad
L_z=q_+p_- -q_-p_+.
$$

The diamagnetically dressed coordinate confinement is unchanged. This is not a literal quench of the complete electromagnetic field.

For the fourth-order remainder below, assume explicitly

$$
\lvert\Psi_0\rangle\in D(H_f^2).
$$

The regular even-seed exceptional-Hermite inputs satisfy this condition: their rational-polynomial derivatives remain Gaussian-decaying, so the required fourth energy moment is finite.

## Survival probability and energy variance

Define

$$
\mathcal S(t)=
\left|\langle\Psi_0|e^{-iH_ft}|\Psi_0\rangle\right|^2.
$$

Because survival probability is even in time and the domain assumption supplies the needed moments,

$$
\mathcal S(t)=1-\operatorname{Var}_0(H_f)t^2+O(t^4).
$$

The initial state is an eigenstate of $H_{\mathrm{sep}}^{\mathrm{RE}}$, while reality and parity give

$$
\langle L_z\rangle_0=0.
$$

Therefore the entire energy variance comes from the quenched angular term:

$$
\operatorname{Var}_0(H_f)
=\omega_c^2\langle L_z^2\rangle_0.
$$

Introduce the local second moments

$$
V_{q,\alpha}=\langle q_\alpha^2\rangle_0,
\qquad
V_{p,\alpha}=\langle p_\alpha^2\rangle_0.
$$

Expanding $L_z^2$, factorizing expectations between $A=+$ and $B=-$, and using

$$
\langle q_\alpha p_\alpha\rangle_0=\frac{i}{2},
\qquad
\langle p_\alpha q_\alpha\rangle_0=-\frac{i}{2},
$$

gives

$$
\langle L_z^2\rangle_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12.
$$

The $-1/2$ is an ordering contribution: the two crossed products in $L_z^2$ each contribute $1/4$ beneath a minus sign. Defining

$$
\boxed{
\Lambda_0
=V_{q,+}V_{p,-}+V_{q,-}V_{p,+}-\frac12,
}
$$

we obtain the exact local expansion

$$
\boxed{
\mathcal S(t)=1-\omega_c^2\Lambda_0t^2+O(t^4).
}
$$

The coefficient $\Lambda_0$ is independent of the sign of the field, while first-order covariance flows are odd in $\omega_c$. Thus field reversal reverses the direction of the linear covariance response but not the initial survival loss.

## A mode-exchange-symmetric counterexample

Suppose the two factors have the same codimension, excitation, and coordinate scale. Their second moments are then mode-exchange symmetric:

$$
V_{q,+}=V_{q,-}=V_q,
\qquad
V_{p,+}=V_{p,-}=V_p.
$$

Every first-order cross-covariance rate vanishes, because those rates are proportional to the corresponding variance differences. Define the one-mode uncertainty product

$$
U_m=\Delta q\,\Delta p=\sqrt{V_qV_p}.
$$

The survival coefficient reduces to

$$
\boxed{
\Lambda_0=2U_m^2-\frac12.
}
$$

For two equal ordinary oscillator vacua, $U_0=1/2$, so $\Lambda_0=0$. This is consistent with rotational invariance. For two equal codimension-two added states, however,

$$
U_2=0.5172471466\ldots
$$

and hence

$$
\Lambda_0
=2(0.5172471466\ldots)^2-\frac12
=0.03508922135\ldots>0.
$$

The state therefore leaves its initial ray quadratically in time whenever $\omega_c\neq0$, even though all linear cross-covariance rates vanish. This is a direct counterexample to the implication

$$
\text{zero linear covariance response}
\quad\Longrightarrow\quad
\text{stationary state}.
$$

The correct conclusion is narrower: mode-exchange-symmetric second moments suppress the *linear covariance channel*. They do not suppress higher moments or the full non-Gaussian state dynamics.

## Maxima-verified benchmark

For the unequal-scale codimension-two benchmark

$$
\Omega_+=\frac54,
\qquad
\Omega_-=\frac{17}{20},
\qquad
\omega_c=\frac34,
$$

the bare-confinement stability margins are

$$
\Omega_+^2-\omega_c^2=1,
\qquad
\Omega_-^2-\omega_c^2=\frac4{25},
$$

and Maxima evaluates

$$
\Lambda_0=0.07537829213164765\ldots.
$$

The corresponding finite-time propagation gives a nonzero survival loss and reproduces the analytic curvature near $t=0$. This numerical evolution is performed in a systematically enlarged exceptional-product basis. It does not rely on Gaussian closure, and no finite cutoff is claimed to be exact.

## Scope of the result

The formula for $\Lambda_0$ is exact for the stated real definite-parity product input and fixed-confinement angular quench. The displayed Taylor polynomial remains a short-time expansion, not a global solution. Later-time dynamics require propagation of the full state or an independently controlled approximation.

Survival curvature and covariance answer different questions. Covariance detects selected quadratic flows; survival detects departure from the complete initial state. Their disagreement in the symmetric codimension-two example is therefore not a paradox—it is a concrete signature of information outside the linear covariance response.

## Series navigation

1. [Magnetic oscillator: stability and coordinate reduction](/research/magnetic-oscillator-stability-reduction/)
2. [Exceptional-Hermite state preparation](/research/exceptional-hermite-preparation/)
3. [A fixed-confinement angular-momentum quench](/research/fixed-confinement-angular-quench/)
4. [Exact first-order covariance response](/research/exact-covariance-response/)
5. **Survival curvature beyond covariance**
6. [Spectral propagation and synchronization](/research/spectral-propagation-synchronization/)
7. [Non-Gaussian mutual information](/research/non-gaussian-mutual-information/)

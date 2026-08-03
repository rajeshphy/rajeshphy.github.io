---
title: "Atomic Spectra"
summary: "Atomic models, hydrogen wavefunctions, angular momentum, coupling schemes, field splittings, periodic structure, and characteristic X-rays."
date: 2025-05-31 09:00:00 +0530
categories:
  - bsc-vi
tags: [bsc, semester-vi, modern-physics, atomic-spectra, hydrogen-atom]
permalink: /bsc/sem-vi/modern-physics/atomic-spectra/
hidden: true
---

Atomic spectra are discrete because bound atomic states have discrete energies. The route from Rutherford scattering to the hydrogen Schrödinger equation also shows why an orbit is not a quantum state.

## Rutherford scattering and the nuclear atom

For a projectile of charge $ze$ scattered by a nucleus of charge $Ze$, the repulsive Coulomb potential is

$$V(r)=\frac{Zze^2}{4\pi\epsilon_0r}\equiv\frac{K}{r}.$$

Conservation of angular momentum gives $L=\mu vb$, where $b$ is the impact parameter and $\mu$ is the projectile-nucleus reduced mass. With $u=1/r$, Binet's equation for the outward force $K/r^2$ is

$$
\frac{d^2u}{d\phi^2}+u=-\frac{\mu K}{L^2}.
$$

Its hyperbolic solution can be written

$$
r=\frac{p}{e\cos\phi-1},\qquad
p=\frac{L^2}{\mu K},\qquad
e^2=1+\frac{2EL^2}{\mu K^2}.
$$

The asymptotes satisfy $\cos\phi_\infty=1/e$. Their geometry gives $\theta=\pi-2\phi_\infty$, so

$$
\cot\frac{\theta}{2}=\tan\phi_\infty
=\sqrt{e^2-1}
=\frac{2Eb}{K},
$$

where $E=\mu v^2/2$ and $L=\mu vb$ were used in the last step. Therefore

$$b=\frac{K}{2E}\cot\frac{\theta}{2},\qquad E=\frac12\mu v^2.$$

Particles incident in the annulus $2\pi b\,db$ enter the solid angle $d\Omega=2\pi\sin\theta\,d\theta$. Hence

$$
\frac{d\sigma}{d\Omega}
=\frac{b}{\sin\theta}\left\lvert\frac{db}{d\theta}\right\rvert
=\left(\frac{K}{4E}\right)^2\csc^4\frac{\theta}{2}.
$$

The observed large-angle events require charge and most of the mass to occupy a region far smaller than the atom; this is the nuclear model inferred from Rutherford's experiment.

## Bohr hydrogen atom and reduced mass

For a circular orbit, Coulomb attraction supplies centripetal force:

$$\frac{\mu v^2}{r}=\frac{e^2}{4\pi\epsilon_0r^2},$$

where nuclear motion is included through the reduced mass

$$\mu=\frac{m_eM}{m_e+M}.$$

Bohr quantization, or equivalently the standing-wave condition $2\pi r=n\lambda$ with $\lambda=h/(\mu v)$, gives

$$\mu vr=n\hbar.$$

Eliminating $v$ produces

$$r_n=\frac{4\pi\epsilon_0\hbar^2}{\mu e^2}n^2,$$

and the total energy is

$$
E_n=\frac12\mu v^2-\frac{e^2}{4\pi\epsilon_0r_n}
=-\frac{\mu e^4}{2(4\pi\epsilon_0)^2\hbar^2}\frac1{n^2}.
$$

The same quantization condition is the de Broglie standing-wave relation because $\lambda_{dB}=h/(\mu v)$ and $2\pi r=n\lambda_{dB}$. For emission $n_i\to n_f<n_i$,

$$
\frac1\lambda=R_M\left(\frac1{n_f^2}-\frac1{n_i^2}\right),\qquad
R_M=R_\infty\frac{\mu}{m_e}.
$$

Thus isotope spectra differ slightly because $\mu$ depends on nuclear mass. The Ritz combination principle follows immediately: if $\tilde\nu_{ab}=T_a-T_b$, then $\tilde\nu_{ac}=\tilde\nu_{ab}+\tilde\nu_{bc}$. Bohr's model explains hydrogenic energies, radii, and the Rydberg law, but not line intensities, fine structure, multielectron atoms, or why an accelerating charge in a stationary orbit does not radiate.

## Hydrogen Schrödinger equation

With $V(r)=-e^2/(4\pi\epsilon_0r)$, the time-independent equation is

$$
\left[-\frac{\hbar^2}{2\mu}\nabla^2-\frac{e^2}{4\pi\epsilon_0r}\right]\psi=E\psi.
$$

In spherical coordinates,

$$
\nabla^2=\frac1{r^2}\frac{\partial}{\partial r}\left(r^2\frac{\partial}{\partial r}\right)
+\frac1{r^2\sin\theta}\frac{\partial}{\partial\theta}\left(\sin\theta\frac{\partial}{\partial\theta}\right)
+\frac1{r^2\sin^2\theta}\frac{\partial^2}{\partial\phi^2}.
$$

Put $\psi=R(r)\Theta(\theta)\Phi(\phi)$. Separation of $\phi$ gives

$$\frac{d^2\Phi}{d\phi^2}+m_l^2\Phi=0,\qquad \Phi(\phi+2\pi)=\Phi(\phi),$$

so $m_l$ is an integer. The polar equation is

$$
\frac1{\sin\theta}\frac{d}{d\theta}\left(\sin\theta\frac{d\Theta}{d\theta}\right)
+\left[l(l+1)-\frac{m_l^2}{\sin^2\theta}\right]\Theta=0,
$$

whose regular solutions require $l=0,1,2,\ldots$ and $m_l=-l,\ldots,l$. The angular functions combine into $Y_l^{m_l}$. The radial equation is

$$
\frac1{r^2}\frac{d}{dr}\left(r^2\frac{dR}{dr}\right)
+\left[\frac{2\mu}{\hbar^2}\left(E+\frac{e^2}{4\pi\epsilon_0r}\right)-\frac{l(l+1)}{r^2}\right]R=0.
$$

Writing $u=rR$ removes the first derivative:

$$
-\frac{\hbar^2}{2\mu}\frac{d^2u}{dr^2}
+\left[-\frac{e^2}{4\pi\epsilon_0r}+\frac{\hbar^2l(l+1)}{2\mu r^2}\right]u=Eu.
$$

For a bound state define

$$
\kappa=\frac{\sqrt{-2\mu E}}{\hbar},\qquad
\rho=2\kappa r,
$$

and set $u(\rho)=\rho^{l+1}e^{-\rho/2}v(\rho)$. The factor $\rho^{l+1}$ enforces $u(0)=0$, while $e^{-\rho/2}$ enforces decay as $r\to\infty$. Substitution gives

$$
\rho v''+[2(l+1)-\rho]v'
+\left[\frac{\mu e^2}{4\pi\epsilon_0\hbar^2\kappa}-(l+1)\right]v=0.
$$

The series for $v$ must terminate; otherwise its $e^\rho$ growth defeats the decaying prefactor. Therefore

$$
\frac{\mu e^2}{4\pi\epsilon_0\hbar^2\kappa}=n_r+l+1\equiv n,
$$

giving $n=1,2,\ldots$, $l=0,\ldots,n-1$, and the same $E_n$ as the Bohr result. The normalized ground state is

$$\psi_{100}(r)=\frac{e^{-r/a_\mu}}{\sqrt{\pi a_\mu^3}},\qquad a_\mu=\frac{4\pi\epsilon_0\hbar^2}{\mu e^2}.$$

The electric-dipole matrix element $\langle n^{\prime}l^{\prime}m_l^{\prime}\rvert\mathbf r\lvert nlm_l\rangle$ and the angular properties of $\mathbf r$ give the selection rules

$$\boxed{\Delta l=\pm1,\qquad \Delta m_l=0,\pm1},$$

with parity changing between the two states.

## Orbital and spin angular momentum

The vector model represents

$$L^2=l(l+1)\hbar^2,\quad L_z=m_l\hbar,
\qquad S^2=s(s+1)\hbar^2,\quad S_z=m_s\hbar.$$

For an electron $s=1/2$ and $m_s=\pm1/2$. Its magnetic moments are

$$\boldsymbol\mu_L=-\frac{e}{2m_e}\mathbf L=-\frac{\mu_B}{\hbar}\mathbf L,$$

$$\boldsymbol\mu_S=-g_s\frac{\mu_B}{\hbar}\mathbf S,qquad \mu_B=\frac{e\hbar}{2m_e},\quad g_s\simeq2.$$

The constant $\mu_B=e\hbar/(2m_e)$ is the Bohr magneton. The Stern-Gerlach force $F_z=\mu_z\,dB_z/dz$ separates an atomic beam into discrete components, demonstrating space quantization. In a uniform field, $d\mathbf L/dt=\boldsymbol\mu_L\times\mathbf B$ gives Larmor precession with

$$\omega_L=\frac{eB}{2m_e}.$$

Adding angular momenta gives $\mathbf J=\mathbf L+\mathbf S$ and

$$j=\lvert l-s\rvert,\lvert l-s\rvert+1,\ldots,l+s.$$

Since $2\mathbf L\cdot\mathbf S=J^2-L^2-S^2$, a spin-orbit Hamiltonian $H_{so}=\xi(r)\mathbf L\cdot\mathbf S$ shifts a level by

$$\Delta E_{so}=\frac{\xi}{2}\hbar^2[j(j+1)-l(l+1)-s(s+1)].$$

For weak residual interactions in light atoms, individual orbital momenta form $\mathbf L=\sum_i\mathbf l_i$, spins form $\mathbf S=\sum_i\mathbf s_i$, and then $\mathbf J=\mathbf L+\mathbf S$: this is LS coupling. In heavy atoms, each $\mathbf j_i=\mathbf l_i+\mathbf s_i$ forms first and $\mathbf J=\sum_i\mathbf j_i$: this is jj coupling.

<figure class="diagram-figure">
  <div class="diagram-pan">
    <img src="{{ '/assets/images/bsc/sem-vi/modern/unit-1/atomic-splitting.png' | relative_url }}" alt="Hydrogen energy levels with spin orbit splitting and weak field Zeeman components">
  </div>
  <figcaption>Equation-generated level positions: $E_n=-13.6/n^2$ eV, spin-orbit offsets proportional to $[j(j+1)-l(l+1)-s(s+1)]/2$, and linear Zeeman shifts $\Delta E=\mu_Bg_Jm_JB$.</figcaption>
</figure>

## Exchange symmetry, Pauli principle, and periodic structure

For identical particles, exchange cannot produce a physically distinguishable state:

$$\Psi(1,2)=\pm\Psi(2,1).$$

Integer-spin particles use the symmetric sign; electrons are fermions and require the antisymmetric sign. If two electrons occupied the same one-particle state $a$,

$$\Psi=\frac1{\sqrt2}[\psi_a(1)\psi_a(2)-\psi_a(2)\psi_a(1)]=0.$$

This is Pauli exclusion: no two electrons in an atom share all four quantum numbers. Shell capacity follows by counting $m_l$ and spin states:

$$N_n=2\sum_{l=0}^{n-1}(2l+1)=2n^2.$$

Successive filling of subshells, modified by their energies and exchange, produces the periodic table.

## Zeeman, Paschen-Back, and Stark effects

In a weak magnetic field, $J$ remains coupled and

$$\Delta E_Z=\mu_Bg_Jm_JB,$$

where

$$g_J=1+\frac{j(j+1)+s(s+1)-l(l+1)}{2j(j+1)}.$$

In a strong field the spin-orbit coupling is overcome. The Paschen-Back shift approaches

$$\Delta E_{PB}=\mu_BB(m_l+g_sm_s).$$

An electric field $\mathbf E=E\hat z$ adds $H^{\prime}=eEz$ for an electron in the nuclear potential. The first-order shift is $\Delta E^{(1)}=eE\langle z\rangle$. It vanishes for a nondegenerate parity eigenstate, but hydrogen states with the same $n$ are degenerate and mix, producing a linear Stark effect. Nondegenerate states begin with the quadratic shift

$$\Delta E^{(2)}=-\frac12\alpha E^2,$$

where $\alpha$ is the static polarizability.

## Characteristic X-ray spectra

An incident electron can remove an inner-shell electron. When an outer electron fills the vacancy, a photon carries the energy difference:

$$h\nu=E_{n_i}-E_{n_f}.$$

Screening replaces $Z$ by $Z-\sigma$, so the hydrogenic approximation gives Moseley's form

$$\sqrt\nu=C(Z-\sigma).$$

The $K_\alpha$ line is predominantly a $2p\to1s$ transition and the $K_\beta$ line a $3p\to1s$ transition, consistent with $\Delta l=\pm1$. These discrete characteristic lines lie on the continuous bremsstrahlung spectrum.

[Maxima verification worksheet]({{ '/assets/maxima/bsc/sem-vi/modern/unit-1/atomic-spectra.mac' | relative_url }})

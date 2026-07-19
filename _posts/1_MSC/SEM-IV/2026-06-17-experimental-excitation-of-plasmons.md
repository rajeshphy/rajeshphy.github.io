---
title: "Experimental Excitation and Observation of Plasmons"
summary: "Transmission and reflection EELS, dielectric loss functions, and optical momentum matching for bulk and surface plasmons."
date: 2026-06-17 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - plasmons
  - electron-energy-loss-spectroscopy
  - surface-plasmons
  - dielectric-response
permalink: /msc/sem-iv/experimental-excitation-of-plasmons/
hidden: true
---

A plasmon is a collective longitudinal oscillation of the mobile charge density. Its experimental signature is therefore not determined only by an eigenfrequency; it also depends on the energy and momentum delivered by the probe, the boundary conditions at a surface, and the response function to which the probe couples. Electron energy-loss spectroscopy (EELS) is especially effective because a fast electron transfers both energy and momentum through its Coulomb field. Optical radiation is transverse and carries much less momentum at the same energy, so direct optical excitation requires a surface, grating, prism, finite particle, or near field to relax the longitudinal-field and momentum restrictions.

Throughout this lecture, the energy lost by the incident electron is written as

$$
E=E_i-E_f=\hbar\omega>0,
$$

and the wave-vector transfer to the specimen is

$$
\mathbf q=\mathbf k_i-\mathbf k_f.
$$

The dielectric convention is $\exp(-i\omega t)$, so a passive medium has $\varepsilon_2(\omega)=\operatorname{Im}\varepsilon(\omega)>0$.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-3/eels-plasmon-excitation.png' | relative_url }}" alt="Transmission electron energy-loss spectroscopy geometry for exciting a plasmon">
  <figcaption>In transmission EELS, the fast electron loses energy $\hbar\omega$ and transfers wave vector $\mathbf q=\mathbf k_i-\mathbf k_f$ to a longitudinal density fluctuation. Resolving both the loss energy and scattering angle measures the momentum-dependent bulk loss function.</figcaption>
</figure>

## Dielectric functions measured in loss spectroscopy

For an isotropic homogeneous solid, the longitudinal dielectric function is

$$
\varepsilon_L(q,\omega)=\varepsilon_1(q,\omega)+i\varepsilon_2(q,\omega).
$$

An external longitudinal potential $\phi_{\mathrm{ext}}(q,\omega)$ is screened according to

$$
\phi_{\mathrm{tot}}(q,\omega)
=\frac{\phi_{\mathrm{ext}}(q,\omega)}{\varepsilon_L(q,\omega)}.
$$

The energy dissipated by a moving charge is governed by the **bulk loss function**

$$
L_b(q,\omega)
=\operatorname{Im}\!\left[-\frac{1}{\varepsilon_L(q,\omega)}\right]
=\frac{\varepsilon_2(q,\omega)}
{\varepsilon_1^2(q,\omega)+\varepsilon_2^2(q,\omega)}.
$$

If damping is weak, $L_b$ has a sharp maximum near a zero of $\varepsilon_1$, provided $\varepsilon_2$ is small there. Thus a peak in $\varepsilon_2$ and a peak in $L_b$ need not represent the same excitation: $\varepsilon_2$ emphasizes absorptive single-particle transitions, whereas $-\operatorname{Im}(1/\varepsilon)$ emphasizes longitudinal collective modes.

For a Drude electron gas embedded in a nondispersive background $\varepsilon_\infty$,

$$
\varepsilon(\omega)
=\varepsilon_\infty-
\frac{\omega_p^2}{\omega(\omega+i\gamma)},
\qquad
\omega_p^2=\frac{ne^2}{m^\ast\varepsilon_0}.
$$

In the lossless limit the screened bulk-plasmon frequency is

$$
\omega_b=\frac{\omega_p}{\sqrt{\varepsilon_\infty}},
$$

because $\varepsilon(\omega_b)=0$. The symbol $\omega_p$ denotes the unscreened free-carrier plasma frequency in this convention.

At a planar boundary between the solid and a dielectric of real permittivity $\varepsilon_d$, a nonretarded surface mode has an electrostatic potential proportional to $e^{iq_\parallel x-q_\parallel\lvert z\rvert}$. Continuity of the potential and of the normal displacement gives

$$
\varepsilon(\omega)+\varepsilon_d=0.
$$

The corresponding surface loss function is, apart from geometry-dependent factors,

$$
L_s(q_\parallel,\omega)
=\operatorname{Im}\!\left[-\frac{1}
{\varepsilon(q_\parallel,\omega)+\varepsilon_d}\right].
$$

For the lossless Drude model,

$$
\omega_s=\frac{\omega_p}
{\sqrt{\varepsilon_\infty+\varepsilon_d}}.
$$

At a vacuum surface, $\varepsilon_d=1$; if also $\varepsilon_\infty=1$, then $\omega_s=\omega_p/\sqrt2$. The lower energy of the surface peak is therefore a consequence of the boundary-condition restoring field, not merely a surface-induced broadening of the bulk peak.

## Relativistic energy and momentum transfer in EELS

Let $T_i$ and $T_f=T_i-E$ be the incident and final kinetic energies of an electron. Since electrons used in transmission EELS commonly have $T_i=60$--$300\,\mathrm{keV}$, relativistic kinematics should be used. The magnitude of the momentum at kinetic energy $T$ is

$$
pc=\sqrt{T(T+2m_ec^2)},
\qquad
k=\frac{p}{\hbar}.
$$

If $\theta$ is the scattering angle between $\mathbf k_i$ and $\mathbf k_f$, then the exact momentum-transfer magnitude is

$$
q^2=k_i^2+k_f^2-2k_i k_f\cos\theta.
$$

For $E\ll T_i$ and $\theta\ll1$, resolve $\mathbf q$ into components parallel and perpendicular to the incident beam. To leading order,

$$
q_\parallel\simeq k_i-k_f\simeq \frac{\omega}{v},
\qquad
q_\perp\simeq k_i\theta,
$$

and hence

$$
q\simeq\sqrt{\left(\frac{\omega}{v}\right)^2+(k_i\theta)^2}.
$$

The term $q_\parallel=\omega/v$ is the minimum momentum transfer required by energy conservation even at zero scattering angle. The characteristic angle associated with a loss $E$ is

$$
\theta_E=\frac{q_\parallel}{k_i}\simeq\frac{E}{pv}.
$$

Consequently, changing the convergence and collection angles changes the interval of $q$ over which the measured spectrum is averaged. A nominally optical-limit spectrum is obtained only when the accepted $q$ is sufficiently small that spatial dispersion of $\varepsilon(q,\omega)$ can be neglected.

## Transmission EELS and the bulk loss function

In a transmission electron microscope, a nearly monoenergetic electron beam passes through a specimen thin enough that a useful fraction of electrons suffer zero or one inelastic event. An energy analyzer records intensity as a function of $E$, often with angular selection that also determines $q$.

In the first Born approximation, the Coulomb interaction gives the double differential cross-section in the general form

$$
\frac{d^2\sigma}{d\Omega\,dE}
=\frac{k_f}{k_i}\frac{4\gamma_i^2}{a_0^2q^4}
S(\mathbf q,E),
$$

where $a_0=4\pi\varepsilon_0\hbar^2/(m_e e^2)$, $\gamma_i=1+T_i/(m_ec^2)$ is the incident Lorentz factor, and $S(\mathbf q,E)$ is the dynamic form factor in the commonly used EELS normalization. The factor $\gamma_i^2$ is the usual relativistic correction to the longitudinal Coulomb scattering amplitude; a fully relativistic treatment also contains transverse-current terms. The $q^{-4}$ factor is the squared Fourier amplitude of the Coulomb interaction. Linear-response theory relates the density-response spectrum to the inverse dielectric function. After this relation is inserted, one power $q^2$ is supplied by the longitudinal Coulomb kernel, so the measured bulk-loss probability has the characteristic dependence

$$
\frac{d^2P_b}{d\Omega\,dE}
\propto \frac{k_f}{k_i}\frac{1}{q^2}
\operatorname{Im}\!\left[-\frac{1}{\varepsilon_L(q,\omega)}\right].
$$

The omitted prefactor depends on whether $S$ is defined per electron, per atom, or per unit volume and on relativistic corrections to the probe. The spectral statement is independent of that normalization: angle-resolved transmission EELS measures the $q$-dependent bulk loss function, weighted strongly toward small momentum transfer.

For an electron moving with velocity $\mathbf v$, the Fourier transform of its charge density contains

$$
2\pi\,\delta(\omega-\mathbf q\!\cdot\!\mathbf v).
$$

This relation is another route to $q_\parallel=\omega/v$. Because the electron charge is $-e$, the induced field changes the projectile kinetic energy by

$$
\Delta K_e=-e\int_{-\infty}^{\infty}
\mathbf v\!\cdot\!\mathbf E_{\mathrm{ind}}[\mathbf r_e(t),t]\,dt,
$$

whereas the positive energy transferred to the specimen is

$$
E_{\mathrm{loss}}=-\Delta K_e
=e\int_{-\infty}^{\infty}
\mathbf v\!\cdot\!\mathbf E_{\mathrm{ind}}[\mathbf r_e(t),t]\,dt.
$$

After Fourier transforming and replacing the bare Coulomb potential by its screened value $1/\varepsilon_L$, this energy loss becomes proportional to $L_b(q,\omega)$. Thus the loss function follows directly from energy dissipated into the induced charge density.

For a specimen of thickness $t$, the mean number of inelastic collisions is approximately

$$
\mu=\frac{t}{\lambda_{\mathrm{inel}}},
$$

where $\lambda_{\mathrm{inel}}$ is the inelastic mean free path. If independent scattering events are assumed, the probability of $n$ events is Poissonian,

$$
P_n=e^{-\mu}\frac{\mu^n}{n!}.
$$

Plural scattering produces peaks near sums of the single-loss energies, such as $2\hbar\omega_b$, and must be deconvolved before a dielectric function is inferred. In the same approximation the log-ratio thickness relation is

$$
\frac{t}{\lambda_{\mathrm{inel}}}
=\ln\!\left(\frac{I_{\mathrm{tot}}}{I_0}\right),
$$

where $I_0$ is the zero-loss intensity and $I_{\mathrm{tot}}$ is the total integrated spectrum over the accepted energy range.

The bulk-plasmon contribution grows approximately in proportion to the path length $t$. A surface-loss probability is instead associated with each interface crossing and is much less dependent on $t$. Thickness series therefore separate a bulk peak, whose single-scattering intensity scales roughly with $t$, from entrance- and exit-surface peaks, whose leading contribution is approximately constant.

## Reflection EELS and surface modes

Reflection EELS uses electrons incident on a surface and analyzes those scattered back into vacuum. Translational symmetry parallel to an ideally flat surface conserves the parallel momentum, but the perpendicular momentum need not be conserved because the surface breaks translation symmetry along $z$.

Choose the surface as the $xy$ plane and measure the incident and outgoing angles $\alpha_i$ and $\alpha_f$ from the surface normal. The convention-independent relation is

$$
\mathbf q_\parallel
=\mathbf k_{i,\parallel}-\mathbf k_{f,\parallel}.
$$

If $\alpha_i$ and $\alpha_f$ denote positive angle magnitudes and the incident and detected beams lie on opposite sides of the normal in the same scattering plane, their parallel components have opposite signs, so

$$
q_\parallel=k_i\sin\alpha_i+k_f\sin\alpha_f.
$$

If both beams lie on the same side of the normal, instead

$$
q_\parallel=
\left|k_i\sin\alpha_i-k_f\sin\alpha_f\right|.
$$

Energy conservation again gives $E=T_i-T_f$. By rotating the analyzer, one maps a surface-mode dispersion $\omega(q_\parallel)$.

A moving electron outside the solid has an evanescent Coulomb field inside it. Solving Poisson's equation with the planar boundary conditions produces an induced surface potential containing the surface-response factor

$$
g(q_\parallel,\omega)
=\frac{\varepsilon(q_\parallel,\omega)-\varepsilon_d}
{\varepsilon(q_\parallel,\omega)+\varepsilon_d}.
$$

The dissipative part of the reflected-electron probability is proportional to $\operatorname{Im}g$, which has the same pole condition $\varepsilon+\varepsilon_d=0$ as $L_s$. Reflection geometry is surface sensitive because the field decays away from the interface on the scale $q_\parallel^{-1}$. Increasing $q_\parallel$ makes the measurement more localized near the surface but also moves it farther from the strict long-wavelength limit.

Bulk and surface signatures can be distinguished through several physical dependences. A bulk plasmon is associated with $\operatorname{Re}\varepsilon_L=0$ and usually scales with traversed thickness; a planar surface plasmon is associated with $\operatorname{Re}(\varepsilon+\varepsilon_d)=0$, responds to the dielectric placed outside the sample, and is enhanced in grazing or reflection geometries. Surface roughness, oxide layers, and multiple interfaces can produce additional interface modes rather than a single ideal $\omega_s$.

## Optical, prism, grating, and near-field excitation

A plane electromagnetic wave in a uniform medium is transverse, $\mathbf q\cdot\mathbf E=0$, whereas a bulk plasmon in the electrostatic limit is longitudinal. Direct excitation of an ideal bulk plasmon by a propagating photon is therefore forbidden in the local, homogeneous limit. In addition, a photon of energy $\hbar\omega$ in vacuum has momentum $\hbar\omega/c$, far smaller than the momentum commonly available in EELS.

At a metal--dielectric interface, retardation converts the electrostatic surface plasmon into a surface plasmon polariton with dispersion

$$
q_{\mathrm{spp}}(\omega)
=\frac{\omega}{c}
\sqrt{\frac{\varepsilon_m(\omega)\varepsilon_d}
{\varepsilon_m(\omega)+\varepsilon_d}}.
$$

For a low-loss bound mode, $\operatorname{Re}\varepsilon_m<-\varepsilon_d$, and $q_{\mathrm{spp}}>\sqrt{\varepsilon_d}\,\omega/c$. A photon incident from the dielectric therefore lacks the necessary parallel momentum. In attenuated-total-reflection prism coupling, an evanescent wave supplies

$$
q_\parallel=n_p\frac{\omega}{c}\sin\theta,
$$

and excitation occurs when $q_\parallel=\operatorname{Re}q_{\mathrm{spp}}$. The reflected intensity then shows a dip because energy enters the surface mode.

A grating of period $\Lambda$ changes parallel momentum by an integer reciprocal-lattice vector:

$$
q_\parallel=n_d\frac{\omega}{c}\sin\theta
+m\frac{2\pi}{\Lambda},
\qquad m\in\mathbb Z.
$$

The resonance condition is again $q_\parallel=\operatorname{Re}q_{\mathrm{spp}}$. Surface roughness supplies a broad distribution of reciprocal vectors and can couple light less selectively.

For a metal sphere of radius much smaller than the wavelength, the quasistatic dipole polarizability in a host of permittivity $\varepsilon_d$ is

$$
\alpha_{\mathrm{sph}}=4\pi\varepsilon_0\varepsilon_d a^3
\frac{\varepsilon_m-\varepsilon_d}
{\varepsilon_m+2\varepsilon_d}.
$$

The localized surface-plasmon resonance is therefore near

$$
\operatorname{Re}\varepsilon_m(\omega)=-2\varepsilon_d,
$$

with its width set by material absorption and radiative damping. Because a finite particle has no continuous translation symmetry, an incident optical field can excite this dipole mode without satisfying a unique in-plane momentum condition. A sharp optical tip or an electron beam similarly provides evanescent Fourier components with $q>\omega/c$, allowing near-field excitation and nanometre-scale mapping.

## Worked kinematic and spectral example

Consider a $200\,\mathrm{keV}$ electron that loses $15.0\,\mathrm{eV}$ and is detected at $\theta=5.00\,\mathrm{mrad}$. With $m_ec^2=510.999\,\mathrm{keV}$,

$$
p_ic=\sqrt{T_i(T_i+2m_ec^2)}=494.37\,\mathrm{keV},
$$

and

$$
\lambda_i=\frac{hc}{p_ic}=2.5079\,\mathrm{pm},
\qquad
k_i=\frac{2\pi}{\lambda_i}=250.53\,\text{\AA}^{-1}.
$$

The relativistic speed is obtained from $\gamma=1+T_i/(m_ec^2)$:

$$
\frac{v}{c}=\sqrt{1-\gamma^{-2}}=0.6953.
$$

The two small-angle components are then

$$
q_\perp\simeq k_i\theta
=1.253\,\text{\AA}^{-1},
$$

and, using $\hbar c=1973.27\,\mathrm{eV\,\AA}$,

$$
q_\parallel\simeq\frac{E}{\hbar v}
=\frac{15.0}{(1973.27)(0.6953)}
=1.094\times10^{-2}\,\text{\AA}^{-1}.
$$

Thus $q\simeq1.253\,\text{\AA}^{-1}$ at $5\,\mathrm{mrad}$; the angular component dominates. At $0.20\,\mathrm{mrad}$, however, $q_\perp=5.01\times10^{-2}\,\text{\AA}^{-1}$ and the minimum longitudinal transfer is no longer entirely negligible.

If the same material is approximated by a lossless Drude response with $\hbar\omega_p=15.0\,\mathrm{eV}$ and $\varepsilon_\infty=1$, transmission EELS should show the long-wavelength bulk loss near $15.0\,\mathrm{eV}$, while a vacuum-interface surface loss occurs near

$$
\hbar\omega_s=\frac{15.0}{\sqrt2}\,\mathrm{eV}
=10.61\,\mathrm{eV}.
$$

Real spectra may shift and broaden these values through interband screening, nonlocal dispersion, finite lifetime, oxide layers, and multiple scattering. The assignment of a collective peak is strengthened when its angular dispersion, thickness dependence, and dielectric-environment dependence agree with the corresponding bulk or surface response function.

## Preparation questions

1. Starting from relativistic energy--momentum relations, derive the exact $q(T_i,E,\theta)$ relation for transmission EELS and obtain its small-angle form.
2. Explain why the bulk EELS spectrum is governed by $\operatorname{Im}[-1/\varepsilon(q,\omega)]$ rather than simply by $\varepsilon_2(q,\omega)$.
3. Derive the nonretarded surface-plasmon condition at an interface between two dielectric media and obtain $\omega_s$ for a Drude metal.
4. Describe how a thickness series distinguishes bulk-plasmon losses from entrance- and exit-surface losses.
5. Derive the prism- and grating-coupling conditions for a surface plasmon polariton.
6. A $100\,\mathrm{keV}$ electron loses $12\,\mathrm{eV}$ through an angle of $1\,\mathrm{mrad}$. Calculate $q_\parallel$, $q_\perp$, and the total momentum transfer.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/experimental-excitation-of-plasmons.mac' | relative_url }})

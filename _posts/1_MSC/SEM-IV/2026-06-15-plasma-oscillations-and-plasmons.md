---
title: "Plasma Oscillations and Plasmons"
summary: "Classical plasma modes, dielectric zeros, bulk and surface plasmons, quantization, dispersion, excitation and damping in solids."
date: 2026-06-15 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - plasma-oscillations
  - plasmons
  - dielectric-function
  - surface-plasmons
  - electron-energy-loss
permalink: /msc/sem-iv/plasma-oscillations-and-plasmons/
hidden: true
---

A conductor contains mobile charge carriers embedded in an approximately neutral background. If the carrier density is displaced from equilibrium, the resulting space charge creates an internal electric field that drives the carriers back. Their collective longitudinal motion is a **plasma oscillation**. After quantization, one quantum of this normal mode is called a **plasmon**.

The essential distinction is between collective and single-particle motion. In a plasma oscillation, a macroscopic number of electrons move coherently and generate a self-consistent Coulomb field. A plasmon is therefore not an individual electron promoted to a higher orbital. In a crystalline solid, the band effective mass, background screening, collisions and interband transitions modify the ideal free-electron result.

Unless otherwise stated, the derivations use SI units, electron charge $-e$ with $e>0$, electron number density $n_0$, and harmonic time dependence $e^{-i\omega t}$.

## Classical equation for a longitudinal density oscillation

Treat the positive ions as a fixed uniform background and write the electron density as

$$
n(\mathbf r,t)=n_0+\delta n(\mathbf r,t),
\qquad |\delta n|\ll n_0.
$$

Let $\mathbf v$ be the electron-fluid velocity. To first order, particle conservation gives

$$
\boxed{
\frac{\partial\delta n}{\partial t}
+n_0\nabla\cdot\mathbf v=0.
}
$$

If pressure and collisions are initially neglected, Newton's equation is

$$
m\frac{\partial\mathbf v}{\partial t}=-e\mathbf E.
$$

The perturbation charge density is $\rho=-e\delta n$, so Gauss's law gives

$$
\nabla\cdot\mathbf E=-\frac{e\delta n}{\varepsilon_0}.
$$

Differentiate the continuity equation with respect to time and substitute the equation of motion:

$$
\frac{\partial^2\delta n}{\partial t^2}
-\frac{n_0e}{m}\nabla\cdot\mathbf E=0.
$$

Using Gauss's law,

$$
\boxed{
\frac{\partial^2\delta n}{\partial t^2}
+\omega_p^2\delta n=0,
}
$$

where

$$
\boxed{
\omega_p=\left(\frac{n_0e^2}{m\varepsilon_0}\right)^{1/2}
}
$$

is the electron plasma angular frequency. The ordinary frequency is $f_p=\omega_p/(2\pi)$. Every long-wavelength density element oscillates at the same frequency in this cold, collisionless approximation, so the mode is dispersionless.

For band electrons in a solid, $m$ is replaced by the appropriate optical effective mass $m^*$. If a nearly instantaneous bound-electron background has relative permittivity $\varepsilon_\infty$, the Coulomb restoring field is screened and the observed long-wavelength frequency is

$$
\boxed{
\omega_{p,\mathrm{scr}}
=\frac{\omega_p}{\sqrt{\varepsilon_\infty}}
=\left(\frac{n_0e^2}{m^*\varepsilon_0\varepsilon_\infty}\right)^{1/2}.
}
$$

Some authors use the symbol $\omega_p$ for the screened value. The convention must therefore be identified whenever experimental values are quoted.

For several independently mobile species $s$, the cold-plasma result generalizes to

$$
\omega_p^2=\sum_s\frac{n_s q_s^2}{\varepsilon_0m_s}.
$$

The ionic contribution to a high-frequency electron plasma is very small because of the large ionic mass, but separate low-frequency ion-plasma modes can occur.

## Uniform-displacement picture

The same result can be visualized by displacing the electron gas by a small distance $u$ relative to a rigid positive background. Opposite surface charge densities appear at the two ends. For a longitudinal slab geometry with negligible edge effects, the internal field is proportional to the displacement,

$$
E=\frac{n_0eu}{\varepsilon_0},
$$

and it acts oppositely on the electrons. Hence

$$
m\ddot u=-eE
=-\frac{n_0e^2}{\varepsilon_0}u,
$$

or

$$
\ddot u+\omega_p^2u=0.
$$

The numerical depolarization factor depends on specimen shape for a strictly uniform finite displacement; the density-wave derivation gives the bulk longitudinal mode of an extended medium without that geometric ambiguity.

## Pressure and spatial dispersion

A finite-wavelength density modulation also produces a pressure gradient. Linearizing the electron-fluid momentum equation gives

$$
m\frac{\partial\mathbf v}{\partial t}
=-e\mathbf E-\frac{1}{n_0}\nabla\delta p.
$$

Define

$$
v_s^2=\frac{1}{m}\left(\frac{\partial p}{\partial n}\right)_0,
\qquad
\delta p=m v_s^2\delta n.
$$

Combining this equation with continuity and Gauss's law gives

$$
\boxed{
\frac{\partial^2\delta n}{\partial t^2}
+\omega_p^2\delta n-v_s^2\nabla^2\delta n=0.
}
$$

For a plane wave $\delta n\propto e^{i(\mathbf k\cdot\mathbf r-\omega t)}$,

$$
\boxed{\omega^2(k)=\omega_p^2+v_s^2k^2.}
$$

For a classical collisionless Maxwellian electron gas, kinetic theory gives the Bohm--Gross result

$$
\boxed{
\omega^2(k)=\omega_p^2+3k^2v_T^2+\cdots,
\qquad
v_T^2=\frac{k_{\mathrm B}T}{m}.
}
$$

The coefficient 3 is a high-frequency kinetic result and should not be replaced without specifying a thermodynamic closure. For a three-dimensional degenerate electron gas at $T=0$, the long-wavelength random-phase approximation fixes the leading correction as

$$
\boxed{
\omega^2(k)=\omega_p^2
+\frac{3}{5}v_F^2k^2+O(k^4).
}
$$

Here $v_F=\hbar k_F/m$ and $k_F=(3\pi^2n_0)^{1/3}$. A simple hydrodynamic model based on the static Fermi pressure instead produces $v_F^2/3$ as its $k^2$ coefficient. If the quantum Bohm stress is included in such a hydrodynamic model, an additional recoil term $\hbar^2k^4/(4m^2)$ appears. The full $O(k^4)$ coefficient in a systematic microscopic expansion is not obtained by merely appending that term to the RPA $k^2$ result; the approximation and closure must be stated.

## Drude dielectric function

The collective-mode condition is most naturally expressed through the dielectric function. Let $\mathbf u$ be the electron displacement in a spatially uniform field. Including a phenomenological momentum-relaxation rate $\gamma$,

$$
m\left(\ddot{\mathbf u}+\gamma\dot{\mathbf u}\right)
=-e\mathbf E.
$$

For fields proportional to $e^{-i\omega t}$,

$$
\mathbf u(\omega)
=\frac{e}{m(\omega^2+i\gamma\omega)}\mathbf E(\omega).
$$

The electronic polarization is

$$
\mathbf P=-n_0e\mathbf u
=-\frac{n_0e^2}{m(\omega^2+i\gamma\omega)}\mathbf E.
$$

Since $\mathbf D=\varepsilon_0\varepsilon(\omega)\mathbf E$, the Drude relative permittivity, including a background $\varepsilon_\infty$, is

$$
\boxed{
\varepsilon(\omega)
=\varepsilon_\infty
-\frac{\omega_p^2}{\omega(\omega+i\gamma)}.
}
$$

For $\varepsilon_\infty=1$, its real and imaginary parts are

$$
\varepsilon'(\omega)
=1-\frac{\omega_p^2}{\omega^2+\gamma^2},
$$

$$
\varepsilon''(\omega)
=\frac{\omega_p^2\gamma}
{\omega(\omega^2+\gamma^2)}.
$$

The positive $\varepsilon''$ is consistent with passive absorption for the adopted $e^{-i\omega t}$ convention. With the alternative $e^{+i\omega t}$ convention, the sign used for the imaginary part is reversed.

## Longitudinal modes as zeros of the dielectric function

In the absence of externally imposed charge, a longitudinal electric field satisfies

$$
\nabla\cdot\mathbf D=0.
$$

For a longitudinal plane wave with $\mathbf k\cdot\mathbf E\ne0$,

$$
\mathbf k\cdot\mathbf D
=\varepsilon_0\varepsilon_L(k,\omega)
\mathbf k\cdot\mathbf E=0.
$$

A non-zero self-sustained longitudinal field therefore requires

$$
\boxed{\varepsilon_L(k,\omega)=0.}
$$

In the collisionless local Drude model,

$$
\varepsilon(\omega)=\varepsilon_\infty-\frac{\omega_p^2}{\omega^2},
$$

so the zero occurs at $\omega_p/\sqrt{\varepsilon_\infty}$. With damping, the complex roots obey

$$
\omega^2+i\gamma\omega-\frac{\omega_p^2}{\varepsilon_\infty}=0,
$$

and hence

$$
\boxed{
\omega=-\frac{i\gamma}{2}
\pm\sqrt{\frac{\omega_p^2}{\varepsilon_\infty}
-\frac{\gamma^2}{4}}.
}
$$

For $\gamma\ll\omega_p/\sqrt{\varepsilon_\infty}$, the amplitude decays as $e^{-\gamma t/2}$ while oscillating close to the screened plasma frequency.

The experimentally useful electron-energy-loss function is

$$
\boxed{
\mathcal L(k,\omega)
=\operatorname{Im}\left[-\frac{1}{\varepsilon_L(k,\omega)}\right].
}
$$

If $\operatorname{Re}\varepsilon_L$ crosses zero while $\operatorname{Im}\varepsilon_L$ is small, $\mathcal L$ has a sharp plasmon peak. Thus a zero of the real part alone is not enough to guarantee a well-defined plasmon; damping must also be weak.

## Transverse electromagnetic waves and the plasma edge

For a transverse wave in a non-magnetic homogeneous medium,

$$
k^2c^2=\varepsilon(\omega)\omega^2.
$$

In the collisionless Drude model with $\varepsilon_\infty=1$,

$$
\boxed{\omega^2=\omega_p^2+c^2k^2.}
$$

This transverse electromagnetic mode has the same $k=0$ frequency as the longitudinal bulk plasmon in the ideal local model, but their polarizations and excitation conditions differ. Below $\omega_p$, $\varepsilon<0$ and $k$ is imaginary, so radiation does not propagate through a lossless bulk plasma. A metal is consequently strongly reflecting below its plasma edge. Above the edge, $\varepsilon>0$ and propagation becomes possible, subject to interband absorption.

In a real solid, $\varepsilon_\infty$, interband transitions and damping shift and broaden the optical plasma edge. Optical reflectivity therefore need not locate precisely the same energy as the bulk loss peak.

## Quantization of the bulk mode

In the harmonic approximation, each independent longitudinal normal coordinate $Q_{\mathbf k}$ has the Hamiltonian of an oscillator,

$$
H_{\mathbf k}
=\frac{|\Pi_{\mathbf k}|^2}{2M_{\mathbf k}}
+\frac{M_{\mathbf k}\omega^2_{\mathbf k}}{2}
|Q_{\mathbf k}|^2.
$$

Canonical quantization introduces bosonic creation and annihilation operators,

$$
Q_{\mathbf k}
=\sqrt{\frac{\hbar}{2M_{\mathbf k}\omega_{\mathbf k}}}
\left(a_{\mathbf k}+a_{-\mathbf k}^{\dagger}\right),
$$

and the harmonic collective Hamiltonian becomes

$$
\boxed{
H=\sum_{\mathbf k}
\hbar\omega_{\mathbf k}
\left(a_{\mathbf k}^{\dagger}a_{\mathbf k}+\frac12\right).
}
$$

The excitation created by $a_{\mathbf k}^{\dagger}$ is a plasmon of energy $\hbar\omega_{\mathbf k}$ and crystal momentum $\hbar\mathbf k$. Plasmons behave as bosonic quasiparticles in the weak-excitation harmonic regime even though they are built from fermionic electrons. At sufficiently large wavevector or excitation density, decay into electron--hole pairs and interactions between collective modes invalidate the picture of indefinitely lived independent bosons.

## Bulk plasmons

A **bulk plasmon** is a longitudinal charge-density oscillation within a three-dimensional conductor. In the long-wavelength limit its energy is

$$
E_{\mathrm{pl}}=\hbar\omega_{p,\mathrm{scr}}.
$$

Typical simple metals have carrier densities of order $10^{28}$--$10^{29}\ \mathrm{m^{-3}}$ and plasmon energies of several to a few tens of electronvolts. Doped semiconductors have much smaller densities and often smaller effective masses; their screened plasma energies commonly occur in the infrared or terahertz range.

Because a bulk plasmon is longitudinal, a transverse plane light wave cannot directly excite it in an ideal infinite homogeneous medium. Charged-particle scattering, near fields, boundaries, disorder or nanostructuring can supply the required longitudinal electric field and momentum.

## Surface plasmons at a planar interface

At an interface between a conductor of permittivity $\varepsilon_m(\omega)$ and a dielectric of positive permittivity $\varepsilon_d$, charge can oscillate along the boundary. In the non-retarded limit, take electrostatic potentials proportional to

$$
\phi_d=Ae^{i\mathbf k_\parallel\cdot\mathbf r_\parallel-k_\parallel z}
\quad (z>0),
$$

$$
\phi_m=Be^{i\mathbf k_\parallel\cdot\mathbf r_\parallel+k_\parallel z}
\quad (z<0).
$$

Continuity of potential and of the normal displacement field gives the surface-mode condition

$$
\boxed{\varepsilon_m(\omega)+\varepsilon_d=0.}
$$

For a lossless Drude conductor,

$$
\varepsilon_m(\omega)
=\varepsilon_\infty-\frac{\omega_p^2}{\omega^2},
$$

and therefore

$$
\boxed{
\omega_{\mathrm{sp}}
=\frac{\omega_p}{\sqrt{\varepsilon_\infty+\varepsilon_d}}.
}
$$

At a vacuum interface with $\varepsilon_\infty=1$,

$$
\boxed{\omega_{\mathrm{sp}}=\frac{\omega_p}{\sqrt2}.}
$$

The surface charge and electric field decay exponentially away from the interface. The surface mode therefore lies below the unscreened bulk frequency.

When retardation is retained, the coupled electromagnetic surface plasmon polariton has dispersion

$$
\boxed{
k_\parallel=\frac{\omega}{c}
\left[
\frac{\varepsilon_m(\omega)\varepsilon_d}
{\varepsilon_m(\omega)+\varepsilon_d}
\right]^{1/2}.
}
$$

For negligible loss, a bound mode requires approximately $\operatorname{Re}\varepsilon_m<-\varepsilon_d$. Its in-plane wavevector exceeds that of light of the same frequency in the dielectric, which creates a momentum mismatch for direct illumination from the far field. At large $k_\parallel$, the branch approaches the non-retarded frequency defined by $\varepsilon_m+\varepsilon_d=0$.

## Localized surface plasmons

In a conducting nanoparticle smaller than the wavelength, the surface charge can oscillate without propagating along an extended interface. For a small sphere of permittivity $\varepsilon_m$ embedded in a dielectric $\varepsilon_d$, the quasistatic polarizability is

$$
\alpha_{\mathrm{sph}}
=4\pi\varepsilon_0\varepsilon_d a^3
\frac{\varepsilon_m-\varepsilon_d}
{\varepsilon_m+2\varepsilon_d}.
$$

The dipolar localized surface-plasmon resonance occurs near

$$
\boxed{\operatorname{Re}\varepsilon_m=-2\varepsilon_d.}
$$

For the lossless Drude form,

$$
\omega_{\mathrm{LSP}}
=\frac{\omega_p}{\sqrt{\varepsilon_\infty+2\varepsilon_d}}.
$$

Particle shape changes the depolarization factor and therefore the resonance. Interband response, radiation damping, surface scattering and the surrounding refractive index also shift and broaden it.

## Experimental excitation and detection

### Electron-energy-loss spectroscopy

Electron-energy-loss spectroscopy (EELS) is a direct method for exciting longitudinal charge modes. A typical transmission arrangement contains:

1. a monoenergetic electron gun and condenser optics;
2. a thin specimen through which the fast electrons pass;
3. angular or momentum-selection optics;
4. an electron energy analyser;
5. a detector recording intensity versus energy loss.

If an incident electron has energy $E_i$ and momentum $\mathbf p_i$, while the detected electron has $E_f$ and $\mathbf p_f$, the specimen receives

$$
\hbar\omega=E_i-E_f,
\qquad
\hbar\mathbf q=\mathbf p_i-\mathbf p_f.
$$

The double differential scattering probability is closely related to

$$
\operatorname{Im}\left[-\frac{1}{\varepsilon(\mathbf q,\omega)}\right].
$$

Momentum-resolved EELS can therefore measure plasmon dispersion. A sufficiently thick specimen emphasizes bulk losses, while reflection EELS and surface-sensitive geometries strongly sample surface modes. Multiple scattering can create peaks near integer multiples of a plasmon energy, so spectral interpretation must distinguish repeated losses from independent modes.

### Optical coupling to surface modes

An extended surface plasmon polariton has $k_\parallel$ larger than the wavevector available from light in the adjacent dielectric. Coupling methods provide extra in-plane momentum:

- In attenuated-total-reflection prism coupling, such as the Kretschmann geometry, an evanescent wave reaches a thin metal film and excites the surface mode at a reflectivity minimum.
- A diffraction grating supplies an integer multiple of the reciprocal grating vector.
- A near-field tip or nanoscale scatterer supplies a broad range of large wavevectors.

Localized surface plasmons of small particles can couple directly to light because the finite object breaks translational invariance. Their resonances are observed in extinction, absorption, scattering or near-field spectra.

## Damping and the lifetime of a plasmon

A normal mode with complex frequency

$$
\widetilde\omega=\omega_{\mathrm r}-i\Gamma
$$

has amplitude proportional to $e^{-\Gamma t}$. Its amplitude ring-down time is $\tau_A=1/\Gamma$, while its energy or mode-population lifetime is $\tau_E=1/(2\Gamma)$ because energy is quadratic in amplitude. Several mechanisms contribute:

### Collisional or Drude damping

Impurity, defect and phonon scattering produce the relaxation rate $\gamma$. In the weakly damped local Drude model, the plasmon pole has $\Gamma\simeq\gamma/2$.

### Landau damping

A collisionless collective wave can transfer energy resonantly to carriers whose velocity component along $\mathbf k$ is near the phase velocity $\omega/k$. In a degenerate electron gas, a plasmon becomes strongly damped when its $(k,\omega)$ enters the electron--hole continuum. This process is contained in the imaginary part of the nonlocal Lindhard dielectric function and is absent from a purely local cold-fluid model.

### Interband and many-body decay

Interband transitions provide an absorptive background and can hybridize with or screen the collective mode. Electron--electron processes, phonons and other collective excitations add decay channels. In nanoparticles, surface-assisted scattering and radiation losses become important; radiative damping generally increases with particle size.

A convenient weak-damping spectral quality factor is

$$
Q\simeq\frac{\omega_{\mathrm r}}{2\Gamma},
$$

corresponding to the energy-decay convention above. Linewidth and lifetime conventions should always be stated when experimental values are compared.

## Worked energy-scale calculations

### Free-electron metal

Let

$$
n_0=8.50\times10^{28}\ \mathrm{m^{-3}},
\qquad m=m_e,
\qquad \varepsilon_\infty=1.
$$

Using $e=1.602176634\times10^{-19}\ \mathrm C$, $m_e=9.1093837\times10^{-31}\ \mathrm{kg}$ and $\varepsilon_0=8.8541878\times10^{-12}\ \mathrm{F\,m^{-1}}$,

$$
\omega_p
=\sqrt{\frac{n_0e^2}{m_e\varepsilon_0}}
=1.645\times10^{16}\ \mathrm{s^{-1}}.
$$

Therefore

$$
f_p=\frac{\omega_p}{2\pi}
=2.62\times10^{15}\ \mathrm{Hz}
$$

and

$$
\hbar\omega_p=10.8\ \mathrm{eV}.
$$

For an ideal vacuum surface,

$$
\hbar\omega_{\mathrm{sp}}
=\frac{\hbar\omega_p}{\sqrt2}
=7.65\ \mathrm{eV}.
$$

These values are free-electron estimates. A particular metal can differ substantially because its effective carrier count, band mass and interband dielectric response are not those of the ideal model.

### Doped semiconductor

Take

$$
n_0=1.00\times10^{24}\ \mathrm{m^{-3}},
\qquad m^*=0.10m_e,
\qquad \varepsilon_\infty=12.
$$

The screened frequency is

$$
\omega_{p,\mathrm{scr}}
=\sqrt{\frac{n_0e^2}
{m^*\varepsilon_0\varepsilon_\infty}}
=5.15\times10^{13}\ \mathrm{s^{-1}},
$$

so

$$
\hbar\omega_{p,\mathrm{scr}}
=3.39\times10^{-2}\ \mathrm{eV}.
$$

The corresponding free-space photon wavelength is approximately

$$
\lambda_0=\frac{2\pi c}{\omega_{p,\mathrm{scr}}}
=36.6\ \mu\mathrm m,
$$

in the far-infrared. This density and effective-mass dependence permits semiconductor plasma frequencies to be tuned by doping or electrostatic gating.

## Preparation questions

1. Derive the electron plasma frequency from the continuity equation, equation of motion and Gauss's law.
2. Explain why the long-wavelength cold-plasma mode is dispersionless, and derive the pressure correction $\omega^2=\omega_p^2+v_s^2k^2$.
3. Derive the complex Drude dielectric function using the $e^{-i\omega t}$ convention and obtain its real and imaginary parts.
4. Show that a self-sustained longitudinal mode is determined by $\varepsilon_L(k,\omega)=0$.
5. Quantize a longitudinal plasma normal mode and define a plasmon.
6. Distinguish a longitudinal bulk plasmon from a transverse electromagnetic plasma mode.
7. Derive the non-retarded surface-plasmon condition at a planar conductor--dielectric interface and obtain $\omega_p/\sqrt2$ for an ideal vacuum interface.
8. Derive the retarded surface-plasmon-polariton dispersion relation and explain the optical momentum mismatch.
9. Obtain the localized dipolar plasmon condition for a small conducting sphere.
10. Describe a momentum-resolved EELS arrangement and explain how the loss function identifies bulk and surface plasmons.
11. Discuss collisional, Landau, interband and surface damping of plasmons.
12. Calculate the bulk and vacuum-surface plasmon energies for $n=5.0\times10^{28}\ \mathrm{m^{-3}}$, $m^*=1.2m_e$ and $\varepsilon_\infty=1$.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/plasma-oscillations-and-plasmons.mac' | relative_url }})

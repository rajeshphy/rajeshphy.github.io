---
title: "Polarons and Electron–Phonon Interaction in Ionic Crystals"
summary: "Fröhlich electron--LO-phonon coupling, polaron self-energy and mass, coupling regimes, transport, and the contrast with Holstein small polarons."
date: 2026-06-24 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - polarons
  - electron-phonon-interaction
  - frohlich-hamiltonian
  - ionic-crystals
permalink: /msc/sem-iv/polarons-in-ionic-crystals/
hidden: true
---

An electron moving through a polar ionic crystal displaces the positive and negative sublattices. The resulting polarization field acts back on the electron. The electron together with this self-consistent lattice-polarization cloud is a **polaron**. A polaron remains a mobile quasiparticle with the same electric charge as the bare carrier, but its ground-state energy, inertial mass, spectral function, and scattering rates differ from those of an electron moving in a rigid lattice.

The long-range interaction between a band electron and a longitudinal-optical (LO) phonon is described by the Fröhlich model. It is distinct from the local Holstein interaction often used to describe small polarons. Both models are electron--phonon models, but their momentum dependence, continuum limits, and localization physics are different.

## Origin of the polar interaction

Let $\varepsilon_\infty$ be the relative permittivity measured at frequencies high compared with ionic motion but below the electronic interband scale, and let $\varepsilon_s$ be the static relative permittivity. In a polar solid,

$$
\varepsilon_s>\varepsilon_\infty.
$$

The difference

$$
\Delta_\varepsilon^{-1}
=\frac{1}{\varepsilon_\infty}-\frac{1}{\varepsilon_s}>0
$$

measures the part of Coulomb screening produced by ionic motion. An electron is screened almost immediately by the electronic polarization $\varepsilon_\infty$; the slower ionic polarization responds on the LO-phonon time scale and produces the additional, retarded attractive potential responsible for polaron formation.

For a long-wavelength longitudinal mode, the polarization charge produces a scalar potential proportional to $1/q$. Consequently, the electron--phonon matrix element behaves as $V_q\propto1/q$ and $\lvert V_q\rvert^2\propto1/q^2$. This long-range small-$q$ singularity is the defining momentum-space feature of Fröhlich coupling.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-3/froehlich-polaron.png' | relative_url }}" alt="Electron surrounded by the extended polarization cloud of a large Froehlich polaron">
  <figcaption>A band electron displaces oppositely charged ions in opposite directions, creating an extended self-induced polarization field. The electron and this lattice distortion form one mobile quasiparticle with a lowered energy and an enhanced translational mass.</figcaption>
</figure>

## Fröhlich Hamiltonian in SI units

Consider one isotropic parabolic conduction band with band mass $m_b$, a dispersionless LO phonon of angular frequency $\omega_{\mathrm{LO}}$, and quantization volume $\mathcal V$. The Fröhlich Hamiltonian is

$$
\boxed{
H=\frac{\mathbf p^2}{2m_b}
+\sum_{\mathbf q}\hbar\omega_{\mathrm{LO}}
a_{\mathbf q}^\dagger a_{\mathbf q}
+\sum_{\mathbf q}\left[
V_q e^{i\mathbf q\cdot\mathbf r}a_{\mathbf q}
+V_q^\ast e^{-i\mathbf q\cdot\mathbf r}a_{\mathbf q}^\dagger
\right] }
$$

with

$$
\boxed{
V_q=i\left[
\frac{\hbar\omega_{\mathrm{LO}}}{2\varepsilon_0\mathcal V}
\frac{e^2}{q^2}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right)
\right]^{1/2} }.
$$

Here $\varepsilon_0$ is the vacuum permittivity and $\varepsilon_\infty,\varepsilon_s$ are dimensionless relative permittivities. The zero-point term $\tfrac12\hbar\omega_{\mathrm{LO}}$ has been omitted because it adds a carrier-independent constant. Different Fourier conventions redistribute factors of $\mathcal V$ between $V_q$ and the phonon operators but leave observable results unchanged.

The dimensionless Fröhlich coupling constant in this SI convention is

$$
\boxed{
\alpha=
\frac{e^2}{4\pi\varepsilon_0\hbar}
\sqrt{\frac{m_b}{2\hbar\omega_{\mathrm{LO}}}}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right) }.
$$

In Gaussian-unit formulas the factor $1/(4\pi\varepsilon_0)$ is absorbed into $e^2$; mixing the two conventions gives an incorrect value of $\alpha$.

The natural Fröhlich length is

$$
\ell_0=\sqrt{\frac{\hbar}{2m_b\omega_{\mathrm{LO}}}}.
$$

It is the inverse of the wave number at which the electron recoil energy equals one LO-phonon energy:

$$
\frac{\hbar^2q_0^2}{2m_b}=\hbar\omega_{\mathrm{LO}},
\qquad
q_0=\ell_0^{-1}.
$$

Equivalently,

$$
\alpha=\frac{e^2}{8\pi\varepsilon_0\ell_0
\hbar\omega_{\mathrm{LO}}}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right).
$$

Thus $\alpha$ compares the ionic part of the Coulomb energy at the phonon-recoil length with the LO-phonon quantum.

## Weak-coupling ground-state self-energy

At zero temperature, take the unperturbed state to be an electron at $\mathbf k=0$ and no phonons. The first-order correction vanishes because the interaction changes phonon number. In second-order perturbation theory, the intermediate state contains one phonon of wave vector $\mathbf q$ and an electron of momentum $-\hbar\mathbf q$:

$$
\Delta E_0^{(2)}
=-\sum_{\mathbf q}
\frac{|V_q|^2}
{\hbar\omega_{\mathrm{LO}}+\hbar^2q^2/(2m_b)}.
$$

Use

$$
\sum_{\mathbf q}\longrightarrow
\frac{\mathcal V}{(2\pi)^3}\int d^3q
$$

and insert $\lvert V_q\rvert^2$. The factors $q^2$ from $d^3q=4\pi q^2dq$ and $q^{-2}$ from the Fröhlich interaction cancel:

$$
\Delta E_0^{(2)}
=-\frac{\hbar\omega_{\mathrm{LO}}e^2}{4\pi^2\varepsilon_0}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right)
\int_0^\infty
\frac{dq}
{\hbar\omega_{\mathrm{LO}}+\hbar^2q^2/(2m_b)}.
$$

The remaining integral is

$$
\int_0^\infty
\frac{dq}{A+Bq^2}
=\frac{\pi}{2\sqrt{AB}},
$$

with $A=\hbar\omega_{\mathrm{LO}}$ and $B=\hbar^2/(2m_b)$. Therefore

$$
\Delta E_0^{(2)}
=-\frac{e^2}{4\pi\varepsilon_0}
\sqrt{\frac{m_b\omega_{\mathrm{LO}}}{2\hbar}}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right),
$$

or

$$
\boxed{E_0=-\alpha\hbar\omega_{\mathrm{LO}}+O(\alpha^2)}.
$$

The negative sign is the polarization binding energy. Translational invariance is not broken: the total momentum of the electron plus phonon cloud is a good quantum number, even though the electron is correlated with a spatial polarization pattern.

For general electron wave vector and complex energy, the lowest-order retarded self-energy at $T=0$ is

$$
\Sigma^{(1)}(\mathbf k,E)
=\sum_{\mathbf q}
\frac{|V_q|^2}
{E-\hbar\omega_{\mathrm{LO}}
-\varepsilon_{\mathbf k-\mathbf q}+i0^+},
$$

where

$$
\varepsilon_{\mathbf k}=\frac{\hbar^2k^2}{2m_b}.
$$

The quasiparticle dispersion satisfies the Dyson equation

$$
E_{\mathbf k}=\varepsilon_{\mathbf k}
+\operatorname{Re}\Sigma(\mathbf k,E_{\mathbf k}).
$$

Expanding the weak-coupling result near $k=0$ gives

$$
E_{\mathbf k}
=-\alpha\hbar\omega_{\mathrm{LO}}
+\frac{\hbar^2k^2}{2m_b}
\left(1-\frac{\alpha}{6}\right)
+O(k^4,\alpha^2).
$$

Writing the quadratic term as $\hbar^2k^2/(2m^\ast)$ yields

$$
\boxed{
\frac{m^\ast}{m_b}=1+\frac{\alpha}{6}+O(\alpha^2)}.
$$

The lattice cloud must be accelerated together with the carrier, so the effective mass increases. More accurate weak-coupling expansions for the three-dimensional Fröhlich model are

$$
\frac{E_0}{\hbar\omega_{\mathrm{LO}}}
=-\alpha-0.0159196\alpha^2+O(\alpha^3),
$$

$$
\frac{m^\ast}{m_b}
=1+\frac{\alpha}{6}+0.02362\alpha^2+O(\alpha^3).
$$

These are asymptotic weak-coupling results, not controlled formulas for arbitrarily large $\alpha$.

## Strong-coupling adiabatic limit

When $\alpha\gg1$, the polarization changes slowly compared with the electron motion. In the Pekar adiabatic treatment the phonon coordinates are replaced by a classical polarization field and then minimized for a normalized electron wavefunction $\psi(\mathbf r)$. Eliminating the polarization gives the functional

$$
E[\psi]=
\frac{\hbar^2}{2m_b}\int d^3r\,|\nabla\psi|^2
-\frac{e^2}{8\pi\varepsilon_0}
\left(\frac1{\varepsilon_\infty}-\frac1{\varepsilon_s}\right)
\int d^3r\,d^3r'
\frac{|\psi(\mathbf r)|^2|\psi(\mathbf r')|^2}
{|\mathbf r-\mathbf r'|}.
$$

The factor $1/2$ in the polarization energy prevents double counting of the self-induced field. Under a scale transformation $\psi_R(\mathbf r)=R^{-3/2}\psi(\mathbf r/R)$, the kinetic term scales as $R^{-2}$ and the polarization term as $-\alpha R^{-1}$ in polaron units. Minimization therefore gives

$$
R\propto\frac{\ell_0}{\alpha},
\qquad
E_0\propto-\alpha^2\hbar\omega_{\mathrm{LO}}.
$$

Numerical minimization of the Pekar functional gives the leading strong-coupling result

$$
\boxed{
E_0\simeq-0.108513\,\alpha^2
\hbar\omega_{\mathrm{LO}}\qquad(\alpha\to\infty)}.
$$

The translational effective mass grows as $\alpha^4$ in leading adiabatic strong-coupling theory. Its numerical prefactor is sensitive to how translational invariance and nonadiabatic corrections are restored, so the scaling is more robust than a simple variational prefactor. The weak- and strong-coupling expansions should not be extrapolated through the intermediate regime; path-integral, diagrammatic, or optimized variational methods are used there. The continuum Fröhlich model exhibits a smooth crossover rather than an exact self-trapping phase transition at a universal value of $\alpha$.

## Large and small polarons

The terms **large** and **small** refer primarily to the spatial extent of the lattice distortion relative to the lattice constant $a$, not simply to whether $\alpha$ is numerically greater or less than one.

A large polaron has a polarization cloud extending over many unit cells:

$$
r_p\gg a.
$$

The band dispersion may be approximated as parabolic, the phonon wave vectors important to the cloud lie near the Brillouin-zone centre, and a continuum Fröhlich description is appropriate. At weak coupling the scale is of order $\ell_0$; at strong coupling the Pekar radius decreases approximately as $\ell_0/\alpha$, so the continuum theory eventually becomes questionable if that radius approaches $a$.

A small polaron is localized mainly on one site or a few sites because a local lattice relaxation energy competes successfully with the electronic bandwidth. A standard local model is the Holstein Hamiltonian,

$$
H_{\mathrm H}=-t\sum_{\langle ij\rangle}
(c_i^\dagger c_j+c_j^\dagger c_i)
+\hbar\omega_0\sum_i b_i^\dagger b_i
+g\hbar\omega_0\sum_i n_i(b_i+b_i^\dagger),
$$

where $t$ is the nearest-neighbour hopping, $g$ is dimensionless in this convention, and the coupling is local in real space and independent of momentum. A Lang--Firsov transformation gives the local relaxation energy

$$
E_p=g^2\hbar\omega_0
$$

and, in the zero-temperature antiadiabatic narrowing factor,

$$
t_{\mathrm{eff}}=t e^{-g^2}.
$$

At finite temperature the corresponding thermal average gives

$$
t_{\mathrm{eff}}(T)
=t\exp\!\left[-g^2
\coth\!\left(\frac{\hbar\omega_0}{2k_BT}\right)
\right].
$$

A useful energetic ratio is

$$
\lambda=\frac{E_p}{zt},
$$

where $z$ is the coordination number and $zt$ is a characteristic half-bandwidth. The crossover depends also on $\hbar\omega_0/t$, dimensionality, carrier density, and interaction range, so $\lambda=1$ is a scale rather than a universal phase boundary.

The Fröhlich interaction is long ranged, $V_q\propto1/q$, whereas the Holstein interaction is local. Strong long-range coupling does not automatically imply a one-site Holstein small polaron, and a polar material can display intermediate-radius polarons for which neither limiting description is quantitatively complete.

## Phonon scattering and mobility

At temperature $T$, the LO-phonon occupation is

$$
n_{\mathrm{LO}}=
\frac{1}{\exp(\hbar\omega_{\mathrm{LO}}/k_BT)-1}.
$$

Fermi's golden rule gives the transition rate between band states $\mathbf k$ and $\mathbf k'$:

$$
W_{\mathbf k\to\mathbf k'}
=\frac{2\pi}{\hbar}|V_{\mathbf k'-\mathbf k}|^2
\left[
(n_{\mathrm{LO}}+1)
\delta(\varepsilon_{\mathbf k}-\varepsilon_{\mathbf k'}
-\hbar\omega_{\mathrm{LO}})
+n_{\mathrm{LO}}
\delta(\varepsilon_{\mathbf k'}-\varepsilon_{\mathbf k}
-\hbar\omega_{\mathrm{LO}})
\right].
$$

The first term is phonon emission and requires the initial electron to have at least one phonon quantum of available excess energy. The second is phonon absorption and is proportional to $n_{\mathrm{LO}}$. At $T=0$, a polaron at the band bottom cannot emit an LO phonon, so an ideal crystal has no LO-emission broadening of that ground state. Impurities, acoustic phonons, boundaries, and carrier--carrier scattering may still limit transport.

In a band-like large-polaron regime, a relaxation-time representation gives

$$
\mu_{\mathrm{drift}}=\frac{e\tau_{\mathrm{tr}}}{m^\ast}.
$$

The coupling reduces mobility both through $m^\ast>m_b$ and through temperature-dependent LO-phonon scattering. A reliable $\tau_{\mathrm{tr}}$ requires the angular factor $1-\cos\theta$, screening, band nonparabolicity, and the actual phonon dispersion; it cannot be inferred from the ground-state energy alone.

In the high-temperature incoherent small-polaron regime, transport occurs by thermally activated hopping. Its generic form is

$$
\mu_{\mathrm{hop}}(T)
\propto\frac{1}{T}
\exp\!\left(-\frac{E_a}{k_BT}\right),
$$

with a prefactor and activation energy $E_a$ dependent on adiabaticity, transfer integrals, disorder, and lattice reorganization. In the simplest symmetric nonadiabatic limit $E_a$ is of order $E_p/2$, but treating that estimate as universal is not justified.

## Spectroscopic signatures

The retarded electron Green function is

$$
G^R(\mathbf k,E)=
\frac{1}{E-\varepsilon_{\mathbf k}
-\Sigma^R(\mathbf k,E)},
$$

and the one-electron spectral function is

$$
A(\mathbf k,E)=-\frac1\pi\operatorname{Im}G^R(\mathbf k,E).
$$

The coherent quasiparticle peak follows the mass-renormalized dispersion. Incoherent phonon satellites occur at energy separations related to $\hbar\omega_{\mathrm{LO}}$. Photoemission can therefore show a narrowed coherent band accompanied by replicas or a broad phonon sideband, although other bosons and extrinsic losses must be excluded before assigning every satellite to a polaron.

At low frequency, a translationally mobile large polaron contributes a Drude-like optical response with the renormalized mass. At $T=0$, one-phonon absorption by a weak-coupling polaron begins when the photon can create an LO phonon together with carrier recoil, giving a continuum threshold near $\hbar\omega_{\mathrm{LO}}$. Spectral weight transferred from the coherent Drude part to finite-frequency phonon-assisted absorption provides information about coupling strength.

Small-polaron optical absorption is typically much broader because an optical hop is accompanied by a substantial local lattice reorganization. In the high-temperature classical limit it is often centred at an energy of order $2E_p$, but its exact shape and centre depend on the model, phonon spectrum, and electronic hopping. Activated dc mobility together with broad mid-infrared absorption is consequently more characteristic of small-polaron hopping than mass enhancement alone.

## Worked Fröhlich-coupling example

Consider an isotropic polar semiconductor with

$$
m_b=0.15m_e,
\qquad
\hbar\omega_{\mathrm{LO}}=60.0\,\mathrm{meV},
$$

$$
\varepsilon_\infty=5.0,
\qquad
\varepsilon_s=25.0.
$$

The ionic screening factor is

$$
\Delta_\varepsilon^{-1}
=\frac15-\frac1{25}=0.160.
$$

Using $e=1.60218\times10^{-19}\,\mathrm C$, $m_e=9.10938\times10^{-31}\,\mathrm{kg}$, and $\hbar=1.05457\times10^{-34}\,\mathrm{J\,s}$ gives

$$
\alpha=0.933.
$$

The recoil length is

$$
\ell_0=\sqrt{\frac{\hbar^2}{2m_b(\hbar\omega_{\mathrm{LO}})}}
=2.06\,\mathrm{nm}.
$$

If the lattice constant is about $0.5\,\mathrm{nm}$, this scale spans several cells, supporting a large-polaron continuum treatment at weak coupling.

The leading binding-energy estimate is

$$
E_0\simeq-\alpha\hbar\omega_{\mathrm{LO}}
=-55.99\,\mathrm{meV}.
$$

Including the displayed $O(\alpha^2)$ weak-coupling term gives

$$
E_0\simeq
-60.0[0.933+0.0159196(0.933)^2]\,\mathrm{meV}
=-56.82\,\mathrm{meV}.
$$

The corresponding perturbative mass estimate is

$$
\frac{m^\ast}{m_b}
\simeq1+\frac{0.933}{6}
+0.02362(0.933)^2
=1.176.
$$

Because $\alpha$ is close to unity, the second-order numbers are estimates at the edge of the clean weak-coupling regime, not precision predictions.

At $T=300\,\mathrm K$,

$$
n_{\mathrm{LO}}
=\frac{1}{\exp\!\left[(60.0\,\mathrm{meV})/
\{k_{\mathrm B}(300\,\mathrm K)\}\right]-1}
=0.109.
$$

LO-phonon absorption is therefore thermally allowed but substantially less probable than the spontaneous-emission factor $n_{\mathrm{LO}}+1=1.109$ for electrons energetic enough to emit a phonon.

## Preparation questions

1. Derive the Fröhlich matrix element and explain why it varies as $1/q$ in a polar continuum.
2. State the SI definition of the Fröhlich coupling constant and show explicitly that it is dimensionless.
3. Starting from second-order perturbation theory, derive $E_0=-\alpha\hbar\omega_{\mathrm{LO}}$.
4. Explain how the electron self-energy produces both a binding-energy shift and an enhanced effective mass.
5. Compare the assumptions and asymptotic predictions of weak-coupling Fröhlich theory and strong-coupling Pekar theory.
6. Distinguish large polarons from small polarons and compare the Fröhlich and Holstein Hamiltonians.
7. Derive the phonon emission and absorption terms in the golden-rule scattering rate and discuss their thresholds.
8. For $m_b=0.25m_e$, $\hbar\omega_{\mathrm{LO}}=40\,\mathrm{meV}$, $\varepsilon_\infty=4$, and $\varepsilon_s=16$, calculate $\alpha$, $\ell_0$, the leading binding energy, and the first-order mass enhancement.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/polarons-in-ionic-crystals.mac' | relative_url }})

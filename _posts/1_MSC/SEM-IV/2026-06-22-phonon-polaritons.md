---
title: "Phonon Polaritons: Coupled Electromagnetic and Optical Modes"
summary: "Maxwell--lattice coupling, phonon-polariton dispersion branches, reststrahlen gap, group velocity, and mode mixing."
date: 2026-06-22 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-iv
  - lecture
tags:
  - msc
  - semester-iv
  - condensed-matter
  - phonon-polaritons
  - optical-phonons
  - dielectric-dispersion
  - reststrahlen-band
permalink: /msc/sem-iv/phonon-polaritons/
hidden: true
---

A phonon polariton is a normal mode of the **combined** electromagnetic field and an infrared-active optical lattice vibration. It is neither a photon merely absorbed by a phonon nor a mechanical phonon with a small radiative correction. The normal-mode frequency and eigenvector must be obtained by solving Maxwell's equations and the ionic equation of motion simultaneously.

We consider a homogeneous, isotropic, nonmagnetic polar crystal with one infrared-active optical mode. The spatial and time dependence is $\exp[i(\mathbf k\cdot\mathbf r-\omega t)]$. Damping is initially neglected so that $\omega$ and $k$ are real in propagation bands. The high-frequency relative permittivity $\varepsilon_\infty$ contains electronic polarization, while $\omega_{\mathrm{TO}}$, $\omega_{\mathrm{LO}}$, and the ionic mode effective charge describe the lattice contribution.

## Coupled field and lattice equations

Let $\mathbf u$ be the relative ionic displacement, $\mu$ the reduced mass per primitive cell, $N$ the number of cells per unit volume, and $Z^\ast e$ the mode effective charge. The transverse driven oscillator equation is

$$
\mu(\omega_{\mathrm{TO}}^2-\omega^2)\mathbf u
=Z^\ast e\,\mathbf E.
$$

The ionic polarization is

$$
\mathbf P=N Z^\ast e\,\mathbf u,
$$

so

$$
\mathbf D=\varepsilon_0\varepsilon_\infty\mathbf E
+\mathbf P.
$$

Eliminating $\mathbf u$ gives

$$
\mathbf D=\varepsilon_0\varepsilon(\omega)\mathbf E,
$$

with

$$
\varepsilon(\omega)=\varepsilon_\infty
+\frac{N(Z^\ast e)^2}
{\varepsilon_0\mu(\omega_{\mathrm{TO}}^2-\omega^2)}.
$$

Using

$$
\omega_{\mathrm{LO}}^2-\omega_{\mathrm{TO}}^2
=\frac{N(Z^\ast e)^2}
{\varepsilon_0\varepsilon_\infty\mu},
$$

the dielectric function becomes

$$
\boxed{
\varepsilon(\omega)=\varepsilon_\infty
\frac{\omega_{\mathrm{LO}}^2-\omega^2}
{\omega_{\mathrm{TO}}^2-\omega^2}}.
$$

For a source-free transverse plane wave, $\mathbf k\cdot\mathbf E=0$. Maxwell's equations give

$$
k^2\mathbf E=\mu_0\omega^2\mathbf D,
$$

and therefore

$$
\boxed{c^2k^2=\omega^2\varepsilon(\omega)}.
$$

This equation is not the dispersion of a photon in a fixed background, because $\varepsilon$ contains a pole at the mechanical TO frequency. It is the secular equation of the coupled electromagnetic--lattice system.

The same secular equation can be retained as a two-component eigenproblem:

$$
\begin{pmatrix}
\mu(\omega_{\mathrm{TO}}^2-\omega^2) & -Z^\ast e\\[2mm]
-\dfrac{\omega^2N Z^\ast e}{\varepsilon_0}
& c^2k^2-\varepsilon_\infty\omega^2
\end{pmatrix}
\begin{pmatrix}\mathbf u\\ \mathbf E\end{pmatrix}=0.
$$

The first row is the ionic equation. The second row is Maxwell's equation written as

$$
(c^2k^2-\varepsilon_\infty\omega^2)\mathbf E
=\frac{\omega^2}{\varepsilon_0}\mathbf P.
$$

The determinant reproduces $c^2k^2=\omega^2\varepsilon(\omega)$.

## Exact upper and lower polariton branches

Insert the factorized dielectric function into the wave equation:

$$
c^2k^2(\omega_{\mathrm{TO}}^2-\omega^2)
=\varepsilon_\infty\omega^2
(\omega_{\mathrm{LO}}^2-\omega^2).
$$

Rearrangement gives a quadratic equation in $x=\omega^2$:

$$
\varepsilon_\infty x^2
-\left(\varepsilon_\infty\omega_{\mathrm{LO}}^2+c^2k^2\right)x
+c^2k^2\omega_{\mathrm{TO}}^2=0.
$$

Define the bare photon angular frequency in the electronic background,

$$
\Omega_k=\frac{ck}{\sqrt{\varepsilon_\infty}}.
$$

The two transverse normal-mode branches are

$$
\boxed{
\omega_\pm^2(k)=\frac12\left[
\omega_{\mathrm{LO}}^2+\Omega_k^2
\pm\sqrt{(\omega_{\mathrm{LO}}^2+\Omega_k^2)^2
-4\Omega_k^2\omega_{\mathrm{TO}}^2}
\right] }.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-iv/unit-3/phonon-polariton-dispersion.png' | relative_url }}" alt="Upper and lower phonon-polariton dispersion branches with the reststrahlen interval">
  <figcaption>Coupling between the transverse optical vibration and the electromagnetic field produces lower and upper polariton branches. No propagating bulk branch lies between $\omega_{\mathrm{TO}}$ and $\omega_{\mathrm{LO}}$; the mode character evolves continuously between photon-like and phonon-like limits outside this interval.</figcaption>
</figure>

Several algebraic relations are useful:

$$
\omega_+^2+\omega_-^2
=\omega_{\mathrm{LO}}^2+\Omega_k^2,
$$

$$
\omega_+^2\omega_-^2
=\Omega_k^2\omega_{\mathrm{TO}}^2.
$$

At $k=0$,

$$
\omega_-(0)=0,
\qquad
\omega_+(0)=\omega_{\mathrm{LO}}.
$$

The upper branch begins at the longitudinal frequency even though the propagating polariton is transverse for every nonzero $k$. At exactly $k=0$, Maxwell's transverse/longitudinal directional distinction is singular; the electric restoring field contained in the coupled secular equation produces the LO limiting frequency.

In the long-wavelength limit the lower branch is

$$
\omega_-^2\simeq
\Omega_k^2\frac{\omega_{\mathrm{TO}}^2}
{\omega_{\mathrm{LO}}^2}
=\frac{c^2k^2}{\varepsilon_s},
$$

where

$$
\varepsilon_s=\varepsilon_\infty
\frac{\omega_{\mathrm{LO}}^2}{\omega_{\mathrm{TO}}^2}.
$$

Thus

$$
\omega_-(k)\simeq\frac{ck}{\sqrt{\varepsilon_s}}.
$$

The lattice follows the slowly varying field nearly adiabatically, and the photon propagates with the static dielectric constant.

For large $k$ within the range where a local dielectric model remains meaningful,

$$
\omega_-^2\simeq\omega_{\mathrm{TO}}^2
-\frac{\omega_{\mathrm{TO}}^2
(\omega_{\mathrm{LO}}^2-\omega_{\mathrm{TO}}^2)}
{\Omega_k^2}+O(\Omega_k^{-4}),
$$

and

$$
\omega_+^2\simeq
\Omega_k^2+\omega_{\mathrm{LO}}^2-\omega_{\mathrm{TO}}^2
+O(\Omega_k^{-2}).
$$

Therefore the lower branch approaches $\omega_{\mathrm{TO}}$ from below and becomes phonon-like, while the upper branch becomes photon-like and approaches the electronic-background light line.

## Forbidden interval and reststrahlen response

The lossless dielectric function has the signs

$$
\begin{array}{c|c}
\text{frequency interval} & \varepsilon(\omega)\\ \hline
0<\omega<\omega_{\mathrm{TO}} & \varepsilon>0\\
\omega_{\mathrm{TO}}<\omega<\omega_{\mathrm{LO}} & \varepsilon<0\\
\omega>\omega_{\mathrm{LO}} & \varepsilon>0.
\end{array}
$$

Since $k^2=\varepsilon\omega^2/c^2$, no real bulk wave vector exists for

$$
\boxed{\omega_{\mathrm{TO}}<\omega<\omega_{\mathrm{LO}}}.
$$

The lower polariton branch remains below $\omega_{\mathrm{TO}}$, and the upper branch remains above $\omega_{\mathrm{LO}}$. The interval between them is the polariton stop band and, in infrared reflection, the reststrahlen band. This is not an arbitrary avoided-crossing gap: its exact edges are the pole and zero of the lattice dielectric function in the lossless local model.

When damping is included,

$$
\varepsilon(\omega)=\varepsilon_\infty
+\frac{\varepsilon_\infty
(\omega_{\mathrm{LO}}^2-\omega_{\mathrm{TO}}^2)}
{\omega_{\mathrm{TO}}^2-\omega^2-i\gamma\omega},
$$

Then $k$ is complex for real $\omega$. The real part of $k$ describes phase accumulation and the imaginary part describes attenuation. The sharp forbidden interval becomes a strongly reflecting, finitely absorbing band.

## Polariton eigenvectors and character mixing

The ionic displacement relative to the electric field follows from the first row of the coupled equations:

$$
\boxed{
\frac{\mathbf u}{\mathbf E}
=\frac{Z^\ast e}
{\mu(\omega_{\mathrm{TO}}^2-\omega^2)}}.
$$

Correspondingly,

$$
\frac{\mathbf P}{\varepsilon_0\varepsilon_\infty\mathbf E}
=\frac{\omega_{\mathrm{LO}}^2-\omega_{\mathrm{TO}}^2}
{\omega_{\mathrm{TO}}^2-\omega^2}.
$$

These ratios determine the relative amplitudes once either $\mathbf E$ or $\mathbf u$ is chosen. They do not by themselves give a photon or phonon probability, because the two coordinates have different dimensions and the energy normalization of a dispersive electromagnetic mode contains $d(\omega\varepsilon)/d\omega$.

The character can be assigned from continuous limiting behaviour:

- As $k\to0$, the lower branch is photon-like in a medium of static permittivity $\varepsilon_s$, with the ionic polarization following the field quasistatically.
- As $k\to\infty$, the lower branch approaches the TO vibration, its slope tends to zero, and it is predominantly lattice-like.
- At $k=0$, the upper branch starts as the field-coupled LO lattice mode.
- At large $k$, the upper branch approaches the photon light line in the electronic background and becomes predominantly electromagnetic.

Around the region where the uncoupled light line and optical-phonon frequency would intersect, neither description alone is adequate. The two eigenfrequencies repel and both eigenvectors contain appreciable field and lattice amplitudes.

## Group velocity

Differentiate the implicit dispersion relation

$$
F(k,\omega)=c^2k^2-\omega^2\varepsilon(\omega)=0.
$$

This gives

$$
2c^2k-
\left[2\omega\varepsilon(\omega)
+\omega^2\frac{d\varepsilon}{d\omega}\right]
\frac{d\omega}{dk}=0,
$$

so the lossless group velocity is

$$
\boxed{
v_g=\frac{d\omega}{dk}
=\frac{c^2k}
{\omega\varepsilon(\omega)
+\dfrac{\omega^2}{2}\dfrac{d\varepsilon}{d\omega}} }.
$$

The derivative term is the signature of material dispersion; omitting it incorrectly gives $c/\sqrt\varepsilon$. Near a flat, phonon-like part of the lower branch, $d\varepsilon/d\omega$ is large and $v_g$ becomes small.

An explicit branch derivative is obtained by setting $y=\Omega_k^2$ and

$$
\Delta(y)=\sqrt{(\omega_{\mathrm{LO}}^2+y)^2
-4y\omega_{\mathrm{TO}}^2}.
$$

Then

$$
\frac{d\omega_\pm^2}{dy}
=\frac12\left[
1\pm\frac{y+\omega_{\mathrm{LO}}^2
-2\omega_{\mathrm{TO}}^2}{\Delta(y)}
\right],
$$

and

$$
v_{g,\pm}
=\frac{c^2k}{\varepsilon_\infty\omega_\pm}
\frac{d\omega_\pm^2}{dy}.
$$

At $k\to0$, the lower-branch result reduces to $c/\sqrt{\varepsilon_s}$.

## Surface phonon polaritons

Although no propagating bulk polariton exists inside the reststrahlen interval, an interface can support a bound surface phonon polariton. For a crystal with $\varepsilon(\omega)$ next to a nondispersive dielectric $\varepsilon_d$, the transverse-magnetic surface-mode dispersion is

$$
k_\parallel=\frac{\omega}{c}
\sqrt{\frac{\varepsilon(\omega)\varepsilon_d}
{\varepsilon(\omega)+\varepsilon_d}}.
$$

A low-loss bound mode requires $\operatorname{Re}\varepsilon<-\varepsilon_d$. In the nonretarded limit $k_\parallel\gg\omega/c$, its frequency approaches the solution of

$$
\varepsilon(\omega_{\mathrm{SO}})+\varepsilon_d=0.
$$

For the one-oscillator dielectric function,

$$
\boxed{
\omega_{\mathrm{SO}}^2
=\frac{\varepsilon_\infty\omega_{\mathrm{LO}}^2
+\varepsilon_d\omega_{\mathrm{TO}}^2}
{\varepsilon_\infty+\varepsilon_d}}.
$$

This frequency lies between $\omega_{\mathrm{TO}}$ and $\omega_{\mathrm{LO}}$. Prism coupling, gratings, and infrared near-field microscopy provide the extra parallel momentum needed to excite and map the surface branch.

## Worked branch calculation

Take

$$
\varepsilon_\infty=2.50,
\qquad
\frac{\omega_{\mathrm{TO}}}{2\pi}=5.00\,\mathrm{THz},
\qquad
\frac{\omega_{\mathrm{LO}}}{2\pi}=7.477\,\mathrm{THz}.
$$

The static permittivity is

$$
\varepsilon_s=2.50\left(\frac{7.477}{5.00}\right)^2
=5.591,
$$

and the small-$k$ lower-branch velocity is

$$
v_g(0)=\frac{c}{\sqrt{5.591}}=0.4229c.
$$

Choose $k$ so that the bare electronic-background photon frequency is

$$
\frac{\Omega_k}{2\pi}=6.00\,\mathrm{THz}.
$$

This corresponds to

$$
k=\frac{\sqrt{\varepsilon_\infty}\Omega_k}{c}
=1.988\times10^5\,\mathrm{m^{-1}}.
$$

Because all terms in the branch formula are homogeneous in frequency, ordinary frequencies in THz may be used consistently inside the squared ratios. Thus

$$
f_\pm^2=\frac12\left[
7.477^2+6.00^2
\pm\sqrt{(7.477^2+6.00^2)^2
-4(6.00)^2(5.00)^2}
\right],
$$

which gives

$$
f_-=3.338\,\mathrm{THz},
\qquad
f_+=8.987\,\mathrm{THz}.
$$

The branch derivative gives

$$
\frac{v_{g,-}}{c/\sqrt{\varepsilon_\infty}}=0.3577,
\qquad
\frac{v_{g,+}}{c/\sqrt{\varepsilon_\infty}}=0.5348.
$$

For a vacuum interface, $\varepsilon_d=1$, the nonretarded surface-mode frequency is

$$
\frac{\omega_{\mathrm{SO}}}{2\pi}
=\left[
\frac{(2.50)(7.477)^2+(5.00)^2}{3.50}
\right]^{1/2}
=6.861\,\mathrm{THz},
$$

which lies inside the $5.00$--$7.477\,\mathrm{THz}$ bulk reststrahlen interval.

## Preparation questions

1. Starting from Maxwell's equations and the ionic oscillator equation, derive the phonon-polariton secular equation.
2. Obtain the exact upper and lower polariton branches and prove their sum and product relations.
3. Derive the $k\to0$ and large-$k$ asymptotes of both branches and identify their photon-like and phonon-like limits.
4. Why is there no propagating bulk polariton between $\omega_{\mathrm{TO}}$ and $\omega_{\mathrm{LO}}$ in the lossless local model?
5. Derive the group-velocity formula containing $d\varepsilon/d\omega$ and discuss its behaviour near the TO asymptote.
6. Derive the nonretarded surface-phonon-polariton frequency at a crystal--dielectric interface.
7. For $\varepsilon_\infty=4$, $\omega_{\mathrm{TO}}/(2\pi)=6\,\mathrm{THz}$, and $\omega_{\mathrm{LO}}/(2\pi)=9\,\mathrm{THz}$, calculate both polariton frequencies when $\Omega_k/(2\pi)=7\,\mathrm{THz}$.

[Maxima worksheet]({{ '/assets/maxima/msc/sem-iv/unit-3/phonon-polaritons.mac' | relative_url }})

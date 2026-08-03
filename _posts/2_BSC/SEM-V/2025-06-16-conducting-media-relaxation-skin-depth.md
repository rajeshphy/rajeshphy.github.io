---
title: "Electromagnetic Waves in Conductors: Relaxation and Skin Depth"
summary: "Charge relaxation, complex propagation constant, attenuation, conductor impedance, and skin depth."
date: 2025-06-16 09:00:00 +0530
categories:
  - bsc-v
tags: [bsc, semester-v, electromagnetic-theory, mj-8, unit-ii, conducting-media, skin-depth]
permalink: /bsc/sem-v/mj-8/unit-ii/conducting-media-relaxation-skin-depth/
---

In a homogeneous ohmic conductor,

$$\mathbf J=\sigma\mathbf E,
\qquad
\mathbf D=\epsilon\mathbf E,
\qquad
\mathbf B=\mu\mathbf H.$$

The conduction current and displacement current are both present. Their magnitude ratio for a harmonic field is

$$\boxed{\frac{J}{\lvert\partial D/\partial t\rvert}=\frac{\sigma}{\omega\epsilon}}.$$

A good conductor at a given frequency satisfies $\sigma\gg\omega\epsilon$; a good dielectric satisfies $\sigma\ll\omega\epsilon$.

## Charge-relaxation time

Take the divergence of Ohm's law and use Gauss's law:

$$\nabla\cdot\mathbf J
=\sigma\nabla\cdot\mathbf E
=\frac{\sigma}{\epsilon}\rho.$$

Charge continuity, $\nabla\cdot\mathbf J+\partial\rho/\partial t=0$, then becomes

$$\frac{\partial\rho}{\partial t}+\frac{\sigma}{\epsilon}\rho=0.$$

Separating variables gives

$$\boxed{\rho(t)=\rho(0)e^{-t/\tau}},
\qquad
\boxed{\tau=\frac{\epsilon}{\sigma}}.$$

$\tau$ is the charge-relaxation time in seconds. It is the time in which an initially deposited volume charge falls to $1/e$ of its initial value.

## Wave equation with ohmic loss

In a source-free region inside the conductor,

$$\nabla\times\mathbf E=-\mu\frac{\partial\mathbf H}{\partial t},
\qquad
\nabla\times\mathbf H=\sigma\mathbf E+\epsilon\frac{\partial\mathbf E}{\partial t}.$$

Taking the curl of Faraday's law, using $\nabla\cdot\mathbf E=0$ away from the relaxed charge, gives

$$\boxed{\nabla^2\mathbf E
-\mu\sigma\frac{\partial\mathbf E}{\partial t}
-\mu\epsilon\frac{\partial^2\mathbf E}{\partial t^2}=0}.$$

The term proportional to the first time derivative produces attenuation.

Use the convention

$$\mathbf E(z,t)=\Re\!\left\{\mathbf E_0e^{i(\widetilde k z-\omega t)}\right\},
\qquad
\widetilde k=\beta+i\alpha,$$

where $\alpha>0$. Since $e^{i\widetilde kz}=e^{i\beta z}e^{-\alpha z}$, $\beta$ is the phase constant in $\mathrm{rad\,m^{-1}}$ and $\alpha$ is the attenuation constant in $\mathrm{Np\,m^{-1}}$. Substitution gives

$$\boxed{\widetilde{k}^{\,2}=\omega^2\mu\epsilon+i\omega\mu\sigma}.$$

Equating real and imaginary parts of $(\beta+i\alpha)^2$,

$$\beta^2-\alpha^2=\omega^2\mu\epsilon,
\qquad
2\alpha\beta=\omega\mu\sigma.$$

Solving these two equations with $\alpha,\beta>0$ gives

$$\boxed{\alpha=\omega\sqrt{\frac{\mu\epsilon}{2}
\left[\sqrt{1+\left(\frac{\sigma}{\omega\epsilon}\right)^2}-1\right]}},$$

$$\boxed{\beta=\omega\sqrt{\frac{\mu\epsilon}{2}
\left[\sqrt{1+\left(\frac{\sigma}{\omega\epsilon}\right)^2}+1\right]}}.$$

The phase velocity is $v_p=\omega/\beta$ and the wavelength in the conductor is $2\pi/\beta$.

## Skin depth

The field amplitude falls as $e^{-\alpha z}$. The skin depth is therefore defined by

$$\boxed{\delta=\frac1\alpha},$$

so $\lvert E(\delta)\rvert=E_0/e$. Intensity is proportional to $\lvert E\rvert^2$, hence it falls to $e^{-2}$ at one skin depth.

For a good conductor, $\sigma/(\omega\epsilon)\gg1$, and the exact expressions reduce to

$$\boxed{\alpha\simeq\beta\simeq\sqrt{\frac{\omega\mu\sigma}{2}}},
\qquad
\boxed{\delta\simeq\sqrt{\frac{2}{\omega\mu\sigma}}}.$$

Thus increasing frequency, permeability, or conductivity confines the field more strongly to the surface.

<figure class="diagram-figure diagram-pan" tabindex="0">
  <img src="{{ '/assets/images/bsc/sem-v/mj-8/unit-ii/skin-depth.png' | relative_url }}" alt="Equation-generated exponential decay of electromagnetic field amplitude with depth in a conductor" loading="lazy">
  <figcaption>The skin depth is the $1/e$ amplitude distance. Editable <a href="{{ '/assets/tikz/bsc/sem-v/mj-8/unit-ii/skin-depth.tex' | relative_url }}">TikZ source</a>.</figcaption>
</figure>

## Complex wave impedance

Faraday's law for the same convention gives $\widetilde k\times\mathbf E_0=\omega\mu\mathbf H_0$. Therefore

$$\boxed{\widetilde\eta=\frac{E_0}{H_0}
=\frac{\omega\mu}{\widetilde k}
=\sqrt{\frac{\mu}{\epsilon+i\sigma/\omega}}}.$$

Because $\widetilde\eta$ is complex, $\mathbf E$ and $\mathbf H$ are not exactly in phase. In the good-conductor limit,

$$\widetilde\eta\simeq(1-i)\sqrt{\frac{\omega\mu}{2\sigma}}$$

for the $e^{-i\omega t}$ convention used here. Reversing the time convention complex-conjugates this expression but leaves all measurable attenuation and power unchanged.

## Solved Problems

### 1. Field penetration into copper

Treat copper as a nonmagnetic good conductor with $\sigma=5.80\times10^7\ \mathrm{S\,m^{-1}}$. At $f=1.00\ \mathrm{MHz}$, find the skin depth and attenuation constant. Also find the amplitude and intensity fractions remaining at a depth $3\delta$.

**Solution.** With the $e^{i(\beta z-\omega t)}e^{-\alpha z}$ convention, $+z$ is the inward direction and $\alpha>0$. The good-conductor approximation gives

$$\delta=\sqrt{\frac{2}{\omega\mu_0\sigma}}
=\sqrt{\frac{2}{(2\pi\times10^6)(4\pi\times10^{-7})(5.80\times10^7)}}
=6.609\times10^{-5}\ \mathrm m.$$

Therefore

$$\boxed{\delta=66.1\ \mathrm{\mu m}},
\qquad
\boxed{\alpha=\delta^{-1}=1.513\times10^4\ \mathrm{Np\,m^{-1}}}.$$

At $z=3\delta$,

$$\frac{\lvert E\rvert}{E_0}=e^{-3}=0.04979,
\qquad
\frac{I}{I_0}=e^{-6}=0.002479.$$

Only $4.98\%$ of the field amplitude and $0.248\%$ of the intensity remain. The product $\alpha\delta=1$ is dimensionless. Increasing $f$ makes $\delta\propto f^{-1/2}$ smaller; the limit $z\to0$ returns unit amplitude.

### 2. Relaxation of charge in a lossy dielectric

A material has $\epsilon_r=80.0$, $\sigma=0.0200\ \mathrm{S\,m^{-1}}$, and initial volume charge density $\rho_0=5.00\ \mathrm{nC\,m^{-3}}$. Find its relaxation time and the charge density after $0.100\ \mathrm{\mu s}$.

**Solution.** The relaxation time is

$$\tau=\frac{\epsilon}{\sigma}
=\frac{80\epsilon_0}{0.0200}
=3.542\times10^{-8}\ \mathrm s=35.4\ \mathrm{ns}.$$

The continuity-equation solution gives

$$\rho(t)=\rho_0e^{-t/\tau}
=5.00e^{-100/35.42}\ \mathrm{nC\,m^{-3}}
=0.2970\ \mathrm{nC\,m^{-3}}.$$

Thus

$$\boxed{\tau=35.4\ \mathrm{ns},\qquad
\rho(0.100\ \mathrm{\mu s})=0.297\ \mathrm{nC\,m^{-3}}}.$$

The sign of $\rho$ is preserved while its magnitude decays; positive conductivity cannot amplify free volume charge in this model. Since $\mathrm{(F\,m^{-1})/(S\,m^{-1})=s}$, $\tau$ has the required unit. The limits $\sigma\to0$ and $t\to0$ respectively give infinite relaxation time and the initial charge.

## Descriptive Questions

1. Derive the charge-relaxation equation from Ohm's law, Gauss's law, and charge continuity.
2. Explain physically why the propagation constant and wave impedance of a conductor are complex.
3. Distinguish the $1/e$ amplitude skin depth from the corresponding intensity attenuation length.
4. State the condition for a good conductor and explain how changing frequency can move one material between conduction- and displacement-current regimes.

## Numerical Problems

1. For $\sigma=4.00\ \mathrm{S\,m^{-1}}$, $\epsilon_r=80.0$, and $f=1.00\ \mathrm{GHz}$, calculate $\sigma/(\omega\epsilon)$.
   **Final answer:** $\boxed{\sigma/(\omega\epsilon)=0.899}$, so neither term is overwhelmingly dominant.
2. Find the magnitude of the good-conductor wave impedance of copper at $1.00\ \mathrm{MHz}$ using $\sigma=5.80\times10^7\ \mathrm{S\,m^{-1}}$.
   **Final answer:** $\boxed{\lvert\widetilde\eta\rvert=0.369\ \mathrm{m\Omega}}$.
3. At what frequency does nonmagnetic copper with $\sigma=5.80\times10^7\ \mathrm{S\,m^{-1}}$ have a good-conductor skin depth of $1.00\ \mathrm{mm}$?
   **Final answer:** $\boxed{f=4.37\ \mathrm{kHz}}$.

The exact conductor identities are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}), and every worked and numerical value above is checked in the [MJ-8 problem-verification worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/problem-checks.mac' | relative_url }}); every printed residual and check is zero.

## References

1. [Skin effect - Wikipedia](https://en.wikipedia.org/wiki/Skin_effect)
2. [MIT 6.013, Charge Relaxation in Uniform Conductors](https://web.mit.edu/6.013_book/www/chapter7/7.7.html)
3. [MIT 6.013, Skin Effect](https://web.mit.edu/6.013_book/www/chapter10/10.7.html)

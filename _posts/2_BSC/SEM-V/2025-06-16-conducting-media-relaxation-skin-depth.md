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

<figure class="post-figure">
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

The exact real/imaginary propagation relations and the good-conductor skin-depth limit are checked in the [Unit II Maxima worksheet]({{ '/assets/maxima/bsc/sem-v/mj-8/conductors-fresnel-guides.mac' | relative_url }}); every printed residual is zero.

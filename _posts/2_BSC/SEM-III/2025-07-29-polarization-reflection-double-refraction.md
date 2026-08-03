---
title: "Polarization by Reflection and Double Refraction"
summary: "Brewster's law from the Fresnel boundary conditions, ordinary and extraordinary waves in a uniaxial crystal, and the Nicol prism."
date: 2025-07-29 09:00:00 +0530
categories:
  - bsc-iii
tags: [waves-and-optics, polarization, brewster-law, double-refraction, nicol-prism]
permalink: /bsc/sem-iii/polarization-reflection-double-refraction/
hidden: true
---

Light propagating along $\hat{\mathbf k}$ is transverse: its electric field lies in the plane perpendicular to $\hat{\mathbf k}$. Unpolarized light has no fixed transverse direction, whereas plane-polarized light oscillates along one fixed direction.

## Polarization by reflection

Let light pass from a non-magnetic medium of refractive index $n_1$ into one of index $n_2$. The plane containing the incident ray and the surface normal is the plane of incidence. Resolve the electric field into

- $s$ polarization, perpendicular to that plane, and
- $p$ polarization, parallel to that plane.

For the $p$ component, let $E_i,E_r,E_t$ be signed field amplitudes. Continuity of tangential $\mathbf E$ and $\mathbf H$, together with $H=nE/Z_0$ in a non-magnetic dielectric, gives

$$
(E_i-E_r)\cos i=E_t\cos r,
\qquad
n_1(E_i+E_r)=n_2E_t.
$$

Put $r_p=E_r/E_i$ and eliminate $E_t$. The second equation gives

$$
\frac{E_t}{E_i}=\frac{n_1}{n_2}(1+r_p).
$$

Substitution in the first gives

$$
n_2(1-r_p)\cos i=n_1(1+r_p)\cos r,
$$

so

$$
\boxed{r_p=
\frac{n_2\cos i-n_1\cos r}
{n_2\cos i+n_1\cos r}}.
$$

At the polarizing, or Brewster, angle $i_B$, the reflected $p$ amplitude vanishes. Therefore

$$
n_2\cos i_B=n_1\cos r_B. \tag{1}
$$

Snell's law gives

$$
n_1\sin i_B=n_2\sin r_B. \tag{2}
$$

Equations (1) and (2) give two expressions for the same index ratio:

$$
\frac{n_2}{n_1}
=\frac{\cos r_B}{\cos i_B}
=\frac{\sin i_B}{\sin r_B}
\quad\Longrightarrow\quad
\sin i_B\cos i_B=\sin r_B\cos r_B.
$$

For distinct media and angles between $0$ and $\pi/2$, this requires

$$
i_B+r_B=\frac{\pi}{2}.
$$

Using this in Snell's law,

$$
n_1\sin i_B=n_2\cos i_B,
$$

and hence Brewster's law is

$$
\boxed{\tan i_B=\frac{n_2}{n_1}}.
$$

Thus the reflected and refracted rays are perpendicular at $i_B$. The reflected beam contains no $p$ component, so reflection of unpolarized light at this angle produces completely $s$-polarized reflected light.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/brewster-reflection.png' | relative_url }}" alt="Brewster-angle reflection showing perpendicular reflected and refracted rays and the s and p polarization directions" loading="lazy">
  <figcaption>At the Brewster angle the Fresnel coefficient $r_p$ is zero and $i_B+r_B=90^\circ$.</figcaption>
</figure>

## Double refraction in a uniaxial crystal

In an isotropic dielectric, $\mathbf D=\epsilon\mathbf E$ and every transverse direction has the same refractive index. In a uniaxial crystal with optic axis $z$,

$$
\mathbf D=
\begin{pmatrix}
\epsilon_\perp&0&0\\
0&\epsilon_\perp&0\\
0&0&\epsilon_\parallel
\end{pmatrix}\mathbf E,
\qquad
n_o^2=\frac{\epsilon_\perp}{\epsilon_0},
\qquad
n_e^2=\frac{\epsilon_\parallel}{\epsilon_0}.
$$

Consider a plane wave with wave normal

$$
\hat{\mathbf k}=(\sin\theta,0,\cos\theta),
$$

where $\theta$ is measured from the optic axis. Substituting a field proportional to $e^{i(\mathbf k\cdot\mathbf r-\omega t)}$ into Maxwell's equations gives

$$
n^2\!\left[\hat{\mathbf k}(\hat{\mathbf k}\cdot\mathbf E)-\mathbf E\right]
+\boldsymbol\epsilon_r\mathbf E=0,
\qquad n=\frac{ck}{\omega}.
$$

For $\mathbf E=E_y\hat{\mathbf y}$ this immediately gives $n=n_o$. This is the ordinary wave: its refractive index is independent of direction and its electric field is perpendicular to the principal section formed by $\hat{\mathbf k}$ and the optic axis.

For the extraordinary wave, $\mathbf E=(E_x,0,E_z)$ lies in the principal section. Its two component equations are

$$
(n_o^2-n^2\cos^2\theta)E_x
+n^2\sin\theta\cos\theta\,E_z=0,
$$

$$
n^2\sin\theta\cos\theta\,E_x
+(n_e^2-n^2\sin^2\theta)E_z=0.
$$

A non-zero field requires the determinant to vanish:

$$
(n_o^2-n^2\cos^2\theta)
(n_e^2-n^2\sin^2\theta)
-n^4\sin^2\theta\cos^2\theta=0.
$$

Expanding and cancelling the two $n^4\sin^2\theta\cos^2\theta$ terms,

$$
n_o^2n_e^2
-n^2(n_o^2\sin^2\theta+n_e^2\cos^2\theta)=0.
$$

Therefore the extraordinary phase index is

$$
\boxed{
\frac{1}{n_{\rm ex}^2(\theta)}
=\frac{\cos^2\theta}{n_o^2}
+\frac{\sin^2\theta}{n_e^2}}.
$$

When $\theta=0$, $n_{\rm ex}=n_o$, so a ray along the optic axis is not split. When $\theta=\pi/2$, $n_{\rm ex}=n_e$. A crystal is positive if $n_e>n_o$ and negative if $n_e<n_o$. Calcite is negative. For the extraordinary wave, $\mathbf D\perp\mathbf k$ but $\mathbf E$ need not be perpendicular to $\mathbf k$; consequently its energy-flow direction can differ from its wave normal. The ordinary and extraordinary beams therefore emerge in different directions and with mutually perpendicular linear polarizations.

## Nicol prism

A Nicol prism is made from calcite cut obliquely and cemented with Canada balsam. At visible wavelengths the approximate indices are

$$
n_o\simeq1.658,
\qquad n_e\simeq1.486,
\qquad n_b\simeq1.55.
$$

At the calcite-balsam interface, the ordinary ray travels from $n_o$ to the smaller $n_b$. Its critical angle is

$$
\boxed{\theta_c=\sin^{-1}\!\left(\frac{n_b}{n_o}\right)
\simeq69.2^\circ}.
$$

The prism is cut so that the ordinary ray meets the cement layer at an angle greater than $\theta_c$ and is totally internally reflected into a blackened side. The extraordinary ray has the smaller effective index and crosses the balsam layer instead of undergoing total internal reflection. The emerging beam therefore contains only the extraordinary vibration and is plane polarized. Reversing the role of the prism makes it an analyzer.

<figure class="diagram-figure">
  <img src="{{ '/assets/images/bsc/sem-iii/mj-4/unit-3/double-refraction-nicol.png' | relative_url }}" alt="Ordinary and extraordinary refractive-index surfaces beside the ray paths through a Nicol prism" loading="lazy">
  <figcaption>The ordinary index is direction-independent; the Nicol geometry removes that ray by total internal reflection and transmits the extraordinary ray.</figcaption>
</figure>

The Brewster and extraordinary-index identities are checked with zero residuals in the [Unit III polarization Maxima worksheet]({{ '/assets/maxima/bsc/sem-iii/mj-4/unit-3/polarization-checks.mac' | relative_url }}).

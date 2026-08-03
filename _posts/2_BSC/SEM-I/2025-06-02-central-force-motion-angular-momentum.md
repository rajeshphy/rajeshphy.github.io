---
title: "Central-Force Motion and Angular Momentum"
summary: "Planar motion under a central force, angular-momentum conservation, areal velocity, and centrifugal force."
date: 2025-06-02 09:00:00 +0530
categories:
  - bsc-i
tags: [mechanics, central-force, angular-momentum, centrifugal-force]
permalink: /bsc/sem-i/central-force-motion-angular-momentum/
---

Let the fixed force centre be the origin and let $r>0$. A central force has the form

$$
\mathbf F(\mathbf r)=F(r)\,\hat{\mathbf r},
$$

where the signed scalar $F(r)$ is positive for an outward force and negative for an inward force. Its torque about the centre is

$$
\boldsymbol\tau
=\mathbf r\times\mathbf F
=r\hat{\mathbf r}\times F(r)\hat{\mathbf r}
=\mathbf 0.
$$

Therefore

$$
\frac{d\mathbf L}{dt}=\boldsymbol\tau=\mathbf 0,
\qquad
\boxed{\mathbf L=\text{constant}}.
$$

If $\mathbf L\ne\mathbf 0$, both $\mathbf r$ and the velocity remain in the fixed plane perpendicular to $\mathbf L$. If $\mathbf L=\mathbf 0$, the motion is purely radial along a fixed line. Thus a central-force orbit can always be treated as a plane problem.

## Polar equations of motion

In the orbital plane,

$$
\frac{d\hat{\mathbf r}}{dt}=\dot\theta\,\hat{\boldsymbol\theta},
\qquad
\frac{d\hat{\boldsymbol\theta}}{dt}=-\dot\theta\,\hat{\mathbf r}.
$$

Differentiating $\mathbf r=r\hat{\mathbf r}$ once gives

$$
\dot{\mathbf r}=\dot r\,\hat{\mathbf r}
+r\dot\theta\,\hat{\boldsymbol\theta}.
$$

Differentiating again and collecting radial and transverse components gives

$$
\ddot{\mathbf r}
=(\ddot r-r\dot\theta^2)\hat{\mathbf r}
+(r\ddot\theta+2\dot r\dot\theta)\hat{\boldsymbol\theta}.
$$

Since a central force has no transverse component, Newton's law yields

$$
m(\ddot r-r\dot\theta^2)=F(r),
$$

$$
m(r\ddot\theta+2\dot r\dot\theta)=0.
$$

Multiplication of the transverse equation by $r$ gives

$$
m\left(r^2\ddot\theta+2r\dot r\dot\theta\right)
=\frac{d}{dt}\left(mr^2\dot\theta\right)=0.
$$

Hence the constant angular-momentum magnitude is

$$
\boxed{L=mr^2\dot\theta}.
$$

## Areal velocity

During an infinitesimal angular displacement $d\theta$, the radius vector sweeps the sector area

$$
dA=\frac12r(r\,d\theta)=\frac12r^2d\theta.
$$

Consequently,

$$
\boxed{\frac{dA}{dt}=\frac12r^2\dot\theta
=\frac{L}{2m}=\text{constant}}.
$$

This result follows from centrality alone; it does not require an inverse-square force.

![Central-force geometry showing the radial force, transverse velocity, angular momentum, and swept sector]({{ '/assets/images/bsc/sem-i/unit-2/central-force-geometry.png' | relative_url }})

## Radial energy and the centrifugal term

For a conservative central force, define the potential by

$$
F(r)=-\frac{dV}{dr}.
$$

The mechanical energy is

$$
E=\frac12m\dot r^2+\frac12mr^2\dot\theta^2+V(r).
$$

Using $\dot\theta=L/(mr^2)$ in the angular kinetic energy,

$$
\frac12mr^2\dot\theta^2
=\frac12mr^2\left(\frac{L}{mr^2}\right)^2
=\frac{L^2}{2mr^2}.
$$

Thus

$$
\boxed{E=\frac12m\dot r^2+V_{\rm eff}(r)},
\qquad
\boxed{V_{\rm eff}(r)=V(r)+\frac{L^2}{2mr^2}}.
$$

The radial equation may also be rearranged as

$$
m\ddot r=F(r)+mr\dot\theta^2
=F(r)+\frac{L^2}{mr^3}.
$$

In a frame rotating with angular velocity $\boldsymbol\Omega$, the centrifugal pseudo-force is

$$
\mathbf F_{\rm cf}
=-m\boldsymbol\Omega\times(\boldsymbol\Omega\times\mathbf r).
$$

When $\boldsymbol\Omega$ is perpendicular to the orbital plane, this becomes

$$
\boxed{\mathbf F_{\rm cf}=m\Omega^2r\,\hat{\mathbf r}},
$$

directed outward. For a circular orbit, $\Omega=\dot\theta$ and $\ddot r=0$, so the inward central force and the outward centrifugal pseudo-force balance in the rotating description:

$$
F(r)+m\Omega^2r=0.
$$

The centrifugal force is not a new physical interaction; it appears because the chosen frame rotates. In the inertial description, the same term is part of the radial acceleration.

The polar, angular-momentum, effective-potential, and centrifugal identities are verified in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/central-force-motion.mac' | relative_url }}); every printed residual is zero.

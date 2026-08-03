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

<div class="diagram-pan" tabindex="0" role="region" aria-label="Scrollable central-force diagram">
  <img src="{{ '/assets/images/bsc/sem-i/unit-2/central-force-geometry.png' | relative_url }}" alt="Central-force geometry showing the radial force, transverse velocity, angular momentum, and swept sector" loading="lazy">
</div>

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

## Solved Problems

### 1. Separate radial and transverse motion at one instant

**Problem.** A particle of mass $2.0\ \mathrm{kg}$ is at $r=0.50\ \mathrm{m}$ with radial velocity $\dot r=-1.0\ \mathrm{m\,s^{-1}}$ and transverse velocity $v_\theta=3.0\ \mathrm{m\,s^{-1}}$. At that instant take $V(r)=0$. Find its angular momentum, areal velocity, and energy, and verify the radial-energy form.

**Solution.** Since $v_\theta=r\dot\theta$,

$$
L=mrv_\theta
=(2.0)(0.50)(3.0)
=3.0\ \mathrm{kg\,m^2\,s^{-1}}.
$$

The areal velocity is

$$
\frac{dA}{dt}=\frac{L}{2m}
=\frac{3.0}{2(2.0)}
=0.75\ \mathrm{m^2\,s^{-1}}.
$$

Directly from the two perpendicular velocity components,

$$
E=\frac12m(\dot r^2+v_\theta^2)
=\frac12(2.0)(1.0^2+3.0^2)
=10\ \mathrm{J}.
$$

The effective-potential form gives the same value:

$$
\frac12m\dot r^2=1\ \mathrm{J},
\qquad
\frac{L^2}{2mr^2}
=\frac{3.0^2}{2(2.0)(0.50)^2}
=9\ \mathrm{J},
$$

so $E=1+9=10\ \mathrm{J}$.

**Checks.** $L$ has units $\mathrm{kg\,m^2\,s^{-1}}$ and $L/(2m)$ has units $\mathrm{m^2\,s^{-1}}$. The negative $\dot r$ correctly denotes inward motion but does not reverse the positive angular momentum. The energy is positive because $V=0$ at the stated point. In the limit $v_\theta\to0$, both $L$ and the swept-area rate vanish, leaving only radial kinetic energy.

### 2. Circular orbit in an attractive linear central force

**Problem.** A particle with $m=0.50\ \mathrm{kg}$ and $L=1.0\ \mathrm{kg\,m^2\,s^{-1}}$ moves under $F(r)=-kr$ with $k=8.0\ \mathrm{N\,m^{-1}}$. Find the circular-orbit radius, angular speed, energy, and radial stability.

**Solution.** Here $V(r)=kr^2/2$. A circular orbit requires $dV_{\rm eff}/dr=0$, or

$$
kr-\frac{L^2}{mr^3}=0.
$$

Therefore

$$
r_c=\left(\frac{L^2}{mk}\right)^{1/4}
=\left(\frac{1.0^2}{(0.50)(8.0)}\right)^{1/4}
=0.707\ \mathrm{m}.
$$

Since $r_c^2=0.50\ \mathrm{m^2}$,

$$
\omega_c=\frac{L}{mr_c^2}
=\frac{1.0}{(0.50)(0.50)}
=4.0\ \mathrm{rad\,s^{-1}}.
$$

At this radius,

$$
V(r_c)=\frac12kr_c^2=2.0\ \mathrm{J},
\qquad
\frac{L^2}{2mr_c^2}=2.0\ \mathrm{J},
$$

so $E=V_{\rm eff}(r_c)=4.0\ \mathrm{J}$. Finally,

$$
\left.\frac{d^2V_{\rm eff}}{dr^2}\right|_{r_c}
=k+\frac{3L^2}{mr_c^4}
=8.0+24.0
=32\ \mathrm{N\,m^{-1}}>0,
$$

which makes the circular orbit radially stable.

**Checks.** $L^2/(mk)$ has units $\mathrm{m^4}$, and the fourth root is a length. The inward force $-kr\hat{\mathbf r}$ is balanced by the positive centrifugal term. Also $\omega_c=\sqrt{k/m}=4.0\ \mathrm{rad\,s^{-1}}$, an independent check. As $L\to0$, $r_c\to0$ and the finite-radius circular orbit collapses.

## Descriptive Questions

1. Starting from $\boldsymbol\tau=\mathbf r\times\mathbf F$, prove that a central-force orbit is planar and state separately what happens when $\mathbf L=\mathbf0$.
2. Derive the radial and transverse equations of motion in plane polar coordinates and hence obtain constant areal velocity.
3. Derive the one-dimensional radial energy equation and explain the origin of the term $L^2/(2mr^2)$ in the effective potential.
4. Distinguish the inertial-frame radial equation from the rotating-frame centrifugal pseudo-force, including the direction and sign convention of each term.

## Numerical Problems

1. At $\mathbf r=(3\hat{\mathbf i}+4\hat{\mathbf j})\ \mathrm{m}$, a central force is $\mathbf F=(-6\hat{\mathbf i}-8\hat{\mathbf j})\ \mathrm{N}$. Calculate its torque about the origin.

   **Final answer:** $\boldsymbol\tau=\mathbf0\ \mathrm{N\,m}$.

2. A $0.50\ \mathrm{kg}$ particle has $\mathbf r=(0.60\hat{\mathbf i}+0.80\hat{\mathbf j})\ \mathrm{m}$ and $\mathbf v=(-2.0\hat{\mathbf i}+1.5\hat{\mathbf j})\ \mathrm{m\,s^{-1}}$. Find $\mathbf L$.

   **Final answer:** $\mathbf L=1.25\hat{\mathbf k}\ \mathrm{kg\,m^2\,s^{-1}}$.

3. A particle of mass $1.2\ \mathrm{kg}$ has constant angular momentum $2.4\ \mathrm{kg\,m^2\,s^{-1}}$. How long does its radius vector take to sweep $3.0\ \mathrm{m^2}$?

   **Final answer:** $3.0\ \mathrm{s}$.

4. For $V(r)=-(18\ \mathrm{J\,m})/r$, $m=2.0\ \mathrm{kg}$, and $L=4.0\ \mathrm{kg\,m^2\,s^{-1}}$, evaluate $V_{\rm eff}$ at $r=2.0\ \mathrm{m}$.

   **Final answer:** $V_{\rm eff}=-8.0\ \mathrm{J}$.

5. A $0.30\ \mathrm{kg}$ body is observed in a frame rotating at $4.0\ \mathrm{rad\,s^{-1}}$. At perpendicular distance $0.50\ \mathrm{m}$ from the axis, find the centrifugal force.

   **Final answer:** $2.4\ \mathrm{N}$, radially outward.

6. At $r=3.0\ \mathrm{m}$, a $2.0\ \mathrm{kg}$ particle has $L=6.0\ \mathrm{kg\,m^2\,s^{-1}}$ and experiences $F(r)=-30\ \mathrm{N}$. Find $\ddot r$.

   **Final answer:** $\ddot r=-44/3\ \mathrm{m\,s^{-2}}\simeq-14.7\ \mathrm{m\,s^{-2}}$, inward.

The identities and all eight worked answers are independently checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-i/unit-2/central-force-motion.mac' | relative_url }}); every printed residual or check is zero.

## References

1. [Central force — Wikipedia](https://en.wikipedia.org/wiki/Central_force).
2. John R. Taylor, *Classical Mechanics*, University Science Books (2005), Chapters 8–9.
3. Herbert Goldstein, Charles Poole, and John Safko, *Classical Mechanics*, 3rd ed., Addison-Wesley (2002), Chapter 3.

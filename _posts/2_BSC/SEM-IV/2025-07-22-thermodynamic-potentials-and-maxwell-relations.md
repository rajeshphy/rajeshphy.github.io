---
title: "Thermodynamic Potentials and Maxwell Relations"
summary: "Natural variables, equilibrium potentials, derivation of the four Maxwell relations, and useful differential identities."
date: 2025-07-22 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-6, heat-and-thermodynamics, thermodynamic-potentials, maxwell-relations]
permalink: /bsc/sem-iv/mj-6/thermodynamic-potentials-maxwell-relations/
hidden: true
---

Consider a closed, fixed-composition, simple compressible system with only $pV$ work. Combining the first and second laws for a reversible differential change gives the fundamental relation

$$
\boxed{dU=T\,dS-p\,dV}.
$$

Because $U$ is a state function, this relation remains a property identity between neighbouring equilibrium states even if the actual process joining them is irreversible.

## Four thermodynamic potentials

Internal energy has natural variables $(S,V)$:

$$U=U(S,V),\qquad dU=T\,dS-p\,dV.$$

The enthalpy $H=U+pV$ has natural variables $(S,p)$:

$$
dH=dU+p\,dV+V\,dp
=\boxed{T\,dS+V\,dp}.
$$

The Helmholtz free energy $F=U-TS$ has natural variables $(T,V)$:

$$
dF=dU-T\,dS-S\,dT
=\boxed{-S\,dT-p\,dV}.
$$

The Gibbs free energy $G=H-TS=U+pV-TS$ has natural variables $(T,p)$:

$$
dG=dH-T\,dS-S\,dT
=\boxed{-S\,dT+V\,dp}.
$$

For a stable closed system, equilibrium minimizes the appropriate potential under the imposed constraints: $U$ at fixed $(S,V)$, $H$ at fixed $(S,p)$, $F$ at fixed $(T,V)$, and $G$ at fixed $(T,p)$.

## Derivation of Maxwell relations

For any state function $X(x,y)$ with continuous second derivatives,

$$
\frac{\partial}{\partial y}
\left(\frac{\partial X}{\partial x}\right)_y
=
\frac{\partial}{\partial x}
\left(\frac{\partial X}{\partial y}\right)_x.
$$

Apply this equality to each potential. From $U(S,V)$,

$$
T=\left(\frac{\partial U}{\partial S}\right)_V,
\qquad
-p=\left(\frac{\partial U}{\partial V}\right)_S,
$$

so

$$
\boxed{\left(\frac{\partial T}{\partial V}\right)_S
=-\left(\frac{\partial p}{\partial S}\right)_V}.
$$

From $H(S,p)$,

$$
\boxed{\left(\frac{\partial T}{\partial p}\right)_S
=\left(\frac{\partial V}{\partial S}\right)_p}.
$$

From $F(T,V)$,

$$
\boxed{\left(\frac{\partial S}{\partial V}\right)_T
=\left(\frac{\partial p}{\partial T}\right)_V}.
$$

From $G(T,p)$,

$$
\boxed{\left(\frac{\partial S}{\partial p}\right)_T
=-\left(\frac{\partial V}{\partial T}\right)_p}.
$$

These relations replace difficult entropy derivatives by measurable $p$-$V$-$T$ derivatives.

## Applications to $U$ and $H$

Write entropy as $S(T,V)$. Since

$$
\left(\frac{\partial S}{\partial T}\right)_V=\frac{C_V}{T},
\qquad
\left(\frac{\partial S}{\partial V}\right)_T
=\left(\frac{\partial p}{\partial T}\right)_V,
$$

we have

$$
dS=\frac{C_V}{T}\,dT
+\left(\frac{\partial p}{\partial T}\right)_VdV.
$$

Substitution into $dU=T\,dS-p\,dV$ yields

$$
\boxed{dU=C_V\,dT+
\left[T\left(\frac{\partial p}{\partial T}\right)_V-p\right]dV}.
$$

Thus

$$
\boxed{\left(\frac{\partial U}{\partial V}\right)_T
=T\left(\frac{\partial p}{\partial T}\right)_V-p}.
$$

Similarly, with $S(T,p)$ and the fourth Maxwell relation,

$$
\boxed{dH=C_P\,dT+
\left[V-T\left(\frac{\partial V}{\partial T}\right)_p\right]dp}.
$$

For an ideal gas, $(\partial p/\partial T)_V=p/T$, so $(\partial U/\partial V)_T=0$ and $U=U(T)$. Also $(\partial V/\partial T)_p=V/T$, so $(\partial H/\partial p)_T=0$ and $H=H(T)$.

---
title: "Hamiltonian Formulation of Two Coupled Quantum Oscillators"
date: 2026-06-04 22:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - coupled-harmonic-oscillators
  - hamiltonian-formulation
  - magnetic-field
  - quantum-complexity
  - gaussian-states
permalink: "/coupled-oscillator-hamiltonian-formulation/"
---

This article explains the Hamiltonian for **two coupled quantum harmonic oscillators** in an external magnetic field. The construction has three parts: the energy of each oscillator, their mutual coupling, and the extra mixing produced by the magnetic field.

The starting Hamiltonian is

$$
H=\omega_1\hat a^\dagger\hat a+\omega_2\hat b^\dagger\hat b
+g^{\prime}(\hat a+\hat a^\dagger)(\hat b+\hat b^\dagger).
$$

| Symbol | Meaning | Role |
|---|---|---|
| $\omega_1,\omega_2$ | natural frequencies | set the two energy scales |
| $\hat a,\hat b$ | annihilation operators | remove one excitation quantum |
| $\hat a^\dagger,\hat b^\dagger$ | creation operators | add one excitation quantum |
| $g^{\prime}$ | coupling strength | controls interaction strength |

## 1. Oscillator Hamiltonian

A Hamiltonian is the energy operator of a quantum system and determines its time evolution:

$$
i\hbar\frac{\partial}{\partial t}|\psi(t)\rangle=H|\psi(t)\rangle.
$$

For one oscillator, the classical energy is

$$
H=\frac{p^2}{2m}+\frac{1}{2}m\omega^2x^2,
$$

where $x$ is position, $p$ is momentum, $m$ is mass, and $\omega$ is the natural frequency. In quantum mechanics, $x$ and $p$ become operators. The same oscillator can be described more compactly through ladder operators. For the two oscillators, the number operators are

$$
\hat a^\dagger\hat a,\qquad \hat b^\dagger\hat b.
$$

Therefore the uncoupled part of the Hamiltonian is

$$
\omega_1\hat a^\dagger\hat a+\omega_2\hat b^\dagger\hat b.
$$

## 2. Coupling Term

The interaction is

$$
g^{\prime}(\hat a+\hat a^\dagger)(\hat b+\hat b^\dagger).
$$

This term is responsible for making the two oscillators interact. Without it, oscillator 1 and oscillator 2 would evolve independently. With it, the state of one oscillator can influence the other.

Let us first expand the product:

$$
(\hat a+\hat a^\dagger)(\hat b+\hat b^\dagger)
=
\hat a\hat b
+\hat a\hat b^\dagger
+\hat a^\dagger\hat b
+\hat a^\dagger\hat b^\dagger.
$$

Each part has a different physical interpretation:

| Term | Meaning |
|---|---|
| $\hat a\hat b$ | removes one quantum from both oscillators |
| $\hat a\hat b^\dagger$ | transfers one quantum from oscillator 1 to oscillator 2 |
| $\hat a^\dagger\hat b$ | transfers one quantum from oscillator 2 to oscillator 1 |
| $\hat a^\dagger\hat b^\dagger$ | adds one quantum to both oscillators |

Thus the coupling does more than simply add the energies of the two oscillators. It contains terms that can exchange excitations and terms that can create or remove correlated pairs of excitations.

The reason this expression is connected with position is that, for a harmonic oscillator, the position operator is proportional to the sum of the annihilation and creation operators:

$$
\hat x\propto \hat a+\hat a^\dagger.
$$

For the two oscillators, this means

$$
\hat a+\hat a^\dagger\propto \hat x_1,
\qquad
\hat b+\hat b^\dagger\propto \hat x_2.
$$

Therefore the interaction has the same structure as a position-position coupling:

$$
(\hat a+\hat a^\dagger)(\hat b+\hat b^\dagger)
\propto
\hat x_1\hat x_2.
$$

In words, the displacement of oscillator 1 is coupled to the displacement of oscillator 2. If oscillator 1 is displaced, it changes the effective force felt by oscillator 2, and vice versa.

| Case | Meaning |
|---|---|
| $g^{\prime}=0$ | oscillators evolve independently |
| $g^{\prime}\neq0$ | the oscillators influence each other |
| larger $g^{\prime}$ | stronger correlation and energy exchange |

After rewriting the Hamiltonian in position and momentum variables, the interaction is written in the form

$$
-gx_1x_2,
$$

where $g$ is the coupling constant in the position representation. In the notation used here, the relation is

$$
g=\frac{1}{2}g^{\prime}\sqrt{\omega_1\omega_2}.
$$

The minus sign in $-gx_1x_2$ is a convention: it tells us how the interaction is included in the position-space Hamiltonian. The important point is that $g^{\prime}$ and $g$ describe the same physical interaction, but in two different languages:

| Form | Coupling written as | Natural language |
|---|---|---|
| ladder-operator form | $g^{\prime}(\hat a+\hat a^\dagger)(\hat b+\hat b^\dagger)$ | interaction in terms of quanta |
| position-space form | $-gx_1x_2$ | interaction in terms of displacements |

So Section 2 connects the quantum-operator description with the later Hamiltonian written in $x_j,p_j$ variables.

## 3. Magnetic Field

The magnetic field is introduced through a vector potential. This is standard in Hamiltonian mechanics because a charged particle does not couple directly to $\vec B$ in the momentum term. Instead, the momentum is modified through the vector potential $\vec A$.

The magnetic field and vector potential are related by

$$
\vec B=\nabla\times\vec A.
$$

The paper uses a symmetric-gauge form. In the two-coordinate oscillator plane, this gives an effective magnetic mixing between $x_1$ and $x_2$. The useful way to read it is that the momenta are shifted as

$$
p_1\rightarrow p_1+\omega_c x_2,
\qquad
p_2\rightarrow p_2-\omega_c x_1.
$$

The opposite signs are important. A magnetic field produces a rotational coupling in the $(x_1,x_2)$ plane: the shift in $p_1$ depends on the perpendicular coordinate $x_2$, while the shift in $p_2$ depends on $x_1$ with the opposite orientation. This antisymmetric sign pattern is what later produces the combination

$$
p_1x_2-p_2x_1.
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/research/magnetic-momentum-shift.png' | relative_url }}" alt="Magnetic momentum shifts with opposite signs in the oscillator plane">
  <figcaption>Figure: The magnetic field shifts the two momentum channels with opposite signs. The $+\,\omega_c x_2$ shift belongs to $p_1$, while the $-\,\omega_c x_1$ shift belongs to $p_2$; together they form the rotational coupling $\omega_c(p_1x_2-p_2x_1)$.</figcaption>
</figure>

If both signs were the same, the magnetic term would not have the correct rotational structure.

Here

$$
\omega_c=\frac{eB}{2c}
$$

is the cyclotron frequency. The overall sign may change with the sign of the charge or the chosen gauge convention, but the relative opposite signs between the two shifts encode the magnetic rotation.

This rule is a form of **minimal coupling**:

$$
p\rightarrow p-\frac{e}{c}A.
$$

Since the mass is set to $m=1$, the kinetic energy without magnetic field is

$$
T=\frac{1}{2}(p_1^2+p_2^2).
$$

With the magnetic field, it becomes

$$
T_B=
\frac{1}{2}(p_1+\omega_c x_2)^2
+\frac{1}{2}(p_2-\omega_c x_1)^2.
$$

Now expand this expression step by step:

$$
\frac{1}{2}(p_1+\omega_c x_2)^2
=
\frac{1}{2}p_1^2
+\omega_c p_1x_2
+\frac{1}{2}\omega_c^2x_2^2,
$$

and

$$
\frac{1}{2}(p_2-\omega_c x_1)^2
=
\frac{1}{2}p_2^2
-\omega_c p_2x_1
+\frac{1}{2}\omega_c^2x_1^2.
$$

Adding both parts gives

$$
T_B=
\frac{1}{2}(p_1^2+p_2^2)
+\frac{1}{2}\omega_c^2(x_1^2+x_2^2)
+\omega_c(p_1x_2-p_2x_1).
$$

This expansion is the key step. The magnetic field produces two new contributions:

| Magnetic contribution | Meaning |
|---|---|
| $\frac{1}{2}\omega_c^2(x_1^2+x_2^2)$ | adds an extra quadratic potential, so the oscillator frequencies shift |
| $\omega_c(p_1x_2-p_2x_1)$ | mixes momentum of one oscillator with position of the other |

Now add the ordinary oscillator potential

$$
\frac{1}{2}\omega_1^2x_1^2+\frac{1}{2}\omega_2^2x_2^2
$$

and the coupling term

$$
-gx_1x_2.
$$

Combining all terms, the Hamiltonian becomes

$$
H=
\frac{1}{2}\sum_{j=1}^{2}
\left[p_j^2+(\omega_j^2+\omega_c^2)x_j^2\right]
-gx_1x_2
+\omega_c(p_1x_2-p_2x_1).
$$

The terms have the following roles:

| Term | Meaning |
|---|---|
| $\frac{1}{2}\sum_j p_j^2$ | kinetic energy of both oscillators |
| $\frac{1}{2}\sum_j\omega_j^2x_j^2$ | ordinary harmonic potential |
| $\frac{1}{2}\sum_j\omega_c^2x_j^2$ | magnetic frequency shift |
| $-gx_1x_2$ | position-position coupling |
| $\omega_c(p_1x_2-p_2x_1)$ | magnetic position-momentum mixing |

Thus the magnetic field has two effects. First, it shifts the oscillator frequencies through the $\omega_c^2x_j^2$ contribution. Second, it creates the mixed term

$$
\omega_c(p_1x_2-p_2x_1),
$$

which is the difficult term handled in the next section by moving to a rotating frame.

## 4. Rotating-Frame Transformation

The difficult term is

$$
\omega_c(p_1x_2-p_2x_1)
$$

because it couples the momentum of one oscillator to the position of the other. Such a term is not like the usual kinetic energy $p^2$ or potential energy $x^2$. It mixes the two phase-space directions and makes the Hamiltonian look as if the system is rotating.

The idea is therefore to describe the same motion from a **rotating frame**. This is similar to ordinary mechanics: a particle moving in a magnetic field often has a rotational or circular character, so a rotating coordinate system can simplify the equations.

Start with the two position coordinates written as a vector:

$$
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}.
$$

Now rotate this vector by an angle $\phi(t)$ and introduce new coordinates $X_1,X_2$:

$$
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix}
=
\begin{pmatrix}
\cos\phi & \sin\phi\\
-\sin\phi & \cos\phi
\end{pmatrix}
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix}.
$$

The momenta must be rotated in the same way:

$$
\begin{pmatrix}
p_1\\
p_2
\end{pmatrix}
=
\begin{pmatrix}
\cos\phi & \sin\phi\\
-\sin\phi & \cos\phi
\end{pmatrix}
\begin{pmatrix}
P_1\\
P_2
\end{pmatrix}.
$$

This is a **canonical transformation** because it changes variables without changing the Hamiltonian structure of the problem. In other words, the new variables still behave like proper position and momentum pairs:

$$
(x_j,p_j)\rightarrow(X_j,P_j).
$$

If the rotation angle were constant, we could simply substitute these relations into the Hamiltonian. But here $\phi$ depends on time, so the coordinate frame itself is moving. We must therefore see how the Hamiltonian action changes.

For one pair of variables, Hamiltonian mechanics is built from the combination

$$
p\,dx-H\,dt.
$$

For two variables this becomes

$$
p_1dx_1+p_2dx_2-H\,dt.
$$

It is cleaner to do the calculation in matrix notation. Define

$$
q=
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix},
\qquad
Q=
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix},
\qquad
p=
\begin{pmatrix}
p_1\\
p_2
\end{pmatrix},
\qquad
P=
\begin{pmatrix}
P_1\\
P_2
\end{pmatrix}.
$$

The rotation can be written as

$$
q=R(\phi)Q,\qquad p=R(\phi)P,
$$

where

$$
R(\phi)=
\begin{pmatrix}
\cos\phi & \sin\phi\\
-\sin\phi & \cos\phi
\end{pmatrix}.
$$

<div class="note-box" markdown="1">

**Note: useful rotation-matrix identities.** For the above rotation matrix, the following properties will be used repeatedly:

$$
R^TR=RR^T=I.
$$

This means that the rotation preserves lengths and dot products. For example,

$$
p_1^2+p_2^2=P_1^2+P_2^2.
$$

The determinant is

$$
\det R=1,
$$

so the transformation is a pure rotation, not a reflection or scaling.

If

$$
J=
\begin{pmatrix}
0 & 1\\
-1 & 0
\end{pmatrix},
$$

then

$$
R^TJR=J.
$$

This says that the antisymmetric rotational combination is unchanged by rotating the coordinate system:

$$
p_1x_2-p_2x_1=P_1X_2-P_2X_1.
$$

Also,

$$
R^T(dR)=J\,d\phi.
$$

This last identity is the one that produces the extra rotating-frame term in the Hamiltonian.

</div>

Now differentiate $q=RQ$:

$$
dq=d(RQ)=R\,dQ+(dR)Q.
$$

The phase-space one-form is

$$
p^Tdq.
$$

Using $p=RP$, we have $p^T=P^TR^T$. Therefore

$$
p^Tdq
=P^TR^T\left(R\,dQ+(dR)Q\right).
$$

Since $R^TR=I$, the first part gives

$$
P^TdQ.
$$

The second part is

$$
P^TR^T(dR)Q.
$$

For this rotation matrix,

$$
R^T(dR)=
\begin{pmatrix}
0 & 1\\
-1 & 0
\end{pmatrix}
d\phi.
$$

Hence

$$
P^TR^T(dR)Q
=
\begin{pmatrix}
P_1 & P_2
\end{pmatrix}
\begin{pmatrix}
0 & 1\\
-1 & 0
\end{pmatrix}
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix}
d\phi.
$$

Multiplying the matrices gives

$$
P^TR^T(dR)Q=(P_1X_2-P_2X_1)d\phi.
$$

Therefore, in ordinary notation,

$$
p_1dx_1+p_2dx_2
=P_1dX_1+P_2dX_2
+(P_1X_2-P_2X_1)d\phi.
$$

Since $d\phi=\dot\phi(t)dt$, this becomes

$$
p_1dx_1+p_2dx_2
=P_1dX_1+P_2dX_2
+\dot\phi(t)(P_1X_2-P_2X_1)dt.
$$

Substitute this into the action:

$$
p_1dx_1+p_2dx_2-H\,dt
=P_1dX_1+P_2dX_2
-\left[H-\dot\phi(t)(P_1X_2-P_2X_1)\right]dt.
$$

The term inside the square bracket is therefore the new Hamiltonian:

$$
H'=H-\dot\phi(t)(P_1X_2-P_2X_1).
$$

The expression

$$
P_1X_2-P_2X_1
$$

is the generator of rotations in this two-dimensional phase space. The extra term is not an assumption; it appears because the rotating coordinates themselves depend on time.

Now compare this correction with the magnetic cross-term. The original Hamiltonian contains a term proportional to

$$
\omega_c(p_1x_2-p_2x_1).
$$

The rotating-frame correction contains the same kind of structure, but with coefficient $-\dot\phi(t)$. Therefore choosing the rotation rate

$$
\dot\phi(t)=\omega_c
$$

removes the explicit magnetic position-momentum mixing.

There is one point that should not be skipped. The magnetic term was first written in the old variables as

$$
\omega_c(p_1x_2-p_2x_1),
$$

whereas the rotating-frame correction has appeared in the new variables as

$$
-\dot\phi(t)(P_1X_2-P_2X_1).
$$

At first sight these do not look like the same term, because one contains $(p_1,x_1,p_2,x_2)$ and the other contains $(P_1,X_1,P_2,X_2)$. The reason they can cancel is that the rotational combination itself is invariant under this rotation.

To see this, write

$$
p_1x_2-p_2x_1
=p^TJq,
\qquad
J=
\begin{pmatrix}
0 & 1\\
-1 & 0
\end{pmatrix}.
$$

Using $p=RP$ and $q=RQ$, we get

$$
p^TJq
=(RP)^TJ(RQ)
=P^T(R^TJR)Q.
$$

For a rotation matrix,

$$
R^TJR=J.
$$

Therefore

$$
p_1x_2-p_2x_1
=P^TJQ
=P_1X_2-P_2X_1.
$$

So, after the old Hamiltonian is rewritten in the rotating variables, its magnetic mixing term is actually

$$
+\omega_c(P_1X_2-P_2X_1).
$$

The time-dependent rotating frame contributes

$$
-\dot\phi(t)(P_1X_2-P_2X_1).
$$

Thus the two terms cancel exactly when $\dot\phi(t)=\omega_c$. The cancellation is not just a matching of angular frequencies; it is a cancellation of the same rotational generator written in the same variables.

Integrating this equation gives

$$
\phi(t)=\omega_ct+\theta,
$$

where $\theta$ is a constant initial angle. Thus the new frame rotates with angular speed $\omega_c$, exactly matching the magnetic rotation produced by the field.

The important point is this: the magnetic field has not disappeared. Its awkward position-momentum cross-term has been absorbed into the rotating frame. The field will reappear in the transformed Hamiltonian through time-dependent frequencies and coupling.

## 5. Rotating-Frame Hamiltonian

Now we continue directly from the previous result. The rotating frame was chosen so that

$$
\dot\phi(t)=\omega_c.
$$

This choice cancels the magnetic position-momentum term. We now ask: **what is left in the Hamiltonian after this cancellation?**

### Step 1: separate the remaining Hamiltonian

After the cross-term has been cancelled, the Hamiltonian still contains:

1. the kinetic energy,
2. the quadratic position terms,
3. the position-position coupling.

The kinetic part is

$$
\frac{1}{2}(p_1^2+p_2^2).
$$

The remaining position-dependent part is

$$
\frac{1}{2}(\omega_1^2+\omega_c^2)x_1^2
+\frac{1}{2}(\omega_2^2+\omega_c^2)x_2^2
-gx_1x_2.
$$

This is the part that must be rewritten in terms of the rotated coordinates $X_1,X_2$.

### Step 2: write the position part as a matrix

Define

$$
q=
\begin{pmatrix}
x_1\\
x_2
\end{pmatrix},
\qquad
Q=
\begin{pmatrix}
X_1\\
X_2
\end{pmatrix},
\qquad
q=R(\phi)Q.
$$

The position-dependent part can be written compactly as

$$
V(q)=\frac{1}{2}q^TKq,
$$

where

$$
K=
\begin{pmatrix}
\omega_1^2+\omega_c^2 & -g\\
-g & \omega_2^2+\omega_c^2
\end{pmatrix}.
$$

To see that this matrix is correct, expand:

$$
\frac{1}{2}q^TKq
=
\frac{1}{2}(\omega_1^2+\omega_c^2)x_1^2
+\frac{1}{2}(\omega_2^2+\omega_c^2)x_2^2
-gx_1x_2.
$$

The two off-diagonal entries are both $-g$. Since the matrix expression has a factor $\frac{1}{2}$, the two equal off-diagonal contributions combine to give exactly $-gx_1x_2$.

### Step 3: rotate the quadratic form

Now use

$$
q=RQ.
$$

Then

$$
V(q)=\frac{1}{2}(RQ)^TK(RQ).
$$

Using $(RQ)^T=Q^TR^T$, this becomes

$$
V(q)=\frac{1}{2}Q^T(R^TKR)Q.
$$

So the new stiffness matrix is

$$
K'(t)=R^T(\phi)KR(\phi).
$$

The time dependence appears because $\phi=\phi(t)$.

### Step 4: multiply the matrix entries

For compactness, write

$$
c=\cos\phi(t),\qquad s=\sin\phi(t).
$$

Then

$$
R=
\begin{pmatrix}
c & s\\
-s & c
\end{pmatrix},
\qquad
R^T=
\begin{pmatrix}
c & -s\\
s & c
\end{pmatrix}.
$$

Also define

$$
a=\omega_1^2+\omega_c^2,
\qquad
b=\omega_2^2+\omega_c^2.
$$

Then

$$
K=
\begin{pmatrix}
a & -g\\
-g & b
\end{pmatrix}.
$$

First calculate $KR$:

$$
KR=
\begin{pmatrix}
a & -g\\
-g & b
\end{pmatrix}
\begin{pmatrix}
c & s\\
-s & c
\end{pmatrix}
=
\begin{pmatrix}
ac+gs & as-gc\\
-gc-bs & -gs+bc
\end{pmatrix}.
$$

Now multiply by $R^T$:

$$
K'=R^TKR
=
\begin{pmatrix}
c & -s\\
s & c
\end{pmatrix}
\begin{pmatrix}
ac+gs & as-gc\\
-gc-bs & -gs+bc
\end{pmatrix}.
$$

The $(1,1)$ entry is

$$
K'_{11}=c(ac+gs)-s(-gc-bs).
$$

Therefore

$$
K'_{11}=ac^2+2gcs+bs^2.
$$

Using $2cs=\sin2\phi(t)$, this becomes

$$
K'_{11}
=(\omega_1^2+\omega_c^2)c^2
+(\omega_2^2+\omega_c^2)s^2
+g\sin2\phi(t).
$$

Since $c^2+s^2=1$,

$$
K'_{11}
=\omega_1^2\cos^2\phi(t)
+\omega_2^2\sin^2\phi(t)
+\omega_c^2
+g\sin2\phi(t).
$$

This entry is called $\Omega_1^2(t)$:

$$
\Omega_1^2(t)=
\omega_1^2\cos^2\phi(t)
+\omega_2^2\sin^2\phi(t)
+\omega_c^2
+g\sin2\phi(t).
$$

The $(2,2)$ entry is

$$
K'_{22}=s(as-gc)+c(-gs+bc).
$$

Therefore

$$
K'_{22}=as^2-2gcs+bc^2.
$$

So

$$
K'_{22}
=\omega_1^2\sin^2\phi(t)
+\omega_2^2\cos^2\phi(t)
+\omega_c^2
-g\sin2\phi(t).
$$

This entry is called $\Omega_2^2(t)$:

$$
\Omega_2^2(t)=
\omega_1^2\sin^2\phi(t)
+\omega_2^2\cos^2\phi(t)
+\omega_c^2
-g\sin2\phi(t).
$$

The off-diagonal entry is

$$
K'_{12}=c(as-gc)-s(-gs+bc).
$$

Thus

$$
K'_{12}=(a-b)cs-g(c^2-s^2).
$$

Using

$$
cs=\frac{1}{2}\sin2\phi(t),
\qquad
c^2-s^2=\cos2\phi(t),
$$

and $a-b=\omega_1^2-\omega_2^2$, we get

$$
K'_{12}
=
\frac{\omega_1^2-\omega_2^2}{2}\sin2\phi(t)
-g\cos2\phi(t).
$$

This off-diagonal entry is called $\Omega_{12}^2(t)$:

$$
\Omega_{12}^2(t)=
\frac{\omega_1^2-\omega_2^2}{2}\sin2\phi(t)
-g\cos2\phi(t).
$$

Hence

$$
K'(t)=
\begin{pmatrix}
\Omega_1^2(t) & \Omega_{12}^2(t)\\
\Omega_{12}^2(t) & \Omega_2^2(t)
\end{pmatrix}.
$$

### Step 5: write the transformed Hamiltonian

The potential energy is

$$
\frac{1}{2}Q^TK'(t)Q
=
\frac{1}{2}\Omega_1^2(t)X_1^2
+\frac{1}{2}\Omega_2^2(t)X_2^2
+\Omega_{12}^2(t)X_1X_2.
$$

The kinetic energy is unchanged by the rotation because the rotation matrix is orthogonal:

$$
p_1^2+p_2^2=P_1^2+P_2^2.
$$

Combining kinetic and potential parts gives

$$
H'=
\frac{1}{2}\sum_{j=1}^{2}
\left[P_j^2+\Omega_j^2(t)X_j^2\right]
+\Omega_{12}^2(t)X_1X_2.
$$

This is the rotating-frame Hamiltonian. It has no explicit term like

$$
\omega_c(p_1x_2-p_2x_1),
$$

but the magnetic field remains present because

$$
\phi(t)=\omega_ct+\theta.
$$

Thus $\omega_c$ enters the final Hamiltonian through the time dependence of $\Omega_1(t)$, $\Omega_2(t)$, and $\Omega_{12}(t)$.

| New quantity | Meaning | Physical role |
|---|---|---|
| $X_j,P_j$ | rotated position and momentum variables | describe the same system in the rotating frame |
| $\phi(t)$ | rotation angle controlled by $\omega_c$ | carries the magnetic-field dependence |
| $\Omega_1(t),\Omega_2(t)$ | effective time-dependent frequencies | determine the stiffness of each rotated oscillator |
| $\Omega_{12}(t)$ | effective time-dependent coupling | measures how strongly the rotated oscillators remain linked |

Thus Section 5 continues the result of Section 4: the rotating frame removes the magnetic position-momentum term, but the remaining quadratic position matrix becomes time dependent through $\phi(t)$. The system is simpler, but it is not generally decoupled.

## 6. Instantaneous Decoupling

From Section 5, the rotating-frame Hamiltonian is

$$
H'=
\frac{1}{2}\sum_{j=1}^{2}
\left[P_j^2+\Omega_j^2(t)X_j^2\right]
+\Omega_{12}^2(t)X_1X_2.
$$

The first part,

$$
\frac{1}{2}\sum_{j=1}^{2}
\left[P_j^2+\Omega_j^2(t)X_j^2\right],
$$

describes two separate oscillators in the rotated frame. The only term that still connects them is

$$
\Omega_{12}^2(t)X_1X_2.
$$

Therefore, the two rotated oscillators are decoupled at an instant if this coefficient becomes zero:

$$
\Omega_{12}^2(t)=0.
$$

This is called **instantaneous decoupling** because the condition may hold only at particular times.

Now use the expression obtained from the off-diagonal entry of the rotated stiffness matrix:

$$
\Omega_{12}^2(t)=
\frac{\omega_1^2-\omega_2^2}{2}\sin2\phi(t)
-g\cos2\phi(t).
$$

Set this equal to zero:

$$
\frac{\omega_1^2-\omega_2^2}{2}\sin2\phi(t)
-g\cos2\phi(t)=0.
$$

Move the second term to the other side:

$$
\frac{\omega_1^2-\omega_2^2}{2}\sin2\phi(t)
=g\cos2\phi(t).
$$

Now divide by $\cos2\phi(t)$, assuming $\cos2\phi(t)\neq0$:

$$
\frac{\omega_1^2-\omega_2^2}{2}\tan2\phi(t)=g.
$$

Hence

$$
\tan2\phi(t)=\frac{2g}{\omega_1^2-\omega_2^2}.
$$

This is the decoupling condition.

| Quantity | Role |
|---|---|
| $g$ | coupling strength |
| $\omega_1^2-\omega_2^2$ | detuning between oscillators |
| $\phi(t)=\omega_ct+\theta$ | magnetic-field-controlled rotation angle |

The condition says that decoupling is possible when the rotation angle has just the right value to balance two effects:

1. coupling coming from the original interaction strength $g$,
2. coupling generated by rotating two oscillators with different frequencies.

Since

$$
\phi(t)=\omega_ct+\theta,
$$

the angle changes with time when $\omega_c\neq0$. Thus the condition may be satisfied at isolated times. At such an instant, the Hamiltonian takes the temporarily separated form

$$
H'=
\frac{1}{2}\left[P_1^2+\Omega_1^2(t)X_1^2\right]
+\frac{1}{2}\left[P_2^2+\Omega_2^2(t)X_2^2\right].
$$

There is then no $X_1X_2$ term at that instant, so the two rotated oscillators behave as independent modes. But as time passes, $\phi(t)$ changes, $\Omega_{12}^2(t)$ generally becomes nonzero again, and the modes become coupled once more.

## 7. Compact Picture

The model can be summarized as:

| Stage | Description |
|---|---|
| Start | two oscillators with frequencies $\omega_1,\omega_2$ |
| Add coupling | oscillators interact through $-gx_1x_2$ |
| Add magnetic field | frequencies shift and position-momentum mixing appears |
| Rotate frame | magnetic cross-term is removed |
| Final form | two oscillators with time-dependent frequencies and coupling |

## Takeaway

The magnetic field does not merely shift oscillator frequencies. It also rotates the coupled system in phase space. In the rotating frame, the dynamics are controlled by $\Omega_1(t)$, $\Omega_2(t)$, and $\Omega_{12}(t)$, making the model useful for studying synchronization, mutual information, and quantum circuit complexity.

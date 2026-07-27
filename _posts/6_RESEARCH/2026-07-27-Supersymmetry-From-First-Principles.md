---
title: "Supersymmetry from First Principles: How Bosons and Fermions Are Related"
description: "Explains precisely what symmetry between bosons and fermions means, derives the supersymmetry algebra, demonstrates it with the supersymmetric harmonic oscillator, and connects the result to relativistic supermultiplets and current research directions."
date: 2026-07-27 18:45:00 +0530
categories: research
tags:
  - supersymmetry
  - supersymmetric quantum mechanics
  - bosons and fermions
  - supercharges
  - Witten index
permalink: "/supersymmetry-from-first-principles/"
---

The phrase

> supersymmetry is a symmetry between bosons and fermions

is correct, but it is too compressed to be a useful definition. It can
incorrectly suggest that a boson and a fermion are the same particle, or that
one can be changed into the other by an ordinary spatial rotation.

The precise meaning is:

$$
\boxed{
\text{a supersymmetry generator maps bosonic states to fermionic states
and fermionic states to bosonic states}
}
$$

while preserving the dynamics. In an unbroken supersymmetric theory, the
mapped states belong to one **supermultiplet** and have the same energy or
mass. They still differ in spin and fermion number.

This post develops that statement from the beginning. A one-dimensional
supersymmetric harmonic oscillator will make the mapping explicit before we
move to relativistic quantum fields.

## 1. What a symmetry means in physics

A physical system has a symmetry when a transformation changes its
description without changing its physical law.

For example, let the Hamiltonian $\hat H$ generate time evolution. If a
unitary transformation $\hat U$ satisfies

$$
\hat U\hat H\hat U^{-1}=\hat H,
$$

then the transformed state

$$
\lvert\psi'\rangle=\hat U\lvert\psi\rangle
$$

obeys the same dynamics. For a continuous transformation,

$$
\hat U(\epsilon)
=
\exp(-\mathrm i\epsilon\hat G),
$$

where $\hat G$ is its generator. Infinitesimally, invariance requires

$$
[\hat H,\hat G]=0.
$$

Consequently, if

$$
\hat H\lvert\psi\rangle
=
E\lvert\psi\rangle,
$$

then

$$
\hat H(\hat G\lvert\psi\rangle)
=
E(\hat G\lvert\psi\rangle).
$$

Unless $\hat G\lvert\psi\rangle=0$, the generator produces another state
with the same energy. Symmetry therefore organizes states into multiplets.

Ordinary rotations illustrate this idea. Angular-momentum ladder operators
change the magnetic quantum number $m$ while remaining inside the same
$\ell$ multiplet. Supersymmetry uses a different kind of generator: one that
also changes whether a state is bosonic or fermionic.

## 2. What distinguishes bosons from fermions

In relativistic quantum theory:

- bosons have integer spin $0,1,2,\ldots$;
- fermions have half-integer spin
  $\tfrac12,\tfrac32,\ldots$.

Identical bosons have symmetric many-particle states under exchange, whereas
identical fermions have antisymmetric states. The spin--statistics theorem
connects these two facts in a local relativistic theory.

It is useful to encode the distinction by the **fermion-parity operator**

$$
(-1)^{\hat F}.
$$

It has eigenvalue

$$
+1
$$

on a bosonic state and

$$
-1
$$

on a fermionic state:

$$
(-1)^{\hat F}\lvert B\rangle=+\lvert B\rangle,
$$

$$
(-1)^{\hat F}\lvert F\rangle=-\lvert F\rangle.
$$

This divides the Hilbert space into two sectors,

$$
\mathcal H
=
\mathcal H_B\oplus\mathcal H_F.
$$

This two-part structure is called a
$\mathbb Z_2$ **grading**.

## 3. Ordinary symmetry versus supersymmetry

An ordinary bosonic symmetry generator $\hat G$ preserves fermion parity:

$$
\left[
(-1)^{\hat F},\hat G
\right]
=
0.
$$

Thus it maps

$$
\mathcal H_B\longrightarrow\mathcal H_B
$$

and

$$
\mathcal H_F\longrightarrow\mathcal H_F.
$$

A supersymmetry generator $\hat Q$ reverses the grading:

$$
\boxed{
\left\{
(-1)^{\hat F},\hat Q
\right\}
=
0.
}
$$

Therefore,

$$
\hat Q:
\mathcal H_B\longleftrightarrow\mathcal H_F.
$$

This anticommutation relation is the shortest precise expression of
“symmetry between bosons and fermions.”

The word *between* means a mapping between the two sectors. It does not mean
that their spin, statistics, or measured identity disappears.

## 4. Why the supersymmetry generators anticommute

A bosonic generator has even fermion parity. A supersymmetry generator has
odd fermion parity because it changes a boson into a fermion or a fermion
into a boson.

The product of two odd operations is even. Consequently, two supersymmetry
operations can combine into an ordinary spacetime transformation. This is
why the defining algebra uses an anticommutator rather than only ordinary
commutators.

For the simplest four-dimensional supersymmetry,

$$
\boxed{
\{Q_\alpha,\bar Q_{\dot\beta}\}
=
2(\sigma^\mu)_{\alpha\dot\beta}P_\mu
}
$$

with

$$
\{Q_\alpha,Q_\beta\}=0,
\qquad
\{\bar Q_{\dot\alpha},\bar Q_{\dot\beta}\}=0.
$$

Here:

- $P_\mu$ generates spacetime translations;
- $Q_\alpha$ is a spinor supercharge;
- $\alpha$ and $\dot\beta$ are spinor indices;
- $\sigma^\mu$ connects spinor and spacetime indices.

The statement that two supersymmetry transformations close on a translation
is therefore built directly into the algebra.

Because the supercharge carries spin one-half, its action changes the spin
within a multiplet by one-half. This is the relativistic origin of the
boson--fermion connection.

## 5. A consequence that can be proved immediately

In supersymmetric quantum mechanics, choose the normalization

$$
\boxed{
\hat H
=
\{\hat Q,\hat Q^\dagger\}.
}
$$

The nilpotency relations are

$$
\hat Q^2=0,
\qquad
(\hat Q^\dagger)^2=0.
$$

They imply

$$
[\hat H,\hat Q]=0,
\qquad
[\hat H,\hat Q^\dagger]=0.
$$

Now let $\lvert\psi\rangle$ be a normalized energy eigenstate. Then

$$
\begin{aligned}
E
&=
\langle\psi\lvert\hat H\rvert\psi\rangle\\
&=
\langle\psi\lvert
\hat Q\hat Q^\dagger
+\hat Q^\dagger\hat Q
\rvert\psi\rangle\\
&=
\left\lVert
\hat Q^\dagger\lvert\psi\rangle
\right\rVert^2
+
\left\lVert
\hat Q\lvert\psi\rangle
\right\rVert^2.
\end{aligned}
$$

Hence,

$$
\boxed{E\geq0.}
$$

If $E>0$, at least one of

$$
\hat Q\lvert\psi\rangle,
\qquad
\hat Q^\dagger\lvert\psi\rangle
$$

is nonzero. It has the same energy because the supercharges commute with
$\hat H$, and it has the opposite fermion parity because the supercharges
are odd.

Thus every positive-energy state has a boson--fermion partner.

If $E=0$, both norms must vanish:

$$
\hat Q\lvert\psi_0\rangle=0,
\qquad
\hat Q^\dagger\lvert\psi_0\rangle=0.
$$

A zero-energy ground state can therefore remain unpaired without violating
supersymmetry.

## 6. Constructing the minimal supersymmetric system

Take an ordinary wavefunction of one coordinate $x$ and attach a two-state
internal space:

$$
\Psi(x)
=
\begin{pmatrix}
\psi_B(x)\\
\psi_F(x)
\end{pmatrix}.
$$

The upper component is assigned even parity and the lower component odd
parity:

$$
(-1)^{\hat F}
=
\begin{pmatrix}
1&0\\
0&-1
\end{pmatrix}.
$$

Choose a real function $W(x)$ called the **superpotential**, and define

$$
A
=
\frac{1}{\sqrt2}
\left(
\frac{d}{dx}+W(x)
\right),
$$

$$
A^\dagger
=
\frac{1}{\sqrt2}
\left(
-\frac{d}{dx}+W(x)
\right).
$$

The supercharges are the off-diagonal operators

$$
Q
=
\begin{pmatrix}
0&0\\
A&0
\end{pmatrix},
\qquad
Q^\dagger
=
\begin{pmatrix}
0&A^\dagger\\
0&0
\end{pmatrix}.
$$

Their off-diagonal form makes the mapping visible:

$$
Q
\begin{pmatrix}
\psi_B\\
0
\end{pmatrix}
=
\begin{pmatrix}
0\\
A\psi_B
\end{pmatrix},
$$

and

$$
Q^\dagger
\begin{pmatrix}
0\\
\psi_F
\end{pmatrix}
=
\begin{pmatrix}
A^\dagger\psi_F\\
0
\end{pmatrix}.
$$

Direct matrix multiplication gives

$$
Q^2=(Q^\dagger)^2=0
$$

and

$$
\boxed{
H
=
\{Q,Q^\dagger\}
=
\begin{pmatrix}
H_B&0\\
0&H_F
\end{pmatrix},
}
$$

where

$$
H_B=A^\dagger A,
\qquad
H_F=AA^\dagger.
$$

These are called supersymmetric partner Hamiltonians.

## 7. Deriving the partner potentials

Let both Hamiltonians act on a test function $f(x)$. Care is needed because
the derivative also acts on $Wf$:

$$
\frac{d}{dx}(Wf)
=
W'f+Wf'.
$$

Expanding $A^\dagger A$ gives

$$
\boxed{
H_B
=
\frac12
\left[
-\frac{d^2}{dx^2}
+W^2(x)-W'(x)
\right].
}
$$

Similarly,

$$
\boxed{
H_F
=
\frac12
\left[
-\frac{d^2}{dx^2}
+W^2(x)+W'(x)
\right].
}
$$

The two potentials are

$$
V_B(x)
=
\frac12\left[W^2(x)-W'(x)\right],
$$

$$
V_F(x)
=
\frac12\left[W^2(x)+W'(x)\right].
$$

They are generally different functions. Supersymmetry does not require the
two Hamiltonians to look identical. It requires their spectra and
eigenstates to be related by $A$ and $A^\dagger$.

## 8. Exact example: the supersymmetric harmonic oscillator

Choose dimensionless units and the superpotential

$$
W(x)=x.
$$

Then

$$
W'(x)=1,
$$

so

$$
\boxed{
H_B
=
\frac12
\left(
-\frac{d^2}{dx^2}+x^2-1
\right)
}
$$

and

$$
\boxed{
H_F
=
\frac12
\left(
-\frac{d^2}{dx^2}+x^2+1
\right).
}
$$

If

$$
H_{\mathrm{osc}}
=
\frac12
\left(
-\frac{d^2}{dx^2}+x^2
\right),
$$

then

$$
H_B=H_{\mathrm{osc}}-\frac12,
\qquad
H_F=H_{\mathrm{osc}}+\frac12.
$$

The ordinary oscillator has energies

$$
E_n^{\mathrm{osc}}
=
n+\frac12,
\qquad
n=0,1,2,\ldots
$$

Therefore,

$$
\boxed{
E_n^B=n,
\qquad
E_n^F=n+1.
}
$$

The energy levels are:

| Energy | Bosonic sector | Fermionic sector |
|---:|---|---|
| $0$ | $\lvert0,B\rangle$ | none |
| $1$ | $\lvert1,B\rangle$ | $\lvert0,F\rangle$ |
| $2$ | $\lvert2,B\rangle$ | $\lvert1,F\rangle$ |
| $3$ | $\lvert3,B\rangle$ | $\lvert2,F\rangle$ |
| $\vdots$ | $\vdots$ | $\vdots$ |

Every positive energy occurs once in each sector. The single zero-energy
bosonic ground state is unpaired.

<figure class="diagram-figure" style="max-width: 760px;">
  <img src="{{ '/assets/images/research/supersymmetry/supersymmetric-partner-potentials-maxima.png' | relative_url }}" alt="Maxima plot of the two supersymmetric harmonic-oscillator partner potentials, which are equal parabolas shifted vertically by one unit">
  <figcaption>Maxima plot of the partner potentials \(V_B=(x^2-1)/2\) and \(V_F=(x^2+1)/2\). The potentials differ, but their positive-energy spectra pair exactly.</figcaption>
</figure>

## 9. Seeing the boson--fermion map explicitly

The normalized oscillator wavefunctions are

$$
\psi_n(x)
=
\frac{
H_n(x)e^{-x^2/2}
}{
\pi^{1/4}\sqrt{2^n n!}
},
$$

where $H_n$ is a Hermite polynomial.

For $W=x$, the operator $A$ is the ordinary oscillator lowering operator:

$$
A\psi_n
=
\sqrt n\,\psi_{n-1}.
$$

Consequently,

$$
\boxed{
Q\lvert n,B\rangle
=
\sqrt n\,\lvert n-1,F\rangle,
\qquad n\geq1.
}
$$

Both sides have energy $n$:

$$
E_n^B=n,
\qquad
E_{n-1}^F=n.
$$

The reverse mapping is

$$
\boxed{
Q^\dagger\lvert n,F\rangle
=
\sqrt{n+1}\,\lvert n+1,B\rangle.
}
$$

For the ground state,

$$
\psi_0(x)
=
\pi^{-1/4}e^{-x^2/2},
$$

and

$$
A\psi_0=0.
$$

Thus,

$$
Q\lvert0,B\rangle=0.
$$

This example displays the definition without metaphor:

$$
\boxed{
\lvert n,B\rangle
\ \underset{Q^\dagger}{\stackrel{Q}{\rightleftarrows}}\
\lvert n-1,F\rangle
\quad
\text{for }n\geq1.
}
$$

The supercharges, not the equality of the two potentials, are the symmetry.

## 10. An important limitation of the example

The labels “bosonic” and “fermionic” in supersymmetric quantum mechanics
refer first to the $\mathbb Z_2$ grading of the two-component Hilbert space.
One-dimensional nonrelativistic quantum mechanics has no physical
spin--statistics theorem of the four-dimensional kind.

The model is nevertheless valuable because it contains the essential
algebra:

$$
Q^2=0,
\qquad
H=\{Q,Q^\dagger\},
\qquad
[H,Q]=0,
\qquad
\{(-1)^F,Q\}=0.
$$

It is a mathematically exact laboratory for state pairing, zero modes,
supersymmetry breaking, topology, factorization, and spectral deformation.
Relativistic field theory adds spacetime spin and genuine particle
statistics.

## 11. Zero modes and the Witten index

For a general superpotential, a bosonic zero mode must satisfy

$$
A\psi_{B,0}=0.
$$

Solving the first-order equation gives

$$
\psi_{B,0}(x)
\propto
\exp
\left[
-\int^x W(y)\,dy
\right].
$$

A fermionic zero mode must satisfy

$$
A^\dagger\psi_{F,0}=0,
$$

which gives

$$
\psi_{F,0}(x)
\propto
\exp
\left[
+\int^x W(y)\,dy
\right].
$$

Only square-integrable solutions are physical. Their existence depends on
the large-$\lvert x\rvert$ behaviour of $W(x)$.

The Witten index is

$$
\boxed{
\Delta
=
\operatorname{Tr}
\left[
(-1)^F e^{-\beta H}
\right].
}
$$

Every positive-energy boson and fermion contributes with opposite sign, so
the paired contributions cancel:

$$
\Delta
=
n_B^{(0)}-n_F^{(0)}.
$$

For $W=x$, there is one bosonic zero mode and no fermionic zero mode:

$$
\Delta=1.
$$

The nonzero index proves that supersymmetry is unbroken in this model.

If neither zero-mode candidate is normalizable, the ground energy is
positive. The positive-energy states may still be paired, but no state is
annihilated by all supercharges; supersymmetry is then spontaneously broken.

## 12. What changes in relativistic field theory

In a relativistic theory, the supercharge carries a spinor index and changes
spin by one-half. A supermultiplet contains fields rather than merely two
components of a one-dimensional wavefunction.

The simplest four-dimensional $\mathcal N=1$ **chiral multiplet** contains:

- a complex scalar field $\phi$, with two real bosonic components;
- a Weyl fermion $\psi_\alpha$, with two on-shell fermionic degrees of
  freedom.

An auxiliary complex scalar $F$ is included when writing the algebra
off-shell. A standard infinitesimal supersymmetry transformation is

$$
\delta\phi
=
\sqrt2\,\epsilon^\alpha\psi_\alpha,
$$

$$
\delta\psi_\alpha
=
\mathrm i\sqrt2
(\sigma^\mu\bar\epsilon)_\alpha
\partial_\mu\phi
+
\sqrt2\,\epsilon_\alpha F,
$$

$$
\delta F
=
\mathrm i\sqrt2\,
\bar\epsilon\bar\sigma^\mu\partial_\mu\psi.
$$

Here $\epsilon$ is a constant anticommuting spinor parameter. The products
$\epsilon\psi$ and $\bar\epsilon\bar\sigma^\mu\partial_\mu\psi$ have the
correct grading for the variations of bosonic fields.

Applying two such transformations in opposite order gives a spacetime
translation:

$$
[\delta_{\epsilon_1},\delta_{\epsilon_2}]
\Phi
=
a^\mu\partial_\mu\Phi,
$$

for every field $\Phi$ in the multiplet, with $a^\mu$ built from
$\epsilon_1$ and $\epsilon_2$. This is the field-level realization of

$$
\{Q,\bar Q\}\propto P.
$$

## 13. Equal numbers and equal masses

An unbroken relativistic supersymmetry has two characteristic consequences
within each supermultiplet.

First, it gives equal numbers of physical bosonic and fermionic degrees of
freedom. For example:

| Multiplet | Bosonic degrees of freedom | Fermionic degrees of freedom |
|---|---:|---:|
| Chiral | complex scalar: $2$ | Weyl fermion: $2$ |
| Massless vector | gauge boson polarizations: $2$ | gaugino helicities: $2$ |

Second, paired particles have equal mass. The reason is algebraic. The
mass-squared operator is the Poincaré invariant

$$
M^2=P_\mu P^\mu.
$$

Because the supercharges commute with translations,

$$
[P_\mu,Q_\alpha]=0,
$$

they also commute with $M^2$. Therefore $Q_\alpha\lvert\psi\rangle$, when
nonzero, has the same mass as $\lvert\psi\rangle$.

Equal mass is a consequence of **unbroken** supersymmetry, not the definition
of supersymmetry itself.

## 14. Unbroken and broken supersymmetry

The theory may possess a supersymmetric algebra even when its vacuum is not
invariant under it.

Supersymmetry is unbroken when

$$
Q_\alpha\lvert0\rangle=0
$$

for every supercharge. In the quantum-mechanical normalization used above,
this gives zero vacuum energy.

It is spontaneously broken when at least one supercharge satisfies

$$
Q_\alpha\lvert0\rangle\neq0.
$$

Then the vacuum does not share the symmetry of the dynamical equations.
Boson--fermion mass degeneracy can be lifted, and relativistic spontaneous
breaking produces a massless fermionic Goldstone mode called the
**Goldstino** before additional mechanisms are included.

Thus the absence of equal-mass partners does not logically disprove the
supersymmetry algebra; it means that a physical supersymmetric model would
need a breaking mechanism.

## 15. Statements that should not be confused

The following distinctions contain most of the conceptual content:

| Incomplete statement | Precise statement |
|---|---|
| “A boson is the same as a fermion.” | They are distinct states connected by an odd generator. |
| “Supersymmetry removes spin.” | The supercharge changes spin by one-half and organizes different spins into one multiplet. |
| “Every boson pairs with every fermion.” | Pairing occurs only between states in the same supermultiplet with compatible quantum numbers. |
| “The partner potentials must be equal.” | The potentials may differ; intertwining by $A$ and $A^\dagger$ produces the spectral pairing. |
| “Every state must have a partner.” | Positive-energy states pair; supersymmetric zero modes can be unpaired. |
| “Equal mass defines supersymmetry.” | Equal mass follows from an unbroken supersymmetry algebra. |
| “Supersymmetric quantum mechanics proves particle superpartners exist.” | It demonstrates the algebra, but its grading alone is not the relativistic spin--statistics relation. |

## 16. The intertwining formulation

The partner Hamiltonians satisfy

$$
AH_B=H_FA
$$

and

$$
A^\dagger H_F=H_BA^\dagger.
$$

These relations are called **intertwining relations**. If

$$
H_B\psi_B=E\psi_B,
$$

then

$$
H_F(A\psi_B)
=
A(H_B\psi_B)
=
E(A\psi_B).
$$

Whenever $A\psi_B\neq0$, it is the fermionic partner with the same energy.
This is the differential-operator form of the supercharge argument.

Intertwining connects supersymmetry to Darboux transformations,
factorization methods, inverse spectral theory, and exceptional orthogonal
polynomials.

## 17. From the example to research

The minimal construction can be extended by changing ingredients whose role
is already visible.

### Shape invariance and exact solvability

If the partner potential has the same functional form with shifted
parameters, repeated factorization can generate the complete spectrum
algebraically. Research questions concern new shape-invariant systems,
singular domains, self-adjoint extensions, and completeness.

### Exceptional-polynomial systems

Darboux transformations can replace classical eigenfunctions by exceptional
orthogonal polynomials with missing degrees. The important tasks are to
establish regularity, the positive measure, completeness, recurrence
relations, and observable consequences.

### Supersymmetry breaking and spectral transitions

Changing the asymptotic behaviour of $W(x)$ can destroy normalizable zero
modes. One can study how the Witten index, ground energy, tunnelling, or
finite-temperature behaviour diagnoses the transition.

### Extended supersymmetry and BPS states

Several independent supercharges give $\mathcal N>1$ supersymmetry. The
algebra may contain central charges. Positivity then produces bounds between
mass and charge, and states saturating them are BPS states with shortened
multiplets and enhanced stability.

### Supersymmetry on curved and topological spaces

On a curved configuration space, the supercharge is related to geometric
differential operators. Zero modes become connected to topology and index
theorems. This creates a bridge among quantum mechanics, differential
geometry, topology, and field theory.

### Non-Hermitian and open supersymmetric systems

If the Hamiltonian is non-Hermitian, the adjoint, inner product, and partner
construction must be reconsidered. Biorthogonal supercharges, exceptional
points, open-system decay, and the survival or failure of index arguments
are active mathematical questions.

### Superspherical harmonics

The earlier post on
[spherical harmonics and their research extensions]({{ '/spherical-harmonics-first-principles-research-extensions/' | relative_url }})
introduced superspherical harmonics as harmonics on spaces with bosonic and
fermionic coordinates. The graded algebra developed here explains why their
symmetry group is a supergroup and why their multiplets contain both even
and odd sectors.

## 18. Central conclusion

Supersymmetry is not a vague resemblance between bosons and fermions. It is
a graded algebra with odd generators:

$$
\boxed{
\{(-1)^F,Q\}=0,
\qquad
[H,Q]=0,
\qquad
H=\{Q,Q^\dagger\}.
}
$$

The first relation says that $Q$ changes bosonic parity into fermionic
parity. The second says the mapped state has the same energy. The third
implies nonnegative energy, positive-energy pairing, and the possibility of
unpaired zero modes.

In relativistic theory, the deeper relation

$$
\boxed{
\{Q_\alpha,\bar Q_{\dot\beta}\}
=
2(\sigma^\mu)_{\alpha\dot\beta}P_\mu
}
$$

says that two supersymmetry transformations produce a spacetime
translation. Because $Q$ carries spin one-half, supermultiplets connect
integer-spin bosons with half-integer-spin fermions.

That algebra—not the slogan—is the definition.

## 19. Maxima file for verifying the example

The accompanying Maxima worksheet constructs $A$, $A^\dagger$, $H_B$, and
$H_F$; verifies the first five levels of both partner spectra; checks the
supercharge pairing and the unpaired zero mode; and generates the
partner-potential plot.

After downloading it, open a terminal in its folder and run:

```shell
maxima --batch=supersymmetry-first-principles.mac
```

[Download the complete Maxima worksheet]({{ '/assets/maxima/research/supersymmetry/supersymmetry-first-principles.mac' | relative_url }})

---
title: "Supersymmetry from First Principles: How Bosons and Fermions Are Related"
description: "Builds supersymmetry from physical bosonic and fermionic states, derives their creation-operator algebras and the supercharge that connects them, and then develops the supersymmetric oscillator, relativistic supermultiplets, symmetry breaking, and research extensions."
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

The familiar sentence

> Supersymmetry is a symmetry between bosons and fermions

often creates more confusion than understanding. It leaves several questions
unanswered:

- What exactly is a boson or a fermion?
- What does the word *between* mean?
- Does a boson literally become a fermion?
- Why are two components in supersymmetric quantum mechanics labelled
  bosonic and fermionic?
- How does a one-dimensional oscillator relate to particles with integer and
  half-integer spin?

The short answer is:

$$
\boxed{
\text{a supersymmetry generator changes fermion parity while preserving
the dynamics}
}
$$

In a relativistic theory, this means that the generator maps an
integer-spin bosonic state into a half-integer-spin fermionic state in the
same supermultiplet, and conversely. In supersymmetric quantum mechanics,
the same algebra is realized by combining an ordinary bosonic oscillator
with a two-state fermionic mode.

The oscillator labels will therefore not be assumed at the beginning. They
will be derived from bosonic and fermionic creation operators.

## 1. Begin with identical quantum particles

Suppose two identical particles have coordinates $x_1$ and $x_2$. Their
two-particle wavefunction is

$$
\Psi(x_1,x_2).
$$

Because the particles are identical, interchanging their labels cannot
produce a new physical configuration. Quantum mechanics permits two
possibilities:

$$
\Psi(x_2,x_1)=+\Psi(x_1,x_2)
$$

or

$$
\Psi(x_2,x_1)=-\Psi(x_1,x_2).
$$

Particles with symmetric many-particle states are called **bosons**.
Particles with antisymmetric many-particle states are called **fermions**.

In relativistic quantum field theory, the spin--statistics theorem connects
exchange behaviour with spin:

| Particle type | Spin | Exchange symmetry |
|---|---|---|
| Boson | integer: $0,1,2,\ldots$ | symmetric |
| Fermion | half-integer: $\tfrac12,\tfrac32,\ldots$ | antisymmetric |

Photons and the Higgs particle are bosons. Electrons, neutrinos, and quarks
are fermions.

This distinction is physical. Supersymmetry does not erase it.

## 2. Why field modes behave like oscillators

A quantum field can be decomposed into normal modes, just as a vibrating
string can be decomposed into standing waves. Each mode has an amplitude
that can gain or lose quanta.

For a bosonic field mode, introduce annihilation and creation operators

$$
a,
\qquad
a^\dagger,
$$

satisfying

$$
\boxed{
[a,a^\dagger]=1.
}
$$

The commutator is defined by

$$
[A,B]=AB-BA.
$$

Starting from a vacuum state

$$
a\lvert0\rangle=0,
$$

repeated application of $a^\dagger$ produces

$$
\lvert n\rangle
=
\frac{(a^\dagger)^n}{\sqrt{n!}}\lvert0\rangle,
\qquad
n=0,1,2,\ldots
$$

There is no upper limit on the occupation number $n$. Any number of bosons
may occupy the same mode.

The number operator

$$
N_B=a^\dagger a
$$

obeys

$$
N_B\lvert n\rangle=n\lvert n\rangle.
$$

The ladder actions are

$$
a\lvert n\rangle
=
\sqrt n\,\lvert n-1\rangle,
$$

$$
a^\dagger\lvert n\rangle
=
\sqrt{n+1}\,\lvert n+1\rangle.
$$

This is the algebra of a bosonic oscillator.

## 3. A fermionic mode is necessarily a two-state system

For a fermionic field mode, introduce

$$
b,
\qquad
b^\dagger,
$$

with the anticommutation relations

$$
\boxed{
\{b,b^\dagger\}=1,
\qquad
b^2=(b^\dagger)^2=0.
}
$$

The anticommutator is

$$
\{A,B\}=AB+BA.
$$

Let

$$
b\lvert0_f\rangle=0.
$$

One fermion can be created:

$$
\lvert1_f\rangle
=
b^\dagger\lvert0_f\rangle.
$$

Trying to create a second fermion in the same mode gives

$$
b^\dagger\lvert1_f\rangle
=
(b^\dagger)^2\lvert0_f\rangle
=
0.
$$

Thus the mode has only two possible occupations:

$$
f=0
\qquad\text{or}\qquad
f=1.
$$

The fermion-number operator

$$
N_F=b^\dagger b
$$

satisfies

$$
N_F\lvert0_f\rangle=0,
$$

$$
N_F\lvert1_f\rangle=\lvert1_f\rangle.
$$

The nilpotency

$$
(b^\dagger)^2=0
$$

is the operator form of the exclusion principle for one mode.

This is the first genuine connection between the supersymmetric oscillator
and fermions: its second two-state degree of freedom obeys the fermionic
anticommutation algebra.

## 4. Fermion number and fermion parity

The operator that distinguishes even and odd fermion number is

$$
(-1)^F.
$$

For one fermionic mode,

$$
(-1)^F\lvert0_f\rangle=+\lvert0_f\rangle,
$$

$$
(-1)^F\lvert1_f\rangle=-\lvert1_f\rangle.
$$

The Hilbert space therefore separates into two sectors:

$$
\mathcal H
=
\mathcal H_{\mathrm{even}}
\oplus
\mathcal H_{\mathrm{odd}}.
$$

This separation is called a

$$
\mathbb Z_2
$$

grading.

In the minimal one-mode example:

$$
\mathcal H_{\mathrm{even}}
\equiv
\mathcal H_B,
$$

$$
\mathcal H_{\mathrm{odd}}
\equiv
\mathcal H_F.
$$

The letters $B$ and $F$ are therefore not arbitrary names. They mean
fermion parity

$$
+1
\qquad\text{and}\qquad
-1,
$$

respectively.

With several fermionic modes, an even sector can contain $0,2,4,\ldots$
fermionic excitations, while an odd sector can contain $1,3,5,\ldots$.
Therefore the grading is more fundamental than a literal count of one
particle.

## 5. What an ordinary symmetry does

A symmetry is a transformation that preserves the physical law. If the
Hamiltonian is $H$ and $G$ is an ordinary continuous-symmetry generator,

$$
[H,G]=0.
$$

If

$$
H\lvert\psi\rangle=E\lvert\psi\rangle,
$$

then

$$
H(G\lvert\psi\rangle)
=
E(G\lvert\psi\rangle).
$$

Thus $G$ maps a state to another state with the same energy, unless the
result vanishes.

An ordinary bosonic generator preserves fermion parity:

$$
\left[
(-1)^F,G
\right]
=
0.
$$

It maps even states to even states and odd states to odd states.

For example, an angular-momentum ladder operator changes the magnetic
quantum number $m$ but does not turn a boson into a fermion.

## 6. What makes a symmetry a supersymmetry

A supersymmetry generator $Q$ is an **odd** operator. It reverses fermion
parity:

$$
\boxed{
\left\{
(-1)^F,Q
\right\}
=
0.
}
$$

If $\lvert B\rangle$ has even parity, then

$$
\begin{aligned}
(-1)^FQ\lvert B\rangle
&=
-Q(-1)^F\lvert B\rangle\\
&=
-Q\lvert B\rangle.
\end{aligned}
$$

Therefore $Q\lvert B\rangle$ has odd parity.

Similarly, if $\lvert F\rangle$ has odd parity, then
$Q\lvert F\rangle$ has even parity.

Consequently,

$$
\boxed{
Q:
\mathcal H_B
\longleftrightarrow
\mathcal H_F.
}
$$

The generator must also preserve the dynamics:

$$
[H,Q]=0.
$$

The phrase “symmetry between bosons and fermions” now has a precise meaning:

1. $Q$ reverses fermion parity.
2. $Q$ maps states without changing their energy.
3. In a relativistic theory, $Q$ carries spin one-half and therefore connects
   integer-spin and half-integer-spin states.

## 7. The supersymmetric oscillator is built from both modes

Now combine:

- one bosonic mode with occupation $n=0,1,2,\ldots$;
- one fermionic mode with occupation $f=0,1$.

The product basis is

$$
\lvert n,f\rangle
=
\lvert n\rangle\otimes\lvert f\rangle.
$$

Take the Hamiltonian

$$
\boxed{
H
=
\omega
\left(
a^\dagger a+b^\dagger b
\right).
}
$$

In units with $\hbar=1$, its energy is

$$
\boxed{
E_{n,f}
=
\omega(n+f).
}
$$

The states with $f=0$ have even fermion parity:

$$
\lvert n,0\rangle\in\mathcal H_B.
$$

The states with $f=1$ have odd fermion parity:

$$
\lvert n,1\rangle\in\mathcal H_F.
$$

Thus the two sectors in the oscillator example come directly from a
fermionic occupation number, not from attaching unexplained labels to two
differential equations.

## 8. Constructing the operator that exchanges the quanta

Define

$$
\boxed{
Q
=
\sqrt{\omega}\,b^\dagger a,
\qquad
Q^\dagger
=
\sqrt{\omega}\,a^\dagger b.
}
$$

The action of $Q$ occurs in two steps:

1. $a$ removes one bosonic quantum;
2. $b^\dagger$ creates one fermionic quantum.

Therefore,

$$
\boxed{
Q\lvert n,0\rangle
=
\sqrt{\omega n}\,
\lvert n-1,1\rangle.
}
$$

The reverse operation is

$$
\boxed{
Q^\dagger\lvert n-1,1\rangle
=
\sqrt{\omega n}\,
\lvert n,0\rangle.
}
$$

The two states have equal energy:

$$
E_{n,0}=\omega n,
$$

$$
E_{n-1,1}
=
\omega[(n-1)+1]
=
\omega n.
$$

The supercharge has exchanged one bosonic excitation for one fermionic
excitation while conserving the energy.

This is the symmetry in the example.

## 9. Deriving the supersymmetry algebra

Because

$$
(b^\dagger)^2=b^2=0,
$$

the supercharges are nilpotent:

$$
Q^2=0,
\qquad
(Q^\dagger)^2=0.
$$

Now calculate their anticommutator. Using

$$
aa^\dagger=a^\dagger a+1
$$

and

$$
bb^\dagger=1-b^\dagger b,
$$

one finds

$$
\begin{aligned}
QQ^\dagger
&=
\omega
(a^\dagger a+1)b^\dagger b,
\\[4pt]
Q^\dagger Q
&=
\omega
a^\dagger a(1-b^\dagger b).
\end{aligned}
$$

Adding the two expressions gives

$$
\boxed{
\{Q,Q^\dagger\}
=
\omega
\left(
a^\dagger a+b^\dagger b
\right)
=
H.
}
$$

Hence the minimal supersymmetry algebra is

$$
\boxed{
Q^2=(Q^\dagger)^2=0,
\qquad
\{Q,Q^\dagger\}=H.
}
$$

It follows algebraically that

$$
[H,Q]=[H,Q^\dagger]=0.
$$

The pairing is therefore not an accidental equality of energy levels. It is
enforced by the operator algebra.

## 10. The spectrum shows exactly which states pair

The lowest states are:

| Energy | Even sector, $f=0$ | Odd sector, $f=1$ |
|---:|---|---|
| $0$ | $\lvert0,0\rangle$ | none |
| $\omega$ | $\lvert1,0\rangle$ | $\lvert0,1\rangle$ |
| $2\omega$ | $\lvert2,0\rangle$ | $\lvert1,1\rangle$ |
| $3\omega$ | $\lvert3,0\rangle$ | $\lvert2,1\rangle$ |
| $\vdots$ | $\vdots$ | $\vdots$ |

At every positive energy,

$$
\boxed{
\lvert n,0\rangle
\ \underset{Q^\dagger}{\stackrel{Q}{\rightleftarrows}}\
\lvert n-1,1\rangle.
}
$$

<figure class="diagram-figure" style="max-width: 760px;">
  <img src="{{ '/assets/images/research/supersymmetry/supersymmetric-oscillator-pairing-maxima.png' | relative_url }}" alt="Maxima energy-level diagram showing an even state and an odd state paired at every positive energy, with one unpaired even zero-energy state">
  <figcaption>Maxima-generated pairing diagram. The arrows represent \(Q\) and \(Q^\dagger\). The labels \(\lvert n,0\rangle\) and \(\lvert n-1,1\rangle\) explicitly display bosonic-mode occupation and fermionic-mode occupation.</figcaption>
</figure>

The state

$$
\lvert0,0\rangle
$$

has no partner because

$$
Q\lvert0,0\rangle=0.
$$

There is no bosonic excitation for $a$ to remove. This unpaired state is
allowed because it has zero energy.

## 11. Why positive-energy states must pair

Let $\lvert\psi\rangle$ be a normalized state. Since

$$
H=\{Q,Q^\dagger\},
$$

its energy expectation value is

$$
\begin{aligned}
\langle H\rangle
&=
\langle\psi\lvert
QQ^\dagger+Q^\dagger Q
\rvert\psi\rangle
\\[4pt]
&=
\left\lVert
Q^\dagger\lvert\psi\rangle
\right\rVert^2
+
\left\lVert
Q\lvert\psi\rangle
\right\rVert^2.
\end{aligned}
$$

Therefore,

$$
\boxed{\langle H\rangle\geq0.}
$$

For an energy eigenstate with $E>0$, at least one of

$$
Q\lvert\psi\rangle
\qquad\text{or}\qquad
Q^\dagger\lvert\psi\rangle
$$

must be nonzero. It has:

- the same energy, because the supercharges commute with $H$;
- the opposite fermion parity, because the supercharges are odd.

For $E=0$, both norms can vanish. This is why a supersymmetric zero-energy
ground state may be unpaired.

## 12. Where the two-component wavefunction comes from

The fermionic mode has the matrix representation

$$
b
=
\begin{pmatrix}
0&1\\
0&0
\end{pmatrix},
\qquad
b^\dagger
=
\begin{pmatrix}
0&0\\
1&0
\end{pmatrix}.
$$

Its parity operator is

$$
(-1)^F
=
\begin{pmatrix}
1&0\\
0&-1
\end{pmatrix}.
$$

A general state is consequently

$$
\Psi(x)
=
\psi_0(x)\lvert0_f\rangle
+
\psi_1(x)\lvert1_f\rangle
=
\begin{pmatrix}
\psi_0(x)\\
\psi_1(x)
\end{pmatrix}.
$$

The upper component is even because it multiplies the zero-fermion state.
The lower component is odd because it multiplies the one-fermion state.

Only after deriving this fact is it appropriate to write

$$
\psi_0\equiv\psi_B,
\qquad
\psi_1\equiv\psi_F.
$$

Thus the notation

$$
\begin{pmatrix}
\psi_B\\
\psi_F
\end{pmatrix}
$$

is shorthand for a state resolved by fermionic occupation. It is not an
arbitrary renaming of two ordinary wavefunctions.

## 13. Recovering the partner Hamiltonians

In coordinate space, take

$$
a
=
\frac{1}{\sqrt2}
\left(
\frac{d}{dx}+x
\right),
$$

$$
a^\dagger
=
\frac{1}{\sqrt2}
\left(
-\frac{d}{dx}+x
\right).
$$

The full Hamiltonian becomes block diagonal:

$$
H
=
\begin{pmatrix}
a^\dagger a&0\\
0&aa^\dagger
\end{pmatrix}.
$$

Therefore,

$$
H_B
=
a^\dagger a
=
\frac12
\left(
-\frac{d^2}{dx^2}+x^2-1
\right),
$$

$$
H_F
=
aa^\dagger
=
\frac12
\left(
-\frac{d^2}{dx^2}+x^2+1
\right).
$$

The subscripts now have a derived meaning:

- $H_B$ acts in the $f=0$ even sector;
- $H_F$ acts in the $f=1$ odd sector.

The two potentials are visibly different:

$$
V_B(x)=\frac{x^2-1}{2},
$$

$$
V_F(x)=\frac{x^2+1}{2}.
$$

Supersymmetry does not mean that the potentials are equal. It means that
$a$ and $a^\dagger$ intertwine the sectors and pair their positive-energy
spectra.

<figure class="diagram-figure" style="max-width: 760px;">
  <img src="{{ '/assets/images/research/supersymmetry/supersymmetric-partner-potentials-maxima.png' | relative_url }}" alt="Maxima plot of the two supersymmetric harmonic-oscillator partner potentials">
  <figcaption>The partner potentials generated with Maxima. Their vertical displacement produces one unpaired even ground state while leaving every positive-energy level paired.</figcaption>
</figure>

## 14. General supersymmetric quantum mechanics

Replace $x$ by a real function $W(x)$ called the superpotential:

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

The partner Hamiltonians are

$$
\boxed{
H_B=A^\dagger A
=
\frac12
\left[
-\frac{d^2}{dx^2}
+W^2(x)-W'(x)
\right],
}
$$

$$
\boxed{
H_F=AA^\dagger
=
\frac12
\left[
-\frac{d^2}{dx^2}
+W^2(x)+W'(x)
\right].
}
$$

They obey the intertwining relations

$$
AH_B=H_FA,
$$

$$
A^\dagger H_F=H_BA^\dagger.
$$

If

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

Thus $A\psi_B$, when nonzero, is the odd-sector partner at the same energy.
The coordinate-space intertwiner $A$ plays the same role as the boson-to-
fermion part of the supercharge.

## 15. Zero modes and unbroken supersymmetry

A zero-energy even state satisfies

$$
A\psi_{B,0}=0.
$$

Solving this first-order equation gives

$$
\psi_{B,0}(x)
\propto
\exp
\left[
-\int^xW(y)\,dy
\right].
$$

A zero-energy odd state satisfies

$$
A^\dagger\psi_{F,0}=0,
$$

so

$$
\psi_{F,0}(x)
\propto
\exp
\left[
+\int^xW(y)\,dy
\right].
$$

A formal solution is a physical state only if it is square-integrable and
satisfies the operator-domain boundary conditions.

For

$$
W(x)=x,
$$

the even solution is

$$
\psi_{B,0}(x)
\propto
e^{-x^2/2},
$$

which is normalizable. The odd candidate

$$
e^{+x^2/2}
$$

is not normalizable. Hence there is one even zero mode and no odd zero mode.

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

Positive-energy even and odd partners cancel in this trace, leaving

$$
\Delta
=
n_{\mathrm{even}}^{(0)}
-
n_{\mathrm{odd}}^{(0)}.
$$

For the supersymmetric oscillator,

$$
\Delta=1.
$$

The nonzero index guarantees an unbroken supersymmetric ground state.

If no normalizable zero mode exists, the lowest energy is positive and the
vacuum is not annihilated by all supercharges. Supersymmetry is then
spontaneously broken even though the Hamiltonian still possesses the
supersymmetry algebra.

## 16. What the oscillator does and does not prove

The oscillator contains a real bosonic operator algebra and a real fermionic
operator algebra:

$$
[a,a^\dagger]=1,
$$

$$
\{b,b^\dagger\}=1.
$$

It therefore demonstrates exactly how a graded generator exchanges bosonic
and fermionic excitations.

However, one-dimensional nonrelativistic quantum mechanics has no spatial
rotation group capable of distinguishing integer spin from half-integer
spin. It also does not by itself contain the relativistic spin--statistics
theorem.

The correct statement is:

> Supersymmetric quantum mechanics reproduces the algebraic distinction
> between bosonic and fermionic modes and the supercharge that connects
> them, but relativistic quantum field theory supplies their spacetime spin
> and particle interpretation.

The model is a bridge to particle supersymmetry, not a proof that its two
wavefunction components are new relativistic particles.

## 17. Relativistic supersymmetry

In four-dimensional relativistic physics, the symmetry algebra must include
the Poincaré generators:

- $P_\mu$ for spacetime translations;
- $M_{\mu\nu}$ for Lorentz transformations.

The simplest supersymmetry adds spinor generators

$$
Q_\alpha,
\qquad
\bar Q_{\dot\alpha}.
$$

Their defining anticommutator is

$$
\boxed{
\{Q_\alpha,\bar Q_{\dot\beta}\}
=
2(\sigma^\mu)_{\alpha\dot\beta}P_\mu.
}
$$

The remaining basic relations include

$$
\{Q_\alpha,Q_\beta\}=0,
$$

$$
\{\bar Q_{\dot\alpha},\bar Q_{\dot\beta}\}=0,
$$

$$
[P_\mu,Q_\alpha]=0.
$$

This algebra says:

1. $Q_\alpha$ is fermionic because it is an odd spinor generator.
2. One application changes the spin by one-half and reverses fermion parity.
3. Two supersymmetry transformations combine into a spacetime translation.
4. The supercharge preserves four-momentum and therefore preserves mass.

This is the relativistic meaning of a symmetry connecting actual bosonic and
fermionic particles.

## 18. A physical supermultiplet

The simplest four-dimensional

$$
\mathcal N=1
$$

chiral multiplet contains:

- a complex scalar field $\phi$, which is a spin-zero boson;
- a Weyl spinor field $\psi_\alpha$, which is a spin-one-half fermion.

On shell, the complex scalar has two real bosonic degrees of freedom and the
Weyl fermion has two fermionic degrees of freedom.

An auxiliary complex scalar $F$ is included to make the algebra close
off shell. It has no propagating particle state.

A standard infinitesimal transformation is

$$
\boxed{
\delta\phi
=
\sqrt2\,\epsilon^\alpha\psi_\alpha,
}
$$

$$
\boxed{
\delta\psi_\alpha
=
\mathrm i\sqrt2
(\sigma^\mu\bar\epsilon)_\alpha
\partial_\mu\phi
+
\sqrt2\,\epsilon_\alpha F,
}
$$

$$
\boxed{
\delta F
=
\mathrm i\sqrt2\,
\bar\epsilon\bar\sigma^\mu
\partial_\mu\psi.
}
$$

The constant parameter $\epsilon$ is a Grassmann-odd spinor. Since both
$\epsilon$ and $\psi$ are odd, their product $\epsilon\psi$ is even, as
required for the variation of the bosonic field $\phi$.

The first equation explicitly maps the fermionic field into the variation
of the bosonic field. The second maps the bosonic field derivative into the
variation of the fermionic field.

Applying two transformations in opposite orders produces a translation:

$$
[\delta_{\epsilon_1},\delta_{\epsilon_2}]\Phi
=
a^\mu\partial_\mu\Phi
$$

for every field $\Phi$ in the multiplet. This is the field realization of

$$
\{Q,\bar Q\}\propto P.
$$

Unlike the oscillator shorthand, $\phi$ and $\psi$ are now genuine
integer-spin and half-integer-spin quantum fields.

## 19. Why superpartners have equal mass when supersymmetry is unbroken

The mass-squared operator is

$$
M^2=P_\mu P^\mu.
$$

Since

$$
[P_\mu,Q_\alpha]=0,
$$

it follows that

$$
[M^2,Q_\alpha]=0.
$$

If

$$
M^2\lvert B\rangle
=
m^2\lvert B\rangle,
$$

then

$$
M^2(Q_\alpha\lvert B\rangle)
=
m^2(Q_\alpha\lvert B\rangle).
$$

Therefore a nonzero fermionic partner

$$
Q_\alpha\lvert B\rangle
$$

has the same mass.

Equal mass is a consequence of unbroken supersymmetry. It is not the
definition of supersymmetry.

## 20. Equal numbers of degrees of freedom

An unbroken supermultiplet has equal numbers of physical bosonic and
fermionic degrees of freedom.

| Supermultiplet | Bosonic degrees of freedom | Fermionic degrees of freedom |
|---|---:|---:|
| Chiral | complex scalar: $2$ | Weyl fermion: $2$ |
| Massless vector | two gauge-field polarizations: $2$ | two gaugino helicities: $2$ |

The equality does not mean equal spin. It allows the supercharge to establish
a one-to-one pairing among physical states.

Off shell, auxiliary fields are often required so that the component counts
and algebra close before the equations of motion are imposed. Auxiliary
fields do not represent additional observable particles.

## 21. Unbroken and spontaneously broken supersymmetry

The dynamical equations may possess supersymmetry even when the vacuum does
not.

Supersymmetry is unbroken if

$$
Q_\alpha\lvert0\rangle=0
$$

for every supercharge.

It is spontaneously broken if

$$
Q_\alpha\lvert0\rangle\neq0
$$

for at least one supercharge.

When supersymmetry is broken:

- boson--fermion mass degeneracy may be lifted;
- the vacuum energy is positive in global supersymmetry;
- global spontaneous supersymmetry breaking produces a Goldstino;
- in local supersymmetry, the Goldstino is absorbed through the
  super-Higgs mechanism.

Thus a supersymmetric theory can contain the boson--fermion mapping in its
algebra while its observed spectrum no longer displays equal masses.

## 22. Seven distinctions that remove the common confusion

| Confusing statement | Precise meaning |
|---|---|
| “A boson becomes the same particle as a fermion.” | A supercharge maps one state into a distinct state of opposite fermion parity. |
| “The symbols \(B\) and \(F\) are just labels.” | In the oscillator they are derived from fermionic occupation \(f=0\) and \(f=1\). |
| “The two partner potentials must be identical.” | Their forms may differ; the supercharges intertwine their spectra. |
| “Every state must have a partner.” | Every positive-energy state pairs; a supersymmetric zero mode may be unpaired. |
| “The oscillator already contains spin-zero and spin-one-half particles.” | It contains bosonic and fermionic operator algebras; relativistic field theory adds spin and the spin--statistics theorem. |
| “Equal mass is supersymmetry.” | Equal mass follows only when the supersymmetry is unbroken. |
| “A composite state with two fermions is fermionic.” | Fermion parity is even for any even number of fermionic excitations. |

## 23. From the construction to research

Once the physical meaning of the grading and supercharge is fixed, several
research directions follow systematically.

### Factorization and exactly solvable systems

Different superpotentials $W(x)$ generate partner Hamiltonians. Shape
invariance can determine spectra algebraically. Singular potentials and
self-adjoint domains introduce nontrivial boundary physics.

### Darboux transformations and exceptional polynomials

The intertwining operators $A$ and $A^\dagger$ are Darboux operators.
Rational extensions lead to exceptional orthogonal polynomials, missing
degrees, modified recurrence relations, and new completeness questions.

### Index theory and topology

The Witten index counts the difference between even and odd zero modes while
ignoring paired positive-energy states. In geometric formulations this
connects spectral supersymmetry with topological invariants and index
theorems.

### Extended supersymmetry and BPS states

Theories with several independent supercharges have

$$
\mathcal N>1.
$$

Central charges can appear in the algebra and produce energy or mass bounds.
States saturating these bounds form shortened BPS multiplets whose stability
is controlled by symmetry and topology.

### Supersymmetry on curved spaces

On manifolds, supercharges can be constructed from geometric differential
operators. Curvature, topology, gauge connections, and boundary conditions
control zero modes and spectral pairing.

### Non-Hermitian supersymmetry

For non-Hermitian systems, the ordinary adjoint and inner product may no
longer define the correct partner construction. Research problems involve
biorthogonal supercharges, exceptional points, spectral reality, and the
fate of index arguments.

### Superspherical harmonics

The post on
[spherical harmonics and their research extensions]({{ '/spherical-harmonics-first-principles-research-extensions/' | relative_url }})
introduced superspherical harmonics. The present grading explains their
foundation: a superspace contains commuting bosonic coordinates and
anticommuting fermionic coordinates, while a supergroup mixes the even and
odd sectors.

## 24. Final meaning of “symmetry between bosons and fermions”

The complete logical chain is:

$$
\begin{aligned}
\text{bosonic mode}
&\Longrightarrow
[a,a^\dagger]=1,
\quad n=0,1,2,\ldots,
\\[4pt]
\text{fermionic mode}
&\Longrightarrow
\{b,b^\dagger\}=1,
\quad f=0,1,
\\[4pt]
\text{fermion parity}
&\Longrightarrow
\mathcal H
=
\mathcal H_{\mathrm{even}}
\oplus
\mathcal H_{\mathrm{odd}},
\\[4pt]
\text{supercharge}
&\Longrightarrow
Q:
\mathcal H_{\mathrm{even}}
\longleftrightarrow
\mathcal H_{\mathrm{odd}},
\\[4pt]
\text{supersymmetry algebra}
&\Longrightarrow
\{Q,Q^\dagger\}=H.
\end{aligned}
$$

For the oscillator,

$$
Q=\sqrt\omega\,b^\dagger a
$$

removes one bosonic excitation and creates one fermionic excitation without
changing the energy.

For relativistic fields,

$$
\{Q_\alpha,\bar Q_{\dot\beta}\}
=
2(\sigma^\mu)_{\alpha\dot\beta}P_\mu
$$

connects genuine integer-spin bosonic and half-integer-spin fermionic
particles in a supermultiplet.

Therefore:

$$
\boxed{
\text{supersymmetry relates distinct bosonic and fermionic states;
it does not identify them}
}
$$

## 25. Maxima verification file

The accompanying Maxima worksheet:

- constructs the coordinate-space operators $A$ and $A^\dagger$;
- verifies the even and odd spectra for the first five oscillator levels;
- verifies the supercharge mapping with zero symbolic residual;
- confirms that the even ground state is annihilated by the lowering
  supercharge;
- generates the energy-pairing diagram and partner-potential plot.

After downloading the file, open a terminal in its folder and run:

```shell
maxima --batch=supersymmetry-first-principles.mac
```

[Download the complete Maxima worksheet]({{ '/assets/maxima/research/supersymmetry/supersymmetry-first-principles.mac' | relative_url }})

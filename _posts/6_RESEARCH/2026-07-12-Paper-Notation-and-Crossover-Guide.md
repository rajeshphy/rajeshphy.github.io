---
title: "Reading the Exceptional-Point Project V: Complete Notation and Crossover Guide"
date: 2026-07-12 22:00:00 +0530
categories:
  - research
  - quantum-mechanics
tags:
  - exceptional-points
  - paper-notation
  - crossover-scaling
  - dimensional-analysis
  - research-reading
permalink: "/exceptional-point-project-notation-crossover/"
---

This post is a self-contained guide to the notation and main calculation in the
paper **Structured-to-generic crossover at arbitrary-order exceptional points in
supersymmetric $\mathcal{PT}$-symmetric arrays**.

It explains how the expressions in the manuscript are connected, with special
attention to

$$
\boxed{
|\delta_c|\asymp
\frac{2^{N-2}}{(N-1)!}
\frac{|q|^{N/2}}{|\Omega|^{N-1}}
}.
$$

The reader is assumed to know the basic meaning of $\mathcal{PT}$ symmetry and
supersymmetry.  Everything else needed for this formula is developed below.

## 1. The Physical Model in One Line

The ideal array Hamiltonian is

$$
H_N(\Omega,\gamma)
=\Omega J_x+i\gamma J_z.
$$

It describes $N$ coupled modes.  The spin label is

$$
j=\frac{N-1}{2},
$$

so the $J_z$ quantum number takes the values

$$
m=-j,-j+1,\ldots,j.
$$

The nearest-neighbour coupling between sites $n$ and $n+1$ is

$$
C_n=
\frac{\Omega}{2}\sqrt{n(N-n)},
\qquad n=1,\ldots,N-1.
$$

The diagonal gain-loss gradient is supplied by $i\gamma J_z$.

## 2. Master Notation Table

### Array and spin labels

| Symbol | Definition | Meaning |
|---|---|---|
| $N$ | $N=2j+1$ | number of modes or sites |
| $j$ | $(N-1)/2$ | spin representation |
| $n$ | $1,\ldots,N$ | physical site index |
| $m$ | $-j,\ldots,j$ | structured-mode label |
| $J_x,J_y,J_z$ | spin-$j$ matrices | algebraic representation of the array |
| $C_n$ | $\frac{\Omega}{2}\sqrt{n(N-n)}$ | coupling of bond $n$ |

### Physical control parameters

| Symbol | Definition | Meaning |
|---|---|---|
| $\Omega$ | common coupling scale | controls all designed bonds |
| $\gamma$ | gain-loss scale | controls the imaginary diagonal gradient |
| $J$ | critical value with $\Omega=\gamma=J$ | exceptional-point scale |
| $\epsilon$ | $\Omega=J+\epsilon$ | structured coupling displacement |
| $\delta$ | coefficient of $V_\delta$ | terminal structure-breaking coupling |
| $q$ | $\Omega^2-\gamma^2$ | signed structured distance from the EP |

### Polynomial and crossover quantities

| Symbol | Definition | Meaning |
|---|---|---|
| $P_N(E;q,\delta)$ | $\det(EI-H_N-V_\delta)$ | full characteristic polynomial |
| $P_N^{(0)}(E;q)$ | $P_N(E;q,0)$ | structured polynomial without terminal link |
| $D_{N-2}(E)$ | interior principal determinant | coefficient of $-\delta^2$ |
| $A_N(\Omega)$ | $\frac{(N-1)!}{2^{N-2}}\Omega^{N-1}$ | full-chain path coefficient |
| $y$ | $E/\sqrt q$ | scaled eigenvalue |
| $F_N(y)$ | $\prod_{m=-j}^{j}(y-m)$ | dimensionless structured polynomial |
| $\zeta_N$ | $A_N\delta/q^{N/2}$ | crossover variable |
| $\delta_c$ | terminal-link crossover scale | value at which $|\zeta_N|$ is order one |

### Eigenvector and feasibility quantities

| Symbol | Definition | Meaning |
|---|---|---|
| $r$ | $|\psi^{\mathsf T}\psi|/(\psi^\dagger\psi)$ | phase rigidity |
| $K$ | $r^{-2}$ | Petermann factor |
| $s$ | characteristic eigenvalue displacement | measured spectral splitting |
| $\sigma$ | $s/|\Omega|$ | dimensionless splitting |
| $\eta$ | $\sqrt{|q|}/|\Omega|$ | dimensionless distance from the EP |
| $d$ | $|\delta|/|\Omega|$ | dimensionless terminal coupling |
| $d_c$ | $|\delta_c|/|\Omega|$ | dimensionless nominal crossover |

## 3. First Link: From $\Omega,\gamma$ to $q$

The exact structured spectrum is

$$
E_m=m\sqrt{\Omega^2-\gamma^2}.
$$

Defining

$$
q=\Omega^2-\gamma^2
$$

compresses the spectrum to

$$
E_m=m\sqrt q.
$$

The quantity $q$ has dimensions of energy squared, angular frequency squared,
or inverse-length squared, depending on the platform.

| Sign of $q$ | Interpretation |
|---|---|
| $q>0$ | real structured spectrum |
| $q=0$ | all structured eigenvalues coalesce |
| $q<0$ | imaginary-conjugate structured levels |

The crossover analysis approaches the exceptional point from

$$
q\to0^+.
$$

## 4. Second Link: From $q$ to the Structured Polynomial

Without the terminal link,

$$
P_N^{(0)}(E;q)
=
\prod_{m=-j}^{j}(E-m\sqrt q).
$$

Introduce the scaled eigenvalue

$$
E=\sqrt q\,y.
$$

Every factor becomes

$$
E-m\sqrt q
=
\sqrt q\,(y-m).
$$

There are $N$ factors, so

$$
P_N^{(0)}(E;q)
=q^{N/2}
\prod_{m=-j}^{j}(y-m).
$$

Define

$$
F_N(y)=
\prod_{m=-j}^{j}(y-m).
$$

Therefore

$$
\boxed{
P_N^{(0)}(E;q)=q^{N/2}F_N(y)
}.
$$

This equation separates:

1. the dimensional scale $q^{N/2}$,
2. the dimensionless root geometry contained in $F_N(y)$.

## 5. Third Link: The Terminal Perturbation

The structure-breaking perturbation is

$$
V_\delta
=
\delta
\left(
|1\rangle\langle N|
+|N\rangle\langle1|
\right).
$$

It couples the first and last sites.  The complete characteristic polynomial is

$$
P_N(E;q,\delta)
=
P_N^{(0)}(E;q)
-A_N(\Omega)\delta
-\delta^2D_{N-2}(E).
$$

This identity is exact for $N\ge3$.  There are no terms proportional to
$\delta^3,\delta^4,\ldots$ because the matrix contains only two entries
proportional to $\delta$.

## 6. Deriving the Path Coefficient $A_N$

The linear term uses one terminal matrix element and the entire
nearest-neighbour path through the array.

The product of all designed bonds is

$$
\prod_{n=1}^{N-1}C_n
=
\prod_{n=1}^{N-1}
\left[
\frac{\Omega}{2}\sqrt{n(N-n)}
\right].
$$

Separate the common factor:

$$
\prod_{n=1}^{N-1}C_n
=
\left(\frac{\Omega}{2}\right)^{N-1}
\left[
\prod_{n=1}^{N-1}n(N-n)
\right]^{1/2}.
$$

Now

$$
\prod_{n=1}^{N-1}n=(N-1)!,
$$

and after replacing $r=N-n$,

$$
\prod_{n=1}^{N-1}(N-n)
=
\prod_{r=1}^{N-1}r
=(N-1)!.
$$

Therefore

$$
\left[
\prod_{n=1}^{N-1}n(N-n)
\right]^{1/2}
=(N-1)!.
$$

Hence

$$
\prod_{n=1}^{N-1}C_n
=
\frac{(N-1)!}{2^{N-1}}
\Omega^{N-1}.
$$

There are two terminal directions, $1\to N$ and $N\to1$.  Multiplying by two
gives

$$
\boxed{
A_N(\Omega)
=
\frac{(N-1)!}{2^{N-2}}
\Omega^{N-1}
}.
$$

The factorial in the final crossover formula comes from this product of all
engineered bonds.

## 7. Fourth Link: The Dimensionless Crossover Variable

Substitute

$$
P_N^{(0)}=q^{N/2}F_N(y)
$$

into the exact polynomial:

$$
q^{N/2}F_N(y)
-A_N\delta
-\delta^2D_{N-2}(\sqrt q\,y)
=0.
$$

Divide by $q^{N/2}$:

$$
F_N(y)
=
\frac{A_N\delta}{q^{N/2}}
+
\frac{\delta^2}{q^{N/2}}
D_{N-2}(\sqrt q\,y).
$$

This motivates

$$
\boxed{
\zeta_N=
\frac{A_N(\Omega)\delta}{q^{N/2}}
}.
$$

The numerator and denominator have the same dimensions:

$$
[A_N\delta]
=
[E]^{N-1}[E]
=[E]^N,
$$

and

$$
[q^{N/2}]
=
([E]^2)^{N/2}
=[E]^N.
$$

Thus $\zeta_N$ is dimensionless.

## 8. Why the Quadratic Term Disappears from the Leading Scaling Equation

Hold $\zeta_N$ fixed while $q\to0^+$.  From its definition,

$$
\delta
=
\frac{q^{N/2}}{A_N}\zeta_N.
$$

Therefore

$$
\frac{\delta^2}{q^{N/2}}
\sim q^{N/2}.
$$

For fixed $N$ and bounded $y$, the interior determinant remains bounded.
Consequently,

$$
\frac{\delta^2}{q^{N/2}}
D_{N-2}(\sqrt q\,y)
\to0.
$$

The universal leading equation is

$$
\boxed{
F_N(y)=\zeta_N
}.
$$

The quadratic term is still included in every finite-$q$ calculation.  It
disappears only from the leading joint scaling limit.

## 9. Deriving the Crossover Scale in the Image

The structured regime corresponds to

$$
|\zeta_N|\ll1,
$$

and the terminal-link-dominated regime corresponds to

$$
|\zeta_N|\gg1.
$$

The crossover occurs when $|\zeta_N|$ is of order one:

$$
\left|
\frac{A_N\delta_c}{q^{N/2}}
\right|
\sim1.
$$

Solve for $|\delta_c|$:

$$
|\delta_c|
\asymp
\frac{|q|^{N/2}}{|A_N|}.
$$

Using

$$
|A_N|
=
\frac{(N-1)!}{2^{N-2}}
|\Omega|^{N-1},
$$

we obtain

$$
\boxed{
|\delta_c|
\asymp
\frac{2^{N-2}}{(N-1)!}
\frac{|q|^{N/2}}{|\Omega|^{N-1}}
}.
$$

This is the expression shown in the manuscript.

## 10. What the Symbol $\asymp$ Means

The symbol

$$
\asymp
$$

does not mean an exact equality at a uniquely defined physical boundary.
Crossovers do not normally have a sharp universal edge.

It means that the two sides have the same leading scale.  If one defines the
nominal crossover by

$$
|\zeta_N|=1,
$$

then one may use the equality

$$
|\delta_c|=
\frac{2^{N-2}}{(N-1)!}
\frac{|q|^{N/2}}{|\Omega|^{N-1}}.
$$

Choosing $|\zeta_N|=1/2$ or $2$ changes only an order-one numerical prefactor,
not the dependence on $q$, $\Omega$, or $N$.

## 11. Dimensionless Tolerance Formula

Define

$$
\eta=
\frac{\sqrt{|q|}}{|\Omega|},
\qquad
d=
\frac{|\delta|}{|\Omega|}.
$$

Because

$$
|q|^{N/2}
=
|\Omega|^N\eta^N,
$$

the nominal crossover becomes

$$
\frac{|\delta_c|}{|\Omega|}
=
\frac{2^{N-2}}{(N-1)!}\eta^N.
$$

Thus

$$
\boxed{
d_c=
c_N\eta^N,
\qquad
c_N=
\frac{2^{N-2}}{(N-1)!}
}.
$$

The first few coefficients are

| $N$ | $c_N$ |
|---:|---:|
| 3 | $1$ |
| 4 | $2/3$ |
| 5 | $1/3$ |
| 6 | $2/15$ |

The power $\eta^N$ makes the structured regime increasingly fragile for larger
$N$.

## 12. Reading the $N=4$ Example

For $N=4$,

$$
j=\frac32,
\qquad
m=-\frac32,-\frac12,\frac12,\frac32.
$$

Therefore

$$
F_4(y)
=
\left(y^2-\frac94\right)
\left(y^2-\frac14\right).
$$

Expanding,

$$
F_4(y)
=
y^4-\frac52y^2+\frac9{16}.
$$

The crossover equation is

$$
F_4(y)=\zeta_4.
$$

Treat this as a quadratic equation in $x=y^2$:

$$
x^2-\frac52x+\frac9{16}-\zeta_4=0.
$$

The solutions are

$$
y^2=
\frac54\pm\sqrt{1+\zeta_4}.
$$

The inner pair reaches $y=0$ when

$$
\frac54-\sqrt{1+\zeta_4}=0.
$$

Therefore

$$
\sqrt{1+\zeta_4}=\frac54,
$$

and

$$
\boxed{
\zeta_4=\frac9{16}
}.
$$

The paper separately checks that this double root has geometric multiplicity
one and vanishing phase rigidity.  It is therefore a secondary
$\mathrm{EP}_2$.

## 13. Structured and Generic Limits from One Equation

The equation

$$
F_N(y)=\zeta_N
$$

contains both limiting responses.

### Small $|\zeta_N|$

The roots remain close to the structured values $y=m$:

$$
y_m
=
m+\frac{\zeta_N}{F_N'(m)}+\cdots.
$$

Since $E=\sqrt q\,y$,

$$
E_m\sim m\sqrt q.
$$

### Large $|\zeta_N|$

For large $|y|$,

$$
F_N(y)\sim y^N.
$$

Therefore

$$
y^N\sim\zeta_N.
$$

Multiplying by $E=\sqrt q\,y$ gives

$$
E^N
\sim
q^{N/2}\zeta_N
=
A_N\delta.
$$

Hence

$$
E\sim(A_N\delta)^{1/N}.
$$

One scaled equation therefore interpolates between the square-root structured
spectrum and the generic $N$th-root spectrum.

## 14. How the Eigenvector Quantities Connect

The paper also uses

$$
r=
\frac{|\psi^{\mathsf T}\psi|}
{\psi^\dagger\psi},
\qquad
K=r^{-2}.
$$

Near the structured exceptional point,

$$
r_{jm}
\sim
\binom{N-1}{j-m}^{-1}
\left|\frac{q}{\Omega^2}\right|^{(N-1)/2}.
$$

For a generic terminal-link unfolding,

$$
r_{\mathrm g}
\sim
\left|\frac{\delta}{\Omega}\right|^{(N-1)/N}.
$$

At the crossover,

$$
|\delta_c|
\sim
|q|^{N/2},
$$

so

$$
|\delta_c|^{(N-1)/N}
\sim
|q|^{(N-1)/2}.
$$

The two rigidity powers therefore match at the same crossover scale.

## 15. Paper-Reading Roadmap

| Manuscript part | Question answered |
|---|---|
| spin array and $\mathcal{PT}$ symmetry | what is the ideal Hamiltonian? |
| structured perturbations | why does a collective error give a square root? |
| structure-breaking terminal error | why does a terminal link activate the full Jordan chain? |
| exact mixed polynomial | where does $A_N$ come from? |
| crossover theorem | how are $q$ and $\delta$ combined into $\zeta_N$? |
| $N=4$ example | where does the secondary $\mathrm{EP}_2$ occur? |
| phase rigidity and robustness | what happens to the eigenvectors? |
| $N=5$ taxonomy | do other allowed errors give the same exponent? |
| feasibility section | how small must an unwanted terminal link be? |
| appendices | where are the detailed derivations and Maxima checks? |

## 16. Common Notation Mistakes

| Mistake | Correct reading |
|---|---|
| treating $q$ as an energy | $q$ has dimensions of energy squared |
| confusing $\epsilon$ and $\delta$ | $\epsilon$ is structured; $\delta$ breaks the nearest-neighbour profile |
| treating $y$ as a measured eigenvalue | $y=E/\sqrt q$ is dimensionless |
| treating $\zeta_N$ as a new physical coupling | it is a dimensionless ratio of two competing polynomial terms |
| reading $\asymp$ as exact equality | it denotes a crossover scale |
| forgetting the factor $(N-1)!$ | it comes from the product of every designed bond |
| using the terminal-link theorem for $N=2$ | the structure-breaking terminal link is distinct only for $N\ge3$ |
| calling every repeated root an EP | geometric multiplicity must also be checked |
| writing $K\sim s^{-2(N-1)}$ with dimensional $s$ | use $\sigma=s/|\Omega|$ |

## 17. Final Connection Map

The whole paper can be remembered as the chain

$$
(\Omega,\gamma)
\longrightarrow
q=\Omega^2-\gamma^2
\longrightarrow
E=\sqrt q\,y
\longrightarrow
P_N^{(0)}=q^{N/2}F_N(y),
$$

$$
C_1C_2\cdots C_{N-1}
\longrightarrow
A_N=
\frac{(N-1)!}{2^{N-2}}\Omega^{N-1},
$$

$$
\frac{A_N\delta}{q^{N/2}}
\longrightarrow
\zeta_N
\longrightarrow
F_N(y)=\zeta_N,
$$

and finally

$$
|\zeta_N|\sim1
\longrightarrow
|\delta_c|
\asymp
\frac{2^{N-2}}{(N-1)!}
\frac{|q|^{N/2}}{|\Omega|^{N-1}}.
$$

Return to [Part I: Non-Hermitian Arrays from First
Principles]({{ '/exceptional-point-project-non-hermitian-arrays/' | relative_url }})
or review [Part IV: Petermann Factor from First
Principles]({{ '/exceptional-point-project-petermann-factor/' | relative_url }}).

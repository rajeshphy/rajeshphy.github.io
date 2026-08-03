---
title: "Chandrasekhar, Black Holes, and the Singh Relativity Claim"
summary: "Relativistic stellar structure and a source-based assessment of claims about Vashishtha Narayan Singh."
date: 2025-07-21 09:00:00 +0530
categories:
  - bsc-iv
tags: [bsc, semester-iv, mj-5, indian-scientists, chandrasekhar-limit, black-holes, vashishtha-narayan-singh, relativity]
permalink: /bsc/sem-iv/mj-5/chandrasekhar-black-holes-singh-relativity/
hidden: true
---

## Subrahmanyan Chandrasekhar and the white-dwarf limit

A white dwarf is supported by electron degeneracy pressure. Let $M$ and $R$ be its mass and radius, and let $\mu_e m_u$ be the mean mass per electron. Then

$$N_e\sim\frac{M}{\mu_e m_u},\qquad
n_e\sim\frac{N_e}{R^3},\qquad
p_F\sim\hbar n_e^{1/3}.$$

When the electrons become ultrarelativistic, their characteristic energy is $p_Fc$. The total degeneracy energy therefore scales as

$$U_{\rm deg}\sim N_ep_Fc
\sim\frac{\hbar c}{R}\left(\frac{M}{\mu_e m_u}\right)^{4/3}.$$

The gravitational energy scales as

$$U_G\sim-\frac{GM^2}{R}.$$

Both terms now vary as $1/R$. Balancing their coefficients gives a limiting mass scale independent of radius,

$$
\boxed{M_{\rm Ch}\sim
\frac{(\hbar c/G)^{3/2}}{(\mu_e m_u)^2}}.
$$

A full relativistic stellar-structure calculation supplies the numerical coefficient and gives about $1.4M_\odot$ for a carbon-oxygen white dwarf. Above this mass, electron degeneracy cannot maintain a stable white dwarf. Chandrasekhar's result established a mass-dependent route toward further collapse; later theory determines whether the outcome is a neutron star or a black hole.

The scaling argument assumes a cold, completely degenerate, ideal electron gas in the ultrarelativistic limit; ions supply nearly all the mass, Newtonian gravity supplies the binding estimate, and Coulomb, rotation, temperature and general-relativistic corrections are omitted. A standard ideal result is

$$
M_{\rm Ch}\simeq\frac{5.83}{\mu_e^2}M_\odot.
$$

The sign of the gravitational term is negative, while the degeneracy contribution is positive. Both scale as $R^{-1}$ only in the ultrarelativistic limit; in the nonrelativistic limit the electron energy scales differently and a stable radius remains possible.

Chandrasekhar subsequently made major contributions to general relativity and wrote *The Mathematical Theory of Black Holes*. This was a systematic mathematical analysis of black-hole physics, not a claim that he alone discovered the black-hole concept. The [Nobel archive](https://www.nobelprize.org/prizes/physics/1983/chandrasekhar/biographical/) records both the white-dwarf work and his later programme in relativistic astrophysics.

For comparison, the event-horizon radius of a nonrotating, uncharged black hole of mass $M$ is

$$
r_s=\frac{2GM}{c^2}.
$$

This Schwarzschild result assumes spherical vacuum spacetime outside the mass. It is not the Chandrasekhar-limit equation: one describes a spacetime horizon, while the other describes the loss of white-dwarf support.

## Vashishtha Narayan Singh: what the record establishes

The syllabus requests a contribution by Vashishtha Narayan Singh "in the field of relativity." The documented scholarly record requires caution. Singh's 1969 Berkeley PhD thesis is **Reproducing Kernels and Operators with a Cyclic Vector**, supervised by John L. Kelley. His 1974 *Pacific Journal of Mathematics* paper develops that operator-theory work. These are contributions to functional analysis, not identified results in relativity.

Reproducing-kernel and operator methods can be useful across mathematical physics, but possible applicability is not evidence that a particular theorem changed special or general relativity. A specific relativity contribution would need a traceable publication, equation or result that can be examined against the field's literature. The widely circulated story that Singh "challenged Einstein" does not provide such evidence.

Accordingly, the precise conclusion is:

$$\text{documented operator-theory achievement}\quad\ne\quad
\text{verified revision of relativity}.$$

This does not diminish Singh's mathematics. It distinguishes a verifiable contribution from an unsupported attribution. The primary bibliographic anchors are the [University of California, Berkeley thesis record](https://math.berkeley.edu/publications/reproducing-kernels-and-operators-cyclic-vector) and Singh's [1974 journal paper](https://msp.org/pjm/1974/52-2/pjm-v52-n2-p26-s.pdf).

The [Maxima verification]({{ '/assets/maxima/bsc/sem-iv/mj-5/modern-physics-checks.mac' | relative_url }}) substitutes the Chandrasekhar mass scaling into the heuristic energy balance and returns a zero residual.

## Solved Problems

### 1. Composition dependence of the ideal limiting mass

For carbon or oxygen, the ratio of nucleons to electrons is approximately $\mu_e=2$. The standard ideal expression gives

$$
M_{\rm Ch}=\frac{5.83}{2^2}M_\odot
=1.4575M_\odot.
$$

The inverse-square composition dependence follows because $N_e=M/(\mu_em_u)$: increasing mass per electron reduces the degeneracy support available for the same stellar mass. Detailed corrections bring commonly quoted carbon--oxygen values closer to $1.4M_\odot$.

### 2. Schwarzschild radius of a stellar-mass black hole

For $M=10M_\odot$, with $M_\odot=1.98847\times10^{30}\ \mathrm{kg}$,

$$
r_s=\frac{2(6.67430\times10^{-11})(10)(1.98847\times10^{30})}
{(2.99792458\times10^8)^2}.
$$

Therefore

$$r_s=2.9533\times10^4\ \mathrm{m}=29.53\ \mathrm{km}.$$

The radius is proportional to mass; it is not a material surface of the collapsed object.

### 3. Auditing the claimed relativity contribution

Assess the proposition "Singh changed Einstein's relativity" using the two primary bibliographic records cited above.

1. The Berkeley record identifies a 1969 thesis on reproducing kernels and cyclic operators.
2. The 1974 paper's title, abstract and subject matter concern operator theory and invariant subspaces.
3. Neither record identifies a relativistic metric, field equation, experimental prediction or correction to special or general relativity.
4. Thus the records verify a contribution to functional analysis but do not verify the stated relativity claim.

A future conclusion could change if a traceable relativity publication were produced; reputation or repetition alone is not equivalent evidence.

## Descriptive Questions

1. Why does the ultrarelativistic degeneracy estimate produce a limiting mass independent of radius?
2. List the assumptions omitted by the heuristic Chandrasekhar scaling argument.
3. Distinguish the Chandrasekhar limit from the Schwarzschild radius.
4. What primary-source evidence would be required to verify a claimed contribution to relativity?

## Numerical Problems

1. A photon is emitted by a static source at $R=3r_s$ outside a Schwarzschild object and received at infinity. Find $z=(1-r_s/R)^{-1/2}-1$.

   **Final answer:** $z=\sqrt{3/2}-1=0.2247$.

2. Estimate the mean density of a $1.00M_\odot$ white dwarf of radius $7000\ \mathrm{km}$ using $\bar\rho=3M/(4\pi R^3)$.

   **Final answer:** $\bar\rho=1.384\times10^9\ \mathrm{kg\,m^{-3}}$.

The scaling, identities and rounded values are checked in the [Maxima worksheet]({{ '/assets/maxima/bsc/sem-iv/mj-5/chandrasekhar-black-holes-singh-checks.mac' | relative_url }}).

## References

1. Wikipedia overviews: [Chandrasekhar limit](https://en.wikipedia.org/wiki/Chandrasekhar_limit) and [Vashishtha Narayan Singh](https://en.wikipedia.org/wiki/Vashishtha_Narayan_Singh).
2. [Nobel Prize: Subrahmanyan Chandrasekhar, biographical record](https://www.nobelprize.org/prizes/physics/1983/chandrasekhar/biographical/).
3. [University of California, Berkeley: *Reproducing Kernels and Operators with a Cyclic Vector*](https://math.berkeley.edu/publications/reproducing-kernels-and-operators-cyclic-vector).
4. Vashishtha N. Singh, ["Reproducing Kernels and Operators with a Cyclic Vector. I"](https://msp.org/pjm/1974/52-2/pjm-v52-n2-p26-s.pdf), *Pacific Journal of Mathematics* **52** (1974), 567--584.
5. Subrahmanyan Chandrasekhar, *The Mathematical Theory of Black Holes*, Oxford University Press, 1983, Chapters 1--3.
6. Stuart L. Shapiro and Saul A. Teukolsky, *Black Holes, White Dwarfs, and Neutron Stars*, Wiley, 1983, Chapters 2, 7 and 12.

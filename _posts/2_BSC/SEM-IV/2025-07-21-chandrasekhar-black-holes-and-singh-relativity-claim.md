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

Chandrasekhar subsequently made major contributions to general relativity and wrote *The Mathematical Theory of Black Holes*. This was a systematic mathematical analysis of black-hole physics, not a claim that he alone discovered the black-hole concept. The [Nobel archive](https://www.nobelprize.org/prizes/physics/1983/chandrasekhar/biographical/) records both the white-dwarf work and his later programme in relativistic astrophysics.

## Vashishtha Narayan Singh: what the record establishes

The syllabus requests a contribution by Vashishtha Narayan Singh "in the field of relativity." The documented scholarly record requires caution. Singh's 1969 Berkeley PhD thesis is **Reproducing Kernels and Operators with a Cyclic Vector**, supervised by John L. Kelley. His 1974 *Pacific Journal of Mathematics* paper develops that operator-theory work. These are contributions to functional analysis, not identified results in relativity.

Reproducing-kernel and operator methods can be useful across mathematical physics, but possible applicability is not evidence that a particular theorem changed special or general relativity. A specific relativity contribution would need a traceable publication, equation or result that can be examined against the field's literature. The widely circulated story that Singh "challenged Einstein" does not provide such evidence.

Accordingly, the precise conclusion is:

$$\text{documented operator-theory achievement}\quad\ne\quad
\text{verified revision of relativity}.$$

This does not diminish Singh's mathematics. It distinguishes a verifiable contribution from an unsupported attribution. The primary bibliographic anchors are the [University of California, Berkeley thesis record](https://math.berkeley.edu/publications/reproducing-kernels-and-operators-cyclic-vector) and Singh's [1974 journal paper](https://msp.org/pjm/1974/52-2/pjm-v52-n2-p26-s.pdf).

The [Maxima verification]({{ '/assets/maxima/bsc/sem-iv/mj-5/modern-physics-checks.mac' | relative_url }}) substitutes the Chandrasekhar mass scaling into the heuristic energy balance and returns a zero residual.

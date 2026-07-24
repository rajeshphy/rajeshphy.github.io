---
title: "Vibrational Analysis of Molecular Band Systems"
summary: "Extraction of vibrational and rotational constants from band origins, Deslandres differences, isotope shifts, and branch structure."
date: 2026-05-11 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-ii
  - lecture
tags:
  - msc
  - semester-ii
  - molecular-spectra
  - band-systems
  - deslandres-table
  - vibrational-analysis
permalink: /msc/sem-ii/molecular-spectra/vibrational-analysis-of-band-systems/
hidden: true
---

An electronic band system contains transitions between the vibrational levels
of two electronic states. Before rotational structure is considered, the
origin of the $(v',v'')$ band is

$$
\boxed{
\widetilde\nu_{v'v''}
=T_e'-T_e''+G'(v')-G''(v'').
}
$$

For an anharmonic diatomic oscillator,

$$
G(v)
=\widetilde\nu_e\left(v+\frac12\right)
-\widetilde\nu_ex_e\left(v+\frac12\right)^2.
$$

The observed array of band origins can therefore determine the vibrational
constants of both electronic states.

## Upper-state differences

Hold $v''$ fixed and compare two neighbouring upper vibrational levels:

$$
\begin{aligned}
\Delta_1'(v')
&=\widetilde\nu_{v'+1,v''}
-\widetilde\nu_{v',v''}\\
&=G'(v'+1)-G'(v').
\end{aligned}
$$

Put $n=v'+1/2$. Then

$$
\begin{aligned}
G'(v'+1)-G'(v')
={}&\widetilde\nu_e'
-\widetilde\nu_e'x_e'
\left[(n+1)^2-n^2\right]\\
={}&\widetilde\nu_e'
-\widetilde\nu_e'x_e'(2n+1).
\end{aligned}
$$

Since $2n+1=2(v'+1)$,

$$
\boxed{
\Delta_1'(v')
=\widetilde\nu_e'
-2\widetilde\nu_e'x_e'(v'+1).
}
$$

Successive upper differences themselves differ by

$$
\begin{aligned}
\Delta_2'
&=\Delta_1'(v'+1)-\Delta_1'(v')\\
&=-2\widetilde\nu_e'x_e'.
\end{aligned}
$$

The intercept of $\Delta_1'$ against $v'+1$ gives
$\widetilde\nu_e'$, and its slope gives
$-2\widetilde\nu_e'x_e'$.

## Lower-state differences and their sign

Now hold $v'$ fixed and increase the lower quantum number:

$$
\begin{aligned}
\Delta_1''(v'')
&=\widetilde\nu_{v',v''+1}
-\widetilde\nu_{v',v''}\\
&=-\left[G''(v''+1)-G''(v'')\right].
\end{aligned}
$$

The minus sign is essential because lower-state energy is subtracted from the
upper-state energy. Therefore

$$
\boxed{
\Delta_1''(v'')
=-\widetilde\nu_e''
+2\widetilde\nu_e''x_e''(v''+1),
}
$$

and

$$
\boxed{
\Delta_2''
=\Delta_1''(v''+1)-\Delta_1''(v'')
=2\widetilde\nu_e''x_e''.
}
$$

<figure class="diagram-figure">
  <img src="{{ '/assets/images/msc/sem-ii/molecular-spectra/unit-2/deslandres-band-array.png' | relative_url }}" alt="Deslandres array of band origins with rows of fixed lower vibrational quantum number, columns of fixed upper vibrational quantum number, and a diagonal sequence of constant vibrational quantum-number difference" loading="lazy">
  <figcaption>Horizontal and vertical differences isolate upper- and lower-state vibrational intervals. The cancellation around any elementary rectangle tests whether the term values are separable.</figcaption>
</figure>

Arrange the measured origins in a Deslandres table with $v'$ along one axis
and $v''$ along the other. Because an unperturbed band origin is the sum of a
function of $v'$ and a function of $v''$, the mixed second difference is

$$
\begin{aligned}
&\widetilde\nu_{v'+1,v''+1}
-\widetilde\nu_{v'+1,v''}
-\widetilde\nu_{v',v''+1}
+\widetilde\nu_{v',v''}\\
&=
\left[G'(v'+1)-G''(v''+1)\right]
-\left[G'(v'+1)-G''(v'')\right]\\
&\quad
-\left[G'(v')-G''(v''+1)\right]
+\left[G'(v')-G''(v'')\right]\\
&=0.
\end{aligned}
$$

A systematic nonzero value signals a perturbation, a wrong vibrational
assignment, or failure of the simple separated term-value model.

A **progression** holds $v''$ fixed and varies $v'$. A **sequence** follows
bands with fixed $\Delta v=v'-v''$. These patterns help assign quantum
numbers before the constants are fitted.

## Rotational combination differences

Within one band,

$$
\widetilde\nu
=\widetilde\nu_{v'v''}
+F'(J')-F''(J''),
\qquad
F(J)=BJ(J+1).
$$

For a band without a $Q$ branch,

$$
\begin{aligned}
R(J)&=\widetilde\nu_{v'v''}
+F'(J+1)-F''(J),\\
P(J)&=\widetilde\nu_{v'v''}
+F'(J-1)-F''(J).
\end{aligned}
$$

Subtracting lines chosen to share the same upper level removes the entire
upper term:

$$
\begin{aligned}
R(J)-P(J+2)
&=F''(J+2)-F''(J)\\
&=B''\left[(J+2)(J+3)-J(J+1)\right]\\
&=\boxed{2B''(2J+3)}.
\end{aligned}
$$

Likewise, lines sharing the same lower level give

$$
\begin{aligned}
R(J)-P(J)
&=F'(J+1)-F'(J-1)\\
&=B'\left[(J+1)(J+2)-(J-1)J\right]\\
&=\boxed{2B'(2J+1)}.
\end{aligned}
$$

These combination differences determine $B''$ and $B'$ without requiring the
band origin.

## Band origin and band head are different

Introduce

$$
m=
\begin{cases}
J+1,&R\text{ branch},\\
-J,&P\text{ branch}.
\end{cases}
$$

Both branch formulas then take the form

$$
\boxed{
\widetilde\nu(m)
=\widetilde\nu_{v'v''}
+(B'+B'')m+(B'-B'')m^2.
}
$$

The band origin $\widetilde\nu_{v'v''}$ is the hypothetical position obtained
by removing rotational energy. A band head is instead a crowding of actual
rotational lines near an extremum. Treating $m$ as continuous locates that
extremum:

$$
\frac{d\widetilde\nu}{dm}
=(B'+B'')+2(B'-B'')m=0,
$$

so

$$
m_{\mathrm{head}}
=-\frac{B'+B''}{2(B'-B'')}.
$$

A visible head occurs only if this value lies in the allowed integer range of
the corresponding branch.

## Isotope shifts

Under isotopic substitution the electronic potential, force constant, and
equilibrium bond length are nearly unchanged, whereas the nuclear reduced
mass changes. From

$$
\widetilde\nu_e=\frac1{2\pi c}\sqrt{\frac{k}{\mu}},
\qquad
B=\frac{h}{8\pi^2c\mu r_e^2},
$$

two isotopologues with reduced masses $\mu_a$ and $\mu_b$ satisfy

$$
\frac{\widetilde\nu_{e,b}}{\widetilde\nu_{e,a}}
\simeq\sqrt{\frac{\mu_a}{\mu_b}},
\qquad
\frac{B_b}{B_a}\simeq\frac{\mu_a}{\mu_b}.
$$

The correlated vibrational and rotational shifts are therefore a sensitive
test of band assignments and isotope identity.

All upper, lower, mixed, combination-difference, band-head, and isotope
relations are checked symbolically in the
[Maxima worksheet]({{ '/assets/maxima/msc/sem-ii/molecular-spectra/unit-2/electronic-band-analysis.mac' | relative_url }}).

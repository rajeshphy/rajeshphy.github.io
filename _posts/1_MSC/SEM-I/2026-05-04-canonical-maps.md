---
title: "Canonical Maps"
summary: "Canonical transformations, generating functions, and their connection with Hamilton-Jacobi theory."
date: 2026-05-04 09:10:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - classical-mechanics
  - canonical-transformations
  - generating-functions
permalink: /msc/sem-i/canonical-maps/
hidden: true
---

Hamilton–Jacobi theory naturally extends to canonical transformations because the action function $S$ itself behaves like a generating function. This note focuses on canonical maps, generating functions, and the way the Hamilton-Jacobi equation appears as a special canonical transformation.

## Canonical transformations

In Hamiltonian mechanics, the state of a system is described by canonical coordinates and momenta $(q_i,p_i)$. A transformation to new variables $(Q_i,P_i)$ is called a canonical transformation **if the new variables also satisfy Hamilton’s equations in canonical form.** The importance of such transformations is that they preserve the structure of mechanics while possibly making the problem much simpler.

The differential form of Hamilton’s principal function is

$$
dS=\sum_i p_i\,dq_i-H\,dt
$$

Suppose we transform to new variables $(Q_i,P_i)$ with a new Hamiltonian $K$. Then the corresponding canonical differential form is

$$
dS'=\sum_i P_i\,dQ_i-K\,dt
$$

A transformation is canonical if the difference between the old and new one-forms is an exact differential. Thus one requires

$$
\sum_i p_i\,dq_i-H\,dt-\left(\sum_i P_i\,dQ_i-K\,dt\right)=dF
$$

where $F$ is some function. **This is the basic condition for a canonical transformation.** It means that the equations of motion preserve their Hamiltonian form under the transformation.

Thus canonical transformations preserve the symplectic structure of phase space. They do not merely change coordinates; they preserve the dynamical framework itself.


<div style="background:linear-gradient(135deg,#f8fbff 0%,#eef4ff 100%); border:1px solid #d6e4ff; border-radius:18px; padding:22px; box-shadow:0 10px 30px rgba(30,60,120,0.08);">


Starting with the canonical condition

$$
\sum_i p_i\,dq_i-\sum_i P_i\,dQ_i+(K-H)\,dt=dF
$$

We decide which variables $F$ depends on, we expand $dF$ in terms of those variables and then compare coefficients of the independent differentials.

For example, if

$$
F_1=F_1(q_i,Q_i,t)
$$

then its exact differential is

$$
dF_1=\sum_i \frac{\partial F_1}{\partial q_i}\,dq_i+\sum_i \frac{\partial F_1}{\partial Q_i}\,dQ_i+\frac{\partial F_1}{\partial t}\,dt
$$

But from the canonical condition,

$$
dF_1=\sum_i p_i\,dq_i-\sum_i P_i\,dQ_i+(K-H)\,dt
$$

Now compare coefficients of the same independent differentials:
<ul>
  <li>coefficient of $dq_i$:</li>
</ul>

$$
\frac{\partial F_1}{\partial q_i}=p_i
$$

<ul>
  <li>coefficient of $dQ_i$:</li>
</ul>

$$
\frac{\partial F_1}{\partial Q_i}=-P_i
$$

<ul>
  <li>coefficient of $dt$:</li>
</ul>

$$
\frac{\partial F_1}{\partial t}=K-H
$$
Hence

$$
p_i=\frac{\partial F_1}{\partial q_i},\qquad
P_i=-\frac{\partial F_1}{\partial Q_i},\qquad
K=H+\frac{\partial F_1}{\partial t}
$$

That is what is meant by “expand $dF$ and compare coefficients.”
<br>
<strong>Now suppose we do not want the generating function in terms of $Q_i$.</strong> We want a new generating function in terms of $P_i$ instead. Since $P_i$ is related to $Q_i$ by

$$

P_i=-\frac{\partial F_1}{\partial Q_i}

$$

the natural way to replace the variable $Q_i$ by its conjugate quantity $P_i$ is by a <strong>Legendre transform</strong>.

So define

$$

F_2(q_i,P_i,t)=F_1(q_i,Q_i,t)+\sum_i Q_iP_i

$$

This is exactly the Legendre transformation of $F_1$ with respect to $Q_i$ because:
<ul>
    <li> old independent variable: $Q_i$ </li>

    <li> conjugate derivative variable: $-P_i=\dfrac{\partial F_1}{\partial Q_i}$ </li>
</ul>

The plus sign appears because

$$

P_i=-\frac{\partial F_1}{\partial Q_i}

$$

If the sign had been positive, the Legendre term would have appeared with a minus sign instead.



Now differentiate:

$$
dF_2=dF_1+\sum_i Q_i\,dP_i+\sum_i P_i\,dQ_i
$$

Using the canonical condition for $F_1$,

$$
dF_1=\sum_i p_i\,dq_i-\sum_i P_i\,dQ_i+(K-H)\,dt
$$

we get

$$
dF_2=\sum_i p_i\,dq_i+\sum_i Q_i\,dP_i+(K-H)\,dt
$$

Since $F_2=F_2(q_i,P_i,t)$, its exact differential is also

$$
dF_2=\sum_i \frac{\partial F_2}{\partial q_i}\,dq_i+\sum_i \frac{\partial F_2}{\partial P_i}\,dP_i+\frac{\partial F_2}{\partial t}\,dt
$$

Now compare coefficients of the independent differentials $dq_i$, $dP_i$, and $dt$. This gives

$$
p_i=\frac{\partial F_2}{\partial q_i},\qquad
Q_i=\frac{\partial F_2}{\partial P_i},\qquad
K=H+\frac{\partial F_2}{\partial t}
$$

So here “expansion” means writing the total differential of $F_2$ in its chosen variables, but the crucial missing step is that the canonical one-form must first be rewritten in terms of $dq_i$, $dP_i$, and $dt$.


</div>



## Generating functions

The function $F$ appearing above is called a generating function. Depending on which old and new variables are chosen as independent arguments, there are four standard types of generating functions.
<div style="background:linear-gradient(135deg,#f8fbff 0%,#eef4ff 100%); border:1px solid #d6e4ff; border-radius:18px; padding:22px; box-shadow:0 10px 30px rgba(30,60,120,0.08);">

  <div style="text-align:center; margin-bottom:18px;">
    <span style="display:inline-block; background:#2b6cb0; color:white; padding:8px 18px; border-radius:999px; font-size:0.95rem; font-weight:700; letter-spacing:0.5px;">
      Generating Functions: Four Standard Forms
    </span>
  </div>

  <div style="display:grid; gap:16px;">

    <div style="background:white; border-left:6px solid #2b6cb0; border-radius:14px; padding:16px 18px; box-shadow:0 4px 14px rgba(0,0,0,0.05);">
      <p style="margin:0 0 10px 0; font-size:1.05rem; font-weight:700; color:#1a365d;">
        If $F_1 = F_1(q,Q,t)$, then
      </p>
      <div style="background:#f7faff; border-radius:10px; padding:12px 14px;">
        $$
        p_i=\frac{\partial F_1}{\partial q_i}, \qquad
        P_i=-\frac{\partial F_1}{\partial Q_i}, \qquad
        K=H+\frac{\partial F_1}{\partial t}
        $$
      </div>
    </div>

    <div style="background:white; border-left:6px solid #38a169; border-radius:14px; padding:16px 18px; box-shadow:0 4px 14px rgba(0,0,0,0.05);">
      <p style="margin:0 0 10px 0; font-size:1.05rem; font-weight:700; color:#22543d;">
        If $F_2 = F_2(q,P,t)$, then
      </p>
      <div style="background:#f7fff9; border-radius:10px; padding:12px 14px;">
        $$
        p_i=\frac{\partial F_2}{\partial q_i}, \qquad
        Q_i=\frac{\partial F_2}{\partial P_i}, \qquad
        K=H+\frac{\partial F_2}{\partial t}
        $$
      </div>
    </div>

    <div style="background:white; border-left:6px solid #d69e2e; border-radius:14px; padding:16px 18px; box-shadow:0 4px 14px rgba(0,0,0,0.05);">
      <p style="margin:0 0 10px 0; font-size:1.05rem; font-weight:700; color:#744210;">
        If $F_3 = F_3(p,Q,t)$, then
      </p>
      <div style="background:#fffdf7; border-radius:10px; padding:12px 14px;">
        $$
        q_i=-\frac{\partial F_3}{\partial p_i}, \qquad
        P_i=-\frac{\partial F_3}{\partial Q_i}, \qquad
        K=H+\frac{\partial F_3}{\partial t}
        $$
      </div>
    </div>

    <div style="background:white; border-left:6px solid #805ad5; border-radius:14px; padding:16px 18px; box-shadow:0 4px 14px rgba(0,0,0,0.05);">
      <p style="margin:0 0 10px 0; font-size:1.05rem; font-weight:700; color:#44337a;">
        If $F_4 = F_4(p,P,t)$, then
      </p>
      <div style="background:#faf7ff; border-radius:10px; padding:12px 14px;">
        $$
        q_i=-\frac{\partial F_4}{\partial p_i}, \qquad
        Q_i=\frac{\partial F_4}{\partial P_i}, \qquad
        K=H+\frac{\partial F_4}{\partial t}
        $$
      </div>
    </div>

  </div>
</div>
Among these, the type-$2$ generating function is especially important in Hamilton–Jacobi theory. If one writes

$$
F_2(q,P,t)=S(q,P,t)
$$

then

$$
p_i=\frac{\partial S}{\partial q_i}, \qquad
Q_i=\frac{\partial S}{\partial P_i}
$$

If the new Hamiltonian is chosen to vanish,

$$
K=K(Q,P)=0
$$

then the condition

$$
K=H+\frac{\partial S}{\partial t}=0
$$

becomes

$$
\frac{\partial S}{\partial t}+H\left(q_i,\frac{\partial S}{\partial q_i},t\right)=0
$$

which is precisely the Hamilton–Jacobi equation. **Thus Hamilton–Jacobi theory is the special case of a canonical transformation generated by $S$ that transforms the dynamics into a trivial one with constant new variables.**

This also explains the origin of the constants in Hamilton–Jacobi theory. If $P_i=\alpha_i$, then

$$
Q_i=\frac{\partial S}{\partial \alpha_i}=\beta_i
$$

and because $K=0$, Hamilton’s equations in the new variables give

$$
\dot P_i=0, \qquad \dot Q_i=0
$$

Hence both $\alpha_i$ and $\beta_i$ are constants.

For infinitesimal generators, Lie transformations, and the symmetry-conservation connection, see [Conservation Theorems and Symmetry Properties](/msc/sem-i/symmetry-flow/). For the Poisson-bracket criterion of canonicity and standard bracket relations, see [Poisson Theorem and Canonical Transformations](/msc/sem-i/poisson-theorem-canonical-transformations/).

## Main points

- A canonical transformation preserves Hamilton’s equations in canonical form.
- The condition for canonicity is that the difference of the old and new phase-space one-forms is an exact differential.
- That exact differential defines a generating function.
- There are four standard types of generating functions.
- Hamilton–Jacobi theory is a special canonical transformation generated by $S$ with new Hamiltonian $K=0$.

## Practice questions

1. Show that a transformation is canonical if the difference between the old and new phase-space one-forms is an exact differential.
2. Derive the relations for the type-$2$ generating function $F_2(q,P,t)$.
3. Explain how Hamilton’s principal function $S$ acts as a generating function in Hamilton–Jacobi theory.
4. Show how the Hamilton-Jacobi equation follows from the choice $F_2=S(q,P,t)$ with $K=0$.

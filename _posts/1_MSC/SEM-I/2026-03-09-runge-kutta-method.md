---
title: "Runge-Kutta Method for First-Order Differential Equations"
summary: "Numerical solution of first-order differential equations using the fourth-order Runge-Kutta method."
date: 2026-03-09 09:00:00 +0530
categories:
  - notes
  - msc
  - msc-i
  - lecture
tags:
  - msc
  - semester-i
  - numerical-methods
  - differential-equations
  - runge-kutta
permalink: /msc/sem-i/runge-kutta-method/
hidden: true
---

Many physical laws give rates of change rather than direct formulas. For example, velocity gives the rate of change of position, and force determines the rate of change of momentum. A first-order ordinary differential equation has the form

$$
\frac{dy}{dx}=f(x,y),
$$

with an initial condition

$$
y(x_0)=y_0.
$$

The aim is to compute approximate values of $y$ at later points.

The initial condition gives the starting point of the curve. A numerical method then walks along the curve using a chosen step size.

## Step form

Let

$$
x_{n+1}=x_n+h.
$$

The numerical method estimates $y_{n+1}$ from $x_n$, $y_n$, and the step size $h$.

Euler's method uses only the slope at the beginning of the interval. Runge-Kutta improves this idea by sampling slopes inside the interval as well.

## Fourth-order Runge-Kutta method

The most commonly used form is

$$
k_1=h f(x_n,y_n),
$$

$$
k_2=h f\left(x_n+\frac{h}{2},y_n+\frac{k_1}{2}\right),
$$

$$
k_3=h f\left(x_n+\frac{h}{2},y_n+\frac{k_2}{2}\right),
$$

$$
k_4=h f(x_n+h,y_n+k_3).
$$

Then

$$
y_{n+1}=y_n+\frac{1}{6}(k_1+2k_2+2k_3+k_4).
$$

## Why it works well

The method samples the slope at the beginning, middle, and end of the interval. The weighted average gives a good estimate of the net change in $y$.

## One RK4 step

Use one fourth-order Runge-Kutta step for

$$
\frac{dy}{dx}=x+y,\qquad y(0)=1,
$$

with $h=0.1$. Here $f(x,y)=x+y$.

$$
k_1=0.1\,f(0,1)=0.1.
$$

$$
k_2=0.1\,f(0.05,1.05)=0.1(1.10)=0.110.
$$

$$
k_3=0.1\,f(0.05,1.055)=0.1(1.105)=0.1105.
$$

$$
k_4=0.1\,f(0.1,1.1105)=0.1(1.2105)=0.12105.
$$

Therefore

$$
y(0.1)\approx 1+\frac{1}{6}
(0.1+2(0.110)+2(0.1105)+0.12105).
$$

Hence

$$
\boxed{y(0.1)\approx 1.11034.}
$$

## Key points

- Runge-Kutta methods are step-by-step methods.
- The fourth-order method is accurate for many smooth problems.
- Step size must be chosen carefully: too large gives error, too small may waste computation.

## Practice questions

1. Write the standard fourth-order Runge-Kutta formula.
2. What is the role of $k_1$, $k_2$, $k_3$, and $k_4$?
3. Use one RK4 step to solve $dy/dx=x+y$, $y(0)=1$, with $h=0.1$.
4. Why is RK4 usually more accurate than Euler's method?
5. What happens if the step size is chosen too large?

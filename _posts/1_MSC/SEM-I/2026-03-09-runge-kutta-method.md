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

Many physical systems are described by differential equations. A first-order ordinary differential equation has the form

$$
\frac{dy}{dx}=f(x,y),
$$

with an initial condition

$$
y(x_0)=y_0.
$$

The aim is to compute approximate values of $y$ at later points.

## Step form

Let

$$
x_{n+1}=x_n+h.
$$

The numerical method estimates $y_{n+1}$ from $x_n$, $y_n$, and the step size $h$.

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

## Key points

- Runge-Kutta methods are step-by-step methods.
- The fourth-order method is accurate for many smooth problems.
- Step size must be chosen carefully: too large gives error, too small may waste computation.


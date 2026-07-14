---
layout: post
title: "Truncation, Round-Off, Absolute and Relative Errors"
date: 2026-07-14 11:50:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - errors
  - measurements
  - round-off
permalink: /practical/ug-i/errors-truncation-round-off/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To study truncation error, round-off error, absolute error, relative error, and percentage error using simple numerical observations.

## Apparatus

Calculator, graph paper or plotting software, and observation notebook.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/errors-round-off/errors-round-off.png' | relative_url }}" alt="Number line showing truncation and rounding">
  <figcaption>Truncation and rounding of the number 2.2449 on a decimal number line.</figcaption>
</figure>

## Principle

In experimental physics, no measured value is exact. A numerical value may be shortened by truncation or by rounding. Truncation means cutting off digits after a chosen decimal place. Rounding means replacing the value by the nearest number available at the chosen decimal place.

If $x$ is the true value and $x_m$ is the measured or approximate value, then

$$
\text{absolute error}=|x-x_m|,
$$

$$
\text{relative error}=\frac{|x-x_m|}{x},
$$

and

$$
\text{percentage error}=\frac{|x-x_m|}{x}\times 100.
$$

## Observation

Let the true value be

$$
x=2.2449.
$$

| Decimal places retained | Truncated value | Rounded value | Absolute error in truncation | Absolute error in rounding |
|---:|---:|---:|---:|---:|
| 1 | 2.2 | 2.2 | 0.0449 | 0.0449 |
| 2 | 2.24 | 2.24 | 0.0049 | 0.0049 |
| 3 | 2.244 | 2.245 | 0.0009 | 0.0001 |
| 4 | 2.2449 | 2.2449 | 0.0000 | 0.0000 |

## Graph

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/errors-round-off/errors-round-off-graph.png' | relative_url }}" alt="Graph comparing truncation error and rounding error">
  <figcaption>Variation of absolute error with the number of decimal places retained.</figcaption>
</figure>

## Calculation

For two decimal places,

$$
x=2.2449,\qquad x_m=2.24.
$$

Hence,

$$
\Delta x=|2.2449-2.24|=0.0049.
$$

The relative error is

$$
\frac{\Delta x}{x}=\frac{0.0049}{2.2449}=0.00218.
$$

The percentage error is therefore

$$
0.00218\times100=0.218\%.
$$

## Result

The error decreases when more decimal places are retained. For the value $2.2449$, rounding to three decimal places gives a smaller error than truncating to three decimal places.

## Precautions

1. Keep the same number of decimal places while comparing values.
2. Do not round intermediate steps too early.
3. Write units with measured quantities.
4. Use absolute error for size of error and relative error for comparison of accuracy.

## Viva Questions

1. **What is truncation?**  
   Truncation is the removal of digits after a chosen decimal place without considering the next digit.

2. **What is round-off?**  
   Round-off is the replacement of a number by the nearest value at a chosen decimal place.

3. **Why is relative error useful?**  
   It compares the error with the size of the measured quantity, so it is useful for judging accuracy.

4. **Can absolute error be zero?**  
   Yes, if the measured or approximate value is exactly equal to the true value.

5. **Why should final answers not contain too many insignificant digits?**  
   Extra digits may give a false impression of accuracy.

## Maxima Code

The calculation can be checked with this file: [errors-round-off-calculation.mac]({{ '/assets/tikz/practical/ug-i/errors-round-off/errors-round-off-calculation.mac' | relative_url }}).

</div>

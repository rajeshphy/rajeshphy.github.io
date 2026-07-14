---
layout: post
title: "Measurements Using Vernier Calipers, Screw Gauge and Travelling Microscope"
date: 2026-07-14 11:40:00 +0530
categories:
  - practical-ug-i
  - practical-ug-ii
tags:
  - practical
  - ug-i
  - ug-ii
  - measurement
  - vernier-calipers
  - screw-gauge
  - travelling-microscope
permalink: /practical/ug-i/measurement-instruments/
hidden: true
comments: true
---

<div class="practical-sheet" markdown="1">

## Aim

To measure small lengths or diameters using vernier calipers, screw gauge, and travelling microscope, and to apply least-count and zero-error corrections.

## Apparatus

Vernier calipers, screw gauge, travelling microscope, small cylinder or bob, thin wire, capillary tube or glass plate, and notebook.

## Figure

<figure class="practical-figure">
  <img src="{{ '/assets/images/practical/ug-i/measurement-instruments/measurement-instruments.png' | relative_url }}" alt="Labelled diagrams of vernier calipers, screw gauge and travelling microscope">
  <figcaption>Basic measuring instruments used for small length and diameter measurements.</figcaption>
</figure>

## Principle

A measuring instrument gives a main-scale reading and a fractional reading. The fractional part is obtained from the vernier scale or circular scale. If the instrument has zero error, the corrected reading is

$$
\text{corrected reading}=\text{observed reading}+\text{zero correction}.
$$

For vernier calipers,

$$
\text{reading}=\text{M.S.R.}+n \times \text{L.C.}
$$

where M.S.R. is the main-scale reading, $n$ is the coinciding vernier division, and L.C. is the least count. For a screw gauge,

$$
\text{reading}=\text{pitch-scale reading}+n \times \text{least count}.
$$

## Least Count

| Instrument | Least count used |
|---|---:|
| Vernier calipers | 0.01 cm |
| Screw gauge | 0.01 mm |
| Travelling microscope | 0.001 cm |

## Observations

### Vernier calipers

| Trial | Main-scale reading (cm) | Vernier coincidence | Vernier reading (cm) | Zero correction (cm) | Corrected diameter (cm) |
|---:|---:|---:|---:|---:|---:|
| 1 | 2.40 | 6 | 0.06 | -0.02 | 2.44 |
| 2 | 2.40 | 7 | 0.07 | -0.02 | 2.45 |
| 3 | 2.40 | 6 | 0.06 | -0.02 | 2.44 |

Mean diameter by vernier calipers:

$$
d=\frac{2.44+2.45+2.44}{3}=2.443 \text{ cm}.
$$

### Screw gauge

| Trial | Pitch-scale reading (mm) | Circular division | Circular reading (mm) | Zero correction (mm) | Corrected diameter (mm) |
|---:|---:|---:|---:|---:|---:|
| 1 | 0.50 | 28 | 0.28 | -0.01 | 0.77 |
| 2 | 0.50 | 29 | 0.29 | -0.01 | 0.78 |
| 3 | 0.50 | 28 | 0.28 | -0.01 | 0.77 |

Mean diameter by screw gauge:

$$
d=\frac{0.77+0.78+0.77}{3}=0.773 \text{ mm}.
$$

### Travelling microscope

| Trial | Left edge reading (cm) | Right edge reading (cm) | Diameter (cm) |
|---:|---:|---:|---:|
| 1 | 3.245 | 3.380 | 0.135 |
| 2 | 3.250 | 3.386 | 0.136 |
| 3 | 3.248 | 3.383 | 0.135 |

Mean diameter by travelling microscope:

$$
d=\frac{0.135+0.136+0.135}{3}=0.1353 \text{ cm}.
$$

## Result

The measured values from the trial observations are:

| Quantity measured | Value |
|---|---:|
| Diameter by vernier calipers | 2.443 cm |
| Diameter by screw gauge | 0.773 mm |
| Diameter by travelling microscope | 0.1353 cm |

## Precautions

1. Check zero error before taking observations.
2. Hold the object gently; excessive pressure changes the reading.
3. Avoid parallax while reading the scales.
4. Take readings at different positions and use the mean value.
5. In the travelling microscope, focus the cross-wire sharply before noting readings.

## Viva Questions

1. **What is least count?**  
   Least count is the smallest measurement that can be read directly by an instrument.

2. **Why is zero correction applied?**  
   It removes the error caused when the zero of the instrument does not coincide with the reference zero.

3. **Which instrument is most suitable for measuring the diameter of a thin wire?**  
   A screw gauge is most suitable because its least count is smaller than that of vernier calipers.

4. **Why should several observations be taken?**  
   Repeated observations reduce the effect of random error and give a more reliable mean value.

5. **What is parallax error?**  
   Parallax error is the error caused when the scale is not viewed normally from the front.

## Maxima Code

The calculation can be checked with this file: [measurement-instruments-calculation.mac]({{ '/assets/tikz/practical/ug-i/measurement-instruments/measurement-instruments-calculation.mac' | relative_url }}).

</div>

---
title: "GNU plot preamble"
summary: "A practical tutorial for using gnuplot_preamble in Maxima to produce clean, publication-style plots."
date: 2026-04-18 09:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - gnuplot
permalink: /maxima-gnuplot-preamble/
hidden: true
---
Maxima can pass raw gnuplot directives to the plotting backend through **gnuplot_preamble**, enabling fine control over plot aesthetics. This approach is especially useful for scientific figures where borders, ticks, grids, labels, legends, numeric formatting, and sampling density must be standardized.

## What gnuplot_preamble Does

The option **gnuplot_preamble** injects a single string of gnuplot commands into the generated plotting script. The content of this string must be valid **gnuplot syntax** (not Maxima syntax). Typical uses include:
- controlling borders and line widths,
- configuring major and minor ticks,
- placing and styling the legend (key),
- setting grids and zero axes,
- improving curve smoothness via sampling,
- formatting axis numbers,
- adjusting margins to prevent label clipping.


## Basic Structure and Minimal Example

The general pattern is to include **[gnuplot_preamble, "..."]** among the plotting options, writing all gnuplot commands inside one string and separating them with semicolons.

```python
plot2d(
    expr,
    [x, xmin, xmax],
    [plot_format, gnuplot],
    [gnuplot_preamble,
     "gnuplot command 1;
      gnuplot command 2;
      gnuplot command 3;"]
);
```

A minimal working example with a smooth curve and clean framing is:

```python
k1 : 1.0$
k2 : 0.5$
w  : 1.0$

y : exp(w*t)*(k2*t + k1)$

plot2d(
    y,
    [t, -2, 2],
    [plot_format, gnuplot],
    [xlabel, "t"],
    [ylabel, "y(t)"],
    [legend, "y(t)=exp(w*t)*(k2*t+k1)"],
    [gnuplot_preamble,
     "set border 31 lw 2;
      set tics out nomirror scale 1.2;
      set grid;
      set samples 1000;"]
);
```

## Meaning of Common gnuplot Directives

The commands below are commonly used to achieve a “premium” scientific look; they are written exactly as gnuplot expects.

- Border framing:

  - `set border 31 lw 2;` draws all four borders with line width 2.

- Major ticks:

  - `set tics out nomirror scale 1.2;` places ticks outward, prevents mirrored ticks, and scales tick length.

- Minor ticks:

  - `set mxtics 2;` and `set mytics 2;` add minor ticks between major ticks on each axis.

- Label fonts:

  - `set xlabel 'Time, t' font ',18';`
  - `set ylabel 'y(t)' font ',18';`

- Legend box (key):

  - `set key top left box opaque font ',14';` positions the legend, adds a boxed frame, and uses an opaque background.

- Grid:

  - `set grid xtics ytics mxtics mytics back lw 1;` draws major and minor grid lines behind the data.

- tics formatting:

  - `set xtics 5 font 'Times New Roman,20';`
  - `set ytics 0.5 font 'Times New Roman,20';`
  This sets the major tick intervals and fonts for each axis.
  - `set xtics start,increment,end;`
  This syntax allows for custom tick placement at specified intervals.



- Zero axis:

  - `set zeroaxis lw 1.2;` draws the $x=0$ and/or $y=0$ reference axis (as supported).

- Sampling density:

  - `set samples 1200;` increases point sampling for smoother curves.

- Number formatting:

  - `set format x '%.1f';`
  - `set format y '%.2f';`

- Margins:

  - `set lmargin 10;`
  - `set rmargin 4;`
  - `set tmargin 3;`
  - `set bmargin 4;`

## Premium Scientific Example and Reusable Template

The following example combines the most useful directives into one consistent style while avoiding terminal-specific commands.

```python
k1 : 1.0$
k2 : 0.5$
w  : 1.0$

y : exp(w*t)*(k2*t + k1)$

plot2d(
    y,
    [t, -2, 2],
    [plot_format, gnuplot],
    [xlabel, "Time, t"],
    [ylabel, "y(t)"],
    [legend, "y(t)=exp(w*t)*(k2*t+k1)"],
    [style, [lines, 4]],
    [gnuplot_preamble,
     "set border 31 lw 2.2;
      set tics out nomirror scale 1.3;
      set mxtics 2;
      set mytics 2;
      set xtics font 'Times New Roman,20';
      set ytics font 'Times New Roman,20';
      set xlabel 'Time, t' font ',18';
      set ylabel 'y(t)' font ',18';
      set key top left box opaque font ',14';
      set grid xtics ytics mxtics mytics back lw 1;
      set zeroaxis lw 1.2;
      set samples 1500;
      set format x '%.1f';
      set format y '%.2f';
      set lmargin 10;
      set rmargin 4;
      set tmargin 3;
      set bmargin 4;"]
);
```


---
title: "Maxima Scientific Plots"
summary: "Practical patterns for 2D/3D plotting in Maxima with scientific labels, legends, grids, and controlled ranges."
date: 2026-04-11 23:00:00 +0530
categories:
  - doc-code
tags:
  - maxima
  - plotting
permalink: /maxima-scientific-plots/
hidden: true
---
[GNU PREAMBLE]({{ '/maxima-gnuplot-preamble/' | relative_url }}) provides a powerful way to customize the appearance of Maxima plots by injecting raw gnuplot commands. This allows for precise control over borders, ticks, legends, grids, and sampling density, enabling the creation of clean, publication-quality figures without relying on terminal-specific directives.

Maxima’s plotting interface, primarily through **plot2d** and **plot3d**, supports publication-oriented visualization when used with explicit labels, legends, grids, and carefully chosen plot ranges. The following patterns emphasize scientifically legible annotation and reproducible plotting sessions.

## Core 2D Plotting Patterns

A single function is plotted as **plot2d(expr, [x, xmin, xmax])**, while multiple curves are plotted by passing a list of expressions. For scientific readability, it is standard to attach axis labels, a legend, and a descriptive title.

- **plot2d(expr, [x, xmin, xmax]);** plots one function.
- **plot2d([expr1, expr2, ...], [x, xmin, xmax]);** plots multiple functions.

```python
plot2d(sin(x), [x, -%pi, %pi]);
plot2d([sin(x), cos(x)], [x, -%pi, %pi]);
```

```python
plot2d(
    [sin(x), cos(x)],
    [x, -2*%pi, 2*%pi],
    [xlabel, "x"],
    [ylabel, "Function value"],
    [legend, "sin(x)", "cos(x)"],
    [title, "Trigonometric Functions"],
    [gnuplot_preamble, "set grid"]
);
```

## Labelling, Ranges, and Styles for Scientific Presentation

Scientific plots typically specify the displayed domain and, when necessary, the ordinate range. The option **[y, ymin, ymax]** constrains the y-axis, which is useful for decaying functions or bounded probability densities. A minimal style control is available through **[style, ...]**, and enhanced text handling can be requested from the backend through a gnuplot preamble.

- **[xlabel, "text"]** sets the x-axis label.
- **[ylabel, "text"]** sets the y-axis label.
- **[legend, "f(x)", "g(x)", ...]** labels curves.
- **[grid, true]** toggles grid lines.
- **[title, "text"]** sets a plot title.
- **[y, ymin, ymax]** sets the y-range.
- **[style, [lines,1], [points,2]]** controls line/point styling.
- **[gnuplot_preamble, "set termoption enhanced"]** enables enhanced text formatting in the backend.

```python
plot2d(
    exp(-x^2),
    [x, -3, 3],
    [y, 0, 1.2],
    [xlabel, "x"],
    [ylabel, "exp(-x^2)"],
    [title, "Gaussian Curve"]
);
```

```python
plot2d(
    [sin(x), cos(x)],
    [x, -2*%pi, 2*%pi],
    [xlabel, "x"],
    [ylabel, "Function value"],
    [legend, "sin(x)", "cos(x)"],
    [title, "Trigonometric Functions"],
    [gnuplot_preamble, "set grid"]
);
```




## Parametric and Discrete Data Plots

Parametric curves are specified by the **[parametric, xexpr, yexpr, [t, tmin, tmax]]** form. Discrete datasets are plotted by supplying a list of points via **[discrete, list]**, which is appropriate for sampled measurements, numerical outputs, or tabulated results.

- **[parametric, xexpr, yexpr, [t, tmin, tmax]]** plots a parametric curve.
- **[discrete, list]** plots discrete data points.

```python
plot2d(
    [parametric, cos(t), sin(t), [t, 0, 2*%pi]],
    [xlabel, "x"],
    [ylabel, "y"],
    [title, "Unit Circle"],
    [grid, true]
);
```

```python
pts : [[0,0], [1,1], [2,4], [3,9], [4,16]]$
plot2d(
    [discrete, pts],
    [xlabel, "x"],
    [ylabel, "y"],
    [title, "Discrete Data"]
);
```

## 3D Surfaces and Physics-Oriented Examples

Three-dimensional plots are produced with **plot3d(expr, [x, xmin, xmax], [y, ymin, ymax])** and can be annotated analogously with axis labels and a title. In physics-oriented visualization, it is common to plot families of “wavefunction-like” expressions with shared weight functions and polynomial factors, and to label each curve by an index such as $n$.

- **plot3d(expr, [x, xmin, xmax], [y, ymin, ymax]);** plots a surface over a rectangular domain.

```python
plot3d(
    sin(x^2 + y^2)/(x^2 + y^2 + 1),
    [x, -3, 3],
    [y, -3, 3],
    [xlabel, "x"],
    [ylabel, "y"],
    [title, "3D Surface Plot"]
);
```

```python
plot2d(
    [exp(-x^2), x*exp(-x^2), (2*x^2-1)*exp(-x^2)],
    [x, -3, 3],
    [xlabel, "x"],
    [ylabel, "Wavefunction-like forms"],
    [legend, "n=0", "n=1", "n=2"],
    [title, "Gaussian-weighted Polynomial Functions"],
    [gnuplot_preamble, "set grid"]
);
```

```python
kill(all)$

plot2d(
    [sin(x), cos(x)],
    [x, -2*%pi, 2*%pi],
    [xlabel, "x"],
    [ylabel, "f(x)"],
    [legend, "sin(x)", "cos(x)"],
    [title, "Scientific Plot Example"],
    [grid, true]
)$
```
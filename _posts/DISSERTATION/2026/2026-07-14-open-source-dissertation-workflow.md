---
layout: post
title: "Open-Source Dissertation Workflow"
summary: "A compact list of open-source tools for calculation, plotting, reference management, and manuscript writing in an M.Sc Physics dissertation."
date: 2026-07-14 10:30:00 +0530
categories:
  - dissertation-2026
tags:
  - dissertation
  - open-source
  - workflow
  - calculation
  - plotting
  - latex
permalink: /dissertation/open-source-workflow/
hidden: true
---

For a physics dissertation, keep the workflow simple: calculate, plot, write, cite, and back up. The tools below are free and open-source, and they work well for student projects.

## Recommended tools

| Work | Tool | Best use | Windows | Linux |
|---|---|---|---|---|
| Calculation | Miniforge + Python | JupyterLab, NumPy, SciPy, SymPy, Matplotlib | [Download](https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Windows-x86_64.exe) | [Download](https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh) |
| Calculation | GNU Octave | MATLAB-like numerical work | [Download](https://octave.org/download) | [Download](https://octave.org/download) |
| Symbolic calculation | Maxima | Algebra, calculus, ODEs, matrices, tensors, exact results | [Download](https://sourceforge.net/projects/maxima/files/Maxima-Windows/) | [Download](https://sourceforge.net/projects/maxima/files/Maxima-Linux/) |
| Plotting | Veusz | Clean publication-style graphs | [Download](https://veusz.github.io/download/) | [Download](https://veusz.github.io/download/) |
| Plotting | Matplotlib | Plots directly from Python scripts | Use Miniforge | Use Miniforge |
| Manuscript | TeX Live | LaTeX dissertation and PDF output | [Download](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe) | [Download](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz) |
| References | JabRef | BibTeX/BibLaTeX reference library | [Download](https://www.jabref.org/download) | [Download](https://www.jabref.org/download) |
| Conversion | Pandoc | Convert Markdown, LaTeX, Word, HTML, PDF workflows | [Download](https://pandoc.org/installing.html) | [Download](https://pandoc.org/installing.html) |
| Drafting | LibreOffice | Initial text draft, tables, DOCX sharing | [Download](https://www.libreoffice.org/download/) | [Download](https://www.libreoffice.org/download/) |
| Backup | Git | Version control for manuscript and code | [Download](https://git-scm.com/download/win) | [Download](https://git-scm.com/download/linux) |

## Minimum setup

Install these first:

1. Miniforge
2. TeX Live
3. JabRef
4. Maxima
5. Veusz
6. Git

After installing Miniforge, create one clean environment:

```bash
mamba create -n thesis python jupyterlab numpy scipy sympy matplotlib pandas
mamba activate thesis
jupyter lab
```

## Simple folder structure

```text
dissertation/
  data/
  scripts/
  figures/
  manuscript/
  references/
```

## Working order

| Step | What to do | Output |
|---|---|---|
| 1 | Save readings in JabRef | `references.bib` |
| 2 | Do calculation in Python or Octave | notebook or script |
| 3 | Export plots from Matplotlib or Veusz | PDF/SVG/PNG figure |
| 4 | Write chapters in LaTeX | chapter `.tex` files |
| 5 | Compile with TeX Live | final dissertation PDF |
| 6 | Save changes with Git | safe project history |

## Practical choice

For most M.Sc Physics dissertations, this is enough:

- Python with JupyterLab for calculation;
- Maxima for symbolic algebra and calculus;
- Veusz or Matplotlib for plots;
- LaTeX with TeX Live for the final manuscript;
- JabRef for references;
- Git for backup and version history.

Download links checked on 14 July 2026.

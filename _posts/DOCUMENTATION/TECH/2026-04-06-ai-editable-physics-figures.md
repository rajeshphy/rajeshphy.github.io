---
title: "AI-Editable Physics Figures"
summary: "A practical technology stack for generating mathematically reliable, editable physics diagrams using AI-assisted code and vector workflows."
date: 2026-04-06 12:00:00 +0530
categories:
  - doc-tech
tags:
  - diagrams
  - authoring
permalink: /ai-editable-physics-figures/
hidden: true
---
For physics authors, the most reliable use of AI is not to generate final raster images, but to generate **editable diagram code** that can be corrected, refined, version-controlled, reused, and exported cleanly as PDF/SVG/PNG. This produces figures that remain mathematically faithful (angles, forces, labels, geometry) while keeping the author in full control of final presentation.

<div style="border-left:5px solid #0f766e; background:#f0fdfa; padding:1rem 1.2rem; border-radius:14px; margin:1.2rem 0;">
<strong>Principle</strong><br>
Use AI to draft <em>editable figure source</em> (code or SVG objects), not final images.<br>
Then refine once and reuse across hundreds of problems with consistent style.
</div>

## Four Stacks for AI-Assisted Editable Figures

<div style="display:grid; grid-template-columns:repeat(auto-fit,minmax(220px,1fr)); gap:14px; margin:16px 0;">
  <div style="background:#f8fafc; border:1px solid #e5e7eb; border-radius:14px; padding:14px 14px; box-shadow:0 6px 18px rgba(15,23,42,0.06);">
    <div style="font-weight:800; color:#0f172a; margin-bottom:6px;">TikZ / PGF</div>
    <div style="color:#334155; line-height:1.5;">
      Precise 2D textbook diagrams with LaTeX labels and consistent academic styling.
    </div>
  </div>
  <div style="background:#fff7ed; border:1px solid #fed7aa; border-radius:14px; padding:14px 14px; box-shadow:0 6px 18px rgba(124,45,18,0.06);">
    <div style="font-weight:800; color:#7c2d12; margin-bottom:6px;">Asymptote</div>
    <div style="color:#7c2d12; line-height:1.5;">
      Advanced 3D scientific diagrams with strong control of perspective, surfaces, and geometry.
    </div>
  </div>
  <div style="background:#eff6ff; border:1px solid #bfdbfe; border-radius:14px; padding:14px 14px; box-shadow:0 6px 18px rgba(30,58,138,0.06);">
    <div style="font-weight:800; color:#1e3a8a; margin-bottom:6px;">SVG + Inkscape / Ipe</div>
    <div style="color:#1e3a8a; line-height:1.5;">
      Best correction layer for near-correct AI output: visually editable vector objects with manual polish.
    </div>
  </div>
  <div style="background:#f5f3ff; border:1px solid #ddd6fe; border-radius:14px; padding:14px 14px; box-shadow:0 6px 18px rgba(76,29,149,0.06);">
    <div style="font-weight:800; color:#4c1d95; margin-bottom:6px;">JSXGraph</div>
    <div style="color:#4c1d95; line-height:1.5;">
      Interactive, slider-driven teaching diagrams for web-based physics content and demonstrations.
    </div>
  </div>
</div>

# TikZ / PGF Stack

<div style="background:#0b1220; color:#e6edf3; padding:18px 18px; border-radius:16px; border:1px solid rgba(255,255,255,0.10); box-shadow:0 12px 28px rgba(0,0,0,0.22); margin:18px 0;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:10px;">
    <div style="width:10px; height:10px; background:#22c55e; border-radius:999px;"></div>
    <div style="font-weight:800; letter-spacing:0.2px;">Best for precise 2D academic physics diagrams</div>
  </div>
  <div style="line-height:1.65;">
    Use TikZ when the figure must be 2D, label-heavy, geometry-based, and fully consistent with LaTeX typography.
  </div>
</div>

**Ideal problem areas**
- classical mechanics, electromagnetism, optics, circuits, thermodynamics,
- quantum mechanics schematics and conceptual diagrams,
- coordinate-geometry-based physics problems.

**Example problem patterns**
- ball sliding on a sphere: circle + bead + radius + angle $\theta$ + forces $mg$ and $N$ + tangent $v$,
- inclined plane: block + slope angle + normal + friction + resolved components,
- pendulum: support + string + bob + vertical reference + tension $T$ + weight $mg$,
- ray diagrams: principal axis + lens + focal points + rays + image construction,
- electric field sketches: charges + field lines + equipotentials.

**Strengths**
- clean textbook style, strong label control, and consistent line aesthetics,
- perfect integration with LaTeX math,
- code-editable and version-controllable,
- easy to maintain a unified style across an entire book.

**Weaknesses**
- not ideal for complex 3D geometry and perspective,
- coordinate tuning may be needed,
- nontrivial learning curve,
- highly artistic illustrations are difficult.

**Best outputs**
PDF, SVG, PNG, LaTeX-integrated figures.

# Asymptote Stack

<div style="background:#fff7ed; padding:18px 18px; border-radius:16px; border:1px solid #fed7aa; box-shadow:0 12px 28px rgba(124,45,18,0.10); margin:18px 0;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:10px;">
    <div style="width:10px; height:10px; background:#f59e0b; border-radius:999px;"></div>
    <div style="font-weight:800; color:#7c2d12; letter-spacing:0.2px;">Best for 3D and geometry-heavy technical figures</div>
  </div>
  <div style="color:#7c2d12; line-height:1.65;">
    Use Asymptote when spatial geometry, surfaces, projections, rotations, and controlled perspective are essential.
  </div>
</div>

**Ideal problem areas**
- 3D mechanics, rigid body motion, vector fields in space,
- spherical/cylindrical coordinates, scattering geometry,
- nuclear and particle physics collision/track schematics,
- advanced electromagnetism (3D field geometry), wave surfaces.

**Example problem patterns**
- spherical coordinates: axes + $r$ + $\theta$ + $\phi$ + projections on the $xy$-plane,
- rigid-body rotation: body + rotation axis + $\boldsymbol\omega$ + torque + $\mathbf{L}$,
- scattering: incident line + scattered line + impact parameter + scattering angle,
- 3D magnetic field around a loop: loop in perspective + field curves + symmetry axis,
- particle collisions: incoming beams + outgoing tracks + angles + detector geometry.

**Strengths**
- strong 3D capability with publication-grade vector output,
- reliable perspective control and surface drawing,
- excellent for advanced theoretical physics figures.

**Weaknesses**
- more technical and code-heavy than TikZ,
- smaller user ecosystem,
- may be excessive for simple force diagrams.

**Best outputs**
PDF, EPS, SVG, PNG.

# SVG + Inkscape / Ipe Stack

<div style="background:#eff6ff; padding:18px 18px; border-radius:16px; border:1px solid #bfdbfe; box-shadow:0 12px 28px rgba(30,58,138,0.10); margin:18px 0;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:10px;">
    <div style="width:10px; height:10px; background:#60a5fa; border-radius:999px;"></div>
    <div style="font-weight:800; color:#1e3a8a; letter-spacing:0.2px;">Best correction and polishing layer for near-correct AI output</div>
  </div>
  <div style="color:#1e3a8a; line-height:1.65;">
    Use SVG when you need PowerPoint-like control with true vector precision for final alignment, spacing, and readability.
  </div>
</div>

**Ideal problem areas**
- diagrams requiring final visual polish,
- label-heavy sketches where spacing and arrow placement matter,
- cross-platform figures for Word, PowerPoint, LaTeX, and web,
- semi-technical illustrations where aesthetics dominates exact geometry.

**Example problem patterns**
- ball on sphere: adjust ball location, arcs, arrows, label offsets, line weights, contrast,
- complex free-body diagram: pulley path, tensions, alignment, consistent arrow lengths,
- EM illustration: Lorentz-force direction, circular path symmetry, field symbols density,
- nuclear reaction sketches: incoming neutron, compound nucleus, fission fragments, emitted neutrons.

**Strengths**
- maximum flexibility for manual correction,
- ideal for fixing “almost correct” AI output quickly,
- excellent for final polishing and consistent visual clarity,
- exports cleanly to PDF/PNG/SVG/EPS.

**Weaknesses**
- less systematic than code-first approaches,
- style consistency must be managed carefully across a book,
- manual editing can become time-consuming if overused,
- complex mathematics is less elegant than LaTeX-native workflows.

**Best outputs**
SVG, PDF, PNG, EPS.

# JSXGraph Stack

<div style="background:#f5f3ff; padding:18px 18px; border-radius:16px; border:1px solid #ddd6fe; box-shadow:0 12px 28px rgba(76,29,149,0.10); margin:18px 0;">
  <div style="display:flex; align-items:center; gap:10px; margin-bottom:10px;">
    <div style="width:10px; height:10px; background:#a78bfa; border-radius:999px;"></div>
    <div style="font-weight:800; color:#4c1d95; letter-spacing:0.2px;">Best for interactive teaching figures</div>
  </div>
  <div style="color:#4c1d95; line-height:1.65;">
    Use JSXGraph when diagrams must be parameter-dependent, slider-based, or dynamically manipulable for learning and demonstrations.
  </div>
</div>

**Ideal problem areas**
- interactive mechanics diagrams and geometry problems,
- optics simulations (movable object and image),
- projectile and circular motion,
- oscillations and wave motion,
- electric/magnetic field visualization with adjustable parameters.

**Example problem patterns**
- ball sliding on sphere: draggable point along a circle, live $\theta$, changing tangent and normal directions,
- projectile motion: sliders for $u$, $\theta$, $g$, live range and height,
- lens ray tracing: movable object, variable focal length, real/virtual transitions,
- SHM: oscillating point plus $x(t)$, $v(t)$, $a(t)$ plots,
- Lorentz-force geometry: adjustable $q$, $m$, $v$, $B$ with circular trajectory.

**Strengths**
- strong conceptual clarity through interactivity,
- sliders expose parameter dependence,
- excellent for web courses and demonstrations.

**Weaknesses**
- not primarily designed for print workflows,
- requires a JavaScript/web environment,
- static exports require extra steps and are not the main goal.

**Best outputs**
Interactive HTML, web app, SVG/PNG screenshots.
